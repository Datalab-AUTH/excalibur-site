# Fix Astro files by converting className= to class=
Write-Host "Fixing Astro files..." -ForegroundColor Green

# Get all .astro files
$astroFiles = Get-ChildItem -Path ".\src" -Filter "*.astro" -Recurse

foreach ($file in $astroFiles) {
    $content = Get-Content $file.FullName -Raw
    if ($content -match 'className=') {
        Write-Host "Fixing: $($file.Name)" -ForegroundColor Yellow
        $fixedContent = $content -replace 'className=', 'class='
        Set-Content -Path $file.FullName -Value $fixedContent -NoNewline
    }
}

Write-Host "Done! All Astro files fixed." -ForegroundColor Green