/*!
 * File generated by platform wizard. DO NOT MODIFY
 *
 */

metaonly module Platform inherits xdc.platform.IPlatform {

    config ti.platforms.generic.Platform.Instance CPU =
        ti.platforms.generic.Platform.create("CPU", {
            clockRate:      300.0,                                       
            catalogName:    "ti.catalog.c6000",
            deviceName:     "OMAPL138",
            customMemoryMap:
           [          
                ["SR_0", 
                     {
                        name: "SR_0",
                        base: 0xC2000000,                    
                        len: 0x10000,                    
                        space: "data",
                        access: "RWX",
                     }
                ],
                ["SR_1", 
                     {
                        name: "SR_1",
                        base: 0xC2010000,                    
                        len: 0xA00000,                    
                        space: "data",
                        access: "RWX",
                     }
                ],
                ["DSP_PROG", 
                     {
                        name: "DSP_PROG",
                        base: 0xC3000000,                    
                        len: 0xA00000,                    
                        space: "code/data",
                        access: "RWX",
                     }
                ],
           ],
          l2Mode: "32k",
          l1PMode: "32k",
          l1DMode: "32k",

    });
    
instance :
    
    override config string codeMemory  = "DSP_PROG";   
    override config string dataMemory  = "DSP_PROG";                                
    override config string stackMemory = "DSP_PROG";

    config String l2Mode = "32k";
    config String l1PMode = "32k";
    config String l1DMode = "32k";
}
