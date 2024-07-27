//Powershell script to automate file upload from HTTP(S) URL to Azure Blob Storage

// file download information
$fileurl = "https://example.com/documents/files.zip"
$tmp_file = "docfiles.zip"

// Azure Blob Storage information
$storage_account_name = "<storage-account-name>"
$storage_account_key = "<storage-account-key"
$container_name = "<container-name>"
$blob_name = "<blob-name>"

// download file with wget or curl
Invoke-WebRequest -Uri $fileurl -OutFile $tmp_file

// upload file to Azure Blob Storage
az storage blob upload --account-name $storage_account_name `
  --storage-account-key $storage_account_key `
  --container-name $container_name `
  --file $tmp_file `
  --name $blob_name

// delete local file after upload
Remove-Item -Path $tmp_file
