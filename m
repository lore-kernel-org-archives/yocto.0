Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25F55E00D6D; Mon,  5 Mar 2018 01:31:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 301B1E00D6D
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 01:31:22 -0800 (PST)
Received: by mail-wr0-f193.google.com with SMTP id v65so16443722wrc.11
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2018 01:31:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=MDK/IDBoV9PTLtYk0JMpDjWolhy3RUOb40iqnv92icU=;
	b=gy29r4zvbCNkqA0V1sdnzqo5Pqgu0cksg4/GWTnBSUaCyQ2kg8lmkk/IpRBMyrxcp5
	hXzOt1iEHaOsP297KPakmyuaV4T9D2RXT2fqCn751W/BKZ3dSewvRnUon0pkVyrVI/nG
	eeOnW2XcLHMMycFQh0qiMVhUjc9rIizThmNcfAE5FWvLPmMSML0n6dfxmVa2qAsca9rS
	HHErECiZQ2nuzs1tZPdtHGbr+gV+AoTO5oDRjTDoWkGUgfTS7U/vVqdMNLzxqXJ/HrU/
	qibYfRYil6bo9MXCOq1p2sL17Z5HbdXNPS0MHg6SY1FUXH5stBliyh2d5MQgx1uWY1SL
	rObA==
X-Gm-Message-State: APf1xPCeb8628U/NmqhWHiC941Mke8SkdX9qbp8yWBXeI17WWuaWaEA7
	MmgcLUft9I2FKQhqpJpgNK9nyHRr
X-Google-Smtp-Source: AG47ELu8UNjOgGBbXsHzj3Je8DT4gLAPgpiLVA/TjidM5afs6jku/IKYnzoTx5XEOIS+pANkmyo/Gw==
X-Received: by 10.223.179.194 with SMTP id x2mr12640337wrd.94.1520242281513;
	Mon, 05 Mar 2018 01:31:21 -0800 (PST)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	f142sm7255289wme.15.2018.03.05.01.31.20 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Mar 2018 01:31:20 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon,  5 Mar 2018 09:30:58 +0000
Message-Id: <20180305093106.11858-7-git@andred.net>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20180305093106.11858-1-git@andred.net>
References: <20180305093106.11858-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-java][PATCH 06/14] openjdk-8: fix a compiler warning
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
X-List-Received-Date: Mon, 05 Mar 2018 09:31:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <andre.draszik@jci.com>

As per the patch

Signed-off-by: André Draszik <andre.draszik@jci.com>
---
 recipes-core/openjdk/openjdk-8-release-162b12.inc  |   1 +
 ...dk-comparison-between-pointer-and-integer.patch | 144 +++++++++++++++++++++
 2 files changed, 145 insertions(+)
 create mode 100644 recipes-core/openjdk/patches-openjdk-8/0001-jdk-comparison-between-pointer-and-integer.patch

diff --git a/recipes-core/openjdk/openjdk-8-release-162b12.inc b/recipes-core/openjdk/openjdk-8-release-162b12.inc
index b7e6392..5a577b9 100644
--- a/recipes-core/openjdk/openjdk-8-release-162b12.inc
+++ b/recipes-core/openjdk/openjdk-8-release-162b12.inc
@@ -6,6 +6,7 @@ PATCHES_URI = "\
     file://openjdk8-no-unused-deps.patch;striplevel=0 \
     file://openjdk8-find-compiler-fix-env-respect.patch;striplevel=0 \
     file://openjdk8-prevent-debuginfo-in-favour-of-openembedded-package-split.patch;striplevel=0 \
+    file://0001-jdk-comparison-between-pointer-and-integer.patch \
 "
 # some patches extracted from http://cr.openjdk.java.net/~rkennke/shark-build-hotspot/webrev.01/hotspot.patch
 # reported via http://mail.openjdk.java.net/pipermail/build-dev/2015-January/013972.html
diff --git a/recipes-core/openjdk/patches-openjdk-8/0001-jdk-comparison-between-pointer-and-integer.patch b/recipes-core/openjdk/patches-openjdk-8/0001-jdk-comparison-between-pointer-and-integer.patch
new file mode 100644
index 0000000..29a30d6
--- /dev/null
+++ b/recipes-core/openjdk/patches-openjdk-8/0001-jdk-comparison-between-pointer-and-integer.patch
@@ -0,0 +1,144 @@
+From 97d6911fb581f9e44785db29abbf97ce77713f50 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
+Date: Fri, 2 Mar 2018 11:13:08 +0000
+Subject: [PATCH 1/8] jdk: comparison between pointer and integer
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+In file included from jdk/src/share/native/java/net/net_util.c:28:0:
+jdk/src/share/native/java/net/net_util.c: In function 'NET_SockaddrToInetAddress':
+jdk/src/share/native/common/jni_util.h:302:17: warning: comparison between pointer and integer
+         if ((x) == NULL) {                      \
+                 ^
+jdk/src/share/native/java/net/net_util.c:225:13: note: in expansion of macro 'CHECK_NULL_RETURN'
+             CHECK_NULL_RETURN(ret, NULL);
+             ^~~~~~~~~~~~~~~~~
+
+Backport a patch to fix this.
+
+Upstream-Status: Backport [http://hg.openjdk.java.net/jdk9/jdk9/jdk/rev/90c643593ed7]
+Signed-off-by: André Draszik <andre.draszik@jci.com>
+---
+ jdk/src/share/native/java/net/net_util.c           | 15 +++++++--------
+ jdk/src/share/native/java/net/net_util.h           |  8 ++++----
+ jdk/src/solaris/native/java/net/Inet6AddressImpl.c |  4 ++--
+ 3 files changed, 13 insertions(+), 14 deletions(-)
+
+diff --git a/jdk/src/share/native/java/net/net_util.c b/jdk/src/share/native/java/net/net_util.c
+index 2194e2e6..00c9e2ac 100644
+--- a/jdk/src/share/native/java/net/net_util.c
++++ b/jdk/src/share/native/java/net/net_util.c
+@@ -108,7 +108,7 @@ jobject getInet6Address_scopeifname(JNIEnv *env, jobject iaObj) {
+     return (*env)->GetObjectField(env, holder, ia6_scopeifnameID);
+ }
+ 
+-int setInet6Address_scopeifname(JNIEnv *env, jobject iaObj, jobject scopeifname) {
++jboolean setInet6Address_scopeifname(JNIEnv *env, jobject iaObj, jobject scopeifname) {
+     jobject holder = (*env)->GetObjectField(env, iaObj, ia6_holder6ID);
+     CHECK_NULL_RETURN(holder, JNI_FALSE);
+     (*env)->SetObjectField(env, holder, ia6_scopeifnameID, scopeifname);
+@@ -127,7 +127,7 @@ int getInet6Address_scopeid(JNIEnv *env, jobject iaObj) {
+     return (*env)->GetIntField(env, holder, ia6_scopeidID);
+ }
+ 
+-int setInet6Address_scopeid(JNIEnv *env, jobject iaObj, int scopeid) {
++jboolean setInet6Address_scopeid(JNIEnv *env, jobject iaObj, int scopeid) {
+     jobject holder = (*env)->GetObjectField(env, iaObj, ia6_holder6ID);
+     CHECK_NULL_RETURN(holder, JNI_FALSE);
+     (*env)->SetIntField(env, holder, ia6_scopeidID, scopeid);
+@@ -138,7 +138,7 @@ int setInet6Address_scopeid(JNIEnv *env, jobject iaObj, int scopeid) {
+ }
+ 
+ 
+-int getInet6Address_ipaddress(JNIEnv *env, jobject iaObj, char *dest) {
++jboolean getInet6Address_ipaddress(JNIEnv *env, jobject iaObj, char *dest) {
+     jobject holder, addr;
+     jbyteArray barr;
+ 
+@@ -150,7 +150,7 @@ int getInet6Address_ipaddress(JNIEnv *env, jobject iaObj, char *dest) {
+     return JNI_TRUE;
+ }
+ 
+-int setInet6Address_ipaddress(JNIEnv *env, jobject iaObj, char *address) {
++jboolean setInet6Address_ipaddress(JNIEnv *env, jobject iaObj, char *address) {
+     jobject holder;
+     jbyteArray addr;
+ 
+@@ -202,7 +202,6 @@ NET_SockaddrToInetAddress(JNIEnv *env, struct sockaddr *him, int *port) {
+     jobject iaObj;
+ #ifdef AF_INET6
+     if (him->sa_family == AF_INET6) {
+-        jbyteArray ipaddress;
+ #ifdef WIN32
+         struct SOCKADDR_IN6 *him6 = (struct SOCKADDR_IN6 *)him;
+ #else
+@@ -218,11 +217,12 @@ NET_SockaddrToInetAddress(JNIEnv *env, struct sockaddr *him, int *port) {
+             setInetAddress_family(env, iaObj, IPv4);
+         } else {
+             jint scope;
+-            int ret;
++            jboolean ret;
+             iaObj = (*env)->NewObject(env, ia6_class, ia6_ctrID);
+             CHECK_NULL_RETURN(iaObj, NULL);
+             ret = setInet6Address_ipaddress(env, iaObj, (char *)&(him6->sin6_addr));
+-            CHECK_NULL_RETURN(ret, NULL);
++            if (ret == JNI_FALSE)
++                return NULL;
+             setInetAddress_family(env, iaObj, IPv6);
+             scope = getScopeID(him);
+             setInet6Address_scopeid(env, iaObj, scope);
+@@ -269,7 +269,6 @@ NET_SockaddrEqualsInetAddress(JNIEnv *env, struct sockaddr *him, jobject iaObj)
+                 return JNI_FALSE;
+             }
+         } else {
+-            jbyteArray ipaddress;
+             jbyte caddrCur[16];
+             int scope;
+ 
+diff --git a/jdk/src/share/native/java/net/net_util.h b/jdk/src/share/native/java/net/net_util.h
+index c8a5e68c..176ca586 100644
+--- a/jdk/src/share/native/java/net/net_util.h
++++ b/jdk/src/share/native/java/net/net_util.h
+@@ -64,12 +64,12 @@ JNIEXPORT void JNICALL initInetAddressIDs(JNIEnv *env);
+  * get_ methods that return objects return NULL on error.
+  */
+ extern jobject getInet6Address_scopeifname(JNIEnv *env, jobject ia6Obj);
+-extern int setInet6Address_scopeifname(JNIEnv *env, jobject ia6Obj, jobject scopeifname);
++extern jboolean setInet6Address_scopeifname(JNIEnv *env, jobject ia6Obj, jobject scopeifname);
+ extern int getInet6Address_scopeid_set(JNIEnv *env, jobject ia6Obj);
+ extern int getInet6Address_scopeid(JNIEnv *env, jobject ia6Obj);
+-extern int setInet6Address_scopeid(JNIEnv *env, jobject ia6Obj, int scopeid);
+-extern int getInet6Address_ipaddress(JNIEnv *env, jobject ia6Obj, char *dest);
+-extern int setInet6Address_ipaddress(JNIEnv *env, jobject ia6Obj, char *address);
++extern jboolean setInet6Address_scopeid(JNIEnv *env, jobject ia6Obj, int scopeid);
++extern jboolean getInet6Address_ipaddress(JNIEnv *env, jobject ia6Obj, char *dest);
++extern jboolean setInet6Address_ipaddress(JNIEnv *env, jobject ia6Obj, char *address);
+ 
+ extern void setInetAddress_addr(JNIEnv *env, jobject iaObj, int address);
+ extern void setInetAddress_family(JNIEnv *env, jobject iaObj, int family);
+diff --git a/jdk/src/solaris/native/java/net/Inet6AddressImpl.c b/jdk/src/solaris/native/java/net/Inet6AddressImpl.c
+index e29a25da..23ec2985 100644
+--- a/jdk/src/solaris/native/java/net/Inet6AddressImpl.c
++++ b/jdk/src/solaris/native/java/net/Inet6AddressImpl.c
+@@ -403,7 +403,7 @@ Java_java_net_Inet6AddressImpl_lookupAllHostAddr(JNIEnv *env, jobject this,
+         }
+ 
+         while (iterator != NULL) {
+-            int ret1;
++            jboolean ret1;
+             if (iterator->ai_family == AF_INET) {
+                 jobject iaObj = (*env)->NewObject(env, ia4_class, ia4_ctrID);
+                 if (IS_NULL(iaObj)) {
+@@ -423,7 +423,7 @@ Java_java_net_Inet6AddressImpl_lookupAllHostAddr(JNIEnv *env, jobject this,
+                     goto cleanupAndReturn;
+                 }
+                 ret1 = setInet6Address_ipaddress(env, iaObj, (char *)&(((struct sockaddr_in6*)iterator->ai_addr)->sin6_addr));
+-                if (!ret1) {
++                if (ret1 == JNI_FALSE) {
+                     ret = NULL;
+                     goto cleanupAndReturn;
+                 }
+-- 
+2.16.2
+
-- 
2.16.2


