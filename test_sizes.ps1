# Get platform from command line argument
$platform = $args[0]

# Function to print header
function Print-Header {
    Write-Host "Platform | unsigned int | unsigned long"
    Write-Host "---------------------------------------"
}

# Function to test sizes
function Test-Sizes {
    Write-Host -NoNewline "$platform | "
    # Compile C program to check sizes
    $output = & gcc -o size_test test.c 2>&1
    if ($LASTEXITCODE -eq 0) {
        $output = & size_test
        Write-Host -NoNewline $output
    } else {
        Write-Host "Compilation failed: $output"
    }
    # Remove compiled program
    Remove-Item -Path "size_test.exe" -ErrorAction SilentlyContinue
}

# Main function
function Main {
    Print-Header
    Test-Sizes
}

# Execute main function
Main