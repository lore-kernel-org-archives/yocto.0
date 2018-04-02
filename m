Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 775B8E00932; Sun,  1 Apr 2018 23:43:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81638E008BF
	for <yocto@yoctoproject.org>; Sun,  1 Apr 2018 23:43:48 -0700 (PDT)
Received: by mail-wm0-f41.google.com with SMTP id w2so4644798wmw.1
	for <yocto@yoctoproject.org>; Sun, 01 Apr 2018 23:43:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=yg3ca2xJUElDVmxSfmdOoz5X1udAN8rShbIcO1RgJdo=;
	b=AReoVOFLKZWjxbcmC9tjmiJG39Gf07TRh/7bRb67fC8gK1wN6vI4KjcoXCGOH2s6Rs
	WTVkLgMNW7cKMuHH9Ni5hJ0wOJXQfPjTQDTaWjNu/p54CMudN2ZxlW1jpDanQBVDPiSi
	co5M4xttf1gr8hKuN8HQwzisB1g+oeI5KuXBTgYZGaCSDK2GztXMRY4SBau04NCGc5gV
	3+cfQcegJ5rubNBJxfyT1BpWAb6H5jHsPTX3akwDKJdePJaczfLMgBeNF4RSX569h5sY
	WWS+cqXiwv4ecP9PIMQQKtlGP15qF7QiY9I1TmZY9S4k/sey8xZaOCkmLr6Kk60ac19g
	ghQg==
X-Gm-Message-State: AElRT7E1vBCVUq1h/HH9W6QXjRD4IoYq+fFq04JO3WJ0vgwAO61qnbZK
	ccP+YkwBeI7BTtie+zTl9g7D3bbk
X-Google-Smtp-Source: AIpwx4/0OiMevZ/7wTPxjUx0frpltfcu4LDXiWrrDJUutqi87yAVgjNB/xuMr+DBiCftRXcNskdEQQ==
X-Received: by 10.80.242.144 with SMTP id f16mr11358563edm.52.1522651426823;
	Sun, 01 Apr 2018 23:43:46 -0700 (PDT)
Received: from tfsielt31850.fritz.box (188-141-55-36.dynamic.upc.ie.
	[188.141.55.36]) by smtp.gmail.com with ESMTPSA id
	o60sm8619811eda.17.2018.04.01.23.43.45 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 01 Apr 2018 23:43:45 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon,  2 Apr 2018 07:43:44 +0100
Message-Id: <20180402064344.28089-1-git@andred.net>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20180330084019.18955-2-git@andred.net>
References: <20180330084019.18955-2-git@andred.net>
MIME-Version: 1.0
Subject: [meta-java][PATCH v2] ca-certificates-java: add recipe to generate trustStore
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
X-List-Received-Date: Mon, 02 Apr 2018 06:43:50 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <andre.draszik@jci.com>

The OpenJDK-8 package currently comes with a trustStore
that was generated at OpenJDK-8-native build time from
*all* certificates available in the system, not just from
those that are marked as trusted.

This isn't right...

So this recipe hooks into the ca-certificates package and
(re-) creates the Java trustStore based on the
certificates trusted by the system, whenever they are
updated. This works both at image build time, as well as
during runtime on the target.

It works by installing a hook into ca-certificates'
$SYSROOT/etc/ca-certificates/update.d/ that is passed the
added/removed certificates as arguments. That hook is then
updating the Java trustStore and storing it in
$SYSROOT/etc/ssl/certs/java/cacerts.

The whole idea as well as the implementation of the hook
is borrowed from debian's ca-certificate-java package,
version 20170930 (the latest as of this commit).
Looking at the debian package, it appears like the same
binary trustStore ($SYSROOT/etc/ssl/certs/java/cacerts)
can be used by different versions of Java:
  * OpenJDK-7, 8, 9
  * Oracle Java 7, 8, 9

The Java sources here can be compiled by any compatible
Java compiler, but the resulting jar file should only be
run by one of the compatible Java versions mentioned
above, so as to create a trustStore that can be read by
any of the Java versions mentioned above. We try to ensure
this using PACKAGE_WRITE_DEPS during image build time,
and by trying to find a compatible Java version inside
${libdir_jvm} at runtime both during image build time and
on the target.

Given there is nothing that we can RDEPENDS on that would
satisfy any of the above Java versions (either JDK or JRE),
we simply RDEPENDS on java2-runtime, and test
PREFERRED_RPROVIDER_java2-runtime to be satisfactory.
Given I can only test OpenJDK/OpenJRE 8 at the moment, only
those are actually allowed at the moment, though. This can
easily be extended upon confirmation.

Final note - as per the debian package, there are three
cases when we can be called:
  1) as part of update-ca-certificates -> add / remove certs as instructed
  2) if first time install -> add all certs
  3) package update -> do nothing
We have no way to easily distinguish between first time install
and package update in OE, so the distinction between cases 2)
and 3) isn't perfect.

Signed-off-by: André Draszik <andre.draszik@jci.com>

---
v2:
* Works with rm_work enabled. We can't use STAGING_LIBDIR_JVM_NATIVE
  in pkg_postinst as that is statically resolved to this recipe's
  native sysroot, which is of no use when building an image.
  Use the NATIVE_ROOT variable instead
* make the ca-certificates hook script less verbose (remove set -x)
---
 ...ficates-handle-SYSROOT-environment-variab.patch |  43 +++++++++
 .../ca-certificates-java.hook.in                   |  64 ++++++++++++
 .../ca-certificates-java_20170930.bb               | 107 +++++++++++++++++++++
 3 files changed, 214 insertions(+)
 create mode 100644 recipes-core/ca-certificates-java/ca-certificates-java/0001-UpdateCertificates-handle-SYSROOT-environment-variab.patch
 create mode 100755 recipes-core/ca-certificates-java/ca-certificates-java/ca-certificates-java.hook.in
 create mode 100644 recipes-core/ca-certificates-java/ca-certificates-java_20170930.bb

diff --git a/recipes-core/ca-certificates-java/ca-certificates-java/0001-UpdateCertificates-handle-SYSROOT-environment-variab.patch b/recipes-core/ca-certificates-java/ca-certificates-java/0001-UpdateCertificates-handle-SYSROOT-environment-variab.patch
new file mode 100644
index 0000000..ca052ab
--- /dev/null
+++ b/recipes-core/ca-certificates-java/ca-certificates-java/0001-UpdateCertificates-handle-SYSROOT-environment-variab.patch
@@ -0,0 +1,43 @@
+From 70cd9999d3c139230aa05816e98cdc3e50ead713 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
+Date: Tue, 27 Mar 2018 16:50:39 +0100
+Subject: [PATCH] UpdateCertificates: handle SYSROOT environment variable for
+ cacerts
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+We can now pass in the sysroot, so that the trustStore
+is written to /etc/ssl/certs/java/cacerts below $SYSROOT.
+
+Upstream-Status: Inappropriate [OE specific]
+Signed-off-by: André Draszik <andre.draszik@jci.com>
+---
+ src/main/java/org/debian/security/UpdateCertificates.java | 6 +++++-
+ 1 file changed, 5 insertions(+), 1 deletion(-)
+
+diff --git a/src/main/java/org/debian/security/UpdateCertificates.java b/src/main/java/org/debian/security/UpdateCertificates.java
+index e4f8205..dba9a7b 100644
+--- a/src/main/java/org/debian/security/UpdateCertificates.java
++++ b/src/main/java/org/debian/security/UpdateCertificates.java
+@@ -40,15 +40,19 @@ public class UpdateCertificates {
+ 
+     public static void main(String[] args) throws IOException, GeneralSecurityException {
+         String passwordString = "changeit";
++        String sysroot;
+         if (args.length == 2 && args[0].equals("-storepass")) {
+             passwordString = args[1];
+         } else if (args.length > 0) {
+             System.err.println("Usage: java org.debian.security.UpdateCertificates [-storepass <password>]");
+             System.exit(1);
+         }
++        sysroot = System.getenv("SYSROOT");
++        if (sysroot == null)
++            sysroot = "";
+ 
+         try {
+-            UpdateCertificates uc = new UpdateCertificates("/etc/ssl/certs/java/cacerts", passwordString);
++            UpdateCertificates uc = new UpdateCertificates(sysroot + "/etc/ssl/certs/java/cacerts", passwordString);
+             // Force reading of inputstream in UTF-8
+             uc.processChanges(new InputStreamReader(System.in, "UTF8"));
+             uc.finish();
diff --git a/recipes-core/ca-certificates-java/ca-certificates-java/ca-certificates-java.hook.in b/recipes-core/ca-certificates-java/ca-certificates-java/ca-certificates-java.hook.in
new file mode 100755
index 0000000..f01fe36
--- /dev/null
+++ b/recipes-core/ca-certificates-java/ca-certificates-java/ca-certificates-java.hook.in
@@ -0,0 +1,64 @@
+#!/bin/sh -eu
+
+# As per the debian package, three cases when we can be called:
+#   1) as part of update-ca-certificates -> add / remove certs as instructed
+#   2) if first time install -> add all certs
+#   3) package update -> do nothing
+# We have no way to easily distinguish between first time install
+# and package update in OE, so the distinction between cases 2)
+# and 3) isn't perfect.
+
+self=$(basename $0)
+jvm_libdir="@@libdir_jvm@@"
+
+if [ -n "${D:-}" ] ; then
+    # called from postinst as part of image build on host
+    if [ -z "${JVM_LIBDIR:-}" ] ; then
+        # should never happen, this is supposed to be passed in
+        echo "$0: no JVM_LIBDIR specified" >&2
+        false
+    fi
+fi
+if [ -n "${JVM_LIBDIR:-}" ] ; then
+    jvm_libdir="${JVM_LIBDIR}"
+fi
+
+for JAVA in icedtea7-native/bin/java \
+            openjdk-8-native/bin/java openjdk-8/bin/java openjre-8/bin/java \
+         ; do
+    if [ -x "${jvm_libdir}/${JAVA}" ] ; then
+        JAVA="${jvm_libdir}/${JAVA}"
+        break
+    fi
+done
+
+if [ ! -x "${JAVA}" ] ; then
+    # shouldn't really happen, as we RDEPEND on java
+    echo "$0: JAVA not found" >&2
+    false
+fi
+
+if [ "${self}" = "ca-certificates-java-hook" ] ; then
+    # case 1) from above
+    # the list of (changed) files is passed via stdin
+    while read input ; do
+        echo "${input}"
+    done
+elif [ -s $D${sysconfdir}/ssl/certs/java/cacerts ] ; then
+    # we were executed explicitly (not via ca-cacertificates hook)
+    # case 3) from above
+    # do nothing, as the trustStore exists already
+    return
+else
+    # we were executed explicitly (not via ca-cacertificates hook)
+    # case 2) from above
+    # the trustStore doesn't exist yet, create it as this is
+    # a first time install (e.g. during image build)
+    find $D${sysconfdir}/ssl/certs -name '*.pem' | \
+    while read filename ; do
+        echo "+${filename}"
+    done
+fi | SYSROOT="${D:-}" ${JAVA} -Xmx64m \
+                              -jar ${D:-}@@datadir_java@@/@@JARFILENAME@@ \
+                              -storepass changeit
+
diff --git a/recipes-core/ca-certificates-java/ca-certificates-java_20170930.bb b/recipes-core/ca-certificates-java/ca-certificates-java_20170930.bb
new file mode 100644
index 0000000..0b149d2
--- /dev/null
+++ b/recipes-core/ca-certificates-java/ca-certificates-java_20170930.bb
@@ -0,0 +1,107 @@
+SUMMARY = "Common CA certificates (JKS trustStore)"
+DESCRIPTION = "This package uses the hooks of the ca-certificates \
+package to update the cacerts JKS trustStore used for many java runtimes."
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "\
+	file://debian/copyright;md5=ab0f6b6900f6564dc3e273dfa36fcc72 \
+	file://src/main/java/org/debian/security/InvalidKeystorePasswordException.java;endline=17;md5=f9150bf1ca3139a38ddb54f9e1c0eb9b \
+	file://src/main/java/org/debian/security/KeyStoreHandler.java;endline=18;md5=3fd0e26abbca2ec481cf3698431574ae \
+	file://src/main/java/org/debian/security/UnableToSaveKeystoreException.java;endline=17;md5=f9150bf1ca3139a38ddb54f9e1c0eb9b \
+	file://src/main/java/org/debian/security/UnknownInputException.java;endline=17;md5=f9150bf1ca3139a38ddb54f9e1c0eb9b \
+	file://src/main/java/org/debian/security/UpdateCertificates.java;endline=18;md5=3fd0e26abbca2ec481cf3698431574ae \
+"
+DEPENDS = "virtual/javac-native fastjar-native"
+# We can't use virtual/javac-native, because that would create a
+# keystore that can't be read on the target (as virtual/javac-native
+# usually is either too old, or plain incompatible with this)
+PACKAGE_WRITE_DEPS += "openjdk-8-native"
+
+SRC_URI = "\
+	git://anonscm.debian.org/pkg-java/ca-certificates-java.git \
+	file://0001-UpdateCertificates-handle-SYSROOT-environment-variab.patch \
+	file://${BPN}.hook.in \
+"
+
+SRCREV = "53651f7939e6f35694ee31e5ef0376f1bfce7e55"
+
+inherit java allarch
+
+S = "${WORKDIR}/git"
+B = "${WORKDIR}/build"
+
+JARFILENAME = "${BPN}.jar"
+
+python () {
+    runtime = d.getVar("PREFERRED_RPROVIDER_java2-runtime") or ""
+    if not runtime in ("openjdk-8", "openjre-8"):
+        raise bb.parse.SkipRecipe("PREFERRED_RPROVIDER_java2-runtime '%s' unsupported" % runtime)
+}
+
+do_patch_append () {
+    bb.build.exec_func('do_fix_sysconfdir', d)
+}
+
+do_fix_sysconfdir () {
+	sed -e 's|/etc/ssl/certs/java|${sysconfdir}/ssl/certs/java|g' \
+	    -i ${S}/src/main/java/org/debian/security/UpdateCertificates.java
+}
+
+do_compile () {
+	mkdir -p build # simplify in-tree builds (externalsrc)
+	javac -g \
+	    -source 1.7 -target 1.7 -encoding ISO8859-1 \
+	    -d build \
+	    -sourcepath ${S}/src/main/java \
+	    $(find ${S}/src/main/java -name '*.java' -type f)
+
+	# needs to end with two empty lines
+	cat << EOF > ${B}/manifest
+Manifest-Version: 1.0
+Main-Class: org.debian.security.UpdateCertificates
+
+EOF
+	fastjar -cfm ${JARFILENAME} ${B}/manifest -C build .
+}
+
+do_install () {
+	oe_jarinstall ${JARFILENAME}
+
+	mkdir -p ${D}${sysconfdir}/ssl/certs/java
+	install -Dm0755 ${WORKDIR}/${BPN}.hook.in ${D}${sysconfdir}/ca-certificates/update.d/${BPN}-hook
+	sed -e 's|@@datadir_java@@|${datadir_java}|' \
+	    -e 's|@@libdir_jvm@@|${libdir_jvm}|' \
+	    -e 's|@@JARFILENAME@@|${JARFILENAME}|' \
+	    -i ${D}${sysconfdir}/ca-certificates/update.d/${BPN}-hook
+
+	install -d -m0755 ${D}${sbindir}
+	ln -s ${@os.path.relpath("${sysconfdir}/ca-certificates/update.d/${BPN}-hook", "${sbindir}")} \
+	      ${D}${sbindir}/create-ca-certificates-java
+}
+
+pkg_postinst_${PN} () {
+	if [ -n "$D" ] ; then
+	    # In this case we want to use the Java in the image recipe's
+	    # native sysroot (native Java, not qemu target Java) to
+	    # generate the trustStore.
+	    # None of the supported Java versions are in PATH, though, so
+	    # we have to find a satisfactory one ourselves below $libdir_jvm.
+	    # We really need the $NATIVE_ROOT variable for that to work,
+	    # as STAGING_LIBDIR_JVM_NATIVE resolves to this recipe's native
+	    # sysroot during recipe build time, so it's of no use during
+	    # image build time.
+	    if [ -z $NATIVE_ROOT ] ; then
+		echo "$0: NATIVE_ROOT not known"
+		false
+	    fi
+	    JVM_LIBDIR=$NATIVE_ROOT${libdir_jvm}
+	fi
+	JVM_LIBDIR=$JVM_LIBDIR $D${sbindir}/create-ca-certificates-java
+}
+
+RDEPENDS_${PN} = "ca-certificates"
+RDEPENDS_${PN}_append_class-target = " java2-runtime"
+RDEPENDS_${PN}_append_class-native = " virtual/java-native"
+
+FILES_${PN} += "${datadir_java}"
+
+BBCLASSEXTEND = "native"
-- 
2.16.2


