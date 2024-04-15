# Following https://learn.microsoft.com/en-us/azure/quantum/user-guide/how-to-work-with-qsharp-projects?tabs=tabid-qsharp%2Ctabid-python-run#steps-for-creating-a-q-project
import qsharp
# set the root folder for the project
qsharp.init(project_root = 'Teleportation_project')

#  call the main operation 
# Docs link: https://learn.microsoft.com/en-us/azure/quantum/how-to-migrate-to-modern
qsharp.eval("RunTeleport.RunTeleportationExample()")
#PARALLEL