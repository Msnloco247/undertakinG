param(
    [Parameter(Mandatory=$true)]
    [string]$Task,
    [string[]]$Skills
)

Write-Host "`n[ORCHESTRATOR] Delegating Task: $Task"
if ($Skills) {
    Write-Host "[ORCHESTRATOR] Required Skills: $($Skills -join ', ')"
}
Write-Host "[SYSTEM] Launching sub-agent context..."
Write-Host "[SYSTEM] Sub-agent results will be synthesized by the orchestrator upon completion.`n"
