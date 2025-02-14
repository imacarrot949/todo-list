@echo off
title Todo list
color 9

echo Add task (1), Clear tasks (2), View tasks (3)
set /p query=What do you want to do?
if %query%==1 goto add_task
if %query%==2 goto remove_task
if %query%==3 goto view_tasks


:add_task
set /p task_add_text=What task do you want to add?
echo %task_add_text% >> task.txt
pause
exit

:remove_task
del task.txt
echo Tasks are here: > task.txt
pause
exit

:view_tasks
type task.txt
pause
exit


pause