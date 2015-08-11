Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E6A5E009C3; Tue, 11 Aug 2015 14:52:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2AA1E007B1
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 14:52:50 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 11 Aug 2015 14:52:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,656,1432623600"; d="scan'208";a="746697317"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.145])
	by orsmga001.jf.intel.com with ESMTP; 11 Aug 2015 14:52:49 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 11 Aug 2015 14:48:35 -0700
Message-Id: <1439329715-8646-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-darwin][PATCH] osx-runtime: OSX Yosemite v10.10
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 11 Aug 2015 21:52:57 -0000

Set of patches to allow building against OSX Yosemite v10.10 runtime.

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 .../files/fix_typedef_dispatch_block_t.patch       |   16 +
 .../files/foundation_framework_headers_clang.patch | 1065 ++++++++++++++++++++
 .../osx-runtime/files/fsevents-clang.patch         |  135 +++
 ...vailability_with_message_for_gcc_osx10.10.patch |  128 +++
 .../osx-runtime/nativesdk-osx-runtime_10.10.bb     |   70 ++
 5 files changed, 1414 insertions(+)
 create mode 100644 recipes-devtools/osx-runtime/files/fix_typedef_dispatch_block_t.patch
 create mode 100644 recipes-devtools/osx-runtime/files/foundation_framework_headers_clang.patch
 create mode 100644 recipes-devtools/osx-runtime/files/fsevents-clang.patch
 create mode 100644 recipes-devtools/osx-runtime/files/remove_unsupported_attribute_availability_with_message_for_gcc_osx10.10.patch
 create mode 100644 recipes-devtools/osx-runtime/nativesdk-osx-runtime_10.10.bb

diff --git a/recipes-devtools/osx-runtime/files/fix_typedef_dispatch_block_t.patch b/recipes-devtools/osx-runtime/files/fix_typedef_dispatch_block_t.patch
new file mode 100644
index 0000000..6a1bace
--- /dev/null
+++ b/recipes-devtools/osx-runtime/files/fix_typedef_dispatch_block_t.patch
@@ -0,0 +1,16 @@
+Index: OSX-sdk/usr/include/dispatch/object.h
+===================================================================
+--- OSX-sdk.orig/usr/include/dispatch/object.h
++++ OSX-sdk/usr/include/dispatch/object.h
+@@ -140,7 +140,11 @@ typedef union {
+  * Instead, the block literal must be copied to the heap with the Block_copy()
+  * function or by sending it a -[copy] message.
+  */
++#if defined(__clang__)
+ typedef void (^dispatch_block_t)(void);
++#else
++typedef void* dispatch_block_t;
++#endif
+ 
+ __BEGIN_DECLS
+ 
diff --git a/recipes-devtools/osx-runtime/files/foundation_framework_headers_clang.patch b/recipes-devtools/osx-runtime/files/foundation_framework_headers_clang.patch
new file mode 100644
index 0000000..0f87c53
--- /dev/null
+++ b/recipes-devtools/osx-runtime/files/foundation_framework_headers_clang.patch
@@ -0,0 +1,1065 @@
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSArray.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSArray.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSArray.h
+@@ -55,7 +55,7 @@
+ - (NSArray *)objectsAtIndexes:(NSIndexSet *)indexes;
+ 
+ - (id)objectAtIndexedSubscript:(NSUInteger)idx NS_AVAILABLE(10_8, 6_0);
+-
++#if defined(__clang__)
+ - (void)enumerateObjectsUsingBlock:(void (^)(id obj, NSUInteger idx, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
+ - (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void (^)(id obj, NSUInteger idx, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
+ - (void)enumerateObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts usingBlock:(void (^)(id obj, NSUInteger idx, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
+@@ -67,7 +67,20 @@
+ - (NSIndexSet *)indexesOfObjectsPassingTest:(BOOL (^)(id obj, NSUInteger idx, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
+ - (NSIndexSet *)indexesOfObjectsWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL (^)(id obj, NSUInteger idx, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
+ - (NSIndexSet *)indexesOfObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(BOOL (^)(id obj, NSUInteger idx, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
++#else
++- (void)enumerateObjectsUsingBlock:(void *(id obj, NSUInteger idx, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
++- (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *(id obj, NSUInteger idx, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
++- (void)enumerateObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts usingBlock:(void *(id obj, NSUInteger idx, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
++
++- (NSUInteger)indexOfObjectPassingTest:(BOOL *(id obj, NSUInteger idx, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
++- (NSUInteger)indexOfObjectWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL *(id obj, NSUInteger idx, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
++- (NSUInteger)indexOfObjectAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(BOOL *(id obj, NSUInteger idx, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
++
++- (NSIndexSet *)indexesOfObjectsPassingTest:(BOOL *(id obj, NSUInteger idx, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
++- (NSIndexSet *)indexesOfObjectsWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL *(id obj, NSUInteger idx, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
++- (NSIndexSet *)indexesOfObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(BOOL *(id obj, NSUInteger idx, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
+ 
++#endif
+ - (NSArray *)sortedArrayUsingComparator:(NSComparator)cmptr NS_AVAILABLE(10_6, 4_0);
+ - (NSArray *)sortedArrayWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr NS_AVAILABLE(10_6, 4_0);
+ 
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSAttributedString.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSAttributedString.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSAttributedString.h
+@@ -34,8 +34,13 @@
+   NSAttributedStringEnumerationLongestEffectiveRangeNotRequired = (1UL << 20)
+ };
+ 
++#if defined(__clang__)
+ - (void)enumerateAttributesInRange:(NSRange)enumerationRange options:(NSAttributedStringEnumerationOptions)opts usingBlock:(void (^)(NSDictionary *attrs, NSRange range, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
+ - (void)enumerateAttribute:(NSString *)attrName inRange:(NSRange)enumerationRange options:(NSAttributedStringEnumerationOptions)opts usingBlock:(void (^)(id value, NSRange range, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
++#else
++- (void)enumerateAttributesInRange:(NSRange)enumerationRange options:(NSAttributedStringEnumerationOptions)opts usingBlock:(void *(NSDictionary *attrs, NSRange range, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
++- (void)enumerateAttribute:(NSString *)attrName inRange:(NSRange)enumerationRange options:(NSAttributedStringEnumerationOptions)opts usingBlock:(void *(id value, NSRange range, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
++#endif
+ 
+ @end
+ 
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSBackgroundActivityScheduler.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSBackgroundActivityScheduler.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSBackgroundActivityScheduler.h
+@@ -15,7 +15,11 @@
+     NSBackgroundActivityResultDeferred = 2,
+ } NS_ENUM_AVAILABLE(10_10, NA);
+ 
++#if defined(__clang__)
+ typedef void (^NSBackgroundActivityCompletionHandler)(NSBackgroundActivityResult result);
++#else
++typedef void *NSBackgroundActivityCompletionHandler;
++#endif
+ 
+ /*
+  This class provides a Cocoa-level interface to the XPC Activity API (see xpc/activity.h).
+@@ -72,7 +76,11 @@
+  
+    When invoking the completionHandler, the system will set the schedule the next invocation. If you want to adjust the properties of your scheduler (e.g., the interval or tolerance), do this before invoking the completion block.
+  */
++#if defined(__clang__)
+ - (void)scheduleWithBlock:(void (^)(NSBackgroundActivityCompletionHandler completionHandler))block;
++#else
++- (void)scheduleWithBlock:(void *(NSBackgroundActivityCompletionHandler completionHandler))block;
++#endif
+ 
+ /* Stop scheduling the activity. Any currently executing block will still complete.
+  */
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSCalendar.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSCalendar.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSCalendar.h
+@@ -318,7 +318,11 @@
+ 	Result dates have an integer number of seconds (as if 0 was specified for the nanoseconds property of the NSDateComponents matching parameter), unless a value was set in the nanoseconds property, in which case the result date will have that number of nanoseconds (or as close as possible with floating point numbers).
+ 	The enumeration is stopped by setting *stop = YES in the block and return.  It is not necessary to set *stop to NO to keep the enumeration going.
+ */
++#if defined(__clang__)
+ - (void)enumerateDatesStartingAfterDate:(NSDate *)start matchingComponents:(NSDateComponents *)comps options:(NSCalendarOptions)opts usingBlock:(void (^)(NSDate *date, BOOL exactMatch, BOOL *stop))block NS_AVAILABLE(10_9, 8_0);
++#else
++- (void)enumerateDatesStartingAfterDate:(NSDate *)start matchingComponents:(NSDateComponents *)comps options:(NSCalendarOptions)opts usingBlock:(void *(NSDate *date, BOOL exactMatch, BOOL *stop))block NS_AVAILABLE(10_9, 8_0);
++#endif
+ 
+ /*
+ 	This method computes the next date which matches (or most closely matches) a given set of components.
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSData.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSData.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSData.h
+@@ -93,7 +93,11 @@
+ /*
+  'block' is called once for each contiguous region of memory in the receiver (once total for contiguous NSDatas), until either all bytes have been enumerated, or the 'stop' parameter is set to YES.
+  */
++#if defined(__clang__)
+ - (void) enumerateByteRangesUsingBlock:(void (^)(const void *bytes, NSRange byteRange, BOOL *stop))block NS_AVAILABLE(10_9, 7_0);
++#else
++- (void) enumerateByteRangesUsingBlock:(void *(const void *bytes, NSRange byteRange, BOOL *stop))block NS_AVAILABLE(10_9, 7_0);
++#endif
+ 
+ @end
+ 
+@@ -110,7 +114,11 @@
+ - (instancetype)initWithBytes:(const void *)bytes length:(NSUInteger)length;
+ - (instancetype)initWithBytesNoCopy:(void *)bytes length:(NSUInteger)length;
+ - (instancetype)initWithBytesNoCopy:(void *)bytes length:(NSUInteger)length freeWhenDone:(BOOL)b;
++#if defined(__clang__)
+ - (instancetype)initWithBytesNoCopy:(void *)bytes length:(NSUInteger)length deallocator:(void (^)(void *bytes, NSUInteger length))deallocator NS_AVAILABLE(10_9, 7_0);
++#else
++- (instancetype)initWithBytesNoCopy:(void *)bytes length:(NSUInteger)length deallocator:(void *(void *bytes, NSUInteger length))deallocator NS_AVAILABLE(10_9, 7_0);
++#endif
+ - (instancetype)initWithContentsOfFile:(NSString *)path options:(NSDataReadingOptions)readOptionsMask error:(NSError **)errorPtr;
+ - (instancetype)initWithContentsOfURL:(NSURL *)url options:(NSDataReadingOptions)readOptionsMask error:(NSError **)errorPtr;
+ - (instancetype)initWithContentsOfFile:(NSString *)path;
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSDictionary.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSDictionary.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSDictionary.h
+@@ -44,14 +44,23 @@
+ 
+ - (id)objectForKeyedSubscript:(id)key NS_AVAILABLE(10_8, 6_0);
+ 
++#if defined(__clang__)
+ - (void)enumerateKeysAndObjectsUsingBlock:(void (^)(id key, id obj, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
+ - (void)enumerateKeysAndObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void (^)(id key, id obj, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
+-
++#else
++- (void)enumerateKeysAndObjectsUsingBlock:(void *(id key, id obj, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
++- (void)enumerateKeysAndObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *(id key, id obj, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
++#endif
+ - (NSArray *)keysSortedByValueUsingComparator:(NSComparator)cmptr NS_AVAILABLE(10_6, 4_0);
+ - (NSArray *)keysSortedByValueWithOptions:(NSSortOptions)opts usingComparator:(NSComparator)cmptr NS_AVAILABLE(10_6, 4_0);
+ 
++#if defined(__clang__)
+ - (NSSet *)keysOfEntriesPassingTest:(BOOL (^)(id key, id obj, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
+ - (NSSet *)keysOfEntriesWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL (^)(id key, id obj, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
++#else
++- (NSSet *)keysOfEntriesPassingTest:(BOOL *(id key, id obj, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
++- (NSSet *)keysOfEntriesWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL *(id key, id obj, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
++#endif
+ 
+ @end
+ 
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSExpression.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSExpression.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSExpression.h
+@@ -96,7 +96,11 @@
+ + (NSExpression *)expressionForFunction:(NSExpression *)target selectorName:(NSString *)name arguments:(NSArray *)parameters NS_AVAILABLE(10_5, 3_0);    // Expression that invokes the selector on target with parameters. Will throw at runtime if target does not implement selector or if parameters are wrong.
+ + (NSExpression *)expressionForAnyKey NS_AVAILABLE(10_9, 7_0);
+ 
++#if defined(__clang__)
+ + (NSExpression *)expressionForBlock:(id (^)(id evaluatedObject, NSArray *expressions, NSMutableDictionary *context))block arguments:(NSArray *)arguments NS_AVAILABLE(10_6, 4_0); // Expression that invokes the block with the parameters; note that block expressions are not encodable or representable as parseable strings.
++#else
+++ (NSExpression *)expressionForBlock:(id *(id evaluatedObject, NSArray *expressions, NSMutableDictionary *context))block arguments:(NSArray *)arguments NS_AVAILABLE(10_6, 4_0); // Expression that invokes the block with the parameters; note that block expressions are not encodable or representable as parseable strings.
++#endif
+ 
+ - (instancetype)initWithExpressionType:(NSExpressionType)type;    // designated initializer
+ 
+@@ -114,7 +118,11 @@
+ @property (readonly, copy) NSExpression *leftExpression NS_AVAILABLE(10_5, 3_0); // expression which represents the left side of a set expression
+ @property (readonly, copy) NSExpression *rightExpression NS_AVAILABLE(10_5, 3_0); // expression which represents the right side of a set expression
+ 
++#if defined(__clang__)
+ @property (readonly, copy) id (^expressionBlock)(id, NSArray *, NSMutableDictionary *) NS_AVAILABLE(10_6, 4_0);
++#else
++@property (readonly) id *expressionBlock NS_AVAILABLE(10_6, 4_0);
++#endif
+ 
+ // evaluate the expression using the object and bindings- note that context is mutable here and can be used by expressions to store temporary state for one predicate evaluation
+ - (id)expressionValueWithObject:(id)object context:(NSMutableDictionary *)context;
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSFileCoordinator.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSFileCoordinator.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSFileCoordinator.h
+@@ -165,7 +165,11 @@
+  
+ For both coordinated reading and writing, if there are multiple NSFilePresenters involved then the order in which they are messaged is undefined. If an NSFilePresenter signals failure then waiting will fail and *outError will be set to an NSError describing the failure.
+ */
++#if defined(__clang__)
+ - (void)coordinateAccessWithIntents:(NSArray *)intents queue:(NSOperationQueue *)queue byAccessor:(void (^)(NSError *error))accessor NS_AVAILABLE(10_10, 8_0);
++#else
++- (void)coordinateAccessWithIntents:(NSArray *)intents queue:(NSOperationQueue *)queue byAccessor:(void *(NSError *error))accessor NS_AVAILABLE(10_10, 8_0);
++#endif
+ 
+ #pragma mark *** Synchronous File Coordination ***
+ 
+@@ -177,10 +181,17 @@
+  
+ Each of these methods returns an NSError by reference instead of passing it to the accessory block. However, these methods are uncommon among Cocoa framework methods in that they don't also return a result indicating success or failure. The success of the waiting that they do is typically not interesting to invokers. Only the success of file system access done by the passed-in block is interesting. (The failure of either is of course interesting.) When invoking these methods it's cleanest to just declare a __block variable outside of the block and initialize it to a value that signals failure, and then inside the block set it to a value that signals success. If the waiting fails then the invoked method sets the error reference to an NSError that describes what went wrong, your block will not be invoked, your __block variable will not be set to a value that signals success, and all will be as it should be, with failure signaled and an NSError that describes the failure.
+ */
++#if defined(__clang__)
+ - (void)coordinateReadingItemAtURL:(NSURL *)url options:(NSFileCoordinatorReadingOptions)options error:(NSError **)outError byAccessor:(void (^)(NSURL *newURL))reader;
+ - (void)coordinateWritingItemAtURL:(NSURL *)url options:(NSFileCoordinatorWritingOptions)options error:(NSError **)outError byAccessor:(void (^)(NSURL *newURL))writer;
+ - (void)coordinateReadingItemAtURL:(NSURL *)readingURL options:(NSFileCoordinatorReadingOptions)readingOptions writingItemAtURL:(NSURL *)writingURL options:(NSFileCoordinatorWritingOptions)writingOptions error:(NSError **)outError byAccessor:(void (^)(NSURL *newReadingURL, NSURL *newWritingURL))readerWriter;
+ - (void)coordinateWritingItemAtURL:(NSURL *)url1 options:(NSFileCoordinatorWritingOptions)options1 writingItemAtURL:(NSURL *)url2 options:(NSFileCoordinatorWritingOptions)options2 error:(NSError **)outError byAccessor:(void (^)(NSURL *newURL1, NSURL *newURL2))writer;
++#else
++- (void)coordinateReadingItemAtURL:(NSURL *)url options:(NSFileCoordinatorReadingOptions)options error:(NSError **)outError byAccessor:(void *(NSURL *newURL))reader;
++- (void)coordinateWritingItemAtURL:(NSURL *)url options:(NSFileCoordinatorWritingOptions)options error:(NSError **)outError byAccessor:(void *(NSURL *newURL))writer;
++- (void)coordinateReadingItemAtURL:(NSURL *)readingURL options:(NSFileCoordinatorReadingOptions)readingOptions writingItemAtURL:(NSURL *)writingURL options:(NSFileCoordinatorWritingOptions)writingOptions error:(NSError **)outError byAccessor:(void *(NSURL *newReadingURL, NSURL *newWritingURL))readerWriter;
++- (void)coordinateWritingItemAtURL:(NSURL *)url1 options:(NSFileCoordinatorWritingOptions)options1 writingItemAtURL:(NSURL *)url2 options:(NSFileCoordinatorWritingOptions)options2 error:(NSError **)outError byAccessor:(void *(NSURL *newURL1, NSURL *newURL2))writer;
++#endif
+ 
+ #pragma mark *** Batched File Coordination ***
+ 
+@@ -190,7 +201,11 @@
+ 
+ In most cases it is redundant to pass the same reading or writing options in an invocation of this method as are passed to individual invocations of the -coordinate... methods invoked by the block passed to an invocation of this method. For example, when Finder invokes this method during a copy operation it does not pass NSFileCoordinatorReadingWithoutChanges because it is appropriate to trigger the saving of document changes right away, but it does pass it when doing the nested invocations of -coordinate... methods because it is not necessary to trigger saving again, even if the user changes the document before the Finder proceeds far enough to actually copy that document's file.
+ */
++#if defined(__clang__)
+ - (void)prepareForReadingItemsAtURLs:(NSArray *)readingURLs options:(NSFileCoordinatorReadingOptions)readingOptions writingItemsAtURLs:(NSArray *)writingURLs options:(NSFileCoordinatorWritingOptions)writingOptions error:(NSError **)outError byAccessor:(void (^)(void (^completionHandler)(void)))batchAccessor;
++#else
++- (void)prepareForReadingItemsAtURLs:(NSArray *)readingURLs options:(NSFileCoordinatorReadingOptions)readingOptions writingItemsAtURLs:(NSArray *)writingURLs options:(NSFileCoordinatorWritingOptions)writingOptions error:(NSError **)outError byAccessor:(void *(void *completionHandler))batchAccessor;
++#endif
+ 
+ #pragma mark *** Renaming and Moving Notification ***
+ 
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSFileManager.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSFileManager.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSFileManager.h
+@@ -227,7 +227,11 @@
+ 
+     If you wish to only receive the URLs and no other attributes, then pass '0' for 'options' and an empty NSArray ('[NSArray array]') for 'keys'. If you wish to have the property caches of the vended URLs pre-populated with a default set of attributes, then pass '0' for 'options' and 'nil' for 'keys'.
+  */
++#if defined(__clang__)
+ - (NSDirectoryEnumerator *)enumeratorAtURL:(NSURL *)url includingPropertiesForKeys:(NSArray *)keys options:(NSDirectoryEnumerationOptions)mask errorHandler:(BOOL (^)(NSURL *url, NSError *error))handler NS_AVAILABLE(10_6, 4_0);
++#else
++- (NSDirectoryEnumerator *)enumeratorAtURL:(NSURL *)url includingPropertiesForKeys:(NSArray *)keys options:(NSDirectoryEnumerationOptions)mask errorHandler:(BOOL *(NSURL *url, NSError *error))handler NS_AVAILABLE(10_6, 4_0);
++#endif
+ 
+ /* subpathsAtPath: returns an NSArray of all contents and subpaths recursively from the provided path. This may be very expensive to compute for deep filesystem hierarchies, and should probably be avoided.
+  */
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSFilePresenter.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSFilePresenter.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSFilePresenter.h
+@@ -40,13 +40,21 @@
+ 
+ A common sequence that your NSFilePresenter must handle is the file coordination mechanism sending this message, then sending -savePresentedItemChangesWithCompletionHandler:, and then, after you have invoked that completion handler, invoking your reacquirer.
+ */
++#if defined(__clang__)
+ - (void)relinquishPresentedItemToReader:(void (^)(void (^reacquirer)(void)))reader;
++#else
++- (void)relinquishPresentedItemToReader:(void *(void *reacquirer(void)))reader;
++#endif
+ 
+ /* Given that something in the system is waiting to write to the presented file or directory, do whatever it takes to ensure that the application will behave properly while that writing is happening, and then invoke the completion handler. The definition of "properly" depends on what kind of ownership model the application implements. Implementations of this method must always invoke the passed-in writer block because other parts of the system will wait until it is invoked or until the user loses patience and cancels the waiting. When an implementation of this method invokes the passed-in block it can pass that block yet another block, which will be invoked in the receiver's operation queue when writing is complete.
+ 
+ A common sequence that your NSFilePresenter must handle is the file coordination mechanism sending this message, then sending -accommodatePresentedItemDeletionWithCompletionHandler: or -savePresentedItemChangesWithCompletionHandler:, and then, after you have invoked that completion handler, invoking your reacquirer. It is also common for your NSFilePresenter to be sent a combination of the -presented... messages listed below in between relinquishing and reacquiring.
+ */
++#if defined(__clang__)
+ - (void)relinquishPresentedItemToWriter:(void (^)(void (^reacquirer)(void)))writer;
++#else
++- (void)relinquishPresentedItemToWriter:(void *(void *reacquirer))writer;
++#endif
+ 
+ /* Given that something in the system is waiting to read from the presented file or directory, do whatever it takes to ensure that the contents of the presented file or directory is completely up to date, and then invoke the completion handler. If successful (including when there is simply nothing to do) pass nil to the completion handler, or if not successful pass an NSError that encapsulates the reason why saving failed. Implementations of this method must always invoke the completion handler because other parts of the system will wait until it is invoked or the user loses patience and cancels the waiting. If this method is not implemented then the NSFilePresenter is assumed to be one that never lets the user make changes that need to be saved.
+ 
+@@ -54,7 +62,11 @@
+ 
+ The file coordination mechanism does not always send -relinquishPresentedItemToReader: or -relinquishPresentedItemToWriter: to your NSFilePresenter before sending this message. For example, other process' use of -[NSFileCoordinator prepareForReadingItemsAtURLs:options:writingItemsAtURLs:options:error:byAccessor:] can cause this to happen.
+ */
++#if defined(__clang__)
+ - (void)savePresentedItemChangesWithCompletionHandler:(void (^)(NSError *errorOrNil))completionHandler;
++#else
++- (void)savePresentedItemChangesWithCompletionHandler:(void *(NSError *errorOrNil))completionHandler;
++#endif
+ 
+ /* Given that something in the system is waiting to delete the presented file or directory, do whatever it takes to ensure that the deleting will succeed and that the receiver's application will behave properly when the deleting has happened, and then invoke the completion handler. If successful (including when there is simply nothing to do) pass nil to the completion handler, or if not successful pass an NSError that encapsulates the reason why preparation failed. Implementations of this method must always invoke the completion handler because other parts of the system will wait until it is invoked or until the user loses patience and cancels the waiting.
+ 
+@@ -62,7 +74,11 @@
+ 
+ The file coordination mechanism does not always send -relinquishPresentedItemToReader: or -relinquishPresentedItemToWriter: to your NSFilePresenter before sending this message. For example, other process' use of -[NSFileCoordinator prepareForReadingItemsAtURLs:options:writingItemsAtURLs:options:error:byAccessor:] can cause this to happen.
+ */
++#if defined(__clang__)
+ - (void)accommodatePresentedItemDeletionWithCompletionHandler:(void (^)(NSError *errorOrNil))completionHandler;
++#else
++- (void)accommodatePresentedItemDeletionWithCompletionHandler:(void *(NSError *errorOrNil))completionHandler;
++#endif
+ 
+ /* Be notified that the file or directory has been moved or renamed, or a directory containing it has been moved or renamed. A typical implementation of this method will cause subsequent invocations of -presentedItemURL to return the new URL.
+ 
+@@ -104,7 +120,11 @@
+ 
+ The file coordination mechanism does not always send -relinquishPresentedItemToReader: or -relinquishPresentedItemToWriter: to your NSFilePresenter before sending this message. For example, other process' use of -[NSFileCoordinator prepareForReadingItemsAtURLs:options:writingItemsAtURLs:options:error:byAccessor:] can cause this to happen.
+ */
++#if defined(__clang__)
+ - (void)accommodatePresentedSubitemDeletionAtURL:(NSURL *)url completionHandler:(void (^)(NSError *errorOrNil))completionHandler;
++#else
++- (void)accommodatePresentedSubitemDeletionAtURL:(NSURL *)url completionHandler:(void *(NSError *errorOrNil))completionHandler;
++#endif
+ 
+ /* Be notified that a file or directory contained by the directory has been added. If this method is not implemented but -presentedItemDidChange is, and the directory is actually a file package, then the file coordination machinery will invoke -presentedItemDidChange instead.
+ 
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSFileVersion.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSFileVersion.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSFileVersion.h
+@@ -62,7 +62,11 @@
+  
+ If you need to get all versions for a document, both local and non-local, you should use an NSFilePresenter that implements -presentedItemDidGainVersion: and -presentedItemDidLoseVersion: and invoke +[NSFileCoordinator addFilePresenter:], +[NSFileVersion otherVersionsOfItemAtURL:], and this method within a single coordinated read.
+ */
++#if defined(__clang__)
+ + (void)getNonlocalVersionsOfItemAtURL:(NSURL *)url completionHandler:(void (^)(NSArray *nonlocalFileVersions, NSError *error))completionHandler NS_AVAILABLE(10_10, 8_0);
++#else
+++ (void)getNonlocalVersionsOfItemAtURL:(NSURL *)url completionHandler:(void *(NSArray *nonlocalFileVersions, NSError *error))completionHandler NS_AVAILABLE(10_10, 8_0);
++#endif
+ 
+ /* For a file located by a URL, return the NSFileVersion identified by a persistent identifier of the sort returned by -persistentIdentifier, or nil if the version no longer exists.
+ */
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSHTTPCookieStorage.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSHTTPCookieStorage.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSHTTPCookieStorage.h
+@@ -129,7 +129,11 @@
+ 
+ @interface NSHTTPCookieStorage (NSURLSessionTaskAdditions)
+ - (void)storeCookies:(NSArray *)cookies forTask:(NSURLSessionTask *)task NS_AVAILABLE(10_10, 8_0);
++#if defined(__clang__)
+ - (void)getCookiesForTask:(NSURLSessionTask *)task completionHandler:(void (^) (NSArray *cookies))completionHandler NS_AVAILABLE(10_10, 8_0);
++#else
++- (void)getCookiesForTask:(NSURLSessionTask *)task completionHandler:(void *(NSArray *cookies))completionHandler NS_AVAILABLE(10_10, 8_0);
++#endif
+ @end
+ 
+ /*!
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSIndexSet.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSIndexSet.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSIndexSet.h
+@@ -79,6 +79,7 @@
+ 
+ - (BOOL)intersectsIndexesInRange:(NSRange)range;
+ 
++#if defined(__clang__)
+ - (void)enumerateIndexesUsingBlock:(void (^)(NSUInteger idx, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
+ - (void)enumerateIndexesWithOptions:(NSEnumerationOptions)opts usingBlock:(void (^)(NSUInteger idx, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
+ - (void)enumerateIndexesInRange:(NSRange)range options:(NSEnumerationOptions)opts usingBlock:(void (^)(NSUInteger idx, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
+@@ -90,15 +91,34 @@
+ - (NSIndexSet *)indexesPassingTest:(BOOL (^)(NSUInteger idx, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
+ - (NSIndexSet *)indexesWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL (^)(NSUInteger idx, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
+ - (NSIndexSet *)indexesInRange:(NSRange)range options:(NSEnumerationOptions)opts passingTest:(BOOL (^)(NSUInteger idx, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
++#else
++- (void)enumerateIndexesUsingBlock:(void *(NSUInteger idx, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
++- (void)enumerateIndexesWithOptions:(NSEnumerationOptions)opts usingBlock:(void *(NSUInteger idx, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
++- (void)enumerateIndexesInRange:(NSRange)range options:(NSEnumerationOptions)opts usingBlock:(void *(NSUInteger idx, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
++
++- (NSUInteger)indexPassingTest:(BOOL *(NSUInteger idx, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
++- (NSUInteger)indexWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL *(NSUInteger idx, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
++- (NSUInteger)indexInRange:(NSRange)range options:(NSEnumerationOptions)opts passingTest:(BOOL *(NSUInteger idx, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
++
++- (NSIndexSet *)indexesPassingTest:(BOOL *(NSUInteger idx, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
++- (NSIndexSet *)indexesWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL *(NSUInteger idx, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
++- (NSIndexSet *)indexesInRange:(NSRange)range options:(NSEnumerationOptions)opts passingTest:(BOOL *(NSUInteger idx, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
++#endif
+ 
+ /*
+  The following three convenience methods allow you to enumerate the indexes in the receiver by ranges of contiguous indexes. The performance of these methods is not guaranteed to be any better than if they were implemented with enumerateIndexesInRange:options:usingBlock:. However, depending on the receiver's implementation, they may perform better than that.
+  
+  If the specified range for enumeration intersects a range of contiguous indexes in the receiver, then the block will be invoked with the intersection of those two ranges.
+ */
++#if defined(__clang__)
+ - (void)enumerateRangesUsingBlock:(void (^)(NSRange range, BOOL *stop))block NS_AVAILABLE(10_7, 5_0);
+ - (void)enumerateRangesWithOptions:(NSEnumerationOptions)opts usingBlock:(void (^)(NSRange range, BOOL *stop))block NS_AVAILABLE(10_7, 5_0);
+ - (void)enumerateRangesInRange:(NSRange)range options:(NSEnumerationOptions)opts usingBlock:(void (^)(NSRange range, BOOL *stop))block NS_AVAILABLE(10_7, 5_0);
++#else
++- (void)enumerateRangesUsingBlock:(void *(NSRange range, BOOL *stop))block NS_AVAILABLE(10_7, 5_0);
++- (void)enumerateRangesWithOptions:(NSEnumerationOptions)opts usingBlock:(void *(NSRange range, BOOL *stop))block NS_AVAILABLE(10_7, 5_0);
++- (void)enumerateRangesInRange:(NSRange)range options:(NSEnumerationOptions)opts usingBlock:(void *(NSRange range, BOOL *stop))block NS_AVAILABLE(10_7, 5_0);
++#endif
+ 
+ @end
+ 
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSLinguisticTagger.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSLinguisticTagger.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSLinguisticTagger.h
+@@ -101,7 +101,11 @@
+ 
+ /* The tagger will segment the string as needed into sentences and tokens, and return those ranges along with a tag for any scheme in its array of tag schemes.  The fundamental tagging method on NSLinguisticTagger is a block iterator, that iterates over all tokens intersecting a given range, supplying tags and ranges.  There are several additional convenience methods, for obtaining a sentence range, information about a single token, or for obtaining information about all tokens intersecting a given range at once, in arrays.  In each case, the charIndex or range passed in must not extend beyond the end of the tagger's string, or the methods will raise an exception.  Note that a given instance of NSLinguisticTagger should not be used from more than one thread simultaneously.
+ */
++#if defined(__clang__)
+ - (void)enumerateTagsInRange:(NSRange)range scheme:(NSString *)tagScheme options:(NSLinguisticTaggerOptions)opts usingBlock:(void (^)(NSString *tag, NSRange tokenRange, NSRange sentenceRange, BOOL *stop))block NS_AVAILABLE(10_7, 5_0);
++#else
++- (void)enumerateTagsInRange:(NSRange)range scheme:(NSString *)tagScheme options:(NSLinguisticTaggerOptions)opts usingBlock:(void *(NSString *tag, NSRange tokenRange, NSRange sentenceRange, BOOL *stop))block NS_AVAILABLE(10_7, 5_0);
++#endif
+ 
+ - (NSRange)sentenceRangeForRange:(NSRange)range NS_AVAILABLE(10_7, 5_0);
+ - (NSString *)tagAtIndex:(NSUInteger)charIndex scheme:(NSString *)tagScheme tokenRange:(NSRangePointer)tokenRange sentenceRange:(NSRangePointer)sentenceRange NS_AVAILABLE(10_7, 5_0);
+@@ -115,7 +119,11 @@
+ /* Clients wishing to analyze a given string once may use these NSString APIs without having to create an instance of NSLinguisticTagger.  If more than one tagging operation is needed on a given string, it is more efficient to use an explicit NSLinguisticTagger instance.
+ */
+ - (NSArray *)linguisticTagsInRange:(NSRange)range scheme:(NSString *)tagScheme options:(NSLinguisticTaggerOptions)opts orthography:(NSOrthography *)orthography tokenRanges:(NSArray **)tokenRanges NS_AVAILABLE(10_7, 5_0);
++#if defined(__clang__)
+ - (void)enumerateLinguisticTagsInRange:(NSRange)range scheme:(NSString *)tagScheme options:(NSLinguisticTaggerOptions)opts orthography:(NSOrthography *)orthography usingBlock:(void (^)(NSString *tag, NSRange tokenRange, NSRange sentenceRange, BOOL *stop))block NS_AVAILABLE(10_7, 5_0);
++#else
++- (void)enumerateLinguisticTagsInRange:(NSRange)range scheme:(NSString *)tagScheme options:(NSLinguisticTaggerOptions)opts orthography:(NSOrthography *)orthography usingBlock:(void *(NSString *tag, NSRange tokenRange, NSRange sentenceRange, BOOL *stop))block NS_AVAILABLE(10_7, 5_0);
++#endif
+ 
+ @end
+ 
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSMetadata.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSMetadata.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSMetadata.h
+@@ -54,9 +54,13 @@
+ // Results are NSMetadataItems, or whatever the delegate replaces that with
+ @property (readonly) NSUInteger resultCount;
+ - (id)resultAtIndex:(NSUInteger)idx;
+-
++#if defined(__clang__)
+ - (void)enumerateResultsUsingBlock:(void (^)(id result, NSUInteger idx, BOOL *stop))block NS_AVAILABLE(10_9, 7_0);
+ - (void)enumerateResultsWithOptions:(NSEnumerationOptions)opts usingBlock:(void (^)(id result, NSUInteger idx, BOOL *stop))block NS_AVAILABLE(10_9, 7_0);
++#else
++- (void)enumerateResultsUsingBlock:(void *(id result, NSUInteger idx, BOOL *stop))block NS_AVAILABLE(10_9, 7_0);
++- (void)enumerateResultsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *(id result, NSUInteger idx, BOOL *stop))block NS_AVAILABLE(10_9, 7_0);
++#endif
+ 
+ @property (readonly, copy) NSArray *results;   // this is for K-V Bindings, and causes side-effects on the query
+ 
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSNotification.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSNotification.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSNotification.h
+@@ -48,7 +48,11 @@
+ - (void)removeObserver:(id)observer;
+ - (void)removeObserver:(id)observer name:(NSString *)aName object:(id)anObject;
+ 
++#if defined(__clang__)
+ - (id <NSObject>)addObserverForName:(NSString *)name object:(id)obj queue:(NSOperationQueue *)queue usingBlock:(void (^)(NSNotification *note))block NS_AVAILABLE(10_6, 4_0);
++#else
++- (id <NSObject>)addObserverForName:(NSString *)name object:(id)obj queue:(NSOperationQueue *)queue usingBlock:(void *(NSNotification *note))block NS_AVAILABLE(10_6, 4_0);
++#endif
+     // The return value is retained by the system, and should be held onto by the caller in
+     // order to remove the observer with removeObserver: later, to stop observation.
+ 
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSObjCRuntime.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSObjCRuntime.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSObjCRuntime.h
+@@ -224,7 +224,10 @@
+ #endif
+ #endif
+ 
++#pragma warning "!!!!!!!!!!!!! Here (jb)"
++
+ #if !__has_feature(objc_instancetype)
++#pragma warning "!!!!!!!!!!!!! Here-1 (jb)"
+ #undef instancetype
+ #define instancetype id
+ #endif
+@@ -416,9 +419,16 @@
+ typedef NS_ENUM(NSInteger, NSComparisonResult) {NSOrderedAscending = -1L, NSOrderedSame, NSOrderedDescending};
+ 
+ #if NS_BLOCKS_AVAILABLE
+-typedef NSComparisonResult (^NSComparator)(id obj1, id obj2);
++  #if defined(__clang__)
++    typedef NSComparisonResult (^NSComparator)(id obj1, id obj2);
++  #else
++    typedef NSComparisonResult *NSComparator;
++  #endif
++#else
++  typedef NSComparisonResult *NSComparator;
+ #endif
+ 
++
+ typedef NS_OPTIONS(NSUInteger, NSEnumerationOptions) {
+     NSEnumerationConcurrent = (1UL << 0),
+     NSEnumerationReverse = (1UL << 1),
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSOperation.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSOperation.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSOperation.h
+@@ -53,7 +53,11 @@
+ 
+ @property NSOperationQueuePriority queuePriority;
+ 
++#if defined(__clang__)
+ @property (copy) void (^completionBlock)(void) NS_AVAILABLE(10_6, 4_0);
++#else
++@property void *completionBlock NS_AVAILABLE(10_6, 4_0);
++#endif
+ 
+ - (void)waitUntilFinished NS_AVAILABLE(10_6, 4_0);
+ 
+@@ -74,9 +78,16 @@
+     void *_reserved2;
+ }
+ 
++#if defined(__clang__)
+ + (instancetype)blockOperationWithBlock:(void (^)(void))block;
+ 
+ - (void)addExecutionBlock:(void (^)(void))block;
++#else
+++ (instancetype)blockOperationWithBlock:(void *(void))block;
++
++- (void)addExecutionBlock:(void *(void))block;
++#endif
++
+ @property (readonly, copy) NSArray *executionBlocks;
+ 
+ @end
+@@ -112,7 +123,11 @@
+ - (void)addOperation:(NSOperation *)op;
+ - (void)addOperations:(NSArray *)ops waitUntilFinished:(BOOL)wait NS_AVAILABLE(10_6, 4_0);
+ 
++#if defined(__clang__)
+ - (void)addOperationWithBlock:(void (^)(void))block NS_AVAILABLE(10_6, 4_0);
++#else
++- (void)addOperationWithBlock:(void *(void))block NS_AVAILABLE(10_6, 4_0);
++#endif
+ 
+ @property (readonly, copy) NSArray *operations;
+ @property (readonly) NSUInteger operationCount NS_AVAILABLE(10_6, 4_0);
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSOrderedSet.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSOrderedSet.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSOrderedSet.h
+@@ -55,6 +55,7 @@
+ @property (readonly, copy) NSArray *array;
+ @property (readonly, copy) NSSet *set;
+ 
++#if defined(__clang__)
+ - (void)enumerateObjectsUsingBlock:(void (^)(id obj, NSUInteger idx, BOOL *stop))block;
+ - (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void (^)(id obj, NSUInteger idx, BOOL *stop))block;
+ - (void)enumerateObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts usingBlock:(void (^)(id obj, NSUInteger idx, BOOL *stop))block;
+@@ -66,7 +67,19 @@
+ - (NSIndexSet *)indexesOfObjectsPassingTest:(BOOL (^)(id obj, NSUInteger idx, BOOL *stop))predicate;
+ - (NSIndexSet *)indexesOfObjectsWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL (^)(id obj, NSUInteger idx, BOOL *stop))predicate;
+ - (NSIndexSet *)indexesOfObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(BOOL (^)(id obj, NSUInteger idx, BOOL *stop))predicate;
++#else
++- (void)enumerateObjectsUsingBlock:(void *(id obj, NSUInteger idx, BOOL *stop))block;
++- (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *(id obj, NSUInteger idx, BOOL *stop))block;
++- (void)enumerateObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts usingBlock:(void *(id obj, NSUInteger idx, BOOL *stop))block;
+ 
++- (NSUInteger)indexOfObjectPassingTest:(BOOL *(id obj, NSUInteger idx, BOOL *stop))predicate;
++- (NSUInteger)indexOfObjectWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL *(id obj, NSUInteger idx, BOOL *stop))predicate;
++- (NSUInteger)indexOfObjectAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(BOOL *(id obj, NSUInteger idx, BOOL *stop))predicate;
++
++- (NSIndexSet *)indexesOfObjectsPassingTest:(BOOL *(id obj, NSUInteger idx, BOOL *stop))predicate;
++- (NSIndexSet *)indexesOfObjectsWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL *(id obj, NSUInteger idx, BOOL *stop))predicate;
++- (NSIndexSet *)indexesOfObjectsAtIndexes:(NSIndexSet *)s options:(NSEnumerationOptions)opts passingTest:(BOOL *(id obj, NSUInteger idx, BOOL *stop))predicate;
++#endif
+ - (NSUInteger)indexOfObject:(id)object inSortedRange:(NSRange)range options:(NSBinarySearchingOptions)opts usingComparator:(NSComparator)cmp; // binary search
+ 
+ - (NSArray *)sortedArrayUsingComparator:(NSComparator)cmptr;
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSPredicate.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSPredicate.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSPredicate.h
+@@ -28,8 +28,11 @@
+ + (NSPredicate *)predicateFromMetadataQueryString:(NSString *)queryString NS_AVAILABLE_MAC(10_9);
+ 
+ + (NSPredicate *)predicateWithValue:(BOOL)value;    // return predicates that always evaluate to true/false
+-
++#if defined(__clang__)
+ + (NSPredicate*)predicateWithBlock:(BOOL (^)(id evaluatedObject, NSDictionary *bindings))block NS_AVAILABLE(10_6, 4_0);
++#else
+++ (NSPredicate*)predicateWithBlock:(BOOL *(id evaluatedObject, NSDictionary *bindings))block NS_AVAILABLE(10_6, 4_0);
++#endif
+ 
+ @property (readonly, copy) NSString *predicateFormat;    // returns the format string of the predicate
+ 
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSProcessInfo.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSProcessInfo.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSProcessInfo.h
+@@ -165,7 +165,11 @@
+ /*
+  * Synchronously perform an activity. The activity will be automatically ended after your block argument returns. The reason string is used for debugging.
+  */
++#if defined(__clang__)
+ - (void)performActivityWithOptions:(NSActivityOptions)options reason:(NSString *)reason usingBlock:(void (^)(void))block NS_AVAILABLE(10_9, 7_0);
++#else
++- (void)performActivityWithOptions:(NSActivityOptions)options reason:(NSString *)reason usingBlock:(void *(void))block NS_AVAILABLE(10_9, 7_0);
++#endif
+ 
+ @end
+ 
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSProgress.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSProgress.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSProgress.h
+@@ -15,9 +15,15 @@
+     int64_t _reserved4;
+     id _values;
+     id _reserved5;
++#if defined(__clang__)
+     void (^_cancellationHandler)(void);
+     void (^_pausingHandler)(void);
+     void (^_prioritizationHandler)(void);
++#else
++    void *_cancellationHandler;
++    void *_pausingHandler;
++    void *prioritizationHandler;
++#endif
+     uint64_t _flags;
+     id _userInfoProxy;
+     NSString *_publisherID;
+@@ -98,8 +104,13 @@
+ 
+ /* A block to be invoked when -cancel or -pause is invoked, respectively. The block will be invoked even when the method is invoked on an ancestor of the receiver, or an instance of NSProgress in another process that resulted from publishing the receiver or an ancestor of the receiver. Your block won't be invoked on any particular queue. If it must do work on a specific queue then it should schedule that work on that queue.
+ */
++#if defined(__clang__)
+ @property (copy) void (^cancellationHandler)(void);
+ @property (copy) void (^pausingHandler)(void);
++#else
++@property void *cancellationHandler;
++@property void *pausingHandler;
++#endif
+ 
+ /* Set a value in the dictionary returned by invocations of -userInfo, with appropriate KVO notification for properties whose values can depend on values in the user info dictionary, like localizedDescription. If a nil value is passed then the dictionary entry is removed.
+ */
+@@ -150,8 +161,13 @@
+ 
+ #pragma mark *** Observing and Controlling File Progress by Other Processes (OS X Only) ***
+ 
++#if defined(__clang__)
+ typedef void (^NSProgressUnpublishingHandler)(void);
+ typedef NSProgressUnpublishingHandler (^NSProgressPublishingHandler)(NSProgress *progress);
++#else
++typedef void *NSProgressUnpublishingHandler;
++typedef NSProgressUnpublishingHandler *NSProgressPublishingHandler;
++#endif
+ 
+ /* Register to hear about file progress. The passed-in block will be invoked when -publish has been sent to an NSProgress whose NSProgressFileURLKey user info dictionary entry is an NSURL locating the same item located by the passed-in NSURL, or an item directly contained by it. The NSProgress passed to your block will be a proxy of the one that was published. The passed-in block may return another block. If it does, then that returned block will be invoked when the corresponding invocation of -unpublish is made, or the publishing process terminates, or +removeSubscriber: is invoked. Your blocks will be invoked on the main thread.
+ */
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSRegularExpression.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSRegularExpression.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSRegularExpression.h
+@@ -69,7 +69,11 @@
+ /* The fundamental matching method on NSRegularExpression is a block iterator.  There are several additional convenience methods, for returning all matches at once, the number of matches, the first match, or the range of the first match.  Each match is specified by an instance of NSTextCheckingResult (of type NSTextCheckingTypeRegularExpression) in which the overall match range is given by the range property (equivalent to rangeAtIndex:0) and any capture group ranges are given by rangeAtIndex: for indexes from 1 to numberOfCaptureGroups.  {NSNotFound, 0} is used if a particular capture group does not participate in the match.
+ */
+ 
++#if defined(__clang__)
+ - (void)enumerateMatchesInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range usingBlock:(void (^)(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop))block;
++#else
++- (void)enumerateMatchesInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range usingBlock:(void *(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop))block;
++#endif
+ 
+ - (NSArray *)matchesInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range;
+ - (NSUInteger)numberOfMatchesInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range;
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSSet.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSSet.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSSet.h
+@@ -38,12 +38,19 @@
+ - (NSSet *)setByAddingObjectsFromSet:(NSSet *)other NS_AVAILABLE(10_5, 2_0);
+ - (NSSet *)setByAddingObjectsFromArray:(NSArray *)other NS_AVAILABLE(10_5, 2_0);
+ 
++#if defined(__clang__)
+ - (void)enumerateObjectsUsingBlock:(void (^)(id obj, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
+ - (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void (^)(id obj, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
+ 
+ - (NSSet *)objectsPassingTest:(BOOL (^)(id obj, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
+ - (NSSet *)objectsWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL (^)(id obj, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
++#else
++- (void)enumerateObjectsUsingBlock:(void *(id obj, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
++- (void)enumerateObjectsWithOptions:(NSEnumerationOptions)opts usingBlock:(void *(id obj, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
+ 
++- (NSSet *)objectsPassingTest:(BOOL *(id obj, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
++- (NSSet *)objectsWithOptions:(NSEnumerationOptions)opts passingTest:(BOOL *(id obj, BOOL *stop))predicate NS_AVAILABLE(10_6, 4_0);
++#endif
+ @end
+ 
+ @interface NSSet (NSSetCreation)
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSString.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSString.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSString.h
+@@ -184,8 +184,14 @@
+ 
+ /* In the enumerate methods, the blocks will be invoked inside an autorelease pool, so any values assigned inside the block should be retained.
+ */
++#if defined(__clang__)
+ - (void)enumerateSubstringsInRange:(NSRange)range options:(NSStringEnumerationOptions)opts usingBlock:(void (^)(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
+ - (void)enumerateLinesUsingBlock:(void (^)(NSString *line, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
++#else
++- (void)enumerateSubstringsInRange:(NSRange)range options:(NSStringEnumerationOptions)opts usingBlock:(void *(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
++- (void)enumerateLinesUsingBlock:(void *(NSString *line, BOOL *stop))block NS_AVAILABLE(10_6, 4_0);
++#endif
++
+ 
+ @property (readonly, copy) NSString *description;
+ 
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSTask.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSTask.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSTask.h
+@@ -52,7 +52,11 @@
+ /*
+ A block to be invoked when the process underlying the NSTask terminates.  Setting the block to nil is valid, and stops the previous block from being invoked, as long as it hasn't started in any way.  The NSTask is passed as the argument to the block so the block does not have to capture, and thus retain, it.  The block is copied when set.  Only one termination handler block can be set at any time.  The execution context in which the block is invoked is undefined.  If the NSTask has already finished, the block is executed immediately/soon (not necessarily on the current thread).  If a terminationHandler is set on an NSTask, the NSTaskDidTerminateNotification notification is not posted for that task.  Also note that -waitUntilExit won't wait until the terminationHandler has been fully executed.  You cannot use this property in a concrete subclass of NSTask which hasn't been updated to include an implementation of the storage and use of it.  
+ */
++#if defined(__clang__)
+ @property (copy) void (^terminationHandler)(NSTask *) NS_AVAILABLE(10_7, NA);
++#else
++@property void *terminationHandler NS_AVAILABLE(10_7, NA);
++#endif
+ 
+ @property NSQualityOfService qualityOfService NS_AVAILABLE(10_10, 8_0); // read-only after the task is launched
+ 
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSURLCache.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSURLCache.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSURLCache.h
+@@ -255,6 +255,11 @@
+ 
+ @interface NSURLCache (NSURLSessionTaskAdditions)
+ - (void)storeCachedResponse:(NSCachedURLResponse *)cachedResponse forDataTask:(NSURLSessionDataTask *)dataTask NS_AVAILABLE(10_10, 8_0);
++#if defined(__clang__)
+ - (void)getCachedResponseForDataTask:(NSURLSessionDataTask *)dataTask completionHandler:(void (^) (NSCachedURLResponse *cachedResponse))completionHandler NS_AVAILABLE(10_10, 8_0);
++#else
++- (void)getCachedResponseForDataTask:(NSURLSessionDataTask *)dataTask completionHandler:(void *(NSCachedURLResponse *cachedResponse))completionHandler NS_AVAILABLE(10_10, 8_0);
++#endif
+ - (void)removeCachedResponseForDataTask:(NSURLSessionDataTask *)dataTask NS_AVAILABLE(10_10, 8_0);
++
+ @end
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSURLConnection.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSURLConnection.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSURLConnection.h
+@@ -449,9 +449,15 @@
+     @param
+          handler   A block which receives the results of the resource load.
+  */
++#if defined(__clang__) 
+ + (void)sendAsynchronousRequest:(NSURLRequest*) request
+                           queue:(NSOperationQueue*) queue
+               completionHandler:(void (^)(NSURLResponse* response, NSData* data, NSError* connectionError)) handler NS_AVAILABLE(10_7, 5_0);
++#else
+++ (void)sendAsynchronousRequest:(NSURLRequest*) request
++                          queue:(NSOperationQueue*) queue
++              completionHandler:(void *(NSURLResponse* response, NSData* data, NSError* connectionError)) handler NS_AVAILABLE(10_7, 5_0);
++#endif
+            
+ @end
+                    
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSURLCredentialStorage.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSURLCredentialStorage.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSURLCredentialStorage.h
+@@ -104,10 +104,18 @@
+ @end
+ 
+ @interface NSURLCredentialStorage (NSURLSessionTaskAdditions)
++#if defined(__clang__)
+ - (void)getCredentialsForProtectionSpace:(NSURLProtectionSpace *)protectionSpace task:(NSURLSessionTask *)task completionHandler:(void (^) (NSDictionary *credentials))completionHandler NS_AVAILABLE(10_10, 8_0);
++#else
++- (void)getCredentialsForProtectionSpace:(NSURLProtectionSpace *)protectionSpace task:(NSURLSessionTask *)task completionHandler:(void *(NSDictionary *credentials))completionHandler NS_AVAILABLE(10_10, 8_0);
++#endif
+ - (void)setCredential:(NSURLCredential *)credential forProtectionSpace:(NSURLProtectionSpace *)protectionSpace task:(NSURLSessionTask *)task NS_AVAILABLE(10_10, 8_0);
+ - (void)removeCredential:(NSURLCredential *)credential forProtectionSpace:(NSURLProtectionSpace *)protectionSpace options:(NSDictionary *)options task:(NSURLSessionTask *)task NS_AVAILABLE(10_10, 8_0);
++#if defined(__clang__)
+ - (void)getDefaultCredentialForProtectionSpace:(NSURLProtectionSpace *)space task:(NSURLSessionTask *)task completionHandler:(void (^) (NSURLCredential *credential))completionHandler NS_AVAILABLE(10_10, 8_0);
++#else
++- (void)getDefaultCredentialForProtectionSpace:(NSURLProtectionSpace *)space task:(NSURLSessionTask *)task completionHandler:(void *(NSURLCredential *credential))completionHandler NS_AVAILABLE(10_10, 8_0);
++#endif
+ - (void)setDefaultCredential:(NSURLCredential *)credential forProtectionSpace:(NSURLProtectionSpace *)protectionSpace task:(NSURLSessionTask *)task NS_AVAILABLE(10_10, 8_0);
+ @end
+ 
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSURLSession.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSURLSession.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSURLSession.h
+@@ -146,11 +146,17 @@
+  */
+ - (void)invalidateAndCancel;
+ 
++#if defined(__clang__)
+ - (void)resetWithCompletionHandler:(void (^)(void))completionHandler;    /* empty all cookies, cache and credential stores, removes disk files, issues -flushWithCompletionHandler:. Invokes completionHandler() on the delegate queue if not nil. */
+ - (void)flushWithCompletionHandler:(void (^)(void))completionHandler;    /* flush storage to disk and clear transient network caches.  Invokes completionHandler() on the delegate queue if not nil. */
+ 
+ - (void)getTasksWithCompletionHandler:(void (^)(NSArray *dataTasks, NSArray *uploadTasks, NSArray *downloadTasks))completionHandler; /* invokes completionHandler with outstanding data, upload and download tasks. */
++#else
++- (void)resetWithCompletionHandler:(void *(void))completionHandler;    /* empty all cookies, cache and credential stores, removes disk files, issues -flushWithCompletionHandler:. Invokes completionHandler() on the delegate queue if not nil. */
++- (void)flushWithCompletionHandler:(void *(void))completionHandler;    /* flush storage to disk and clear transient network caches.  Invokes completionHandler() on the delegate queue if not nil. */
+ 
++- (void)getTasksWithCompletionHandler:(void *(NSArray *dataTasks, NSArray *uploadTasks, NSArray *downloadTasks))completionHandler; /* invokes completionHandler with outstanding data, upload and download tasks. */
++#endif
+ /* 
+  * NSURLSessionTask objects are always created in a suspended state and
+  * must be sent the -resume message before they will execute.
+@@ -200,24 +206,41 @@
+  * see <Foundation/NSURLError.h>.  The delegate, if any, will still be
+  * called for authentication challenges.
+  */
++#if defined(__clang__)
+ - (NSURLSessionDataTask *)dataTaskWithRequest:(NSURLRequest *)request completionHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))completionHandler NS_CLASS_AVAILABLE(NSURLSESSION_AVAILABLE, 7_0);
+ - (NSURLSessionDataTask *)dataTaskWithURL:(NSURL *)url completionHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))completionHandler NS_CLASS_AVAILABLE(NSURLSESSION_AVAILABLE, 7_0);
++#else
++- (NSURLSessionDataTask *)dataTaskWithRequest:(NSURLRequest *)request completionHandler:(void *(NSData *data, NSURLResponse *response, NSError *error))completionHandler NS_CLASS_AVAILABLE(NSURLSESSION_AVAILABLE, 7_0);
++- (NSURLSessionDataTask *)dataTaskWithURL:(NSURL *)url completionHandler:(void *(NSData *data, NSURLResponse *response, NSError *error))completionHandler NS_CLASS_AVAILABLE(NSURLSESSION_AVAILABLE, 7_0);
++#endif
+ 
+ /*
+  * upload convenience method.
+  */
++#if defined(__clang__)
+ - (NSURLSessionUploadTask *)uploadTaskWithRequest:(NSURLRequest *)request fromFile:(NSURL *)fileURL completionHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))completionHandler NS_CLASS_AVAILABLE(NSURLSESSION_AVAILABLE, 7_0);
+ - (NSURLSessionUploadTask *)uploadTaskWithRequest:(NSURLRequest *)request fromData:(NSData *)bodyData completionHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))completionHandler NS_CLASS_AVAILABLE(NSURLSESSION_AVAILABLE, 7_0);
++#else
++- (NSURLSessionUploadTask *)uploadTaskWithRequest:(NSURLRequest *)request fromFile:(NSURL *)fileURL completionHandler:(void *(NSData *data, NSURLResponse *response, NSError *error))completionHandler NS_CLASS_AVAILABLE(NSURLSESSION_AVAILABLE, 7_0);
++- (NSURLSessionUploadTask *)uploadTaskWithRequest:(NSURLRequest *)request fromData:(NSData *)bodyData completionHandler:(void *(NSData *data, NSURLResponse *response, NSError *error))completionHandler NS_CLASS_AVAILABLE(NSURLSESSION_AVAILABLE, 7_0);
+ 
++#endif
+ /*
+  * download task convenience methods.  When a download successfully
+  * completes, the NSURL will point to a file that must be read or
+  * copied during the invocation of the completion routine.  The file
+  * will be removed automatically.
+  */
++ 
++#if defined(__clang__)
+ - (NSURLSessionDownloadTask *)downloadTaskWithRequest:(NSURLRequest *)request completionHandler:(void (^)(NSURL *location, NSURLResponse *response, NSError *error))completionHandler NS_CLASS_AVAILABLE(NSURLSESSION_AVAILABLE, 7_0);
+ - (NSURLSessionDownloadTask *)downloadTaskWithURL:(NSURL *)url completionHandler:(void (^)(NSURL *location, NSURLResponse *response, NSError *error))completionHandler NS_CLASS_AVAILABLE(NSURLSESSION_AVAILABLE, 7_0);
+ - (NSURLSessionDownloadTask *)downloadTaskWithResumeData:(NSData *)resumeData completionHandler:(void (^)(NSURL *location, NSURLResponse *response, NSError *error))completionHandler NS_CLASS_AVAILABLE(NSURLSESSION_AVAILABLE, 7_0);
++#else
++- (NSURLSessionDownloadTask *)downloadTaskWithRequest:(NSURLRequest *)request completionHandler:(void *(NSURL *location, NSURLResponse *response, NSError *error))completionHandler NS_CLASS_AVAILABLE(NSURLSESSION_AVAILABLE, 7_0);
++- (NSURLSessionDownloadTask *)downloadTaskWithURL:(NSURL *)url completionHandler:(void *(NSURL *location, NSURLResponse *response, NSError *error))completionHandler NS_CLASS_AVAILABLE(NSURLSESSION_AVAILABLE, 7_0);
++- (NSURLSessionDownloadTask *)downloadTaskWithResumeData:(NSData *)resumeData completionHandler:(void *(NSURL *location, NSURLResponse *response, NSError *error))completionHandler NS_CLASS_AVAILABLE(NSURLSESSION_AVAILABLE, 7_0);
++#endif
+ 
+ @end
+ 
+@@ -347,7 +370,11 @@
+  * If resume data cannot be created, the completion handler will be
+  * called with nil resumeData.
+  */
++#if defined(__clang__)
+ - (void)cancelByProducingResumeData:(void (^)(NSData *resumeData))completionHandler;
++#else
++- (void)cancelByProducingResumeData:(void *(NSData *resumeData))completionHandler;
++#endif
+ 
+ @end
+ 
+@@ -497,8 +524,13 @@
+  * behavior will be to use the default handling, which may involve user
+  * interaction. 
+  */
++#if defined(__clang__)
+ - (void)URLSession:(NSURLSession *)session didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge
+                                              completionHandler:(void (^)(NSURLSessionAuthChallengeDisposition disposition, NSURLCredential *credential))completionHandler;
++#else
++- (void)URLSession:(NSURLSession *)session didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge
++                                             completionHandler:(void *(NSURLSessionAuthChallengeDisposition disposition, NSURLCredential *credential))completionHandler;
++#endif                                             
+ 
+ /* If an application has received an
+  * -application:handleEventsForBackgroundURLSession:completionHandler:
+@@ -527,26 +559,44 @@
+  *
+  * For tasks in background sessions, redirections will always be followed and this method will not be called.
+  */
++#if defined(__clang__) 
+ - (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task
+                      willPerformHTTPRedirection:(NSHTTPURLResponse *)response
+                                      newRequest:(NSURLRequest *)request
+                               completionHandler:(void (^)(NSURLRequest *))completionHandler;
++#else
++- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task
++                     willPerformHTTPRedirection:(NSHTTPURLResponse *)response
++                                     newRequest:(NSURLRequest *)request
++                              completionHandler:(void *(NSURLRequest *))completionHandler;
++#endif
+ 
+ /* The task has received a request specific authentication challenge.
+  * If this delegate is not implemented, the session specific authentication challenge
+  * will *NOT* be called and the behavior will be the same as using the default handling
+  * disposition. 
+  */
++#if defined(__clang__) 
+ - (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task
+                             didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge 
+                               completionHandler:(void (^)(NSURLSessionAuthChallengeDisposition disposition, NSURLCredential *credential))completionHandler;
++#else
++- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task
++                            didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge 
++                              completionHandler:(void *(NSURLSessionAuthChallengeDisposition disposition, NSURLCredential *credential))completionHandler;
++#endif
+ 
+ /* Sent if a task requires a new, unopened body stream.  This may be
+  * necessary when authentication has failed for any request that
+  * involves a body stream. 
+  */
++#if defined(__clang__)
+ - (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task
+                               needNewBodyStream:(void (^)(NSInputStream *bodyStream))completionHandler;
++#else
++- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task
++                              needNewBodyStream:(void *(NSInputStream *bodyStream))completionHandler;
++#endif
+ 
+ /* Sent periodically to notify the delegate of upload progress.  This
+  * information is also available as properties of the task.
+@@ -578,9 +628,15 @@
+  *
+  * This method will not be called for background upload tasks (which cannot be converted to download tasks).
+  */
++#if defined(__clang__)
+ - (void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask
+                                  didReceiveResponse:(NSURLResponse *)response
+                                   completionHandler:(void (^)(NSURLSessionResponseDisposition disposition))completionHandler;
++#else
++- (void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask
++                                 didReceiveResponse:(NSURLResponse *)response
++                                  completionHandler:(void *(NSURLSessionResponseDisposition disposition))completionHandler;
++#endif
+ 
+ /* Notification that a data task has become a download task.  No
+  * future messages will be sent to the data task.
+@@ -602,10 +658,15 @@
+  * attempted for a given resource, and you should not rely on this
+  * message to receive the resource data.
+  */
++#if defined(__clang__)
+ - (void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask
+                                   willCacheResponse:(NSCachedURLResponse *)proposedResponse 
+                                   completionHandler:(void (^)(NSCachedURLResponse *cachedResponse))completionHandler;
+-
++#else
++- (void)URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask
++                                  willCacheResponse:(NSCachedURLResponse *)proposedResponse 
++                                  completionHandler:(void *(NSCachedURLResponse *cachedResponse))completionHandler;
++#endif
+ @end
+ 
+ /*
+@@ -652,7 +713,11 @@
+ - (NSURLSessionDataTask *)dataTaskWithHTTPGetRequest:(NSURL *)url NS_DEPRECATED(NSURLSESSION_AVAILABLE, NSURLSESSION_AVAILABLE, 7_0, 7_0);
+ 
+ /* Use -dataTaskWithURL:completionHandler: instead */
++#if defined(__clang__)
+ - (NSURLSessionDataTask *)dataTaskWithHTTPGetRequest:(NSURL *)url completionHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))completionHandler NS_DEPRECATED(NSURLSESSION_AVAILABLE, NSURLSESSION_AVAILABLE, 7_0, 7_0);
++#else
++- (NSURLSessionDataTask *)dataTaskWithHTTPGetRequest:(NSURL *)url completionHandler:(void *(NSData *data, NSURLResponse *response, NSError *error))completionHandler NS_DEPRECATED(NSURLSESSION_AVAILABLE, NSURLSESSION_AVAILABLE, 7_0, 7_0);
++#endif
+ @end
+ 
+ @interface NSURLSessionConfiguration (NSURLSessionDeprecated)
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSUserScriptTask.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSUserScriptTask.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSUserScriptTask.h
+@@ -34,7 +34,11 @@
+ @property (readonly, copy) NSURL *scriptURL;
+ 
+ // Execute the script with no input and ignoring any result.  This and the other "execute" methods below may be called at most once on any given instance.  If the script completed normally, the completion handler's "error" parameter will be nil.
++#if defined(__clang__)
+ typedef void (^NSUserScriptTaskCompletionHandler)(NSError *error);
++#else
++typedef void *NSUserScriptTaskCompletionHandler;
++#endif
+ - (void)executeWithCompletionHandler:(NSUserScriptTaskCompletionHandler)handler;
+ 
+ @end
+@@ -51,9 +55,12 @@
+ @property (retain) NSFileHandle *standardError;
+ 
+ // Execute the file with the given arguments.  "arguments" is an array of NSStrings.  The arguments do not undergo shell expansion, so you do not need to do special quoting, and shell variables are not resolved.
++#if defined(__clang__)
+ typedef void (^NSUserUnixTaskCompletionHandler)(NSError *error);
++#else
++typedef void *NSUserUnixTaskCompletionHandler;
++#endif
+ - (void)executeWithArguments:(NSArray *)arguments completionHandler:(NSUserUnixTaskCompletionHandler)handler;
+-
+ @end
+ 
+ 
+@@ -66,7 +73,11 @@
+ }
+ 
+ // Execute the AppleScript script by sending it the given Apple event.  Pass nil to execute the script's default "run" handler.
++#if defined(__clang__)
+ typedef void (^NSUserAppleScriptTaskCompletionHandler)(NSAppleEventDescriptor *result, NSError *error);
++#else
++typedef void *NSUserAppleScriptTaskCompletionHandler;
++#endif
+ - (void)executeWithAppleEvent:(NSAppleEventDescriptor *)event completionHandler:(NSUserAppleScriptTaskCompletionHandler)handler;
+ 
+ @end
+@@ -84,7 +95,11 @@
+ @property (copy) NSDictionary *variables;
+ 
+ // Execute the Automator workflow, passing it the given input.
++#if defined(__clang__)
+ typedef void (^NSUserAutomatorTaskCompletionHandler)(id result, NSError *error);
++#else
++typedef void *NSUserAutomatorTaskCompletionHandler;
++#endif
+ - (void)executeWithInput:(id <NSSecureCoding>)input completionHandler:(NSUserAutomatorTaskCompletionHandler)handler;
+ 
+ @end
+Index: OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSXPCConnection.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSXPCConnection.h
++++ OSX-sdk/System/Library/Frameworks/Foundation.framework/Versions/C/Headers/NSXPCConnection.h
+@@ -21,7 +21,11 @@
+ - (id)remoteObjectProxy;
+ 
+ // Returns a proxy object which will invoke the error handling block if an error occurs on the connection. If the message sent to the proxy has a reply handler, then either the error handler or the reply handler will be called exactly once. This proxy object will also conform with the NSXPCProxyCreating protocol.
++#if defined(__clang__)
+ - (id)remoteObjectProxyWithErrorHandler:(void (^)(NSError *error))handler;
++#else
++- (id)remoteObjectProxyWithErrorHandler:(void *(NSError *error))handler;
++#endif
+ 
+ @end
+ 
+@@ -42,8 +46,13 @@
+     dispatch_queue_t _userQueue;
+     uint32_t _state;
+     uint32_t _state2;
++#if defined(__clang__)
+     void (^_interruptionHandler)();
+     void (^_invalidationHandler)();
++#else
++    void *_interruptionHandler;
++    void *_invalidationHandler;
++#endif
+     id _exportInfo;
+     id _repliesRequested;
+     id _importInfo;
+@@ -80,16 +89,28 @@
+ // Get a proxy for the remote object (that is, the object exported from the other side of this connection). See descriptions in NSXPCProxyCreating for more details.
+ @property (readonly, retain) id remoteObjectProxy;
+ 
++#if defined(__clang__)
+ - (id)remoteObjectProxyWithErrorHandler:(void (^)(NSError *error))handler;
++#else
++- (id)remoteObjectProxyWithErrorHandler:(void *(NSError *error))handler;
++#endif
+ 
+ // The interruption handler will be called if the remote process exits or crashes. It may be possible to re-establish the connection by simply sending another message. The handler will be invoked on the same queue as replies and other handlers, but there is no guarantee of ordering between those callbacks and this one.
+ // The interruptionHandler property is cleared after the connection becomes invalid. This is to mitigate the impact of a retain cycle created by referencing the NSXPCConnection instance inside this block.
++#if defined(__clang__)
+ @property (copy) void (^interruptionHandler)(void);
++#else
++@property void *interruptionHandler;
++#endif
+ 
+ // The invalidation handler will be called if the connection can not be formed or the connection has terminated and may not be re-established. The handler will be invoked on the same queue as replies and other handlers, but there is no guarantee of ordering between those callbacks and this one.
+ // You may not send messages over the connection from within an invalidation handler block.
+ // The invalidationHandler property is cleared after the connection becomes invalid. This is to mitigate the impact of a retain cycle created by referencing the NSXPCConnection instance inside this block.
++#if defined(__clang__)
+ @property (copy) void (^invalidationHandler)(void);
++#else
++@property void *invalidationHandler;
++#endif
+ 
+ // All connections start suspended. You must resume them before they will start processing received messages or sending messages through the remoteObjectProxy. Note: Calling resume does not immediately launch the XPC service. The service will be started on demand when the first message is sent. However, if the name specified when creating the connection is determined to be invalid, your invalidation handler will be called immediately (and asynchronously) after calling resume.
+ - (void)resume;
diff --git a/recipes-devtools/osx-runtime/files/fsevents-clang.patch b/recipes-devtools/osx-runtime/files/fsevents-clang.patch
new file mode 100644
index 0000000..1ef21ba
--- /dev/null
+++ b/recipes-devtools/osx-runtime/files/fsevents-clang.patch
@@ -0,0 +1,135 @@
+Index: OSX-sdk/System/Library/Frameworks/CoreServices.framework/Frameworks/FSEvents.framework/Headers/FSEvents.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/CoreServices.framework/Frameworks/FSEvents.framework/Headers/FSEvents.h
++++ OSX-sdk/System/Library/Frameworks/CoreServices.framework/Frameworks/FSEvents.framework/Headers/FSEvents.h
+@@ -259,7 +259,11 @@ enum {
+    * historical events, i.e., those delivered before the HistoryDone
+    * sentinel event.
+    */
++#if defined(__clang__)
+   kFSEventStreamCreateFlagIgnoreSelf __OSX_AVAILABLE_STARTING(__MAC_10_6, __IPHONE_6_0) = 0x00000008,
++#else
++  kFSEventStreamCreateFlagIgnoreSelf = 0x00000008,
++#endif
+ 
+   /*
+    * Request file-level notifications.  Your stream will receive events
+@@ -267,7 +271,11 @@ enum {
+    * only receiving directory level notifications.  Use this flag with
+    * care as it will generate significantly more events than without it.
+    */
++#if defined(__clang__)
+   kFSEventStreamCreateFlagFileEvents __OSX_AVAILABLE_STARTING(__MAC_10_7, __IPHONE_6_0) = 0x00000010,
++#else
++  kFSEventStreamCreateFlagFileEvents = 0x00000010,
++#endif
+ 
+   /*
+    * Tag events that were triggered by the current process with the "OwnEvent" flag.
+@@ -276,7 +284,11 @@ enum {
+    * triggered by your process. Note: this has no effect on historical events, i.e.,
+    * those delivered before the HistoryDone sentinel event.
+    */
++#if defined(__clang__)
+   kFSEventStreamCreateFlagMarkSelf __OSX_AVAILABLE_STARTING(__MAC_10_9, __IPHONE_7_0) = 0x00000020
++#else
++  kFSEventStreamCreateFlagMarkSelf = 0x00000020
++#endif
+ };
+ 
+ 
+@@ -411,6 +423,7 @@ enum {
+    * A file system object was created at the specific path supplied in this event.
+    * (This flag is only ever set if you specified the FileEvents flag when creating the stream.)
+    */
++#if defined(__clang__)
+   kFSEventStreamEventFlagItemCreated __OSX_AVAILABLE_STARTING(__MAC_10_7, __IPHONE_6_0) = 0x00000100,
+ 
+   /*
+@@ -489,7 +502,86 @@ enum {
+    * (This flag is only ever set if you specified the FileEvents flag when creating the stream.)
+    */
+   kFSEventStreamEventFlagItemIsLastHardlink __OSX_AVAILABLE_STARTING(__MAC_10_10, __IPHONE_9_0) = 0x00200000,
++#else
++  kFSEventStreamEventFlagItemCreated = 0x00000100,
+ 
++  /*
++   * A file system object was removed at the specific path supplied in this event.
++   * (This flag is only ever set if you specified the FileEvents flag when creating the stream.)
++   */
++  kFSEventStreamEventFlagItemRemoved = 0x00000200,
++
++  /*
++   * A file system object at the specific path supplied in this event had its metadata modified.
++   * (This flag is only ever set if you specified the FileEvents flag when creating the stream.)
++   */
++  kFSEventStreamEventFlagItemInodeMetaMod = 0x00000400,
++
++  /*
++   * A file system object was renamed at the specific path supplied in this event.
++   * (This flag is only ever set if you specified the FileEvents flag when creating the stream.)
++   */
++  kFSEventStreamEventFlagItemRenamed = 0x00000800,
++
++  /*
++   * A file system object at the specific path supplied in this event had its data modified.
++   * (This flag is only ever set if you specified the FileEvents flag when creating the stream.)
++   */
++  kFSEventStreamEventFlagItemModified = 0x00001000,
++
++  /*
++   * A file system object at the specific path supplied in this event had its FinderInfo data modified.
++   * (This flag is only ever set if you specified the FileEvents flag when creating the stream.)
++   */
++  kFSEventStreamEventFlagItemFinderInfoMod = 0x00002000,
++
++  /*
++   * A file system object at the specific path supplied in this event had its ownership changed.
++   * (This flag is only ever set if you specified the FileEvents flag when creating the stream.)
++   */
++  kFSEventStreamEventFlagItemChangeOwner = 0x00004000,
++
++  /*
++   * A file system object at the specific path supplied in this event had its extended attributes modified.
++   * (This flag is only ever set if you specified the FileEvents flag when creating the stream.)
++   */
++  kFSEventStreamEventFlagItemXattrMod = 0x00008000,
++
++  /*
++   * The file system object at the specific path supplied in this event is a regular file.
++   * (This flag is only ever set if you specified the FileEvents flag when creating the stream.)
++   */
++  kFSEventStreamEventFlagItemIsFile = 0x00010000,
++
++  /*
++   * The file system object at the specific path supplied in this event is a directory.
++   * (This flag is only ever set if you specified the FileEvents flag when creating the stream.)
++   */
++  kFSEventStreamEventFlagItemIsDir = 0x00020000,
++
++  /*
++   * The file system object at the specific path supplied in this event is a symbolic link.
++   * (This flag is only ever set if you specified the FileEvents flag when creating the stream.)
++   */
++  kFSEventStreamEventFlagItemIsSymlink = 0x00040000,
++
++  /*
++   * Indicates the event was triggered by the current process.
++   * (This flag is only ever set if you specified the MarkSelf flag when creating the stream.)
++   */
++  kFSEventStreamEventFlagOwnEvent = 0x00080000,
++
++  /* 
++   * Indicates the object at the specified path supplied in this event is a hard link.
++   * (This flag is only ever set if you specified the FileEvents flag when creating the stream.)
++   */
++  kFSEventStreamEventFlagItemIsHardlink = 0x00100000,
++
++  /* Indicates the object at the specific path supplied in this event was the last hard link.
++   * (This flag is only ever set if you specified the FileEvents flag when creating the stream.)
++   */
++  kFSEventStreamEventFlagItemIsLastHardlink = 0x00200000,
++#endif
+ };
+ 
+ 
diff --git a/recipes-devtools/osx-runtime/files/remove_unsupported_attribute_availability_with_message_for_gcc_osx10.10.patch b/recipes-devtools/osx-runtime/files/remove_unsupported_attribute_availability_with_message_for_gcc_osx10.10.patch
new file mode 100644
index 0000000..4faf9d6
--- /dev/null
+++ b/recipes-devtools/osx-runtime/files/remove_unsupported_attribute_availability_with_message_for_gcc_osx10.10.patch
@@ -0,0 +1,128 @@
+Index: OSX-sdk/System/Library/Frameworks/CoreFoundation.framework/Headers/CFAvailability.h
+===================================================================
+--- OSX-sdk.orig/System/Library/Frameworks/CoreFoundation.framework/Headers/CFAvailability.h
++++ OSX-sdk/System/Library/Frameworks/CoreFoundation.framework/Headers/CFAvailability.h
+@@ -23,122 +23,6 @@
+ #define __has_extension(x) 0
+ #endif
+ 
+-// The arguments to these availability macros is a version number, e.g. 10_6, 3_0 or 'NA'
+-// To use a deprecation message with the macro, add a string as the last argument.
+-#if __has_feature(attribute_availability_with_message)
+-
+-#define __NSi_2_0 introduced=2.0
+-#define __NSi_2_1 introduced=2.1
+-#define __NSi_2_2 introduced=2.2
+-#define __NSi_3_0 introduced=3.0
+-#define __NSi_3_1 introduced=3.1
+-#define __NSi_3_2 introduced=3.2
+-#define __NSi_4_0 introduced=4.0
+-#define __NSi_4_1 introduced=4.1
+-#define __NSi_4_2 introduced=4.2
+-#define __NSi_4_3 introduced=4.3
+-#define __NSi_5_0 introduced=5.0
+-#define __NSi_5_1 introduced=5.1
+-#define __NSi_6_0 introduced=6.0
+-#define __NSi_6_1 introduced=6.1
+-#define __NSi_7_0 introduced=7.0
+-#define __NSi_7_1 introduced=7.1
+-#define __NSi_8_0 introduced=8.0
+-#define __NSi_8_1 introduced=8.1
+-#define __NSi_9_0 introduced=9.0
+-#define __NSi_9_1 introduced=9.1
+-#define __NSi_10_0 introduced=10.0
+-#define __NSi_10_1 introduced=10.1
+-#define __NSi_10_2 introduced=10.2
+-#define __NSi_10_3 introduced=10.3
+-#define __NSi_10_4 introduced=10.4
+-#define __NSi_10_5 introduced=10.5
+-#define __NSi_10_6 introduced=10.6
+-#define __NSi_10_7 introduced=10.7
+-#define __NSi_10_8 introduced=10.8
+-#define __NSi_10_9 introduced=10.9
+-#define __NSi_10_10 introduced=10.10
+-#define __NSi_10_10_2 introduced=10.10.2
+-#define __NSi_10_10_3 introduced=10.10.3
+-
+-#define __NSd_2_0 ,deprecated=2.0
+-#define __NSd_2_1 ,deprecated=2.1
+-#define __NSd_2_2 ,deprecated=2.2
+-#define __NSd_3_0 ,deprecated=3.0
+-#define __NSd_3_1 ,deprecated=3.1
+-#define __NSd_3_2 ,deprecated=3.2
+-#define __NSd_4_0 ,deprecated=4.0
+-#define __NSd_4_1 ,deprecated=4.1
+-#define __NSd_4_2 ,deprecated=4.2
+-#define __NSd_4_3 ,deprecated=4.3
+-#define __NSd_5_0 ,deprecated=5.0
+-#define __NSd_5_1 ,deprecated=5.1
+-#define __NSd_6_0 ,deprecated=6.0
+-#define __NSd_6_1 ,deprecated=6.1
+-#define __NSd_7_0 ,deprecated=7.0
+-#define __NSd_7_1 ,deprecated=7.1
+-#define __NSd_8_0 ,deprecated=8.0
+-#define __NSd_8_1 ,deprecated=8.1
+-#define __NSd_9_0 ,deprecated=9.0
+-#define __NSd_9_1 ,deprecated=9.1
+-#define __NSd_10_0 ,deprecated=10.0
+-#define __NSd_10_1 ,deprecated=10.1
+-#define __NSd_10_2 ,deprecated=10.2
+-#define __NSd_10_3 ,deprecated=10.3
+-#define __NSd_10_4 ,deprecated=10.4
+-#define __NSd_10_5 ,deprecated=10.5
+-#define __NSd_10_6 ,deprecated=10.6
+-#define __NSd_10_7 ,deprecated=10.7
+-#define __NSd_10_8 ,deprecated=10.8
+-#define __NSd_10_9 ,deprecated=10.9
+-#define __NSd_10_10 ,deprecated=10.10
+-#define __NSd_10_10_2 ,deprecated=10.10.2
+-#define __NSd_10_10_3 ,deprecated=10.10.3
+-
+-#define __NSi_NA unavailable
+-#define __NSd_NA
+-
+-// Do not use TBD as an argument to NS_AVAILABLE
+-#define __NSi_TBD introduced=9876.5
+-
+-#if (TARGET_OS_MAC && !(TARGET_OS_EMBEDDED || TARGET_OS_IPHONE))
+-// This section is for compilers targeting OS X which support attribute_availability_with_message
+-
+-#define CF_AVAILABLE(_mac, _ios) __attribute__((availability(macosx,__NSi_##_mac)))
+-#define CF_AVAILABLE_MAC(_mac) __attribute__((availability(macosx,__NSi_##_mac)))
+-#define CF_AVAILABLE_IOS(_ios) __attribute__((availability(macosx,unavailable)))
+-#define CF_DEPRECATED(_macIntro, _macDep, _iosIntro, _iosDep, ...) __attribute__((availability(macosx,__NSi_##_macIntro __NSd_##_macDep,message="" __VA_ARGS__)))
+-#define CF_DEPRECATED_MAC(_macIntro, _macDep, ...) __attribute__((availability(macosx,__NSi_##_macIntro __NSd_##_macDep,message="" __VA_ARGS__)))
+-#define CF_DEPRECATED_IOS(_iosIntro, _iosDep, ...) __attribute__((availability(macosx,unavailable)))
+-
+-#elif (TARGET_OS_EMBEDDED || TARGET_OS_IPHONE)
+-// This section is for compilers targeting iOS which support attribute_availability_with_message
+-
+-#define CF_AVAILABLE(_mac, _ios) __attribute__((availability(ios,__NSi_##_ios)))
+-#define CF_AVAILABLE_MAC(_mac) __attribute__((availability(ios,unavailable)))
+-#define CF_AVAILABLE_IOS(_ios) __attribute__((availability(ios,__NSi_##_ios)))
+-#define CF_DEPRECATED(_macIntro, _macDep, _iosIntro, _iosDep, ...) __attribute__((availability(ios,__NSi_##_iosIntro __NSd_##_iosDep,message="" __VA_ARGS__)))
+-#define CF_DEPRECATED_MAC(_macIntro, _macDep, ...) __attribute__((availability(ios,unavailable)))
+-#define CF_DEPRECATED_IOS(_iosIntro, _iosDep, ...) __attribute__((availability(ios,__NSi_##_iosIntro __NSd_##_iosDep,message="" __VA_ARGS__)))
+-
+-#endif
+-
+-#elif (TARGET_OS_MAC && !(TARGET_OS_EMBEDDED || TARGET_OS_IPHONE)) || (TARGET_OS_EMBEDDED || TARGET_OS_IPHONE)
+-// This section is for OS X or iOS, and compilers without support for attribute_availability_with_message. We fall back to Availability.h.
+-
+-#ifndef __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_0
+-#define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_0 __AVAILABILITY_INTERNAL_DEPRECATED
+-#endif
+-
+-#define CF_AVAILABLE(_mac, _ios) __OSX_AVAILABLE_STARTING(__MAC_##_mac, __IPHONE_##_ios)
+-#define CF_AVAILABLE_MAC(_mac) __OSX_AVAILABLE_STARTING(__MAC_##_mac, __IPHONE_NA)
+-#define CF_AVAILABLE_IOS(_ios) __OSX_AVAILABLE_STARTING(__MAC_NA, __IPHONE_##_ios)
+-#define CF_DEPRECATED(_macIntro, _macDep, _iosIntro, _iosDep, ...) __OSX_AVAILABLE_BUT_DEPRECATED(__MAC_##_macIntro, __MAC_##_macDep, __IPHONE_##_iosIntro, __IPHONE_##_iosDep)
+-#define CF_DEPRECATED_MAC(_macIntro, _macDep, ...) __OSX_AVAILABLE_BUT_DEPRECATED(__MAC_##_macIntro, __MAC_##_macDep, __IPHONE_NA, __IPHONE_NA)
+-#define CF_DEPRECATED_IOS(_iosIntro, _iosDep, ...) __OSX_AVAILABLE_BUT_DEPRECATED(__MAC_NA, __MAC_NA, __IPHONE_##_iosIntro, __IPHONE_##_iosDep)
+-
+-#endif // __has_feature(attribute_availability_with_message)
+-
+ #ifndef CF_AVAILABLE
+ // This section is for platforms which do not support availability
+ #define CF_AVAILABLE(_mac, _ios)
+
diff --git a/recipes-devtools/osx-runtime/nativesdk-osx-runtime_10.10.bb b/recipes-devtools/osx-runtime/nativesdk-osx-runtime_10.10.bb
new file mode 100644
index 0000000..b3b7e7d
--- /dev/null
+++ b/recipes-devtools/osx-runtime/nativesdk-osx-runtime_10.10.bb
@@ -0,0 +1,70 @@
+DESCRIPTION = "Runtime libraries from OSX"
+LICENSE = "Proprietary"
+
+COMPATIBLE_HOST = ".*-darwin.*"
+
+SRC_URI = "file://OSX-sdk.zip \
+           file://remove_unsupported_attribute_availability_with_message_for_gcc_osx10.10.patch \
+           file://fix_typedef_dispatch_block_t.patch \
+           file://fsevents-clang.patch \
+           file://foundation_framework_headers_clang.patch \
+           file://LICENSE"
+
+LIC_FILES_CHKSUM = "file://${WORKDIR}/LICENSE;md5=03fe683ef28b9ddfe7f658a0f4b3b80e"
+
+S = "${WORKDIR}/OSX-sdk"
+#B = "${WORKDIR}/build-${TARGET_SYS}"
+
+inherit nativesdk
+
+INHIBIT_DEFAULT_DEPS = "1"
+
+PROVIDES += "virtual/nativesdk-libc"
+PROVIDES += "virtual/nativesdk-${SDK_PREFIX}libc-initial"
+PROVIDES += "virtual/nativesdk-${SDK_PREFIX}libc-for-gcc"
+
+# Work around pulling in eglibc for now...
+PROVIDES += "virtual/nativesdk-libintl"
+PROVIDES += "virtual/nativesdk-libiconv"
+
+CFLAGS[unexport] = "1"
+CXXFLAGS[unexport] = "1"
+CPPFLAGS[unexport] = "1"
+LDFLAGS[unexport] = "1"
+TARGET_CFLAGS[unexport] = "1"
+TARGET_CXXFLAGS[unexport] = "1"
+TARGET_CPPFLAGS[unexport] = "1"
+TARGET_LDFLAGS[unexport] = "1"
+
+do_configure () {
+	:
+}
+
+do_compile () {
+	:
+}
+
+do_install () {
+	mkdir ${D}/usr
+	cp -r ${S}/usr/* ${D}/usr/
+	mkdir -p ${D}/System/Library/Frameworks
+	cp -r ${S}/System/Library/Frameworks/* ${D}/System/Library/Frameworks/
+	mkdir -p ${D}/System/Library/PrivateFrameworks
+	cp -r ${S}/System/Library/PrivateFrameworks/* ${D}/System/Library/PrivateFrameworks/
+}
+
+FILES_${PN} = "/usr /System/Library/Frameworks"
+FILES_${PN} += " /System/Library/PrivateFrameworks"
+FILES_${PN}-staticdev = "/usr/lib/*.a  /usr/lib/php/extensions/no-debug-non-zts-20121212/opcache.a \
+	/System/Library/Frameworks/Tk.framework/Versions/8.4/libtkstub8.4.a \
+	/System/Library/Frameworks/Tk.framework/Versions/8.5/libtkstub8.5.a \
+	/System/Library/Frameworks/Tk.framework/libtkstub8.5.a \
+	/System/Library/Frameworks/Tcl.framework/Versions/8.4/libtclstub8.4.a \
+	/System/Library/Frameworks/Tcl.framework/Versions/8.5/libtclstub8.5.a \
+	/System/Library/Frameworks/Tcl.framework/libtclstub8.5.a \
+	"
+
+sysroot_stage_all() {
+	sysroot_stage_dir ${D} ${SYSROOT_DESTDIR}
+}
+
-- 
1.9.1


