Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 573F9E00916; Tue, 23 Dec 2014 01:09:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2461E007C1
	for <yocto@yoctoproject.org>; Tue, 23 Dec 2014 01:09:00 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sBN98KHP004981; Tue, 23 Dec 2014 09:08:20 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Ge7I4-MKJGBm; Tue, 23 Dec 2014 09:08:20 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sBN988Ru004978
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 23 Dec 2014 09:08:20 GMT
Message-ID: <1419325725.1777.7.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Peter Saunderson <peteasa@gmail.com>
Date: Tue, 23 Dec 2014 09:08:45 +0000
In-Reply-To: <54958B25.8080505@gmail.com>
References: <54958B25.8080505@gmail.com>
X-Mailer: Evolution 3.12.7-0ubuntu1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Cross compiler which runs on the target architecture.
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
X-List-Received-Date: Tue, 23 Dec 2014 09:09:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2014-12-20 at 14:43 +0000, Peter Saunderson wrote:
> I have seen a brief IRC chat 
> (https://www.yoctoproject.org/irc/%23yocto.2013-09-23.log.html talking 
> about https://github.com/nathanrossi/meta-parallella) about this 
> question but nothing much else so this is an attempt to get more public 
> feedback on this request.
> 
> I am trying to build a cross compiler that runs on the target processor 
> and a cross compiler that runs on the host processor so that I can build 
> code for a third processor (Epiphany).  If you want examples of the 
> traditional way to build this compiler look at 
> https://github.com/adapteva/epiphany-sdk epiphany-gcc epiphany-newlib 
> epiphany-binutils... The end result would be a set of recipes that run 
> on a pc build machine that build both arm code for the interim target 
> and epiphany code for the final target and provides an SDK for the pc 
> that enables you to cross compile for both arm and epiphany.
> 
> As I am just starting to look at this I would like to know what size of 
> task I am up against!  My initial efforts based on review of 
> poky/meta/recipes-devtools/binutils etc seem to suggest that I have to 
> modify at least ${HOST_PREFIX}, ${TARGET_PREFIX}, ${TARGET_ARCH} etc for 
> my epiphany-??? recipes so that the I can install the compiler in a 
> suitable location with a suitable prefix, the IRC chat indicates that 
> there are more things to consider also.
> 
> The question I have is about how easy it will be to use existing recipes 
> for existing compiler / binutils etc... or is this likely to end up as a 
> completely new set of recipes from the ground up because the existing 
> recipes cant cope with building cross / cross compilers where there are 
> three processors to consider (host (intel based pc), interim target 
> (arm) and final target (epiphany)), or at least a lot of changes in the 
> existing recipes to cope with something like TARGET_TARGET_ARCH = 
> ${TARGET_ARCH}_${FINAL_TARGET_ARCH}??

As mentioned, I had need to do something like this for an avr target.
I've created some *extremely* hacky recipes which do this and the
resulting toolchain does actually work, much to my surprise. I've
included the recipes I created below, warts and all in case it helps.

Basically, its all a bit of a hack, the trouble is the system is very
much tuned to have TARGET pointed at HOST for standard recipes. In the
end I found it easier to 'sed' in the right target values into configure
and then 'sed' other variables to change TARGET_PREFIX/TARGET_SYS where
needed.

Ultimately if we were doing a lot of this, we may be able to use a
different variable name to make the recipes a lot neater.

Cheers,

Richard


From f58f90257a5af3e6b6974090e62cad9d90d53ae5 Mon Sep 17 00:00:00 2001
From: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Tue, 23 Dec 2014 09:01:34 +0000
Subject: Add target avr support

Known issues:

* dependencies between the recipes is missing/incorrect
* on target avr libgcc isn't installed

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

diff --git a/meta/recipes-devtools/avr-libc/avr-libc_1.8.1.bb b/meta/recipes-devtools/avr-libc/avr-libc_1.8.1.bb
new file mode 100644
index 0000000..81481ba
--- /dev/null
+++ b/meta/recipes-devtools/avr-libc/avr-libc_1.8.1.bb
@@ -0,0 +1,31 @@
+SRC_URI = "http://download.savannah.gnu.org/releases/avr-libc/avr-libc-1.8.1.tar.bz2"
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=8d91a8f153d3de715f67a5df0d841c43"
+
+SRC_URI[md5sum] = "0caccead59eaaa61ac3f060ca3a803ef"
+SRC_URI[sha256sum] = "c3062a481b6b2c6959dc708571c00b0e26301897ba21171ed92acd0af7c4a969"
+
+inherit autotools
+
+TOOLCHAIN_OPTIONS = ""
+
+TARGET_CFLAGS = ""
+TARGET_LDFLAGS = ""
+
+export CC = "avr-gcc"
+export AS = "avr-as"
+export RANLIB = "avr-ranlib"
+export AR = "avr-ar"
+
+FILES_${PN} += "${exec_prefix}/avr"
+INSANE_SKIP_${PN} = "arch staticdev"
+
+python () {
+    def replace(var, x, y):
+        d.setVar(var, d.getVar(var, True).replace(d.expand(x),y))
+
+    replace('CONFIGUREOPTS', '--host=${HOST_SYS}','--host=avr')
+    replace('CONFIGUREOPTS', '--target=${TARGET_SYS}','--target=avr')
+}
+
+
diff --git a/meta/recipes-devtools/binutils/binutils-cross-target-avr_2.24.bb b/meta/recipes-devtools/binutils/binutils-cross-target-avr_2.24.bb
new file mode 100644
index 0000000..e19cf54
--- /dev/null
+++ b/meta/recipes-devtools/binutils/binutils-cross-target-avr_2.24.bb
@@ -0,0 +1,37 @@
+require binutils.inc
+require binutils-${PV}.inc
+require binutils-cross.inc
+
+DEPENDS += "flex bison zlib"
+PROVIDES = "virtual/binutils-target-avr"
+
+BPN = "binutils"
+
+
+
+python () {
+    def replace(var, x, y):
+        d.setVar(var, d.getVar(var, True).replace(d.expand(x),y))
+
+    replace('CONFIGUREOPTS', '--target=${TARGET_SYS}','--target=avr')
+    replace('EXTRA_OECONF', '--program-prefix=${TARGET_PREFIX}' ,'--program-prefix=avr-')
+    replace('do_install', '${TARGET_PREFIX}' ,'avr-')
+    replace('do_install', '${TARGET_SYS}' ,'avr')
+}
+
+EXTRA_OECONF += "--with-sysroot=/ \
+                --enable-install-libbfd \
+                --enable-install-libiberty \
+                --enable-shared \
+                "
+
+do_install () {
+    oe_runmake 'DESTDIR=${D}' install
+}
+
+sysroot_stage_all() {
+    sysroot_stage_dirs ${D} ${SYSROOT_DESTDIR}
+    sysroot_stage_dir ${D}${STAGING_DIR_NATIVE}${prefix_native}/avr ${SYSROOT_DESTDIR}${STAGING_DIR_NATIVE}${prefix_native}/avr
+    sysroot_stage_dir ${D}${STAGING_DIR_NATIVE}${prefix_native}/${BUILD_SYS} ${SYSROOT_DESTDIR}${STAGING_DIR_NATIVE}${prefix_native}/${BUILD_SYS}
+}
+
diff --git a/meta/recipes-devtools/binutils/binutils-target-avr_2.24.bb b/meta/recipes-devtools/binutils/binutils-target-avr_2.24.bb
new file mode 100644
index 0000000..66a899c
--- /dev/null
+++ b/meta/recipes-devtools/binutils/binutils-target-avr_2.24.bb
@@ -0,0 +1,57 @@
+require binutils.inc
+require binutils-${PV}.inc
+
+DEPENDS += "flex bison zlib"
+
+BPN = "binutils"
+
+FILES_${PN}-dev += " \
+    ${exec_prefix}/${HOST_SYS}/avr/lib/lib*.la \
+    ${exec_prefix}/${HOST_SYS}/avr/lib/libopcodes.so \
+    ${exec_prefix}/${HOST_SYS}/avr/lib/libbfd.so \
+    ${exec_prefix}/${HOST_SYS}/avr/include \
+"
+FILES_${PN}-staticdev += " \
+    ${exec_prefix}/${HOST_SYS}/avr/lib/lib*.a \
+"
+
+USE_ALTERNATIVES_FOR = ""
+
+python () {
+    def replace(var, x, y):
+        d.setVar(var, d.getVar(var, True).replace(d.expand(x),y))
+
+    replace('CONFIGUREOPTS', '--target=${TARGET_SYS}','--target=avr')
+    replace('EXTRA_OECONF', '--program-prefix=${TARGET_PREFIX}' ,'--program-prefix=avr-')
+    replace('do_install', '${TARGET_PREFIX}' ,'avr-')
+    replace('do_install', '${TARGET_SYS}' ,'avr')
+    replace(d.expand('FILES_${PN}'), '${TARGET_PREFIX}' ,'avr-')
+    replace(d.expand('FILES_${PN}'), '${TARGET_SYS}' ,'avr')
+    d.appendVar(d.expand('FILES_${PN}'), " ${exec_prefix}/${HOST_SYS}/avr/lib/*-*.so ${libdir}/ldscripts")
+    d.appendVar(d.expand('FILES_${PN}-dbg'), " ${exec_prefix}/${HOST_SYS}/avr/lib/.debug")
+}
+
+EXTRA_OECONF += "--with-sysroot=/ \
+                --enable-install-libbfd \
+                --enable-install-libiberty \
+                --enable-shared \
+                "
+
+#do_install_append() {
+#	# Remove symlinks created by do_install
+#	for p in ${TARGET_PREFIX}* ; do
+#		rm `echo $p | sed -e s,${TARGET_PREFIX},,`
+#	done
+#}
+
+do_install () {
+    autotools_do_install
+
+    # Fix the /usr/${TARGET_SYS}/bin/* links
+    for l in ${D}${prefix}/${TARGET_SYS}/bin/*; do
+	rm -f $l
+	ln -sf `echo ${prefix}/${TARGET_SYS}/bin \
+	    | tr -s / \
+	    | sed -e 's,^/,,' -e 's,[^/]*,..,g'`${bindir}/${TARGET_PREFIX}`basename $l` $l
+    done
+}
\ No newline at end of file
diff --git a/meta/recipes-devtools/gcc/gcc-cross-target-avr_4.8.bb b/meta/recipes-devtools/gcc/gcc-cross-target-avr_4.8.bb
new file mode 100644
index 0000000..aa5c469
--- /dev/null
+++ b/meta/recipes-devtools/gcc/gcc-cross-target-avr_4.8.bb
@@ -0,0 +1,41 @@
+require recipes-devtools/gcc/gcc-${PV}.inc
+require gcc-cross.inc
+
+BPN = "gcc"
+PROVIDES = "virtual/gcc-target-avr"
+
+ARCH_FLAGS_FOR_TARGET = ""
+TARGET_CFLAGS = ""
+
+EXTRA_OECONF = "${@['--enable-clocale=generic', ''][d.getVar('USE_NLS', True) != 'no']} \
+                --with-gnu-ld \
+                --enable-languages=c \
+                ${GCCMULTILIB} \
+                --disable-libssp \
+                --program-prefix=avr- \
+                --without-local-prefix \
+                ${OPTSPACE} \
+                --enable-lto \
+                --disable-bootstrap \
+                --disable-libmudflap \
+                --with-system-zlib \
+                --enable-linker-build-id \
+                --with-ppl=no \
+                --with-cloog=no \
+                --enable-checking=release \
+                ${EXTRA_OECONF_PATHS}"
+
+python () {
+    def replace(var, x, y):
+        #bb.warn(x)
+        #bb.warn(d.expand(x))
+        #bb.warn(d.getVar(var))
+        #bb.warn(d.getVar(var, True).replace(d.expand(x),y))
+        d.setVar(var, d.getVar(var, True).replace(d.expand(x),y))
+
+    replace('CONFIGUREOPTS', '--target=${TARGET_SYS}','--target=avr')
+    #replace('do_configure', '${HOST_PREFIX}' ,'avr-')
+    replace('do_install', '${TARGET_PREFIX}' ,'avr-')
+    replace('do_install', '${TARGET_SYS}' ,'avr')
+}
+
diff --git a/meta/recipes-devtools/gcc/gcc-target-avr_4.8.bb b/meta/recipes-devtools/gcc/gcc-target-avr_4.8.bb
new file mode 100644
index 0000000..b2be069
--- /dev/null
+++ b/meta/recipes-devtools/gcc/gcc-target-avr_4.8.bb
@@ -0,0 +1,50 @@
+require recipes-devtools/gcc/gcc-${PV}.inc
+require gcc-target.inc
+
+BPN = "gcc"
+
+ARCH_FLAGS_FOR_TARGET = ""
+
+EXTRA_OECONF = "${@['--enable-clocale=generic', ''][d.getVar('USE_NLS', True) != 'no']} \
+                --with-gnu-ld \
+                --enable-languages=c \
+                ${GCCMULTILIB} \
+                --disable-libssp \
+                --program-prefix=avr- \
+                --without-local-prefix \
+                ${OPTSPACE} \
+                --enable-lto \
+                --disable-bootstrap \
+                --disable-libmudflap \
+                --with-system-zlib \
+                --with-ppl=no \
+                --with-cloog=no \
+                --enable-checking=release \
+                ${EXTRA_OECONF_PATHS}"
+
+
+python () {
+    def replace(var, x, y, d):
+        d.setVar(var, d.getVar(var, True).replace(d.expand(x),y))
+
+    ld = bb.data.createCopy(d)
+    ld.setVar("TARGET_CFLAGS", "")
+    ld.setVar("HOST_CC_ARCH", "")
+    ld.setVar("TOOLCHAIN_OPTIONS", "")
+
+    replace('CONFIGUREOPTS', '--target=${TARGET_SYS}','--target=avr', d)
+    replace('EXTRA_OECONF', '--program-prefix=${TARGET_PREFIX}' ,'--program-prefix=avr-', d)
+    replace('do_configure', '${HOST_PREFIX}' ,'avr-', ld)
+    d.setVar('do_configure', ld.getVar('do_configure'))
+    replace('do_install', '${TARGET_PREFIX}' ,'avr-', d)
+    replace('do_install', '${TARGET_SYS}' ,'avr', d)
+    replace(d.expand('FILES_${PN}'), '${TARGET_PREFIX}' ,'avr-', d)
+    replace(d.expand('FILES_cpp'), '${TARGET_PREFIX}' ,'avr-', d)
+    replace(d.expand('FILES_gcov'), '${TARGET_PREFIX}' ,'avr-', d)
+    replace(d.expand('FILES_${PN}'), '${TARGET_SYS}' ,'avr', d)
+    replace(d.expand('FILES_${PN}-plugin-dev'), '${TARGET_SYS}' ,'avr', d)
+    replace(d.expand('FILES_${PN}-dbg'), '${TARGET_SYS}' ,'avr', d)
+    replace(d.expand('FILES_${PN}-dev'), '${TARGET_SYS}' ,'avr', d)
+    #d.appendVar(d.expand('FILES_${PN}'), " ${exec_prefix}/${HOST_SYS}/avr/lib/*-*.so")
+    #d.appendVar(d.expand('FILES_${PN}-dbg'), " ${exec_prefix}/${HOST_SYS}/avr/lib/.debug")
+}



