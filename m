Return-Path: <leimaohui@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27E86C83F12
	for <webhook@archiver.kernel.org>; Tue, 29 Aug 2023 08:47:09 +0000 (UTC)
Received: from esa2.hc1455-7.c3s2.iphmx.com (esa2.hc1455-7.c3s2.iphmx.com [207.54.90.48])
 by mx.groups.io with SMTP id smtpd.web11.13107.1693298821014255635
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Aug 2023 01:47:01 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: fujitsu.com, ip: 207.54.90.48, mailfrom: leimaohui@fujitsu.com)
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="129895191"
X-IronPort-AV: E=Sophos;i="6.02,210,1688396400"; 
   d="scan'208";a="129895191"
Received: from unknown (HELO oym-r2.gw.nic.fujitsu.com) ([210.162.30.90])
  by esa2.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Aug 2023 17:46:58 +0900
Received: from oym-m3.gw.nic.fujitsu.com (oym-nat-oym-m3.gw.nic.fujitsu.com [192.168.87.60])
	by oym-r2.gw.nic.fujitsu.com (Postfix) with ESMTP id C1214CD7E2
	for <yocto@lists.yoctoproject.org>; Tue, 29 Aug 2023 17:46:55 +0900 (JST)
Received: from kws-ab3.gw.nic.fujitsu.com (kws-ab3.gw.nic.fujitsu.com [192.51.206.21])
	by oym-m3.gw.nic.fujitsu.com (Postfix) with ESMTP id 9D278D9461
	for <yocto@lists.yoctoproject.org>; Tue, 29 Aug 2023 17:46:54 +0900 (JST)
Received: from ubuntu20.g08.fujitsu.local (unknown [10.167.225.227])
	by kws-ab3.gw.nic.fujitsu.com (Postfix) with ESMTP id E91AF20074703;
	Tue, 29 Aug 2023 17:46:53 +0900 (JST)
From: leimaohui@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: Lei Maohui <leimaohui@fujitsu.com>
Subject: [yocto] [meta-java][PATCH] icedtea7-native: Fix build error after autoconf upgraded to 2.73 according to https://github.com/wocaishiliuke/openjdk7.
Date: Tue, 29 Aug 2023 16:46:52 +0800
Message-Id: <20230829084652.158404-1-leimaohui@fujitsu.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-27842.006
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-27842.006
X-TMASE-Result: 10--12.670400-10.000000
X-TMASE-MatchedRID: LHRmwHvTUTFaZ4LjXsl/UgqfFInLO1+qUuVVTCQr62p8ibT62vGkpyG+
	TaaivvuasjsyhyqHuLbKSyLhniwKzSGIqlqmIVBSzYK5U+QI3O7BOVz0Jwcxl0fyM5VfgjG2jcR
	qQigdY11P5YO2/a1BTPn8DBBcI1eukTgVTZl1A7gK3Ma88LL+blK6+0HOVoSoNS9A3X1uuODO/T
	5SZgJlw1XgL+88Anj15Rux3Mg53v9cQbUsJeVYropEbqc+UneT2I8NUKi360ZAzPYUSDzxTJlA4
	IpB7gNOln/QwCeLmNJ4Xern/Fx5bKPiydWxsrCob/oIJuUAIuHjLrHqvAiSy57fzNec2D1DwyTc
	3j7CJZ9Dd9yjJz2qcDN+Ymt5o2e0JUbhFArRKjkAPmNKDWsW0NDZ1FFTJUymv1CkpN/HBgwQXwq
	fovFY4RFvJgBDDVbLOWEuWhfvco1c415zKJPWMMOC5QFrchIlN7FjQ+zMUh5GXh0VnXIBtq+0gl
	vEogpj7QHQxPxLQSRftuJwrFEhTbkblkrgCLv43QfwsVk0UbtuRXh7bFKB7hWkdChCg+24qzM2e
	HPE5/Dq+N5IX/vvM1tiO6eCB67ZaAZk0sEcY14=
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Aug 2023 08:47:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60912

From: Lei Maohui <leimaohui@fujitsu.com>

openjdk-boot/hotspot/src/share/vm/code/dependencies.hpp:169:72: error: enumerator value for ‘all_types’ is not an integer constant
|   169 |     all_types           = ((1 << TYPE_LIMIT) - 1) & ((-1) << FIRST_TYPE),

| ../../../../../src/share/native/com/sun/java/util/jar/pack/jni.cpp:224:12: error: cannot convert ‘bool’ to ‘jobject’ {aka ‘_jobject*’} in return
|   224 |     return false;
|       |            ^~~~~

.....

Signed-off-by: Lei Maohui <leimaohui@fujitsu.com>
---
 recipes-core/icedtea/icedtea7-native.inc      |   3 +
 .../0001-For-autoconf-2.73.patch              | 942 ++++++++++++++++++
 2 files changed, 945 insertions(+)
 create mode 100644 recipes-core/icedtea/openjdk-7-03b147/0001-For-autoconf-2.73.patch

diff --git a/recipes-core/icedtea/icedtea7-native.inc b/recipes-core/icedtea/icedtea7-native.inc
index 0f317bb..1ea2ffa 100644
--- a/recipes-core/icedtea/icedtea7-native.inc
+++ b/recipes-core/icedtea/icedtea7-native.inc
@@ -58,6 +58,7 @@ SRC_URI = " \
   file://timezoneszip.patch \
   file://sigsegv.patch;apply=no \
   file://vframeArray_Fix_sigsegv.patch;apply=no \
+  file://0001-For-autoconf-2.73.patch;apply=no \
   "
 
 S = "${WORKDIR}/${ICEDTEA}"
@@ -158,6 +159,7 @@ do_configure:append() {
 	patch -p1 < ${WORKDIR}/jaxws_fix_NullPointerException.patch
 	patch -p1 < ${WORKDIR}/sigsegv.patch
 	patch -p1 < ${WORKDIR}/vframeArray_Fix_sigsegv.patch
+	patch -p1 < ${WORKDIR}/0001-For-autoconf-2.73.patch
 }
 
 EXTRA_OEMAKE = ' \
@@ -169,6 +171,7 @@ EXTRA_OEMAKE = ' \
 		${OEMAKE_BUILD_HEADLESS_ONLY} \
 		DISABLE_HOTSPOT_OS_VERSION_CHECK=ok \
                 UNZIP_BIN="${STAGING_BINDIR_NATIVE}/unzip" \
+                LDD=: \
                '
 
 do_compile() {
diff --git a/recipes-core/icedtea/openjdk-7-03b147/0001-For-autoconf-2.73.patch b/recipes-core/icedtea/openjdk-7-03b147/0001-For-autoconf-2.73.patch
new file mode 100644
index 0000000..6a392cd
--- /dev/null
+++ b/recipes-core/icedtea/openjdk-7-03b147/0001-For-autoconf-2.73.patch
@@ -0,0 +1,942 @@
+From aa44766ea0dd9cf3cb19b5a148c222a360fc447a Mon Sep 17 00:00:00 2001
+From: Lei Maohui <leimaohui@fujitsu.com>
+Date: Tue, 29 Aug 2023 05:42:41 +0000
+Subject: [PATCH] For autoconf-2.73.
+
+icedtea7-native met a lot of build issues after autoconf upgraded to 2.73.
+Reference to https://github.com/wocaishiliuke/openjdk7, submitted these
+patches to avoid build errors.
+
+Upstream-Status: Inappropriate
+Signed-off-by: Lei Maohui <leimaohui@fujitsu.com>
+---
+ .../hotspot/make/linux/makefiles/gcc.make     |   2 +-
+ .../src/share/vm/code/dependencies.hpp        |   2 +-
+ .../gc_implementation/g1/concurrentMark.cpp   |  10 +-
+ .../hotspot/src/share/vm/prims/unsafe.cpp     | 276 +++++++++---------
+ .../native/com/sun/java/util/jar/pack/jni.cpp |   2 +-
+ openjdk/hotspot/make/linux/makefiles/gcc.make |   2 +-
+ .../src/share/vm/code/dependencies.hpp        |   2 +-
+ .../gc_implementation/g1/concurrentMark.cpp   |  10 +-
+ openjdk/hotspot/src/share/vm/prims/unsafe.cpp | 276 +++++++++---------
+ .../native/com/sun/java/util/jar/pack/jni.cpp |   2 +-
+ 10 files changed, 292 insertions(+), 292 deletions(-)
+
+diff --git a/openjdk-boot/hotspot/make/linux/makefiles/gcc.make b/openjdk-boot/hotspot/make/linux/makefiles/gcc.make
+index 9e63c5c5..dd6d5473 100644
+--- a/openjdk-boot/hotspot/make/linux/makefiles/gcc.make
++++ b/openjdk-boot/hotspot/make/linux/makefiles/gcc.make
+@@ -143,7 +143,7 @@ else
+ endif
+
+ # Compiler warnings are treated as errors
+-WARNINGS_ARE_ERRORS = -Werror
++WARNINGS_ARE_ERRORS = -Wno-all
+
+ # Except for a few acceptable ones
+ # Since GCC 4.3, -Wconversion has changed its meanings to warn these implicit
+diff --git a/openjdk-boot/hotspot/src/share/vm/code/dependencies.hpp b/openjdk-boot/hotspot/src/share/vm/code/dependencies.hpp
+index 2b8b2afe..74364e89 100644
+--- a/openjdk-boot/hotspot/src/share/vm/code/dependencies.hpp
++++ b/openjdk-boot/hotspot/src/share/vm/code/dependencies.hpp
+@@ -166,7 +166,7 @@ class Dependencies: public ResourceObj {
+     LG2_TYPE_LIMIT = 4,  // assert(TYPE_LIMIT <= (1<<LG2_TYPE_LIMIT))
+
+     // handy categorizations of dependency types:
+-    all_types           = ((1 << TYPE_LIMIT) - 1) & ((-1) << FIRST_TYPE),
++    all_types           = ((1 << TYPE_LIMIT) - 1) & ((~0u) << FIRST_TYPE),
+
+     non_klass_types     = (1 << call_site_target_value),
+     klass_types         = all_types & ~non_klass_types,
+diff --git a/openjdk-boot/hotspot/src/share/vm/gc_implementation/g1/concurrentMark.cpp b/openjdk-boot/hotspot/src/share/vm/gc_implementation/g1/concurrentMark.cpp
+index d78db6e5..35848ce1 100644
+--- a/openjdk-boot/hotspot/src/share/vm/gc_implementation/g1/concurrentMark.cpp
++++ b/openjdk-boot/hotspot/src/share/vm/gc_implementation/g1/concurrentMark.cpp
+@@ -4541,16 +4541,16 @@ CMTask::CMTask(int task_id,
+ // For per-region info
+ #define G1PPRL_TYPE_FORMAT            "   %-4s"
+ #define G1PPRL_TYPE_H_FORMAT          "   %4s"
+-#define G1PPRL_BYTE_FORMAT            "  "SIZE_FORMAT_W(9)
++#define G1PPRL_BYTE_FORMAT            "  " SIZE_FORMAT_W(9)
+ #define G1PPRL_BYTE_H_FORMAT          "  %9s"
+ #define G1PPRL_DOUBLE_FORMAT          "  %14.1f"
+ #define G1PPRL_DOUBLE_H_FORMAT        "  %14s"
+
+ // For summary info
+-#define G1PPRL_SUM_ADDR_FORMAT(tag)    "  "tag":"G1PPRL_ADDR_BASE_FORMAT
+-#define G1PPRL_SUM_BYTE_FORMAT(tag)    "  "tag": "SIZE_FORMAT
+-#define G1PPRL_SUM_MB_FORMAT(tag)      "  "tag": %1.2f MB"
+-#define G1PPRL_SUM_MB_PERC_FORMAT(tag) G1PPRL_SUM_MB_FORMAT(tag)" / %1.2f %%"
++#define G1PPRL_SUM_ADDR_FORMAT(tag)    "  " tag ":" G1PPRL_ADDR_BASE_FORMAT
++#define G1PPRL_SUM_BYTE_FORMAT(tag)    "  " tag ": " SIZE_FORMAT
++#define G1PPRL_SUM_MB_FORMAT(tag)      "  " tag ": %1.2f MB"
++#define G1PPRL_SUM_MB_PERC_FORMAT(tag) G1PPRL_SUM_MB_FORMAT(tag) " / %1.2f %%"
+
+ G1PrintRegionLivenessInfoClosure::
+ G1PrintRegionLivenessInfoClosure(outputStream* out, const char* phase_name)
+diff --git a/openjdk-boot/hotspot/src/share/vm/prims/unsafe.cpp b/openjdk-boot/hotspot/src/share/vm/prims/unsafe.cpp
+index 48d13dba..d0a211d7 100644
+--- a/openjdk-boot/hotspot/src/share/vm/prims/unsafe.cpp
++++ b/openjdk-boot/hotspot/src/share/vm/prims/unsafe.cpp
+@@ -941,7 +941,7 @@ UNSAFE_ENTRY(jclass, Unsafe_DefineClass1(JNIEnv *env, jobject unsafe, jstring na
+   }
+ UNSAFE_END
+
+-#define DAC_Args CLS"[B["OBJ
++#define DAC_Args CLS "[B[" OBJ
+ // define a class but do not make it known to the class loader or system dictionary
+ // - host_class:  supplies context for linkage, access control, protection domain, and class loader
+ // - data:  bytes of a class file, a raw memory address (length gives the number of bytes)
+@@ -1276,40 +1276,40 @@ UNSAFE_END
+
+ #define LANG "Ljava/lang/"
+
+-#define OBJ LANG"Object;"
+-#define CLS LANG"Class;"
+-#define CTR LANG"reflect/Constructor;"
+-#define FLD LANG"reflect/Field;"
+-#define MTH LANG"reflect/Method;"
+-#define THR LANG"Throwable;"
++#define OBJ LANG "Object;"
++#define CLS LANG "Class;"
++#define CTR LANG "reflect/Constructor;"
++#define FLD LANG "reflect/Field;"
++#define MTH LANG "reflect/Method;"
++#define THR LANG "Throwable;"
+
+-#define DC0_Args LANG"String;[BII"
+-#define DC1_Args DC0_Args LANG"ClassLoader;" "Ljava/security/ProtectionDomain;"
++#define DC0_Args LANG "String;[BII"
++#define DC1_Args  LANG "String;[BII" LANG "ClassLoader;" "Ljava/security/ProtectionDomain;"
+
+ #define CC (char*)  /*cast a literal from (const char*)*/
+ #define FN_PTR(f) CAST_FROM_FN_PTR(void*, &f)
+
+ // define deprecated accessors for compabitility with 1.4.0
+ #define DECLARE_GETSETOOP_140(Boolean, Z) \
+-    {CC"get"#Boolean,      CC"("OBJ"I)"#Z,      FN_PTR(Unsafe_Get##Boolean##140)}, \
+-    {CC"put"#Boolean,      CC"("OBJ"I"#Z")V",   FN_PTR(Unsafe_Set##Boolean##140)}
++    {CC "get" #Boolean,      CC "(" OBJ "I)" #Z,      FN_PTR(Unsafe_Get##Boolean##140)}, \
++    {CC "put" #Boolean,      CC "(" OBJ "I" #Z ")V",   FN_PTR(Unsafe_Set##Boolean##140)}
+
+ // Note:  In 1.4.1, getObject and kin take both int and long offsets.
+ #define DECLARE_GETSETOOP_141(Boolean, Z) \
+-    {CC"get"#Boolean,      CC"("OBJ"J)"#Z,      FN_PTR(Unsafe_Get##Boolean)}, \
+-    {CC"put"#Boolean,      CC"("OBJ"J"#Z")V",   FN_PTR(Unsafe_Set##Boolean)}
++    {CC "get" #Boolean,      CC "(" OBJ "J)" #Z,      FN_PTR(Unsafe_Get##Boolean)}, \
++    {CC "put" #Boolean,      CC "(" OBJ "J" #Z ")V",   FN_PTR(Unsafe_Set##Boolean)}
+
+ // Note:  In 1.5.0, there are volatile versions too
+ #define DECLARE_GETSETOOP(Boolean, Z) \
+-    {CC"get"#Boolean,      CC"("OBJ"J)"#Z,      FN_PTR(Unsafe_Get##Boolean)}, \
+-    {CC"put"#Boolean,      CC"("OBJ"J"#Z")V",   FN_PTR(Unsafe_Set##Boolean)}, \
+-    {CC"get"#Boolean"Volatile",      CC"("OBJ"J)"#Z,      FN_PTR(Unsafe_Get##Boolean##Volatile)}, \
+-    {CC"put"#Boolean"Volatile",      CC"("OBJ"J"#Z")V",   FN_PTR(Unsafe_Set##Boolean##Volatile)}
++    {CC "get" #Boolean,      CC "(" OBJ "J)" #Z,      FN_PTR(Unsafe_Get##Boolean)}, \
++    {CC "put" #Boolean,      CC "(" OBJ "J" #Z ")V",   FN_PTR(Unsafe_Set##Boolean)}, \
++    {CC "get" #Boolean"Volatile",      CC "(" OBJ "J)" #Z,      FN_PTR(Unsafe_Get##Boolean##Volatile)}, \
++    {CC "put" #Boolean"Volatile",      CC "(" OBJ "J" #Z ")V",   FN_PTR(Unsafe_Set##Boolean##Volatile)}
+
+
+ #define DECLARE_GETSETNATIVE(Byte, B) \
+-    {CC"get"#Byte,         CC"("ADR")"#B,       FN_PTR(Unsafe_GetNative##Byte)}, \
+-    {CC"put"#Byte,         CC"("ADR#B")V",      FN_PTR(Unsafe_SetNative##Byte)}
++    {CC "get" #Byte,         CC "(" ADR ")" #B,       FN_PTR(Unsafe_GetNative##Byte)}, \
++    {CC "put" #Byte,         CC "(" ADR#B ")V",      FN_PTR(Unsafe_SetNative##Byte)}
+
+
+
+@@ -1317,8 +1317,8 @@ UNSAFE_END
+ // contain the necessarily updated Unsafe.java.
+ static JNINativeMethod methods_140[] = {
+
+-    {CC"getObject",        CC"("OBJ"I)"OBJ"",   FN_PTR(Unsafe_GetObject140)},
+-    {CC"putObject",        CC"("OBJ"I"OBJ")V",  FN_PTR(Unsafe_SetObject140)},
++    {CC "getObject",        CC "(" OBJ "I)" OBJ "",   FN_PTR(Unsafe_GetObject140)},
++    {CC "putObject",        CC "(" OBJ "I" OBJ ")V",  FN_PTR(Unsafe_SetObject140)},
+
+     DECLARE_GETSETOOP_140(Boolean, Z),
+     DECLARE_GETSETOOP_140(Byte, B),
+@@ -1337,36 +1337,36 @@ static JNINativeMethod methods_140[] = {
+     DECLARE_GETSETNATIVE(Float, F),
+     DECLARE_GETSETNATIVE(Double, D),
+
+-    {CC"getAddress",         CC"("ADR")"ADR,             FN_PTR(Unsafe_GetNativeAddress)},
+-    {CC"putAddress",         CC"("ADR""ADR")V",          FN_PTR(Unsafe_SetNativeAddress)},
++    {CC "getAddress",         CC "(" ADR ")" ADR,             FN_PTR(Unsafe_GetNativeAddress)},
++    {CC "putAddress",         CC "(" ADR "" ADR ")V",          FN_PTR(Unsafe_SetNativeAddress)},
+
+-    {CC"allocateMemory",     CC"(J)"ADR,                 FN_PTR(Unsafe_AllocateMemory)},
+-    {CC"reallocateMemory",   CC"("ADR"J)"ADR,            FN_PTR(Unsafe_ReallocateMemory)},
++    {CC "allocateMemory",     CC "(J)" ADR,                 FN_PTR(Unsafe_AllocateMemory)},
++    {CC "reallocateMemory",   CC "(" ADR "J)" ADR,            FN_PTR(Unsafe_ReallocateMemory)},
+ //  {CC"setMemory",          CC"("ADR"JB)V",             FN_PTR(Unsafe_SetMemory)},
+ //  {CC"copyMemory",         CC"("ADR ADR"J)V",          FN_PTR(Unsafe_CopyMemory)},
+-    {CC"freeMemory",         CC"("ADR")V",               FN_PTR(Unsafe_FreeMemory)},
+-
+-    {CC"fieldOffset",        CC"("FLD")I",               FN_PTR(Unsafe_FieldOffset)}, //deprecated
+-    {CC"staticFieldBase",    CC"("CLS")"OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromClass)}, //deprecated
+-    {CC"ensureClassInitialized",CC"("CLS")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
+-    {CC"arrayBaseOffset",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayBaseOffset)},
+-    {CC"arrayIndexScale",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayIndexScale)},
+-    {CC"addressSize",        CC"()I",                    FN_PTR(Unsafe_AddressSize)},
+-    {CC"pageSize",           CC"()I",                    FN_PTR(Unsafe_PageSize)},
+-
+-    {CC"defineClass",        CC"("DC0_Args")"CLS,        FN_PTR(Unsafe_DefineClass0)},
+-    {CC"defineClass",        CC"("DC1_Args")"CLS,        FN_PTR(Unsafe_DefineClass1)},
+-    {CC"allocateInstance",   CC"("CLS")"OBJ,             FN_PTR(Unsafe_AllocateInstance)},
+-    {CC"monitorEnter",       CC"("OBJ")V",               FN_PTR(Unsafe_MonitorEnter)},
+-    {CC"monitorExit",        CC"("OBJ")V",               FN_PTR(Unsafe_MonitorExit)},
+-    {CC"throwException",     CC"("THR")V",               FN_PTR(Unsafe_ThrowException)}
++    {CC "freeMemory",         CC "(" ADR ")V",               FN_PTR(Unsafe_FreeMemory)},
++
++    {CC "fieldOffset",        CC "(" FLD ")I",               FN_PTR(Unsafe_FieldOffset)}, //deprecated
++    {CC "staticFieldBase",    CC "(" CLS ")" OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromClass)}, //deprecated
++    {CC "ensureClassInitialized",CC "(" CLS ")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
++    {CC "arrayBaseOffset",    CC "(" CLS ")I",               FN_PTR(Unsafe_ArrayBaseOffset)},
++    {CC "arrayIndexScale",    CC "(" CLS ")I",               FN_PTR(Unsafe_ArrayIndexScale)},
++    {CC "addressSize",        CC "()I",                    FN_PTR(Unsafe_AddressSize)},
++    {CC "pageSize",           CC "()I",                    FN_PTR(Unsafe_PageSize)},
++
++    {CC "defineClass",        CC "(" DC0_Args ")" CLS,        FN_PTR(Unsafe_DefineClass0)},
++    {CC "defineClass",        CC "(" DC1_Args ")" CLS,        FN_PTR(Unsafe_DefineClass1)},
++    {CC "allocateInstance",   CC "(" CLS ")" OBJ,             FN_PTR(Unsafe_AllocateInstance)},
++    {CC "monitorEnter",       CC "(" OBJ ")V",               FN_PTR(Unsafe_MonitorEnter)},
++    {CC "monitorExit",        CC "(" OBJ ")V",               FN_PTR(Unsafe_MonitorExit)},
++    {CC "throwException",     CC "(" THR ")V",               FN_PTR(Unsafe_ThrowException)}
+ };
+
+ // These are the old methods prior to the JSR 166 changes in 1.5.0
+ static JNINativeMethod methods_141[] = {
+
+-    {CC"getObject",        CC"("OBJ"J)"OBJ"",   FN_PTR(Unsafe_GetObject)},
+-    {CC"putObject",        CC"("OBJ"J"OBJ")V",  FN_PTR(Unsafe_SetObject)},
++    {CC "getObject",        CC "(" OBJ "J)" OBJ "",   FN_PTR(Unsafe_GetObject)},
++    {CC "putObject",        CC "(" OBJ "J" OBJ ")V",  FN_PTR(Unsafe_SetObject)},
+
+     DECLARE_GETSETOOP_141(Boolean, Z),
+     DECLARE_GETSETOOP_141(Byte, B),
+@@ -1385,40 +1385,40 @@ static JNINativeMethod methods_141[] = {
+     DECLARE_GETSETNATIVE(Float, F),
+     DECLARE_GETSETNATIVE(Double, D),
+
+-    {CC"getAddress",         CC"("ADR")"ADR,             FN_PTR(Unsafe_GetNativeAddress)},
+-    {CC"putAddress",         CC"("ADR""ADR")V",          FN_PTR(Unsafe_SetNativeAddress)},
++    {CC "getAddress",         CC "(" ADR ")" ADR,             FN_PTR(Unsafe_GetNativeAddress)},
++    {CC "putAddress",         CC "(" ADR "" ADR ")V",          FN_PTR(Unsafe_SetNativeAddress)},
+
+-    {CC"allocateMemory",     CC"(J)"ADR,                 FN_PTR(Unsafe_AllocateMemory)},
+-    {CC"reallocateMemory",   CC"("ADR"J)"ADR,            FN_PTR(Unsafe_ReallocateMemory)},
++    {CC "allocateMemory",     CC "(J)" ADR,                 FN_PTR(Unsafe_AllocateMemory)},
++    {CC "reallocateMemory",   CC "(" ADR "J)" ADR,            FN_PTR(Unsafe_ReallocateMemory)},
+ //  {CC"setMemory",          CC"("ADR"JB)V",             FN_PTR(Unsafe_SetMemory)},
+ //  {CC"copyMemory",         CC"("ADR ADR"J)V",          FN_PTR(Unsafe_CopyMemory)},
+-    {CC"freeMemory",         CC"("ADR")V",               FN_PTR(Unsafe_FreeMemory)},
+-
+-    {CC"objectFieldOffset",  CC"("FLD")J",               FN_PTR(Unsafe_ObjectFieldOffset)},
+-    {CC"staticFieldOffset",  CC"("FLD")J",               FN_PTR(Unsafe_StaticFieldOffset)},
+-    {CC"staticFieldBase",    CC"("FLD")"OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromField)},
+-    {CC"ensureClassInitialized",CC"("CLS")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
+-    {CC"arrayBaseOffset",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayBaseOffset)},
+-    {CC"arrayIndexScale",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayIndexScale)},
+-    {CC"addressSize",        CC"()I",                    FN_PTR(Unsafe_AddressSize)},
+-    {CC"pageSize",           CC"()I",                    FN_PTR(Unsafe_PageSize)},
+-
+-    {CC"defineClass",        CC"("DC0_Args")"CLS,        FN_PTR(Unsafe_DefineClass0)},
+-    {CC"defineClass",        CC"("DC1_Args")"CLS,        FN_PTR(Unsafe_DefineClass1)},
+-    {CC"allocateInstance",   CC"("CLS")"OBJ,             FN_PTR(Unsafe_AllocateInstance)},
+-    {CC"monitorEnter",       CC"("OBJ")V",               FN_PTR(Unsafe_MonitorEnter)},
+-    {CC"monitorExit",        CC"("OBJ")V",               FN_PTR(Unsafe_MonitorExit)},
+-    {CC"throwException",     CC"("THR")V",               FN_PTR(Unsafe_ThrowException)}
++    {CC "freeMemory",         CC "(" ADR ")V",               FN_PTR(Unsafe_FreeMemory)},
++
++    {CC "objectFieldOffset",  CC "(" FLD ")J",               FN_PTR(Unsafe_ObjectFieldOffset)},
++    {CC "staticFieldOffset",  CC "(" FLD ")J",               FN_PTR(Unsafe_StaticFieldOffset)},
++    {CC "staticFieldBase",    CC "(" FLD ")" OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromField)},
++    {CC "ensureClassInitialized",CC "(" CLS ")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
++    {CC "arrayBaseOffset",    CC "(" CLS ")I",               FN_PTR(Unsafe_ArrayBaseOffset)},
++    {CC "arrayIndexScale",    CC "(" CLS ")I",               FN_PTR(Unsafe_ArrayIndexScale)},
++    {CC "addressSize",        CC "()I",                    FN_PTR(Unsafe_AddressSize)},
++    {CC "pageSize",           CC "()I",                    FN_PTR(Unsafe_PageSize)},
++
++    {CC "defineClass",        CC "(" DC0_Args ")" CLS,        FN_PTR(Unsafe_DefineClass0)},
++    {CC "defineClass",        CC "(" DC1_Args ")" CLS,        FN_PTR(Unsafe_DefineClass1)},
++    {CC "allocateInstance",   CC "(" CLS ")" OBJ,             FN_PTR(Unsafe_AllocateInstance)},
++    {CC "monitorEnter",       CC "(" OBJ ")V",               FN_PTR(Unsafe_MonitorEnter)},
++    {CC "monitorExit",        CC "(" OBJ ")V",               FN_PTR(Unsafe_MonitorExit)},
++    {CC "throwException",     CC "(" THR ")V",               FN_PTR(Unsafe_ThrowException)}
+
+ };
+
+ // These are the old methods prior to the JSR 166 changes in 1.6.0
+ static JNINativeMethod methods_15[] = {
+
+-    {CC"getObject",        CC"("OBJ"J)"OBJ"",   FN_PTR(Unsafe_GetObject)},
+-    {CC"putObject",        CC"("OBJ"J"OBJ")V",  FN_PTR(Unsafe_SetObject)},
+-    {CC"getObjectVolatile",CC"("OBJ"J)"OBJ"",   FN_PTR(Unsafe_GetObjectVolatile)},
+-    {CC"putObjectVolatile",CC"("OBJ"J"OBJ")V",  FN_PTR(Unsafe_SetObjectVolatile)},
++    {CC "getObject",        CC "(" OBJ "J)" OBJ "",   FN_PTR(Unsafe_GetObject)},
++    {CC "putObject",        CC "(" OBJ "J" OBJ ")V",  FN_PTR(Unsafe_SetObject)},
++    {CC "getObjectVolatile",CC "(" OBJ "J)" OBJ "",   FN_PTR(Unsafe_GetObjectVolatile)},
++    {CC "putObjectVolatile",CC "(" OBJ "J" OBJ ")V",  FN_PTR(Unsafe_SetObjectVolatile)},
+
+
+     DECLARE_GETSETOOP(Boolean, Z),
+@@ -1438,45 +1438,45 @@ static JNINativeMethod methods_15[] = {
+     DECLARE_GETSETNATIVE(Float, F),
+     DECLARE_GETSETNATIVE(Double, D),
+
+-    {CC"getAddress",         CC"("ADR")"ADR,             FN_PTR(Unsafe_GetNativeAddress)},
+-    {CC"putAddress",         CC"("ADR""ADR")V",          FN_PTR(Unsafe_SetNativeAddress)},
++    {CC "getAddress",         CC "(" ADR ")" ADR,             FN_PTR(Unsafe_GetNativeAddress)},
++    {CC "putAddress",         CC "(" ADR "" ADR ")V",          FN_PTR(Unsafe_SetNativeAddress)},
+
+-    {CC"allocateMemory",     CC"(J)"ADR,                 FN_PTR(Unsafe_AllocateMemory)},
+-    {CC"reallocateMemory",   CC"("ADR"J)"ADR,            FN_PTR(Unsafe_ReallocateMemory)},
++    {CC "allocateMemory",     CC "(J)" ADR,                 FN_PTR(Unsafe_AllocateMemory)},
++    {CC "reallocateMemory",   CC "(" ADR "J)"ADR,            FN_PTR(Unsafe_ReallocateMemory)},
+ //  {CC"setMemory",          CC"("ADR"JB)V",             FN_PTR(Unsafe_SetMemory)},
+ //  {CC"copyMemory",         CC"("ADR ADR"J)V",          FN_PTR(Unsafe_CopyMemory)},
+-    {CC"freeMemory",         CC"("ADR")V",               FN_PTR(Unsafe_FreeMemory)},
+-
+-    {CC"objectFieldOffset",  CC"("FLD")J",               FN_PTR(Unsafe_ObjectFieldOffset)},
+-    {CC"staticFieldOffset",  CC"("FLD")J",               FN_PTR(Unsafe_StaticFieldOffset)},
+-    {CC"staticFieldBase",    CC"("FLD")"OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromField)},
+-    {CC"ensureClassInitialized",CC"("CLS")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
+-    {CC"arrayBaseOffset",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayBaseOffset)},
+-    {CC"arrayIndexScale",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayIndexScale)},
+-    {CC"addressSize",        CC"()I",                    FN_PTR(Unsafe_AddressSize)},
+-    {CC"pageSize",           CC"()I",                    FN_PTR(Unsafe_PageSize)},
+-
+-    {CC"defineClass",        CC"("DC0_Args")"CLS,        FN_PTR(Unsafe_DefineClass0)},
+-    {CC"defineClass",        CC"("DC1_Args")"CLS,        FN_PTR(Unsafe_DefineClass1)},
+-    {CC"allocateInstance",   CC"("CLS")"OBJ,             FN_PTR(Unsafe_AllocateInstance)},
+-    {CC"monitorEnter",       CC"("OBJ")V",               FN_PTR(Unsafe_MonitorEnter)},
+-    {CC"monitorExit",        CC"("OBJ")V",               FN_PTR(Unsafe_MonitorExit)},
+-    {CC"throwException",     CC"("THR")V",               FN_PTR(Unsafe_ThrowException)},
+-    {CC"compareAndSwapObject", CC"("OBJ"J"OBJ""OBJ")Z",  FN_PTR(Unsafe_CompareAndSwapObject)},
+-    {CC"compareAndSwapInt",  CC"("OBJ"J""I""I"")Z",      FN_PTR(Unsafe_CompareAndSwapInt)},
+-    {CC"compareAndSwapLong", CC"("OBJ"J""J""J"")Z",      FN_PTR(Unsafe_CompareAndSwapLong)},
+-    {CC"park",               CC"(ZJ)V",                  FN_PTR(Unsafe_Park)},
+-    {CC"unpark",             CC"("OBJ")V",               FN_PTR(Unsafe_Unpark)}
++    {CC "freeMemory",         CC "(" ADR ")V",               FN_PTR(Unsafe_FreeMemory)},
++
++    {CC "objectFieldOffset",  CC "(" FLD ")J",               FN_PTR(Unsafe_ObjectFieldOffset)},
++    {CC "staticFieldOffset",  CC "(" FLD ")J",               FN_PTR(Unsafe_StaticFieldOffset)},
++    {CC "staticFieldBase",    CC "(" FLD ")" OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromField)},
++    {CC "ensureClassInitialized",CC "(" CLS ")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
++    {CC "arrayBaseOffset",    CC "(" CLS ")I",               FN_PTR(Unsafe_ArrayBaseOffset)},
++    {CC "arrayIndexScale",    CC "(" CLS ")I",               FN_PTR(Unsafe_ArrayIndexScale)},
++    {CC "addressSize",        CC "()I",                    FN_PTR(Unsafe_AddressSize)},
++    {CC "pageSize",           CC "()I",                    FN_PTR(Unsafe_PageSize)},
++
++    {CC "defineClass",        CC "(" DC0_Args ")" CLS,        FN_PTR(Unsafe_DefineClass0)},
++    {CC "defineClass",        CC "(" DC1_Args ")" CLS,        FN_PTR(Unsafe_DefineClass1)},
++    {CC "allocateInstance",   CC "(" CLS ")" OBJ,             FN_PTR(Unsafe_AllocateInstance)},
++    {CC "monitorEnter",       CC "(" OBJ ")V",               FN_PTR(Unsafe_MonitorEnter)},
++    {CC "monitorExit",        CC "(" OBJ ")V",               FN_PTR(Unsafe_MonitorExit)},
++    {CC "throwException",     CC "(" THR ")V",               FN_PTR(Unsafe_ThrowException)},
++    {CC "compareAndSwapObject", CC "(" OBJ "J" OBJ "" OBJ ")Z",  FN_PTR(Unsafe_CompareAndSwapObject)},
++    {CC "compareAndSwapInt",  CC "(" OBJ "J""I""I"")Z",      FN_PTR(Unsafe_CompareAndSwapInt)},
++    {CC "compareAndSwapLong", CC "(" OBJ "J""J""J"")Z",      FN_PTR(Unsafe_CompareAndSwapLong)},
++    {CC "park",               CC "(ZJ)V",                  FN_PTR(Unsafe_Park)},
++    {CC "unpark",             CC "(" OBJ ")V",               FN_PTR(Unsafe_Unpark)}
+
+ };
+
+ // These are the correct methods, moving forward:
+ static JNINativeMethod methods[] = {
+
+-    {CC"getObject",        CC"("OBJ"J)"OBJ"",   FN_PTR(Unsafe_GetObject)},
+-    {CC"putObject",        CC"("OBJ"J"OBJ")V",  FN_PTR(Unsafe_SetObject)},
+-    {CC"getObjectVolatile",CC"("OBJ"J)"OBJ"",   FN_PTR(Unsafe_GetObjectVolatile)},
+-    {CC"putObjectVolatile",CC"("OBJ"J"OBJ")V",  FN_PTR(Unsafe_SetObjectVolatile)},
++    {CC "getObject",        CC "(" OBJ "J)" OBJ "",   FN_PTR(Unsafe_GetObject)},
++    {CC "putObject",        CC "(" OBJ "J" OBJ ")V",  FN_PTR(Unsafe_SetObject)},
++    {CC "getObjectVolatile",CC "(" OBJ "J)" OBJ "",   FN_PTR(Unsafe_GetObjectVolatile)},
++    {CC "putObjectVolatile",CC "(" OBJ "J" OBJ ")V",  FN_PTR(Unsafe_SetObjectVolatile)},
+
+
+     DECLARE_GETSETOOP(Boolean, Z),
+@@ -1496,39 +1496,39 @@ static JNINativeMethod methods[] = {
+     DECLARE_GETSETNATIVE(Float, F),
+     DECLARE_GETSETNATIVE(Double, D),
+
+-    {CC"getAddress",         CC"("ADR")"ADR,             FN_PTR(Unsafe_GetNativeAddress)},
+-    {CC"putAddress",         CC"("ADR""ADR")V",          FN_PTR(Unsafe_SetNativeAddress)},
++    {CC "getAddress",         CC "(" ADR ")" ADR,             FN_PTR(Unsafe_GetNativeAddress)},
++    {CC "putAddress",         CC "(" ADR "" ADR ")V",          FN_PTR(Unsafe_SetNativeAddress)},
+
+-    {CC"allocateMemory",     CC"(J)"ADR,                 FN_PTR(Unsafe_AllocateMemory)},
+-    {CC"reallocateMemory",   CC"("ADR"J)"ADR,            FN_PTR(Unsafe_ReallocateMemory)},
++    {CC "allocateMemory",     CC "(J)" ADR,                 FN_PTR(Unsafe_AllocateMemory)},
++    {CC "reallocateMemory",   CC "(" ADR "J)" ADR,            FN_PTR(Unsafe_ReallocateMemory)},
+ //  {CC"setMemory",          CC"("ADR"JB)V",             FN_PTR(Unsafe_SetMemory)},
+ //  {CC"copyMemory",         CC"("ADR ADR"J)V",          FN_PTR(Unsafe_CopyMemory)},
+-    {CC"freeMemory",         CC"("ADR")V",               FN_PTR(Unsafe_FreeMemory)},
+-
+-    {CC"objectFieldOffset",  CC"("FLD")J",               FN_PTR(Unsafe_ObjectFieldOffset)},
+-    {CC"staticFieldOffset",  CC"("FLD")J",               FN_PTR(Unsafe_StaticFieldOffset)},
+-    {CC"staticFieldBase",    CC"("FLD")"OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromField)},
+-    {CC"ensureClassInitialized",CC"("CLS")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
+-    {CC"arrayBaseOffset",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayBaseOffset)},
+-    {CC"arrayIndexScale",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayIndexScale)},
+-    {CC"addressSize",        CC"()I",                    FN_PTR(Unsafe_AddressSize)},
+-    {CC"pageSize",           CC"()I",                    FN_PTR(Unsafe_PageSize)},
+-
+-    {CC"defineClass",        CC"("DC0_Args")"CLS,        FN_PTR(Unsafe_DefineClass0)},
+-    {CC"defineClass",        CC"("DC1_Args")"CLS,        FN_PTR(Unsafe_DefineClass1)},
+-    {CC"allocateInstance",   CC"("CLS")"OBJ,             FN_PTR(Unsafe_AllocateInstance)},
+-    {CC"monitorEnter",       CC"("OBJ")V",               FN_PTR(Unsafe_MonitorEnter)},
+-    {CC"monitorExit",        CC"("OBJ")V",               FN_PTR(Unsafe_MonitorExit)},
+-    {CC"tryMonitorEnter",    CC"("OBJ")Z",               FN_PTR(Unsafe_TryMonitorEnter)},
+-    {CC"throwException",     CC"("THR")V",               FN_PTR(Unsafe_ThrowException)},
+-    {CC"compareAndSwapObject", CC"("OBJ"J"OBJ""OBJ")Z",  FN_PTR(Unsafe_CompareAndSwapObject)},
+-    {CC"compareAndSwapInt",  CC"("OBJ"J""I""I"")Z",      FN_PTR(Unsafe_CompareAndSwapInt)},
+-    {CC"compareAndSwapLong", CC"("OBJ"J""J""J"")Z",      FN_PTR(Unsafe_CompareAndSwapLong)},
+-    {CC"putOrderedObject",   CC"("OBJ"J"OBJ")V",         FN_PTR(Unsafe_SetOrderedObject)},
+-    {CC"putOrderedInt",      CC"("OBJ"JI)V",             FN_PTR(Unsafe_SetOrderedInt)},
+-    {CC"putOrderedLong",     CC"("OBJ"JJ)V",             FN_PTR(Unsafe_SetOrderedLong)},
+-    {CC"park",               CC"(ZJ)V",                  FN_PTR(Unsafe_Park)},
+-    {CC"unpark",             CC"("OBJ")V",               FN_PTR(Unsafe_Unpark)}
++    {CC "freeMemory",         CC "(" ADR ")V",               FN_PTR(Unsafe_FreeMemory)},
++
++    {CC "objectFieldOffset",  CC "(" FLD ")J",               FN_PTR(Unsafe_ObjectFieldOffset)},
++    {CC "staticFieldOffset",  CC "(" FLD ")J",               FN_PTR(Unsafe_StaticFieldOffset)},
++    {CC "staticFieldBase",    CC "(" FLD ")" OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromField)},
++    {CC "ensureClassInitialized",CC "(" CLS ")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
++    {CC "arrayBaseOffset",    CC "(" CLS ")I",               FN_PTR(Unsafe_ArrayBaseOffset)},
++    {CC "arrayIndexScale",    CC "(" CLS ")I",               FN_PTR(Unsafe_ArrayIndexScale)},
++    {CC "addressSize",        CC "()I",                    FN_PTR(Unsafe_AddressSize)},
++    {CC "pageSize",           CC "()I",                    FN_PTR(Unsafe_PageSize)},
++
++    {CC "defineClass",        CC "(" DC0_Args ")" CLS,        FN_PTR(Unsafe_DefineClass0)},
++    {CC "defineClass",        CC "(" DC1_Args ")" CLS,        FN_PTR(Unsafe_DefineClass1)},
++    {CC "allocateInstance",   CC "(" CLS ")" OBJ,             FN_PTR(Unsafe_AllocateInstance)},
++    {CC "monitorEnter",       CC "(" OBJ ")V",               FN_PTR(Unsafe_MonitorEnter)},
++    {CC "monitorExit",        CC "(" OBJ ")V",               FN_PTR(Unsafe_MonitorExit)},
++    {CC "tryMonitorEnter",    CC "(" OBJ ")Z",               FN_PTR(Unsafe_TryMonitorEnter)},
++    {CC "throwException",     CC "(" THR ")V",               FN_PTR(Unsafe_ThrowException)},
++    {CC "compareAndSwapObject", CC "(" OBJ "J" OBJ "" OBJ ")Z",  FN_PTR(Unsafe_CompareAndSwapObject)},
++    {CC "compareAndSwapInt",  CC "(" OBJ "J""I""I"")Z",      FN_PTR(Unsafe_CompareAndSwapInt)},
++    {CC "compareAndSwapLong", CC "(" OBJ "J""J""J"")Z",      FN_PTR(Unsafe_CompareAndSwapLong)},
++    {CC "putOrderedObject",   CC "(" OBJ "J" OBJ ")V",         FN_PTR(Unsafe_SetOrderedObject)},
++    {CC "putOrderedInt",      CC "(" OBJ "JI)V",             FN_PTR(Unsafe_SetOrderedInt)},
++    {CC "putOrderedLong",     CC "(" OBJ "JJ)V",             FN_PTR(Unsafe_SetOrderedLong)},
++    {CC "park",               CC "(ZJ)V",                  FN_PTR(Unsafe_Park)},
++    {CC "unpark",             CC "(" OBJ ")V",               FN_PTR(Unsafe_Unpark)}
+
+ //    {CC"getLoadAverage",     CC"([DI)I",                 FN_PTR(Unsafe_Loadavg)},
+
+@@ -1540,28 +1540,28 @@ static JNINativeMethod methods[] = {
+ };
+
+ JNINativeMethod loadavg_method[] = {
+-    {CC"getLoadAverage",            CC"([DI)I",                 FN_PTR(Unsafe_Loadavg)}
++    {CC "getLoadAverage",            CC "([DI)I",                 FN_PTR(Unsafe_Loadavg)}
+ };
+
+ JNINativeMethod prefetch_methods[] = {
+-    {CC"prefetchRead",       CC"("OBJ"J)V",              FN_PTR(Unsafe_PrefetchRead)},
+-    {CC"prefetchWrite",      CC"("OBJ"J)V",              FN_PTR(Unsafe_PrefetchWrite)},
+-    {CC"prefetchReadStatic", CC"("OBJ"J)V",              FN_PTR(Unsafe_PrefetchRead)},
+-    {CC"prefetchWriteStatic",CC"("OBJ"J)V",              FN_PTR(Unsafe_PrefetchWrite)}
++    {CC "prefetchRead",       CC "(" OBJ "J)V",              FN_PTR(Unsafe_PrefetchRead)},
++    {CC "prefetchWrite",      CC "(" OBJ "J)V",              FN_PTR(Unsafe_PrefetchWrite)},
++    {CC "prefetchReadStatic", CC "(" OBJ "J)V",              FN_PTR(Unsafe_PrefetchRead)},
++    {CC "prefetchWriteStatic",CC "(" OBJ "J)V",              FN_PTR(Unsafe_PrefetchWrite)}
+ };
+
+ JNINativeMethod memcopy_methods[] = {
+-    {CC"copyMemory",         CC"("OBJ"J"OBJ"JJ)V",       FN_PTR(Unsafe_CopyMemory2)},
+-    {CC"setMemory",          CC"("OBJ"JJB)V",            FN_PTR(Unsafe_SetMemory2)}
++    {CC "copyMemory",         CC "(" OBJ "J" OBJ "JJ)V",       FN_PTR(Unsafe_CopyMemory2)},
++    {CC "setMemory",          CC "(" OBJ "JJB)V",            FN_PTR(Unsafe_SetMemory2)}
+ };
+
+ JNINativeMethod memcopy_methods_15[] = {
+-    {CC"setMemory",          CC"("ADR"JB)V",             FN_PTR(Unsafe_SetMemory)},
+-    {CC"copyMemory",         CC"("ADR ADR"J)V",          FN_PTR(Unsafe_CopyMemory)}
++    {CC "setMemory",          CC "(" ADR "JB)V",             FN_PTR(Unsafe_SetMemory)},
++    {CC "copyMemory",         CC "(" ADR ADR "J)V",          FN_PTR(Unsafe_CopyMemory)}
+ };
+
+ JNINativeMethod anonk_methods[] = {
+-    {CC"defineAnonymousClass", CC"("DAC_Args")"CLS,      FN_PTR(Unsafe_DefineAnonymousClass)},
++    {CC "defineAnonymousClass", CC "(" DAC_Args ")" CLS,      FN_PTR(Unsafe_DefineAnonymousClass)},
+ };
+
+ #undef CC
+diff --git a/openjdk-boot/jdk/src/share/native/com/sun/java/util/jar/pack/jni.cpp b/openjdk-boot/jdk/src/share/native/com/sun/java/util/jar/pack/jni.cpp
+index e77e99f3..35754251 100644
+--- a/openjdk-boot/jdk/src/share/native/com/sun/java/util/jar/pack/jni.cpp
++++ b/openjdk-boot/jdk/src/share/native/com/sun/java/util/jar/pack/jni.cpp
+@@ -221,7 +221,7 @@ Java_com_sun_java_util_jar_pack_NativeUnpack_getUnusedInput(JNIEnv *env, jobject
+
+   if (uPtr->aborting()) {
+     THROW_IOE(uPtr->get_abort_message());
+-    return false;
++    return 0;
+   }
+
+   // We have fetched all the files.
+diff --git a/openjdk/hotspot/make/linux/makefiles/gcc.make b/openjdk/hotspot/make/linux/makefiles/gcc.make
+index 9e63c5c5..dd6d5473 100644
+--- a/openjdk/hotspot/make/linux/makefiles/gcc.make
++++ b/openjdk/hotspot/make/linux/makefiles/gcc.make
+@@ -143,7 +143,7 @@ else
+ endif
+
+ # Compiler warnings are treated as errors
+-WARNINGS_ARE_ERRORS = -Werror
++WARNINGS_ARE_ERRORS = -Wno-all
+
+ # Except for a few acceptable ones
+ # Since GCC 4.3, -Wconversion has changed its meanings to warn these implicit
+diff --git a/openjdk/hotspot/src/share/vm/code/dependencies.hpp b/openjdk/hotspot/src/share/vm/code/dependencies.hpp
+index 2b8b2afe..74364e89 100644
+--- a/openjdk/hotspot/src/share/vm/code/dependencies.hpp
++++ b/openjdk/hotspot/src/share/vm/code/dependencies.hpp
+@@ -166,7 +166,7 @@ class Dependencies: public ResourceObj {
+     LG2_TYPE_LIMIT = 4,  // assert(TYPE_LIMIT <= (1<<LG2_TYPE_LIMIT))
+
+     // handy categorizations of dependency types:
+-    all_types           = ((1 << TYPE_LIMIT) - 1) & ((-1) << FIRST_TYPE),
++    all_types           = ((1 << TYPE_LIMIT) - 1) & ((~0u) << FIRST_TYPE),
+
+     non_klass_types     = (1 << call_site_target_value),
+     klass_types         = all_types & ~non_klass_types,
+diff --git a/openjdk/hotspot/src/share/vm/gc_implementation/g1/concurrentMark.cpp b/openjdk/hotspot/src/share/vm/gc_implementation/g1/concurrentMark.cpp
+index d78db6e5..35848ce1 100644
+--- a/openjdk/hotspot/src/share/vm/gc_implementation/g1/concurrentMark.cpp
++++ b/openjdk/hotspot/src/share/vm/gc_implementation/g1/concurrentMark.cpp
+@@ -4541,16 +4541,16 @@ CMTask::CMTask(int task_id,
+ // For per-region info
+ #define G1PPRL_TYPE_FORMAT            "   %-4s"
+ #define G1PPRL_TYPE_H_FORMAT          "   %4s"
+-#define G1PPRL_BYTE_FORMAT            "  "SIZE_FORMAT_W(9)
++#define G1PPRL_BYTE_FORMAT            "  " SIZE_FORMAT_W(9)
+ #define G1PPRL_BYTE_H_FORMAT          "  %9s"
+ #define G1PPRL_DOUBLE_FORMAT          "  %14.1f"
+ #define G1PPRL_DOUBLE_H_FORMAT        "  %14s"
+
+ // For summary info
+-#define G1PPRL_SUM_ADDR_FORMAT(tag)    "  "tag":"G1PPRL_ADDR_BASE_FORMAT
+-#define G1PPRL_SUM_BYTE_FORMAT(tag)    "  "tag": "SIZE_FORMAT
+-#define G1PPRL_SUM_MB_FORMAT(tag)      "  "tag": %1.2f MB"
+-#define G1PPRL_SUM_MB_PERC_FORMAT(tag) G1PPRL_SUM_MB_FORMAT(tag)" / %1.2f %%"
++#define G1PPRL_SUM_ADDR_FORMAT(tag)    "  " tag ":" G1PPRL_ADDR_BASE_FORMAT
++#define G1PPRL_SUM_BYTE_FORMAT(tag)    "  " tag ": " SIZE_FORMAT
++#define G1PPRL_SUM_MB_FORMAT(tag)      "  " tag ": %1.2f MB"
++#define G1PPRL_SUM_MB_PERC_FORMAT(tag) G1PPRL_SUM_MB_FORMAT(tag) " / %1.2f %%"
+
+ G1PrintRegionLivenessInfoClosure::
+ G1PrintRegionLivenessInfoClosure(outputStream* out, const char* phase_name)
+diff --git a/openjdk/hotspot/src/share/vm/prims/unsafe.cpp b/openjdk/hotspot/src/share/vm/prims/unsafe.cpp
+index 48d13dba..d0a211d7 100644
+--- a/openjdk/hotspot/src/share/vm/prims/unsafe.cpp
++++ b/openjdk/hotspot/src/share/vm/prims/unsafe.cpp
+@@ -941,7 +941,7 @@ UNSAFE_ENTRY(jclass, Unsafe_DefineClass1(JNIEnv *env, jobject unsafe, jstring na
+   }
+ UNSAFE_END
+
+-#define DAC_Args CLS"[B["OBJ
++#define DAC_Args CLS "[B[" OBJ
+ // define a class but do not make it known to the class loader or system dictionary
+ // - host_class:  supplies context for linkage, access control, protection domain, and class loader
+ // - data:  bytes of a class file, a raw memory address (length gives the number of bytes)
+@@ -1276,40 +1276,40 @@ UNSAFE_END
+
+ #define LANG "Ljava/lang/"
+
+-#define OBJ LANG"Object;"
+-#define CLS LANG"Class;"
+-#define CTR LANG"reflect/Constructor;"
+-#define FLD LANG"reflect/Field;"
+-#define MTH LANG"reflect/Method;"
+-#define THR LANG"Throwable;"
++#define OBJ LANG "Object;"
++#define CLS LANG "Class;"
++#define CTR LANG "reflect/Constructor;"
++#define FLD LANG "reflect/Field;"
++#define MTH LANG "reflect/Method;"
++#define THR LANG "Throwable;"
+
+-#define DC0_Args LANG"String;[BII"
+-#define DC1_Args DC0_Args LANG"ClassLoader;" "Ljava/security/ProtectionDomain;"
++#define DC0_Args LANG "String;[BII"
++#define DC1_Args  LANG "String;[BII" LANG "ClassLoader;" "Ljava/security/ProtectionDomain;"
+
+ #define CC (char*)  /*cast a literal from (const char*)*/
+ #define FN_PTR(f) CAST_FROM_FN_PTR(void*, &f)
+
+ // define deprecated accessors for compabitility with 1.4.0
+ #define DECLARE_GETSETOOP_140(Boolean, Z) \
+-    {CC"get"#Boolean,      CC"("OBJ"I)"#Z,      FN_PTR(Unsafe_Get##Boolean##140)}, \
+-    {CC"put"#Boolean,      CC"("OBJ"I"#Z")V",   FN_PTR(Unsafe_Set##Boolean##140)}
++    {CC "get" #Boolean,      CC "(" OBJ "I)" #Z,      FN_PTR(Unsafe_Get##Boolean##140)}, \
++    {CC "put" #Boolean,      CC "(" OBJ "I" #Z ")V",   FN_PTR(Unsafe_Set##Boolean##140)}
+
+ // Note:  In 1.4.1, getObject and kin take both int and long offsets.
+ #define DECLARE_GETSETOOP_141(Boolean, Z) \
+-    {CC"get"#Boolean,      CC"("OBJ"J)"#Z,      FN_PTR(Unsafe_Get##Boolean)}, \
+-    {CC"put"#Boolean,      CC"("OBJ"J"#Z")V",   FN_PTR(Unsafe_Set##Boolean)}
++    {CC "get" #Boolean,      CC "(" OBJ "J)" #Z,      FN_PTR(Unsafe_Get##Boolean)}, \
++    {CC "put" #Boolean,      CC "(" OBJ "J" #Z ")V",   FN_PTR(Unsafe_Set##Boolean)}
+
+ // Note:  In 1.5.0, there are volatile versions too
+ #define DECLARE_GETSETOOP(Boolean, Z) \
+-    {CC"get"#Boolean,      CC"("OBJ"J)"#Z,      FN_PTR(Unsafe_Get##Boolean)}, \
+-    {CC"put"#Boolean,      CC"("OBJ"J"#Z")V",   FN_PTR(Unsafe_Set##Boolean)}, \
+-    {CC"get"#Boolean"Volatile",      CC"("OBJ"J)"#Z,      FN_PTR(Unsafe_Get##Boolean##Volatile)}, \
+-    {CC"put"#Boolean"Volatile",      CC"("OBJ"J"#Z")V",   FN_PTR(Unsafe_Set##Boolean##Volatile)}
++    {CC "get" #Boolean,      CC "(" OBJ "J)" #Z,      FN_PTR(Unsafe_Get##Boolean)}, \
++    {CC "put" #Boolean,      CC "(" OBJ "J" #Z ")V",   FN_PTR(Unsafe_Set##Boolean)}, \
++    {CC "get" #Boolean"Volatile",      CC "(" OBJ "J)" #Z,      FN_PTR(Unsafe_Get##Boolean##Volatile)}, \
++    {CC "put" #Boolean"Volatile",      CC "(" OBJ "J" #Z ")V",   FN_PTR(Unsafe_Set##Boolean##Volatile)}
+
+
+ #define DECLARE_GETSETNATIVE(Byte, B) \
+-    {CC"get"#Byte,         CC"("ADR")"#B,       FN_PTR(Unsafe_GetNative##Byte)}, \
+-    {CC"put"#Byte,         CC"("ADR#B")V",      FN_PTR(Unsafe_SetNative##Byte)}
++    {CC "get" #Byte,         CC "(" ADR ")" #B,       FN_PTR(Unsafe_GetNative##Byte)}, \
++    {CC "put" #Byte,         CC "(" ADR#B ")V",      FN_PTR(Unsafe_SetNative##Byte)}
+
+
+
+@@ -1317,8 +1317,8 @@ UNSAFE_END
+ // contain the necessarily updated Unsafe.java.
+ static JNINativeMethod methods_140[] = {
+
+-    {CC"getObject",        CC"("OBJ"I)"OBJ"",   FN_PTR(Unsafe_GetObject140)},
+-    {CC"putObject",        CC"("OBJ"I"OBJ")V",  FN_PTR(Unsafe_SetObject140)},
++    {CC "getObject",        CC "(" OBJ "I)" OBJ "",   FN_PTR(Unsafe_GetObject140)},
++    {CC "putObject",        CC "(" OBJ "I" OBJ ")V",  FN_PTR(Unsafe_SetObject140)},
+
+     DECLARE_GETSETOOP_140(Boolean, Z),
+     DECLARE_GETSETOOP_140(Byte, B),
+@@ -1337,36 +1337,36 @@ static JNINativeMethod methods_140[] = {
+     DECLARE_GETSETNATIVE(Float, F),
+     DECLARE_GETSETNATIVE(Double, D),
+
+-    {CC"getAddress",         CC"("ADR")"ADR,             FN_PTR(Unsafe_GetNativeAddress)},
+-    {CC"putAddress",         CC"("ADR""ADR")V",          FN_PTR(Unsafe_SetNativeAddress)},
++    {CC "getAddress",         CC "(" ADR ")" ADR,             FN_PTR(Unsafe_GetNativeAddress)},
++    {CC "putAddress",         CC "(" ADR "" ADR ")V",          FN_PTR(Unsafe_SetNativeAddress)},
+
+-    {CC"allocateMemory",     CC"(J)"ADR,                 FN_PTR(Unsafe_AllocateMemory)},
+-    {CC"reallocateMemory",   CC"("ADR"J)"ADR,            FN_PTR(Unsafe_ReallocateMemory)},
++    {CC "allocateMemory",     CC "(J)" ADR,                 FN_PTR(Unsafe_AllocateMemory)},
++    {CC "reallocateMemory",   CC "(" ADR "J)" ADR,            FN_PTR(Unsafe_ReallocateMemory)},
+ //  {CC"setMemory",          CC"("ADR"JB)V",             FN_PTR(Unsafe_SetMemory)},
+ //  {CC"copyMemory",         CC"("ADR ADR"J)V",          FN_PTR(Unsafe_CopyMemory)},
+-    {CC"freeMemory",         CC"("ADR")V",               FN_PTR(Unsafe_FreeMemory)},
+-
+-    {CC"fieldOffset",        CC"("FLD")I",               FN_PTR(Unsafe_FieldOffset)}, //deprecated
+-    {CC"staticFieldBase",    CC"("CLS")"OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromClass)}, //deprecated
+-    {CC"ensureClassInitialized",CC"("CLS")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
+-    {CC"arrayBaseOffset",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayBaseOffset)},
+-    {CC"arrayIndexScale",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayIndexScale)},
+-    {CC"addressSize",        CC"()I",                    FN_PTR(Unsafe_AddressSize)},
+-    {CC"pageSize",           CC"()I",                    FN_PTR(Unsafe_PageSize)},
+-
+-    {CC"defineClass",        CC"("DC0_Args")"CLS,        FN_PTR(Unsafe_DefineClass0)},
+-    {CC"defineClass",        CC"("DC1_Args")"CLS,        FN_PTR(Unsafe_DefineClass1)},
+-    {CC"allocateInstance",   CC"("CLS")"OBJ,             FN_PTR(Unsafe_AllocateInstance)},
+-    {CC"monitorEnter",       CC"("OBJ")V",               FN_PTR(Unsafe_MonitorEnter)},
+-    {CC"monitorExit",        CC"("OBJ")V",               FN_PTR(Unsafe_MonitorExit)},
+-    {CC"throwException",     CC"("THR")V",               FN_PTR(Unsafe_ThrowException)}
++    {CC "freeMemory",         CC "(" ADR ")V",               FN_PTR(Unsafe_FreeMemory)},
++
++    {CC "fieldOffset",        CC "(" FLD ")I",               FN_PTR(Unsafe_FieldOffset)}, //deprecated
++    {CC "staticFieldBase",    CC "(" CLS ")" OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromClass)}, //deprecated
++    {CC "ensureClassInitialized",CC "(" CLS ")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
++    {CC "arrayBaseOffset",    CC "(" CLS ")I",               FN_PTR(Unsafe_ArrayBaseOffset)},
++    {CC "arrayIndexScale",    CC "(" CLS ")I",               FN_PTR(Unsafe_ArrayIndexScale)},
++    {CC "addressSize",        CC "()I",                    FN_PTR(Unsafe_AddressSize)},
++    {CC "pageSize",           CC "()I",                    FN_PTR(Unsafe_PageSize)},
++
++    {CC "defineClass",        CC "(" DC0_Args ")" CLS,        FN_PTR(Unsafe_DefineClass0)},
++    {CC "defineClass",        CC "(" DC1_Args ")" CLS,        FN_PTR(Unsafe_DefineClass1)},
++    {CC "allocateInstance",   CC "(" CLS ")" OBJ,             FN_PTR(Unsafe_AllocateInstance)},
++    {CC "monitorEnter",       CC "(" OBJ ")V",               FN_PTR(Unsafe_MonitorEnter)},
++    {CC "monitorExit",        CC "(" OBJ ")V",               FN_PTR(Unsafe_MonitorExit)},
++    {CC "throwException",     CC "(" THR ")V",               FN_PTR(Unsafe_ThrowException)}
+ };
+
+ // These are the old methods prior to the JSR 166 changes in 1.5.0
+ static JNINativeMethod methods_141[] = {
+
+-    {CC"getObject",        CC"("OBJ"J)"OBJ"",   FN_PTR(Unsafe_GetObject)},
+-    {CC"putObject",        CC"("OBJ"J"OBJ")V",  FN_PTR(Unsafe_SetObject)},
++    {CC "getObject",        CC "(" OBJ "J)" OBJ "",   FN_PTR(Unsafe_GetObject)},
++    {CC "putObject",        CC "(" OBJ "J" OBJ ")V",  FN_PTR(Unsafe_SetObject)},
+
+     DECLARE_GETSETOOP_141(Boolean, Z),
+     DECLARE_GETSETOOP_141(Byte, B),
+@@ -1385,40 +1385,40 @@ static JNINativeMethod methods_141[] = {
+     DECLARE_GETSETNATIVE(Float, F),
+     DECLARE_GETSETNATIVE(Double, D),
+
+-    {CC"getAddress",         CC"("ADR")"ADR,             FN_PTR(Unsafe_GetNativeAddress)},
+-    {CC"putAddress",         CC"("ADR""ADR")V",          FN_PTR(Unsafe_SetNativeAddress)},
++    {CC "getAddress",         CC "(" ADR ")" ADR,             FN_PTR(Unsafe_GetNativeAddress)},
++    {CC "putAddress",         CC "(" ADR "" ADR ")V",          FN_PTR(Unsafe_SetNativeAddress)},
+
+-    {CC"allocateMemory",     CC"(J)"ADR,                 FN_PTR(Unsafe_AllocateMemory)},
+-    {CC"reallocateMemory",   CC"("ADR"J)"ADR,            FN_PTR(Unsafe_ReallocateMemory)},
++    {CC "allocateMemory",     CC "(J)" ADR,                 FN_PTR(Unsafe_AllocateMemory)},
++    {CC "reallocateMemory",   CC "(" ADR "J)" ADR,            FN_PTR(Unsafe_ReallocateMemory)},
+ //  {CC"setMemory",          CC"("ADR"JB)V",             FN_PTR(Unsafe_SetMemory)},
+ //  {CC"copyMemory",         CC"("ADR ADR"J)V",          FN_PTR(Unsafe_CopyMemory)},
+-    {CC"freeMemory",         CC"("ADR")V",               FN_PTR(Unsafe_FreeMemory)},
+-
+-    {CC"objectFieldOffset",  CC"("FLD")J",               FN_PTR(Unsafe_ObjectFieldOffset)},
+-    {CC"staticFieldOffset",  CC"("FLD")J",               FN_PTR(Unsafe_StaticFieldOffset)},
+-    {CC"staticFieldBase",    CC"("FLD")"OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromField)},
+-    {CC"ensureClassInitialized",CC"("CLS")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
+-    {CC"arrayBaseOffset",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayBaseOffset)},
+-    {CC"arrayIndexScale",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayIndexScale)},
+-    {CC"addressSize",        CC"()I",                    FN_PTR(Unsafe_AddressSize)},
+-    {CC"pageSize",           CC"()I",                    FN_PTR(Unsafe_PageSize)},
+-
+-    {CC"defineClass",        CC"("DC0_Args")"CLS,        FN_PTR(Unsafe_DefineClass0)},
+-    {CC"defineClass",        CC"("DC1_Args")"CLS,        FN_PTR(Unsafe_DefineClass1)},
+-    {CC"allocateInstance",   CC"("CLS")"OBJ,             FN_PTR(Unsafe_AllocateInstance)},
+-    {CC"monitorEnter",       CC"("OBJ")V",               FN_PTR(Unsafe_MonitorEnter)},
+-    {CC"monitorExit",        CC"("OBJ")V",               FN_PTR(Unsafe_MonitorExit)},
+-    {CC"throwException",     CC"("THR")V",               FN_PTR(Unsafe_ThrowException)}
++    {CC "freeMemory",         CC "(" ADR ")V",               FN_PTR(Unsafe_FreeMemory)},
++
++    {CC "objectFieldOffset",  CC "(" FLD ")J",               FN_PTR(Unsafe_ObjectFieldOffset)},
++    {CC "staticFieldOffset",  CC "(" FLD ")J",               FN_PTR(Unsafe_StaticFieldOffset)},
++    {CC "staticFieldBase",    CC "(" FLD ")" OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromField)},
++    {CC "ensureClassInitialized",CC "(" CLS ")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
++    {CC "arrayBaseOffset",    CC "(" CLS ")I",               FN_PTR(Unsafe_ArrayBaseOffset)},
++    {CC "arrayIndexScale",    CC "(" CLS ")I",               FN_PTR(Unsafe_ArrayIndexScale)},
++    {CC "addressSize",        CC "()I",                    FN_PTR(Unsafe_AddressSize)},
++    {CC "pageSize",           CC "()I",                    FN_PTR(Unsafe_PageSize)},
++
++    {CC "defineClass",        CC "(" DC0_Args ")" CLS,        FN_PTR(Unsafe_DefineClass0)},
++    {CC "defineClass",        CC "(" DC1_Args ")" CLS,        FN_PTR(Unsafe_DefineClass1)},
++    {CC "allocateInstance",   CC "(" CLS ")" OBJ,             FN_PTR(Unsafe_AllocateInstance)},
++    {CC "monitorEnter",       CC "(" OBJ ")V",               FN_PTR(Unsafe_MonitorEnter)},
++    {CC "monitorExit",        CC "(" OBJ ")V",               FN_PTR(Unsafe_MonitorExit)},
++    {CC "throwException",     CC "(" THR ")V",               FN_PTR(Unsafe_ThrowException)}
+
+ };
+
+ // These are the old methods prior to the JSR 166 changes in 1.6.0
+ static JNINativeMethod methods_15[] = {
+
+-    {CC"getObject",        CC"("OBJ"J)"OBJ"",   FN_PTR(Unsafe_GetObject)},
+-    {CC"putObject",        CC"("OBJ"J"OBJ")V",  FN_PTR(Unsafe_SetObject)},
+-    {CC"getObjectVolatile",CC"("OBJ"J)"OBJ"",   FN_PTR(Unsafe_GetObjectVolatile)},
+-    {CC"putObjectVolatile",CC"("OBJ"J"OBJ")V",  FN_PTR(Unsafe_SetObjectVolatile)},
++    {CC "getObject",        CC "(" OBJ "J)" OBJ "",   FN_PTR(Unsafe_GetObject)},
++    {CC "putObject",        CC "(" OBJ "J" OBJ ")V",  FN_PTR(Unsafe_SetObject)},
++    {CC "getObjectVolatile",CC "(" OBJ "J)" OBJ "",   FN_PTR(Unsafe_GetObjectVolatile)},
++    {CC "putObjectVolatile",CC "(" OBJ "J" OBJ ")V",  FN_PTR(Unsafe_SetObjectVolatile)},
+
+
+     DECLARE_GETSETOOP(Boolean, Z),
+@@ -1438,45 +1438,45 @@ static JNINativeMethod methods_15[] = {
+     DECLARE_GETSETNATIVE(Float, F),
+     DECLARE_GETSETNATIVE(Double, D),
+
+-    {CC"getAddress",         CC"("ADR")"ADR,             FN_PTR(Unsafe_GetNativeAddress)},
+-    {CC"putAddress",         CC"("ADR""ADR")V",          FN_PTR(Unsafe_SetNativeAddress)},
++    {CC "getAddress",         CC "(" ADR ")" ADR,             FN_PTR(Unsafe_GetNativeAddress)},
++    {CC "putAddress",         CC "(" ADR "" ADR ")V",          FN_PTR(Unsafe_SetNativeAddress)},
+
+-    {CC"allocateMemory",     CC"(J)"ADR,                 FN_PTR(Unsafe_AllocateMemory)},
+-    {CC"reallocateMemory",   CC"("ADR"J)"ADR,            FN_PTR(Unsafe_ReallocateMemory)},
++    {CC "allocateMemory",     CC "(J)" ADR,                 FN_PTR(Unsafe_AllocateMemory)},
++    {CC "reallocateMemory",   CC "(" ADR "J)"ADR,            FN_PTR(Unsafe_ReallocateMemory)},
+ //  {CC"setMemory",          CC"("ADR"JB)V",             FN_PTR(Unsafe_SetMemory)},
+ //  {CC"copyMemory",         CC"("ADR ADR"J)V",          FN_PTR(Unsafe_CopyMemory)},
+-    {CC"freeMemory",         CC"("ADR")V",               FN_PTR(Unsafe_FreeMemory)},
+-
+-    {CC"objectFieldOffset",  CC"("FLD")J",               FN_PTR(Unsafe_ObjectFieldOffset)},
+-    {CC"staticFieldOffset",  CC"("FLD")J",               FN_PTR(Unsafe_StaticFieldOffset)},
+-    {CC"staticFieldBase",    CC"("FLD")"OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromField)},
+-    {CC"ensureClassInitialized",CC"("CLS")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
+-    {CC"arrayBaseOffset",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayBaseOffset)},
+-    {CC"arrayIndexScale",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayIndexScale)},
+-    {CC"addressSize",        CC"()I",                    FN_PTR(Unsafe_AddressSize)},
+-    {CC"pageSize",           CC"()I",                    FN_PTR(Unsafe_PageSize)},
+-
+-    {CC"defineClass",        CC"("DC0_Args")"CLS,        FN_PTR(Unsafe_DefineClass0)},
+-    {CC"defineClass",        CC"("DC1_Args")"CLS,        FN_PTR(Unsafe_DefineClass1)},
+-    {CC"allocateInstance",   CC"("CLS")"OBJ,             FN_PTR(Unsafe_AllocateInstance)},
+-    {CC"monitorEnter",       CC"("OBJ")V",               FN_PTR(Unsafe_MonitorEnter)},
+-    {CC"monitorExit",        CC"("OBJ")V",               FN_PTR(Unsafe_MonitorExit)},
+-    {CC"throwException",     CC"("THR")V",               FN_PTR(Unsafe_ThrowException)},
+-    {CC"compareAndSwapObject", CC"("OBJ"J"OBJ""OBJ")Z",  FN_PTR(Unsafe_CompareAndSwapObject)},
+-    {CC"compareAndSwapInt",  CC"("OBJ"J""I""I"")Z",      FN_PTR(Unsafe_CompareAndSwapInt)},
+-    {CC"compareAndSwapLong", CC"("OBJ"J""J""J"")Z",      FN_PTR(Unsafe_CompareAndSwapLong)},
+-    {CC"park",               CC"(ZJ)V",                  FN_PTR(Unsafe_Park)},
+-    {CC"unpark",             CC"("OBJ")V",               FN_PTR(Unsafe_Unpark)}
++    {CC "freeMemory",         CC "(" ADR ")V",               FN_PTR(Unsafe_FreeMemory)},
++
++    {CC "objectFieldOffset",  CC "(" FLD ")J",               FN_PTR(Unsafe_ObjectFieldOffset)},
++    {CC "staticFieldOffset",  CC "(" FLD ")J",               FN_PTR(Unsafe_StaticFieldOffset)},
++    {CC "staticFieldBase",    CC "(" FLD ")" OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromField)},
++    {CC "ensureClassInitialized",CC "(" CLS ")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
++    {CC "arrayBaseOffset",    CC "(" CLS ")I",               FN_PTR(Unsafe_ArrayBaseOffset)},
++    {CC "arrayIndexScale",    CC "(" CLS ")I",               FN_PTR(Unsafe_ArrayIndexScale)},
++    {CC "addressSize",        CC "()I",                    FN_PTR(Unsafe_AddressSize)},
++    {CC "pageSize",           CC "()I",                    FN_PTR(Unsafe_PageSize)},
++
++    {CC "defineClass",        CC "(" DC0_Args ")" CLS,        FN_PTR(Unsafe_DefineClass0)},
++    {CC "defineClass",        CC "(" DC1_Args ")" CLS,        FN_PTR(Unsafe_DefineClass1)},
++    {CC "allocateInstance",   CC "(" CLS ")" OBJ,             FN_PTR(Unsafe_AllocateInstance)},
++    {CC "monitorEnter",       CC "(" OBJ ")V",               FN_PTR(Unsafe_MonitorEnter)},
++    {CC "monitorExit",        CC "(" OBJ ")V",               FN_PTR(Unsafe_MonitorExit)},
++    {CC "throwException",     CC "(" THR ")V",               FN_PTR(Unsafe_ThrowException)},
++    {CC "compareAndSwapObject", CC "(" OBJ "J" OBJ "" OBJ ")Z",  FN_PTR(Unsafe_CompareAndSwapObject)},
++    {CC "compareAndSwapInt",  CC "(" OBJ "J""I""I"")Z",      FN_PTR(Unsafe_CompareAndSwapInt)},
++    {CC "compareAndSwapLong", CC "(" OBJ "J""J""J"")Z",      FN_PTR(Unsafe_CompareAndSwapLong)},
++    {CC "park",               CC "(ZJ)V",                  FN_PTR(Unsafe_Park)},
++    {CC "unpark",             CC "(" OBJ ")V",               FN_PTR(Unsafe_Unpark)}
+
+ };
+
+ // These are the correct methods, moving forward:
+ static JNINativeMethod methods[] = {
+
+-    {CC"getObject",        CC"("OBJ"J)"OBJ"",   FN_PTR(Unsafe_GetObject)},
+-    {CC"putObject",        CC"("OBJ"J"OBJ")V",  FN_PTR(Unsafe_SetObject)},
+-    {CC"getObjectVolatile",CC"("OBJ"J)"OBJ"",   FN_PTR(Unsafe_GetObjectVolatile)},
+-    {CC"putObjectVolatile",CC"("OBJ"J"OBJ")V",  FN_PTR(Unsafe_SetObjectVolatile)},
++    {CC "getObject",        CC "(" OBJ "J)" OBJ "",   FN_PTR(Unsafe_GetObject)},
++    {CC "putObject",        CC "(" OBJ "J" OBJ ")V",  FN_PTR(Unsafe_SetObject)},
++    {CC "getObjectVolatile",CC "(" OBJ "J)" OBJ "",   FN_PTR(Unsafe_GetObjectVolatile)},
++    {CC "putObjectVolatile",CC "(" OBJ "J" OBJ ")V",  FN_PTR(Unsafe_SetObjectVolatile)},
+
+
+     DECLARE_GETSETOOP(Boolean, Z),
+@@ -1496,39 +1496,39 @@ static JNINativeMethod methods[] = {
+     DECLARE_GETSETNATIVE(Float, F),
+     DECLARE_GETSETNATIVE(Double, D),
+
+-    {CC"getAddress",         CC"("ADR")"ADR,             FN_PTR(Unsafe_GetNativeAddress)},
+-    {CC"putAddress",         CC"("ADR""ADR")V",          FN_PTR(Unsafe_SetNativeAddress)},
++    {CC "getAddress",         CC "(" ADR ")" ADR,             FN_PTR(Unsafe_GetNativeAddress)},
++    {CC "putAddress",         CC "(" ADR "" ADR ")V",          FN_PTR(Unsafe_SetNativeAddress)},
+
+-    {CC"allocateMemory",     CC"(J)"ADR,                 FN_PTR(Unsafe_AllocateMemory)},
+-    {CC"reallocateMemory",   CC"("ADR"J)"ADR,            FN_PTR(Unsafe_ReallocateMemory)},
++    {CC "allocateMemory",     CC "(J)" ADR,                 FN_PTR(Unsafe_AllocateMemory)},
++    {CC "reallocateMemory",   CC "(" ADR "J)" ADR,            FN_PTR(Unsafe_ReallocateMemory)},
+ //  {CC"setMemory",          CC"("ADR"JB)V",             FN_PTR(Unsafe_SetMemory)},
+ //  {CC"copyMemory",         CC"("ADR ADR"J)V",          FN_PTR(Unsafe_CopyMemory)},
+-    {CC"freeMemory",         CC"("ADR")V",               FN_PTR(Unsafe_FreeMemory)},
+-
+-    {CC"objectFieldOffset",  CC"("FLD")J",               FN_PTR(Unsafe_ObjectFieldOffset)},
+-    {CC"staticFieldOffset",  CC"("FLD")J",               FN_PTR(Unsafe_StaticFieldOffset)},
+-    {CC"staticFieldBase",    CC"("FLD")"OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromField)},
+-    {CC"ensureClassInitialized",CC"("CLS")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
+-    {CC"arrayBaseOffset",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayBaseOffset)},
+-    {CC"arrayIndexScale",    CC"("CLS")I",               FN_PTR(Unsafe_ArrayIndexScale)},
+-    {CC"addressSize",        CC"()I",                    FN_PTR(Unsafe_AddressSize)},
+-    {CC"pageSize",           CC"()I",                    FN_PTR(Unsafe_PageSize)},
+-
+-    {CC"defineClass",        CC"("DC0_Args")"CLS,        FN_PTR(Unsafe_DefineClass0)},
+-    {CC"defineClass",        CC"("DC1_Args")"CLS,        FN_PTR(Unsafe_DefineClass1)},
+-    {CC"allocateInstance",   CC"("CLS")"OBJ,             FN_PTR(Unsafe_AllocateInstance)},
+-    {CC"monitorEnter",       CC"("OBJ")V",               FN_PTR(Unsafe_MonitorEnter)},
+-    {CC"monitorExit",        CC"("OBJ")V",               FN_PTR(Unsafe_MonitorExit)},
+-    {CC"tryMonitorEnter",    CC"("OBJ")Z",               FN_PTR(Unsafe_TryMonitorEnter)},
+-    {CC"throwException",     CC"("THR")V",               FN_PTR(Unsafe_ThrowException)},
+-    {CC"compareAndSwapObject", CC"("OBJ"J"OBJ""OBJ")Z",  FN_PTR(Unsafe_CompareAndSwapObject)},
+-    {CC"compareAndSwapInt",  CC"("OBJ"J""I""I"")Z",      FN_PTR(Unsafe_CompareAndSwapInt)},
+-    {CC"compareAndSwapLong", CC"("OBJ"J""J""J"")Z",      FN_PTR(Unsafe_CompareAndSwapLong)},
+-    {CC"putOrderedObject",   CC"("OBJ"J"OBJ")V",         FN_PTR(Unsafe_SetOrderedObject)},
+-    {CC"putOrderedInt",      CC"("OBJ"JI)V",             FN_PTR(Unsafe_SetOrderedInt)},
+-    {CC"putOrderedLong",     CC"("OBJ"JJ)V",             FN_PTR(Unsafe_SetOrderedLong)},
+-    {CC"park",               CC"(ZJ)V",                  FN_PTR(Unsafe_Park)},
+-    {CC"unpark",             CC"("OBJ")V",               FN_PTR(Unsafe_Unpark)}
++    {CC "freeMemory",         CC "(" ADR ")V",               FN_PTR(Unsafe_FreeMemory)},
++
++    {CC "objectFieldOffset",  CC "(" FLD ")J",               FN_PTR(Unsafe_ObjectFieldOffset)},
++    {CC "staticFieldOffset",  CC "(" FLD ")J",               FN_PTR(Unsafe_StaticFieldOffset)},
++    {CC "staticFieldBase",    CC "(" FLD ")" OBJ,             FN_PTR(Unsafe_StaticFieldBaseFromField)},
++    {CC "ensureClassInitialized",CC "(" CLS ")V",            FN_PTR(Unsafe_EnsureClassInitialized)},
++    {CC "arrayBaseOffset",    CC "(" CLS ")I",               FN_PTR(Unsafe_ArrayBaseOffset)},
++    {CC "arrayIndexScale",    CC "(" CLS ")I",               FN_PTR(Unsafe_ArrayIndexScale)},
++    {CC "addressSize",        CC "()I",                    FN_PTR(Unsafe_AddressSize)},
++    {CC "pageSize",           CC "()I",                    FN_PTR(Unsafe_PageSize)},
++
++    {CC "defineClass",        CC "(" DC0_Args ")" CLS,        FN_PTR(Unsafe_DefineClass0)},
++    {CC "defineClass",        CC "(" DC1_Args ")" CLS,        FN_PTR(Unsafe_DefineClass1)},
++    {CC "allocateInstance",   CC "(" CLS ")" OBJ,             FN_PTR(Unsafe_AllocateInstance)},
++    {CC "monitorEnter",       CC "(" OBJ ")V",               FN_PTR(Unsafe_MonitorEnter)},
++    {CC "monitorExit",        CC "(" OBJ ")V",               FN_PTR(Unsafe_MonitorExit)},
++    {CC "tryMonitorEnter",    CC "(" OBJ ")Z",               FN_PTR(Unsafe_TryMonitorEnter)},
++    {CC "throwException",     CC "(" THR ")V",               FN_PTR(Unsafe_ThrowException)},
++    {CC "compareAndSwapObject", CC "(" OBJ "J" OBJ "" OBJ ")Z",  FN_PTR(Unsafe_CompareAndSwapObject)},
++    {CC "compareAndSwapInt",  CC "(" OBJ "J""I""I"")Z",      FN_PTR(Unsafe_CompareAndSwapInt)},
++    {CC "compareAndSwapLong", CC "(" OBJ "J""J""J"")Z",      FN_PTR(Unsafe_CompareAndSwapLong)},
++    {CC "putOrderedObject",   CC "(" OBJ "J" OBJ ")V",         FN_PTR(Unsafe_SetOrderedObject)},
++    {CC "putOrderedInt",      CC "(" OBJ "JI)V",             FN_PTR(Unsafe_SetOrderedInt)},
++    {CC "putOrderedLong",     CC "(" OBJ "JJ)V",             FN_PTR(Unsafe_SetOrderedLong)},
++    {CC "park",               CC "(ZJ)V",                  FN_PTR(Unsafe_Park)},
++    {CC "unpark",             CC "(" OBJ ")V",               FN_PTR(Unsafe_Unpark)}
+
+ //    {CC"getLoadAverage",     CC"([DI)I",                 FN_PTR(Unsafe_Loadavg)},
+
+@@ -1540,28 +1540,28 @@ static JNINativeMethod methods[] = {
+ };
+
+ JNINativeMethod loadavg_method[] = {
+-    {CC"getLoadAverage",            CC"([DI)I",                 FN_PTR(Unsafe_Loadavg)}
++    {CC "getLoadAverage",            CC "([DI)I",                 FN_PTR(Unsafe_Loadavg)}
+ };
+
+ JNINativeMethod prefetch_methods[] = {
+-    {CC"prefetchRead",       CC"("OBJ"J)V",              FN_PTR(Unsafe_PrefetchRead)},
+-    {CC"prefetchWrite",      CC"("OBJ"J)V",              FN_PTR(Unsafe_PrefetchWrite)},
+-    {CC"prefetchReadStatic", CC"("OBJ"J)V",              FN_PTR(Unsafe_PrefetchRead)},
+-    {CC"prefetchWriteStatic",CC"("OBJ"J)V",              FN_PTR(Unsafe_PrefetchWrite)}
++    {CC "prefetchRead",       CC "(" OBJ "J)V",              FN_PTR(Unsafe_PrefetchRead)},
++    {CC "prefetchWrite",      CC "(" OBJ "J)V",              FN_PTR(Unsafe_PrefetchWrite)},
++    {CC "prefetchReadStatic", CC "(" OBJ "J)V",              FN_PTR(Unsafe_PrefetchRead)},
++    {CC "prefetchWriteStatic",CC "(" OBJ "J)V",              FN_PTR(Unsafe_PrefetchWrite)}
+ };
+
+ JNINativeMethod memcopy_methods[] = {
+-    {CC"copyMemory",         CC"("OBJ"J"OBJ"JJ)V",       FN_PTR(Unsafe_CopyMemory2)},
+-    {CC"setMemory",          CC"("OBJ"JJB)V",            FN_PTR(Unsafe_SetMemory2)}
++    {CC "copyMemory",         CC "(" OBJ "J" OBJ "JJ)V",       FN_PTR(Unsafe_CopyMemory2)},
++    {CC "setMemory",          CC "(" OBJ "JJB)V",            FN_PTR(Unsafe_SetMemory2)}
+ };
+
+ JNINativeMethod memcopy_methods_15[] = {
+-    {CC"setMemory",          CC"("ADR"JB)V",             FN_PTR(Unsafe_SetMemory)},
+-    {CC"copyMemory",         CC"("ADR ADR"J)V",          FN_PTR(Unsafe_CopyMemory)}
++    {CC "setMemory",          CC "(" ADR "JB)V",             FN_PTR(Unsafe_SetMemory)},
++    {CC "copyMemory",         CC "(" ADR ADR "J)V",          FN_PTR(Unsafe_CopyMemory)}
+ };
+
+ JNINativeMethod anonk_methods[] = {
+-    {CC"defineAnonymousClass", CC"("DAC_Args")"CLS,      FN_PTR(Unsafe_DefineAnonymousClass)},
++    {CC "defineAnonymousClass", CC "(" DAC_Args ")" CLS,      FN_PTR(Unsafe_DefineAnonymousClass)},
+ };
+
+ #undef CC
+diff --git a/openjdk/jdk/src/share/native/com/sun/java/util/jar/pack/jni.cpp b/openjdk/jdk/src/share/native/com/sun/java/util/jar/pack/jni.cpp
+index e77e99f3..35754251 100644
+--- a/openjdk/jdk/src/share/native/com/sun/java/util/jar/pack/jni.cpp
++++ b/openjdk/jdk/src/share/native/com/sun/java/util/jar/pack/jni.cpp
+@@ -221,7 +221,7 @@ Java_com_sun_java_util_jar_pack_NativeUnpack_getUnusedInput(JNIEnv *env, jobject
+
+   if (uPtr->aborting()) {
+     THROW_IOE(uPtr->get_abort_message());
+-    return false;
++    return 0;
+   }
+
+   // We have fetched all the files.
+--
+2.34.1
-- 
2.25.1


