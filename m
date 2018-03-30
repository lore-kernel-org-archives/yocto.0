Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A011EE009CF; Fri, 30 Mar 2018 01:40:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84B05E009CF
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2018 01:40:26 -0700 (PDT)
Received: by mail-qt0-f169.google.com with SMTP id f8so8796690qtg.12
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2018 01:40:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=ll1PVcVSteUFxVpOHBc66D1QLrx2w+iNZ6LQz2za8cw=;
	b=G5iaFS0yKuUKW2QNBPK97OBla5HuoNeESejUdkvvKj/O/vPm6oKZKNaFZT/eSz1MlO
	c0VJ2vdJLhjg2Wpoe1FGQfVpH0VV6Nmtlj30rKfs4OAPM217XFQ3sHdZPgihb5EQ13Kh
	423B4dh5u14eWASBkB367Z1PAJPGvJD0G9vW0G3XvILu2FJmegHatV6hoaTXsBerV5rG
	SZz0nWBgniHmwfIhUMNtlumKUJD0mdVzVdFpXcduRDiTETg40mMd3Bv9ied2GRZqfdYY
	G2kaMVWdK+CKv+MTb+GrSFh03QhXNB9ZGujArcMGYp21lNQh7lb4d9sid33c8AB06XbW
	dQZQ==
X-Gm-Message-State: ALQs6tB4AM1h3RggLVGI+4okPzqe+fdAY5Rm9rp1BbHOyNo8ENfpRTRc
	wF78Z+9eLJoIRAzOh5t/xf9yjORo
X-Google-Smtp-Source: AIpwx4+RXjvgAUqanGbjUNHkUw+kVRVJ2pF9/nL1ugUhkzoQfikZdtxqPibe/RaVqZRP7o6Vg0l32w==
X-Received: by 10.200.26.58 with SMTP id v55mr16145078qtj.268.1522399225564;
	Fri, 30 Mar 2018 01:40:25 -0700 (PDT)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	i68sm6028679qkd.25.2018.03.30.01.40.24 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 30 Mar 2018 01:40:24 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2018 09:40:17 +0100
Message-Id: <20180330084019.18955-2-git@andred.net>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20180330084019.18955-1-git@andred.net>
References: <20180330084019.18955-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-java][PATCH 1/3] ca-certificates-java: add recipe to generate trustStore
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
X-List-Received-Date: Fri, 30 Mar 2018 08:40:27 -0000
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
 ...ficates-handle-SYSROOT-environment-variab.patch | 43 ++++++++++
 .../ca-certificates-java.hook.in                   | 64 +++++++++++++++
 .../ca-certificates-java_20170930.bb               | 94 ++++++++++++++++++++++
 3 files changed, 201 insertions(+)
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
index 0000000..ea20cdf
--- /dev/null
+++ b/recipes-core/ca-certificates-java/ca-certificates-java/ca-certificates-java.hook.in
@@ -0,0 +1,64 @@
+#!/bin/sh -eux
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
index 0000000..0125d82
--- /dev/null
+++ b/recipes-core/ca-certificates-java/ca-certificates-java_20170930.bb
@@ -0,0 +1,94 @@
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
+	    JVM_LIBDIR=${STAGING_LIBDIR_JVM_NATIVE}
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


