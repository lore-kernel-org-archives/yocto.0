Return-Path: <quentin.schulz@streamunlimited.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0CD8E00E0D; Tue, 19 Nov 2019 08:06:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [213.33.87.16 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49D39E00DD3
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2019 08:06:40 -0800 (PST)
Received: from qschulz.suevie (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 47HW0Z5YsSz5tlC;
	Tue, 19 Nov 2019 17:06:38 +0100 (CET)
From: Quentin Schulz <quentin.schulz@streamunlimited.com>
To: yocto@yoctoproject.org
Date: Tue, 19 Nov 2019 17:06:17 +0100
Message-Id: <20191119160617.8085-1-quentin.schulz@streamunlimited.com>
X-Mailer: git-send-email 2.17.1
Cc: radek.dostal@streamunlimited.com, paul.eggleton@linux.intel.com,
	andriy.danylovskyy@streamunlimited.com
Subject: [warrior] [meta-qt4] recipes-qt4: qt4-embedded: fix build on GCC v8
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
X-List-Received-Date: Tue, 19 Nov 2019 16:06:42 -0000

At least since gcc v8, source code with asm volatile won't compile
anymore.

The volatile qualifier anyway is a no-op since asm blocks are implicitly
volatile as written in the documentation[1].

Let's get rid of this redundant qualifier so we can build with newer
GCCs.

The resulting error message when building for warrior is the following
(note that there is a bunch of them):
../3rdparty/javascriptcore/JavaScriptCore/jit/JITStubs.cpp:617:5: error: expected '(' before 'volatile'
asm volatile (
 ^~~~~~~~
 (
../3rdparty/javascriptcore/JavaScriptCore/jit/JITStubs.cpp:618:1: error: expected unqualified-id before string constant
".text\n"
^~~~~~~~~
../3rdparty/javascriptcore/JavaScriptCore/jit/JITStubs.cpp:617:15: error: expected ')' before string constant
asm volatile (
         ~^
          )
".text\n"
~~~~~~~~~

[1] https://gcc.gnu.org/onlinedocs/gcc/Basic-Asm.html#Basic-Asm

Signed-off-by: Quentin Schulz <quentin.schulz@streamunlimited.com>
---

Please ignore previous mail, I only sent a patch for the sources of qt4-embedded
and not a patch for meta-qt4.

 ...iptcore-JITStubs.cpp-allow-builds-of.patch | 262 ++++++++++++++++++
 recipes-qt4/qt4/qt4-embedded.inc              |   1 +
 2 files changed, 263 insertions(+)
 create mode 100644 recipes-qt4/qt4/qt4-4.8.7/0038-3rdparty-javascriptcore-JITStubs.cpp-allow-builds-of.patch

diff --git a/recipes-qt4/qt4/qt4-4.8.7/0038-3rdparty-javascriptcore-JITStubs.cpp-allow-builds-of.patch b/recipes-qt4/qt4/qt4-4.8.7/0038-3rdparty-javascriptcore-JITStubs.cpp-allow-builds-of.patch
new file mode 100644
index 0000000..12f955f
--- /dev/null
+++ b/recipes-qt4/qt4/qt4-4.8.7/0038-3rdparty-javascriptcore-JITStubs.cpp-allow-builds-of.patch
@@ -0,0 +1,262 @@
+From 6318ac5a0771fdf074bdfb929903c660fa1fa672 Mon Sep 17 00:00:00 2001
+From: Quentin Schulz <quentin.schulz@streamunlimited.com>
+Date: Fri, 15 Nov 2019 13:57:12 +0100
+Subject: [PATCH] 3rdparty: javascriptcore: JITStubs.cpp: allow builds of
+ JavaScriptCore with gcc v8
+
+At least since gcc v8, source code with asm volatile won't compile
+anymore.
+
+The volatile qualifier anyway is a no-op since asm blocks are implicitly
+volatile as written in the documentation[1].
+
+Let's get rid of this redundant qualifier so we can build with newer
+GCCs.
+
+The resulting error message is the following (note that there is a
+bunch of them):
+../3rdparty/javascriptcore/JavaScriptCore/jit/JITStubs.cpp:617:5: error: expected '(' before 'volatile'
+asm volatile (
+ ^~~~~~~~
+ (
+../3rdparty/javascriptcore/JavaScriptCore/jit/JITStubs.cpp:618:1: error: expected unqualified-id before string constant
+".text\n"
+^~~~~~~~~
+../3rdparty/javascriptcore/JavaScriptCore/jit/JITStubs.cpp:617:15: error: expected ')' before string constant
+asm volatile (
+	  ~^
+	   )
+".text\n"
+~~~~~~~~~
+
+[1] https://gcc.gnu.org/onlinedocs/gcc/Basic-Asm.html#Basic-Asm
+
+Upstream-Status: Inappropriate
+Signed-off-by: Quentin Schulz <quentin.schulz@streamunlimited.com>
+---
+ .../JavaScriptCore/jit/JITStubs.cpp           | 48 +++++++++----------
+ 1 file changed, 24 insertions(+), 24 deletions(-)
+
+diff --git a/src/3rdparty/javascriptcore/JavaScriptCore/jit/JITStubs.cpp b/src/3rdparty/javascriptcore/JavaScriptCore/jit/JITStubs.cpp
+index d8027ff2..dcead6d0 100644
+--- a/src/3rdparty/javascriptcore/JavaScriptCore/jit/JITStubs.cpp
++++ b/src/3rdparty/javascriptcore/JavaScriptCore/jit/JITStubs.cpp
+@@ -116,7 +116,7 @@ COMPILE_ASSERT(offsetof(struct JITStackFrame, savedEBX) == 0x3c, JITStackFrame_s
+ COMPILE_ASSERT(offsetof(struct JITStackFrame, callFrame) == 0x58, JITStackFrame_callFrame_offset_matches_ctiTrampoline);
+ COMPILE_ASSERT(offsetof(struct JITStackFrame, code) == 0x50, JITStackFrame_code_offset_matches_ctiTrampoline);
+ 
+-asm volatile (
++asm (
+ ".text\n"
+ ".globl " SYMBOL_STRING(ctiTrampoline) "\n"
+ HIDE_SYMBOL(ctiTrampoline) "\n"
+@@ -138,7 +138,7 @@ SYMBOL_STRING(ctiTrampoline) ":" "\n"
+     "ret" "\n"
+ );
+ 
+-asm volatile (
++asm (
+ ".globl " SYMBOL_STRING(ctiVMThrowTrampoline) "\n"
+ HIDE_SYMBOL(ctiVMThrowTrampoline) "\n"
+ SYMBOL_STRING(ctiVMThrowTrampoline) ":" "\n"
+@@ -154,7 +154,7 @@ SYMBOL_STRING(ctiVMThrowTrampoline) ":" "\n"
+     "ret" "\n"
+ );
+     
+-asm volatile (
++asm (
+ ".globl " SYMBOL_STRING(ctiOpThrowNotCaught) "\n"
+ HIDE_SYMBOL(ctiOpThrowNotCaught) "\n"
+ SYMBOL_STRING(ctiOpThrowNotCaught) ":" "\n"
+@@ -179,7 +179,7 @@ COMPILE_ASSERT(offsetof(struct JITStackFrame, savedRBX) == 0x48, JITStackFrame_s
+ COMPILE_ASSERT(offsetof(struct JITStackFrame, callFrame) == 0x90, JITStackFrame_callFrame_offset_matches_ctiTrampoline);
+ COMPILE_ASSERT(offsetof(struct JITStackFrame, code) == 0x80, JITStackFrame_code_offset_matches_ctiTrampoline);
+ 
+-asm volatile (
++asm (
+ ".globl " SYMBOL_STRING(ctiTrampoline) "\n"
+ HIDE_SYMBOL(ctiTrampoline) "\n"
+ SYMBOL_STRING(ctiTrampoline) ":" "\n"
+@@ -206,7 +206,7 @@ SYMBOL_STRING(ctiTrampoline) ":" "\n"
+     "ret" "\n"
+ );
+ 
+-asm volatile (
++asm (
+ ".globl " SYMBOL_STRING(ctiVMThrowTrampoline) "\n"
+ HIDE_SYMBOL(ctiVMThrowTrampoline) "\n"
+ SYMBOL_STRING(ctiVMThrowTrampoline) ":" "\n"
+@@ -222,7 +222,7 @@ SYMBOL_STRING(ctiVMThrowTrampoline) ":" "\n"
+     "ret" "\n"
+ );
+ 
+-asm volatile (
++asm (
+ ".globl " SYMBOL_STRING(ctiOpThrowNotCaught) "\n"
+ HIDE_SYMBOL(ctiOpThrowNotCaught) "\n"
+ SYMBOL_STRING(ctiOpThrowNotCaught) ":" "\n"
+@@ -242,7 +242,7 @@ SYMBOL_STRING(ctiOpThrowNotCaught) ":" "\n"
+ #error "JIT_STUB_ARGUMENT_VA_LIST not supported on ARMv7."
+ #endif
+ 
+-asm volatile (
++asm (
+ ".text" "\n"
+ ".align 2" "\n"
+ ".globl " SYMBOL_STRING(ctiTrampoline) "\n"
+@@ -269,7 +269,7 @@ SYMBOL_STRING(ctiTrampoline) ":" "\n"
+     "bx lr" "\n"
+ );
+ 
+-asm volatile (
++asm (
+ ".text" "\n"
+ ".align 2" "\n"
+ ".globl " SYMBOL_STRING(ctiVMThrowTrampoline) "\n"
+@@ -287,7 +287,7 @@ SYMBOL_STRING(ctiVMThrowTrampoline) ":" "\n"
+     "bx lr" "\n"
+ );
+ 
+-asm volatile (
++asm (
+ ".text" "\n"
+ ".align 2" "\n"
+ ".globl " SYMBOL_STRING(ctiOpThrowNotCaught) "\n"
+@@ -305,7 +305,7 @@ SYMBOL_STRING(ctiOpThrowNotCaught) ":" "\n"
+ 
+ #elif COMPILER(GCC) && CPU(ARM_TRADITIONAL)
+ 
+-asm volatile (
++asm (
+ ".globl " SYMBOL_STRING(ctiTrampoline) "\n"
+ HIDE_SYMBOL(ctiTrampoline) "\n"
+ SYMBOL_STRING(ctiTrampoline) ":" "\n"
+@@ -323,7 +323,7 @@ SYMBOL_STRING(ctiTrampoline) ":" "\n"
+     "mov pc, lr" "\n"
+ );
+ 
+-asm volatile (
++asm (
+ ".globl " SYMBOL_STRING(ctiVMThrowTrampoline) "\n"
+ HIDE_SYMBOL(ctiVMThrowTrampoline) "\n"
+ SYMBOL_STRING(ctiVMThrowTrampoline) ":" "\n"
+@@ -418,7 +418,7 @@ COMPILE_ASSERT(offsetof(struct JITStackFrame, callFrame) == 0x38, JITStackFrame_
+ COMPILE_ASSERT(offsetof(struct JITStackFrame, code) == 0x30, JITStackFrame_code_offset_matches_ctiTrampoline);
+ COMPILE_ASSERT(offsetof(struct JITStackFrame, savedEBX) == 0x1c, JITStackFrame_stub_argument_space_matches_ctiTrampoline);
+ 
+-asm volatile (
++asm (
+ ".text\n"
+ ".globl " SYMBOL_STRING(ctiTrampoline) "\n"
+ HIDE_SYMBOL(ctiTrampoline) "\n"
+@@ -440,7 +440,7 @@ SYMBOL_STRING(ctiTrampoline) ":" "\n"
+     "ret" "\n"
+ );
+ 
+-asm volatile (
++asm (
+ ".globl " SYMBOL_STRING(ctiVMThrowTrampoline) "\n"
+ HIDE_SYMBOL(ctiVMThrowTrampoline) "\n"
+ SYMBOL_STRING(ctiVMThrowTrampoline) ":" "\n"
+@@ -456,7 +456,7 @@ SYMBOL_STRING(ctiVMThrowTrampoline) ":" "\n"
+     "ret" "\n"
+ );
+     
+-asm volatile (
++asm (
+ ".globl " SYMBOL_STRING(ctiOpThrowNotCaught) "\n"
+ HIDE_SYMBOL(ctiOpThrowNotCaught) "\n"
+ SYMBOL_STRING(ctiOpThrowNotCaught) ":" "\n"
+@@ -480,7 +480,7 @@ COMPILE_ASSERT(offsetof(struct JITStackFrame, callFrame) == 0x58, JITStackFrame_
+ COMPILE_ASSERT(offsetof(struct JITStackFrame, code) == 0x48, JITStackFrame_code_offset_matches_ctiTrampoline);
+ COMPILE_ASSERT(offsetof(struct JITStackFrame, savedRBX) == 0x78, JITStackFrame_stub_argument_space_matches_ctiTrampoline);
+ 
+-asm volatile (
++asm (
+ ".text\n"
+ ".globl " SYMBOL_STRING(ctiTrampoline) "\n"
+ HIDE_SYMBOL(ctiTrampoline) "\n"
+@@ -515,7 +515,7 @@ SYMBOL_STRING(ctiTrampoline) ":" "\n"
+     "ret" "\n"
+ );
+ 
+-asm volatile (
++asm (
+ ".globl " SYMBOL_STRING(ctiVMThrowTrampoline) "\n"
+ HIDE_SYMBOL(ctiVMThrowTrampoline) "\n"
+ SYMBOL_STRING(ctiVMThrowTrampoline) ":" "\n"
+@@ -531,7 +531,7 @@ SYMBOL_STRING(ctiVMThrowTrampoline) ":" "\n"
+     "ret" "\n"
+ );
+ 
+-asm volatile (
++asm (
+ ".globl " SYMBOL_STRING(ctiOpThrowNotCaught) "\n"
+ HIDE_SYMBOL(ctiOpThrowNotCaught) "\n"
+ SYMBOL_STRING(ctiOpThrowNotCaught) ":" "\n"
+@@ -551,7 +551,7 @@ SYMBOL_STRING(ctiOpThrowNotCaught) ":" "\n"
+ #error "JIT_STUB_ARGUMENT_VA_LIST not supported on ARMv7."
+ #endif
+ 
+-asm volatile (
++asm (
+ ".text" "\n"
+ ".align 2" "\n"
+ ".globl " SYMBOL_STRING(ctiTrampoline) "\n"
+@@ -578,7 +578,7 @@ SYMBOL_STRING(ctiTrampoline) ":" "\n"
+     "bx lr" "\n"
+ );
+ 
+-asm volatile (
++asm (
+ ".text" "\n"
+ ".align 2" "\n"
+ ".globl " SYMBOL_STRING(ctiVMThrowTrampoline) "\n"
+@@ -596,7 +596,7 @@ SYMBOL_STRING(ctiVMThrowTrampoline) ":" "\n"
+     "bx lr" "\n"
+ );
+ 
+-asm volatile (
++asm (
+ ".text" "\n"
+ ".align 2" "\n"
+ ".globl " SYMBOL_STRING(ctiOpThrowNotCaught) "\n"
+@@ -614,7 +614,7 @@ SYMBOL_STRING(ctiOpThrowNotCaught) ":" "\n"
+ 
+ #elif COMPILER(GCC) && CPU(ARM_TRADITIONAL)
+ 
+-asm volatile (
++asm (
+ ".text\n"
+ ".globl " SYMBOL_STRING(ctiTrampoline) "\n"
+ HIDE_SYMBOL(ctiTrampoline) "\n"
+@@ -632,7 +632,7 @@ SYMBOL_STRING(ctiTrampoline) ":" "\n"
+     "mov pc, lr" "\n"
+ );
+ 
+-asm volatile (
++asm (
+ ".globl " SYMBOL_STRING(ctiVMThrowTrampoline) "\n"
+ HIDE_SYMBOL(ctiVMThrowTrampoline) "\n"
+ SYMBOL_STRING(ctiVMThrowTrampoline) ":" "\n"
+@@ -1024,7 +1024,7 @@ static NEVER_INLINE void throwStackOverflowError(CallFrame* callFrame, JSGlobalD
+     extern "C" { \
+         rtype JITStubThunked_##op(STUB_ARGS_DECLARATION); \
+     }; \
+-    asm volatile ( \
++    asm ( \
+         ".text" "\n" \
+         ".align 2" "\n" \
+         ".globl " SYMBOL_STRING(cti_##op) "\n" \
+@@ -1053,7 +1053,7 @@ COMPILE_ASSERT(offsetof(struct JITStackFrame, thunkReturnAddress) == THUNK_RETUR
+     extern "C" { \
+         rtype JITStubThunked_##op(STUB_ARGS_DECLARATION); \
+     }; \
+-    asm volatile ( \
++    asm ( \
+         ".globl " SYMBOL_STRING(cti_##op) "\n" \
+         HIDE_SYMBOL(cti_##op) "\n"             \
+         SYMBOL_STRING(cti_##op) ":" "\n" \
+-- 
+2.17.1
+
diff --git a/recipes-qt4/qt4/qt4-embedded.inc b/recipes-qt4/qt4/qt4-embedded.inc
index 9c2d9da..5d4a9b0 100644
--- a/recipes-qt4/qt4/qt4-embedded.inc
+++ b/recipes-qt4/qt4/qt4-embedded.inc
@@ -12,6 +12,7 @@ QT_BASE_LIB  ?= "libqt-embedded"
 # Set necessary variables in the profile
 SRC_URI += "file://qte.sh \
             file://0033-configure-support-c-0x-standard-for-directfd.patch \
+	    file://0001-3rdparty-javascriptcore-JITStubs.cpp-allow-builds-of.patch \
 "
 
 QT_EMBEDDED_FLAGS ?= " \
-- 
2.17.1


