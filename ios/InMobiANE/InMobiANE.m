//
//  InMobiANE.m
//  InMobiANE
//

#import "InMobiANE.h"
#import "FlashRuntimeExtensions.h"

void InMobiANEContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx,
                                  uint32_t* numFunctionsToSet, const FRENamedFunction** functionsToSet) {
    
    static FRENamedFunction functionMap[] = {};
    *numFunctionsToSet = sizeof(functionMap) / sizeof(FRENamedFunction);
    *functionsToSet = functionMap;
}

void InMobiANEContextFinalizer(FREContext ctx) {
    // context clean up
    return;
}

void InMobiANEInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet,
                              FREContextFinalizer* ctxFinalizerToSet) {
    *extDataToSet = NULL;
    *ctxInitializerToSet = &InMobiANEContextInitializer;
    *ctxFinalizerToSet = &InMobiANEContextFinalizer;
}

void InMobiANEFinalizer(void* extData) {
    // ext cleanup -- no call guarantee
    return;
}
