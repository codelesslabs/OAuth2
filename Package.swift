//
//  Package.swift
//  OAuth2
//
//  Created by Pascal Pfiffner on 12/19/15.
//  Copyright 2015 Pascal Pfiffner
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import PackageDescription

let package = Package(
	name: "OAuth2",
	targets: [
		Target(name: "SwiftKeychain"),
		Target(name: "Base", dependencies: [.Target(name: "SwiftKeychain")]),
		Target(name: "macOS", dependencies: [.Target(name: "Base")]),
		Target(name: "Flows", dependencies: [.Target(name: "macOS")]),
	],
	dependencies: [
		// SwiftKeychain is not yet available as a Package, so we symlink to /Sources and make it a Target
		//.Package(url: "https://github.com/yankodimitrov/SwiftKeychain.git", majorVersion: 1),
	]
)
