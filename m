Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B54FE00CCE; Wed, 11 Jul 2018 15:42:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B8A2E00CA4
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 15:42:44 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Jul 2018 15:42:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,339,1526367600"; d="scan'208";a="56958461"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.59])
	by orsmga006.jf.intel.com with ESMTP; 11 Jul 2018 15:42:43 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 11 Jul 2018 15:42:41 -0700
Message-Id: <1531348961-38317-2-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1531348961-38317-1-git-send-email-juro.bystricky@intel.com>
References: <1531348961-38317-1-git-send-email-juro.bystricky@intel.com>
Cc: alejandr@xilinx.com, jurobystricky@hotmail.com
Subject: [meta-mingw][sumo][PATCH 1/1] openssl: build for mingw
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
X-List-Received-Date: Wed, 11 Jul 2018 22:42:45 -0000

Build openssl.exe and several .dll files needed to run openssl
under Windows

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 .../openssl/openssl/mingw-targets.patch               | 13 +++++++++++++
 recipes-connectivity/openssl/openssl_1.0.2o.bbappend  | 19 +++++++++++++++++++
 2 files changed, 32 insertions(+)
 create mode 100644 recipes-connectivity/openssl/openssl/mingw-targets.patch
 create mode 100644 recipes-connectivity/openssl/openssl_1.0.2o.bbappend

diff --git a/recipes-connectivity/openssl/openssl/mingw-targets.patch b/recipes-connectivity/openssl/openssl/mingw-targets.patch
new file mode 100644
index 0000000..a9d98db
--- /dev/null
+++ b/recipes-connectivity/openssl/openssl/mingw-targets.patch
@@ -0,0 +1,13 @@
+--- a/Configure
++++ b/Configure
+@@ -672,6 +668,10 @@ my %table=(
+ 
+ # MinGW
+ "mingw", "gcc:-mno-cygwin -DL_ENDIAN -DWIN32_LEAN_AND_MEAN -fomit-frame-pointer -O3 -march=i486 -Wall::-D_MT:MINGW32:-lws2_32 -lgdi32 -lcrypt32:BN_LLONG ${x86_gcc_des} ${x86_gcc_opts} EXPORT_VAR_AS_FN:${x86_asm}:coff:win32:cygwin-shared:-D_WINDLL -DOPENSSL_USE_APPLINK:-mno-cygwin:.dll.a",
++"mingw32-x86_64","gcc:-mno-cygwin -DL_ENDIAN -O3 -Wall -DWIN32_LEAN_AND_MEAN -DUNICODE -D_UNICODE::-D_MT:MINGW64:-lws2_32 -lgdi32 -lcrypt32:SIXTY_FOUR_BIT RC4_CHUNK_LL DES_INT EXPORT_VAR_AS_FN:${x86_64_asm}:mingw64:win32:cygwin-shared:-D_WINDLL:-mno-cygwin:.dll.a",
++"i686-pokysdk-mingw32", "gcc:-mno-cygwin -DL_ENDIAN -DWIN32_LEAN_AND_MEAN -fomit-frame-pointer -O3 -march=i486 -Wall::-D_MT:MINGW32:-lws2_32 -lgdi32 -lcrypt32:BN_LLONG ${x86_gcc_des} ${x86_gcc_opts} EXPORT_VAR_AS_FN:${x86_asm}:coff:win32:cygwin-shared:-D_WINDLL -DOPENSSL_USE_APPLINK:-mno-cygwin:.dll.a",
++"mingw32-i686", "gcc:-mno-cygwin -DL_ENDIAN -DWIN32_LEAN_AND_MEAN -fomit-frame-pointer -O3 -march=i686 -Wall::-D_MT:MINGW32:-lws2_32 -lgdi32 -lcrypt32:BN_LLONG ${x86_gcc_des} ${x86_gcc_opts} EXPORT_VAR_AS_FN:${x86_asm}:coff:win32:cygwin-shared:-D_WINDLL -DOPENSSL_USE_APPLINK:-mno-cygwin:.dll.a",
++
+ # As for OPENSSL_USE_APPLINK. Applink makes it possible to use .dll
+ # compiled with one compiler with application compiled with another
+ # compiler. It's possible to engage Applink support in mingw64 build,
diff --git a/recipes-connectivity/openssl/openssl_1.0.2o.bbappend b/recipes-connectivity/openssl/openssl_1.0.2o.bbappend
new file mode 100644
index 0000000..0e4485c
--- /dev/null
+++ b/recipes-connectivity/openssl/openssl_1.0.2o.bbappend
@@ -0,0 +1,19 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI_append_mingw32 = " file://mingw-targets.patch"
+
+EXTRA_LIBS_mingw32 = "-lws2_32 -lgdi32 -lcrypt32 -lgcc"
+
+CFLAG_remove_mingw32 = " -DTERMIO"
+CFLAG_remove_mingw32 = " -DHAVE_CRYPTODEV"
+CFLAG_remove_mingw32 = " -Wa,--noexecstack"
+CFLAG_append_mingw32 = " -DNOCRYPT -mno-cygwin -DWIN32_LEAN_AND_MEAN" 
+
+do_compile_prepend_mingw32 () {
+	export EX_LIBS="${EXTRA_LIBS}"
+}
+
+do_install_prepend_mingw32 () {
+	export EX_LIBS="${EXTRA_LIBS}"
+}
+
-- 
2.7.4


