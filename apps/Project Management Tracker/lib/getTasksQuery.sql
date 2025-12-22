-- Retrieves tasks for selected project with optional status and search filtering
SELECT t.*, u.first_name, u.last_name, u.email
FROM tasks t
LEFT JOIN users u ON t.owner_id = u.id
WHERE ({{ !projectsTable.selectedSourceRow }} OR t.project_id = {{ projectsTable.selectedSourceRow.id }})
  AND ({{ !taskStatusFilter.value }} OR t.status = '{{ taskStatusFilter.value }}')
  AND ({{ !taskSearchInput.value }} OR t.title ILIKE '%{{ taskSearchInput.value }}%')
ORDER BY t.created_at DESC