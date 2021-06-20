{
    "id": "dbe5c688-e65c-4b03-a15b-eca8848f467c",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "window_taskbar",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 113497714299118,
    "date": "2019-34-12 01:12:29",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "bac80d6c-a2e2-445c-9d9d-6141adb131a5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "3c2c3177-1917-c23e-9fb5-43f7c0e8ff21",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_progress_none",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "87bcdf17-a0ed-165e-b145-5a9d5ab5c686",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_progress_unknown",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "d3a59e4f-cd4e-f789-7519-970c895c9304",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_progress_normal",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "093410fa-531a-b6be-859c-44ed4d5ba3c6",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_progress_error",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "2f780577-7676-e78e-b998-10221ce92e13",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_progress_paused",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "937ec491-2f79-6fed-6e81-bc536ccf5b44",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_flash_stop",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "c0fcf23d-77cb-7004-5d1c-a54a323cd22b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_flash_window",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "51e36248-0d78-d4e9-a405-07c655c02d58",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_flash_tray",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "4a74f350-98d7-3c28-8b72-6bc85f0bf9d0",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_flash_all",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "556c7f70-d4f5-6945-10b5-9ea08e5fb433",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_flash_timer",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "e55c5ec9-b96e-a967-b29a-4b3ec2c6a888",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_flash_timernofg",
                    "hidden": false,
                    "value": "12"
                }
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "window_taskbar.dll",
            "final": "",
            "functions": [
                {
                    "id": "4c3f772a-39d4-42bc-521e-219b91f08421",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "window_progress_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "window_progress_raw",
                    "returnType": 2
                },
                {
                    "id": "d871ae1b-c6a6-369b-01f2-39158ed6e38f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "window_flash_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "window_flash_raw",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\window_taskbar.dll",
            "uncompress": false
        },
        {
            "id": "7cc73678-e3b5-432b-8372-a1d5779ceb4b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "window_taskbar.gml",
            "final": "",
            "functions": [
                {
                    "id": "c3d3ce88-e6e8-3dc1-240e-f84c7e06558e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_taskbar_prepare_buffer",
                    "help": "window_taskbar_prepare_buffer(size:int)->buffer~",
                    "hidden": false,
                    "kind": 2,
                    "name": "window_taskbar_prepare_buffer",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\gml.gml",
            "uncompress": false
        },
        {
            "id": "962d9a80-fb98-4072-93ea-c79e5ae6f0f4",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "autogen.gml",
            "final": "",
            "functions": [
                {
                    "id": "43bd4fd3-c9bc-3162-3899-cc1641686034",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "window_progress",
                    "help": "window_progress(status:int, current:int = 0, total:int = 0)->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "window_progress",
                    "returnType": 2
                },
                {
                    "id": "e7126db0-2cd2-7a06-29f7-6a5f867e85a5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "window_flash",
                    "help": "window_flash(flags:int, count:int = 0, freq:int = 0)->bool",
                    "hidden": false,
                    "kind": 2,
                    "name": "window_flash",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\autogen.gml",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Proprietary",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": 113497714299118,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.0.0"
}