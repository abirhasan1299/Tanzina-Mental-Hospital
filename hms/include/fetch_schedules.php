<?php
include('include/config.php');

$stmt = $pdo->query("SELECT schedules.doctor_id, doctors.name as doctor_name, doctors.department, schedules.day_of_week, schedules.start_time, schedules.end_time FROM schedules JOIN doctors ON schedules.doctor_id = doctors.id");
$schedules = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo json_encode(['schedules' => $schedules]);
?>