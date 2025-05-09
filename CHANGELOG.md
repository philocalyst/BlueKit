# Changelog

All notable changes to this project will be documented in this file.

This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.6.8] – 2025-05-09

### Added
- Add .gitignore with common macOS, Xcode and build‐artifact exclusions  
- Introduce Swift package manifest and lockfile  
  - **Package.swift** defining the BlueKit library (macOS 10.15+) and a dependency on swift-log  
  - **Package.resolved** pinning swift-log to version 1.6.3  
- Implement **BlueKitLogger** for centralized logging and configurable log levels  
- Define **BluetoothError** enum in Errors.swift covering invalid identifiers, connection failures, timeouts, missing data and other operation errors  
- Implement **BluetoothManager** with:  
  - `getPowerState()` – retrieve system Bluetooth power state  
  - `getPairedDevices()` – list all paired devices  
  - `getConnectedDevices()` – list currently connected devices  
- Implement **DeviceManager** with:  
  - `getDevice(identifier:)` – resolve an IOBluetoothDevice by address or name  
  - `isValidBluetoothID(arg:)` – validate Bluetooth ID formats via regex  
  - `getDevicesInRange(timeout:)` – scan for nearby devices with a timeout  
  - `connectToDevice(_:)` / `disconnectFromDevice(_:)` – open and close connections  
  - `pairWithDevice(_:pin:)` / `unpairDevice(_:)` – handle pairing and unpairing with optional PIN  
  - `isDeviceConnected(_:)` – check connection status by identifier  

[Unreleased]: https://github.com/philocalyst/blueboy/compare/v0.6.8...HEAD
[0.6.8]: https://github.com/<owner>/<repo>/compare/...v0.6.8
