//
//  BFLYCollections.h
//  Pods
//
//  Created by James Campbell on 01/09/2015.
//
//

#ifndef BFLYCollections_h
#define BFLYCollections_h

#ifdef __IPHONE_9_0

#define BFLY_OBJC_GENERICS_SUPPORTED 1

#else

#define BFLY_OBJC_GENERICS_SUPPORTED 0

#endif

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
