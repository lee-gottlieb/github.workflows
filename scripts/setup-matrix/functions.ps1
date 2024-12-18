function PrepareJobsJson {
  param (
      [object[]] $jobs
  )

  $jobsHash = @{}
  $jobsHash['include'] = $jobs
  $jobsHashJson = $jobsHash | ConvertTo-Json
  $jobsHashJson = $jobsHashJson -replace [Environment]::NewLine, ""
  $jobsHashJson = $jobsHashJson -replace " ", ""

  return $jobsHashJson
}