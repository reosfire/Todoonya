// ══════════════════════════════════════════════════════════════════
//  MIGRATION — remove this file after migrating personal data.
// ══════════════════════════════════════════════════════════════════

import 'package:flutter/material.dart';

/// Dialog that accepts a pasted legacy JSON export and triggers [onImport].
class MigrationImportDialog extends StatefulWidget {
  final Future<void> Function(String json) onImport;

  const MigrationImportDialog({super.key, required this.onImport});

  @override
  State<MigrationImportDialog> createState() => _MigrationImportDialogState();
}

class _MigrationImportDialogState extends State<MigrationImportDialog> {
  final _controller = TextEditingController();
  bool _importing = false;
  String? _error;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final json = _controller.text.trim();
    if (json.isEmpty) {
      setState(() => _error = 'Paste your JSON export first.');
      return;
    }

    setState(() {
      _importing = true;
      _error = null;
    });

    try {
      await widget.onImport(json);
      if (mounted) {
        Navigator.of(context).pop();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Migration complete!')),
        );
      }
    } catch (e) {
      setState(() {
        _error = 'Failed to parse JSON:\n$e';
        _importing = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Import Legacy JSON'),
      content: SizedBox(
        width: 480,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Paste the full JSON export from the old app version below. '
              'This will replace all current local data.',
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _controller,
              maxLines: 10,
              enabled: !_importing,
              decoration: InputDecoration(
                hintText: '{ "tasks": [...], "lists": [...], ... }',
                border: const OutlineInputBorder(),
                errorText: _error,
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: _importing ? null : () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        FilledButton.icon(
          onPressed: _importing ? null : _submit,
          icon: _importing
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Icon(Icons.upload),
          label: const Text('Import'),
        ),
      ],
    );
  }
}
