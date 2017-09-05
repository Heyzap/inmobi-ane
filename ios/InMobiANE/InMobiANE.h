//
//  InMobiANE.h
//  InMobiANE
//

#import "FlashRuntimeExtensions.h"

void InMobiANEContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx,
                                  uint32_t* numFunctionsToSet, const FRENamedFunction** functionsToSet);

void InMobiANEContextFinalizer(FREContext ctx);

void InMobiANEExtInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet,
                              FREContextFinalizer* ctxFinalizerToSet);

void InMobiANEFinalizer(void* extData);
