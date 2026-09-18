$content = Get-Content 'C:/laragon/www/tobac/index.html' -Raw
$matches = [regex]::Matches($content, '(?s)<style>(.*?)</style>')
for ($i = 0; $i -lt $matches.Count; $i++) {
    Write-Host "=== Block #$($i+1) at position $($matches[$i].Index) length $($matches[$i].Length) ==="
    $block = $matches[$i].Groups[1].Value
    $lines = $block -split "`n"
    Write-Host "Total lines: $($lines.Count)"
    Write-Host "First line: $($lines[0].Trim())"
    Write-Host "Last line: $($lines[-1].Trim())"
    Write-Host ""
}