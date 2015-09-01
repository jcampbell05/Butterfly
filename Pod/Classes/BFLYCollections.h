//
//  BFLYCollections.h
//  Pods
//
//  Created by James Campbell on 01/09/2015.
//
// This provides macros which add support for the new generics with fallbacks for older compilers

#ifndef BFLYCollections_h
#define BFLYCollections_h

//Flag for if generics are supported on the current compiler.

#ifdef __IPHONE_9_0

#define BFLY_OBJC_GENERICS_SUPPORTED 1

#else

#define BFLY_OBJC_GENERICS_SUPPORTED 0

#endif

//Macro for defining a NSMutableDictionary.

#if BFLY_OBJC_GENERICS_SUPPORTED \

#define BFLYMutableDictionary(key, value) \
\
NSMutableDictionary <key, value>

#else

#define BFLYMutableDictionary(key, value) \
\
NSMutableDictionary

#endif

#endif /* BFLYCollections_h */
