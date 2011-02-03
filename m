Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id CB0FD4C800A4
	for <yocto@yoctoproject.org>; Thu,  3 Feb 2011 17:19:23 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 7B37C16604D5; Thu,  3 Feb 2011 16:19:23 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id AB42A16604C8;
	Thu,  3 Feb 2011 16:19:21 -0700 (MST)
Message-ID: <4D4B37F9.7080708@mlbassoc.com>
Date: Thu, 03 Feb 2011 16:19:21 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: meta-linaro woes continue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Feb 2011 23:19:24 -0000
X-Groupsio-MsgNum: 916
Content-Type: multipart/mixed; boundary="------------020402070409060309050001"

--------------020402070409060309050001
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

n.b. this is a continuation of "Kernel Panics on armv4t with gcc.4.5.1"
but the actual discussion has changed enough and there was too much
noise in the previous thread.

Trying to use the meta-linaro layer (to solve my problems
with GCC/4.5.1 on armv5te ), I was able to include and use
the layer with the attached changes.  I added this layer
intact, moving meta-linaro into my poky tree at the same
level as meta, meta-extras, etc.

I also had to copy meta/recipes-devtools/gcc/gcc-4.5.1 into
meta-linaro/recipes-devtools/gcc (I didn't know how to expand
the FILESPATH variable to suck from the main meta tree)

The next problem is this:

| configure: WARNING: unrecognized options: --enable-languages, --enable-threads, --enable-target-optspace, --enable-lto, --enable-libssp, --disable-bootstrap, --disable-libgomp, 
--disable-libmudflap, --with-float, --with-local-prefix, --with-sysroot, --with-build-sysroot, --disable-libunwind-exceptions, --enable-__cxa_atexit
| Checking autotools environment for common misconfiguration
| NOTE: Checking autotools environment for common misconfiguration
| This autoconf log indicates errors, it looked at host includes.
| Rerun configure task after fixing this. The path was 
'/home/local/efacec_omap_linaro/tmp/work/armv5te-poky-linux-gnueabi/gcc-runtime-4.5.1.linaro-r0/gcc-4.5.1.linaro/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libstdc++-v3'
| ERROR: This autoconf log indicates errors, it looked at host includes.
| Rerun configure task after fixing this. The path was 
'/home/local/efacec_omap_linaro/tmp/work/armv5te-poky-linux-gnueabi/gcc-runtime-4.5.1.linaro-r0/gcc-4.5.1.linaro/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/libstdc++-v3'
| Function 'do_qa_configure' failed
| ERROR: Function 'do_qa_configure' failed
NOTE: package gcc-runtime-4.5.1.linaro-r0: task do_qa_configure: Failed

Ideas?  I'm really anxious to see if this fixes my kernel problems.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------020402070409060309050001
Content-Type: text/plain;
 name="linaro.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="linaro.patch"

diff --git a/meta-linaro/conf/layer.conf b/meta-linaro/conf/layer.conf
index cce0f43..5c0dc64 100644
--- a/meta-linaro/conf/layer.conf
+++ b/meta-linaro/conf/layer.conf
@@ -5,7 +5,8 @@ RSP_ROOT ?= "sda1"
 BBPATH := "${BBPATH}:${LAYERDIR}"
 
 # We have an images and various recipe-* directories, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/images/*.bb ${LAYERDIR}/images/*.bbappend ${LAYERDIR}/recipes-*/*.bb ${LAYERDIR}/recipes-*/*.bbappend"
+BBFILES := "${BBFILES} ${LAYERDIR}/images/*.bb ${LAYERDIR}/images/*.bbappend \
+            ${LAYERDIR}/recipes-*/*/*.bb ${LAYERDIR}/recipes-*/*/*.bbappend"
 	
 BBFILE_COLLECTIONS += "linaro"
 BBFILE_PATTERN_linaro := "^${LAYERDIR}/"
diff --git a/meta-linaro/recipes-devtools/gcc/gcc-4.5.1.linaro.inc b/meta-linaro/recipes-devtools/gcc/gcc-4.5.1.linaro.inc
index 43f5cd2..f145f85 100644
--- a/meta-linaro/recipes-devtools/gcc/gcc-4.5.1.linaro.inc
+++ b/meta-linaro/recipes-devtools/gcc/gcc-4.5.1.linaro.inc
@@ -49,6 +49,14 @@ SRC_URI = "http://launchpad.net/gcc-linaro/4.5/4.5-2010.11-0/+download/gcc-linar
 	   file://gcc-poison-parameters.patch \
 	  "
 
+ 
+do_move_src() {
+	echo moving ${WORKDIR}/gcc-linaro-4.5-2010.11-1 ${WORKDIR}/gcc-${PV}
+	mv ${WORKDIR}/gcc-linaro-4.5-2010.11-1 ${WORKDIR}/gcc-${PV}
+}
+
 do_unpack_append() {
-	mv gcc-linaro-4.5-2010.11-1 gcc-${PV}
+	bb.build.exec_func('do_move_src', d)
 }
+
+

--------------020402070409060309050001--
