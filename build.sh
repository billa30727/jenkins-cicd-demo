#!/bin/bash
# ===========================================
# Simple Build Script for Jenkins CI/CD Demo
# ===========================================

echo "========================================="
echo "   BUILD STARTED"
echo "   Date: $(date)"
echo "========================================="

echo ""
echo ">>> Step 1: Checking environment..."
echo "   OS: $(uname -a)"
echo "   User: $(whoami)"
echo "   Workspace: $(pwd)"

echo ""
echo ">>> Step 2: Listing project files..."
ls -la

echo ""
echo ">>> Step 3: Running sample tests..."
echo "   [TEST 1] Checking script syntax..."
bash -n build.sh && echo "   PASS: Syntax OK" || echo "   FAIL: Syntax Error"

echo "   [TEST 2] Checking disk space..."
df -h

echo "   [TEST 3] Checking memory..."
free -m

echo ""
echo ">>> Step 4: Build simulation..."
echo "   Compiling...  Done"
echo "   Packaging...  Done"
echo "   Deploying...  Done"

echo ""
echo "========================================="
echo "   BUILD SUCCESSFUL!"
echo "   Completed at: $(date)"
echo "========================================="
