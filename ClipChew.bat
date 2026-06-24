@echo off
:: ClipChew — Launch script
:: Drop a shortcut to this file anywhere (Desktop, Quick Launch, etc.)
:: Double-click to start ClipChew.

cd /d "%~dp0"
start "" pythonw clipchew.py
