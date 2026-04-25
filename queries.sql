SELECT p.project_name, 
SUM(w.daily_wage * pw.days_worked) AS total_worker_cost
FROM project_workers pw
JOIN workers w ON pw.worker_id = w.worker_id
JOIN projects p ON pw.project_id = p.project_id
GROUP BY p.project_name;

SELECT p.project_name,
SUM(m.cost_per_unit * mu.quantity) AS material_cost
FROM material_usage mu
JOIN materials m ON mu.material_id = m.material_id
JOIN projects p ON mu.project_id = p.project_id
GROUP BY p.project_name;
