Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04628E00706
	for <yocto@yoctoproject.org>; Thu,  6 Feb 2014 19:08:01 -0800 (PST)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=localhost)
	by smtp.twobit.us with esmtpsa (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1WBbl1-0008Mp-JQ; Fri, 07 Feb 2014 03:05:52 +0000
Received: from flihp by localhost with local (Exim 4.80)
	(envelope-from <flihp@longhaul.twobit.us>)
	id 1WBboX-00080S-EY; Fri, 07 Feb 2014 03:09:13 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Fri,  7 Feb 2014 03:09:10 +0000
Message-Id: <1391742553-30745-2-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1391742553-30745-1-git-send-email-flihp@twobit.us>
References: <1391742553-30745-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on smtp.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH 1/4] busybox: Use wildcard for version number in busybox bbappend.
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
X-List-Received-Date: Fri, 07 Feb 2014 03:08:01 -0000


Signed-off-by: Philip Tricca <flihp@twobit.us>

 create mode 100644 recipes-core/busybox/busybox_%.bbappend
 delete mode 100644 recipes-core/busybox/busybox_1.21.1.bbappend

diff --git a/recipes-core/busybox/busybox_%.bbappend b/recipes-core/busybox/busybox_%.bbappend
new file mode 100644
index 0000000..b4935b2
--- /dev/null
+++ b/recipes-core/busybox/busybox_%.bbappend
@@ -0,0 +1,87 @@
+PR .= ".1"
+
+FILES_${PN} += "${libdir}/${PN}"
+
+# We should use sh wrappers instead of links so the commands could get correct
+# security labels
+python create_sh_wrapper_reset_alternative_vars () {
+    # We need to load the full set of busybox provides from the /etc/busybox.links
+    # Use this to see the update-alternatives with the right information
+
+    dvar = d.getVar('D', True)
+    pn = d.getVar('PN', True)
+
+    def create_sh_alternative_vars(links, target, mode):
+        import shutil
+        # Create sh wrapper template
+        fwp = open("busybox_wrapper", 'w')
+        fwp.write("#!%s" % (target))
+        os.fchmod(fwp.fileno(), mode)
+        fwp.close()
+        # Install the sh wrappers and alternatives reset to link to them
+        wpdir = os.path.join(d.getVar('libdir', True), pn)
+        wpdir_dest = '%s%s' % (dvar, wpdir)
+        if not os.path.exists(wpdir_dest):
+            os.makedirs(wpdir_dest)
+        f = open('%s%s' % (dvar, links), 'r')
+        for alt_link_name in f:
+            alt_link_name = alt_link_name.strip()
+            alt_name = os.path.basename(alt_link_name)
+            # Copy script wrapper to wp_path
+            alt_wppath = '%s%s' % (wpdir, alt_link_name)
+            alt_wppath_dest = '%s%s' % (wpdir_dest, alt_link_name) 
+            alt_wpdir_dest = os.path.dirname(alt_wppath_dest)
+            if not os.path.exists(alt_wpdir_dest):
+                os.makedirs(alt_wpdir_dest)
+            shutil.copy2("busybox_wrapper", alt_wppath_dest)
+            # Re-set alternatives
+            # Match coreutils
+            if alt_name == '[':
+                alt_name = 'lbracket'
+            d.appendVar('ALTERNATIVE_%s' % (pn), ' ' + alt_name)
+            d.setVarFlag('ALTERNATIVE_LINK_NAME', alt_name, alt_link_name)
+            if os.path.exists(alt_wppath_dest):
+                d.setVarFlag('ALTERNATIVE_TARGET', alt_name, alt_wppath)
+        f.close()
+
+        os.remove("busybox_wrapper")
+        return
+
+    if os.path.exists('%s/etc/busybox.links' % (dvar)):
+        create_sh_alternative_vars("/etc/busybox.links", "/bin/busybox", 0o0755)
+    else:
+        create_sh_alternative_vars("/etc/busybox.links.nosuid", "/bin/busybox.nosuid", 0o0755)
+        create_sh_alternative_vars("/etc/busybox.links.suid", "/bin/busybox.suid", 0o4755)
+}
+
+# Add to PACKAGEBUILDPKGD so it could override the alternatives, which are set in
+# do_package_prepend() section of busybox_*.bb.
+PACKAGEBUILDPKGD_prepend = "create_sh_wrapper_reset_alternative_vars "
+
+# Use sh wrappers instead of links
+pkg_postinst_${PN} () {
+	# This part of code is dedicated to the on target upgrade problem.
+	# It's known that if we don't make appropriate symlinks before update-alternatives calls,
+	# there will be errors indicating missing commands such as 'sed'.
+	# These symlinks will later be updated by update-alternatives calls.
+	test -n 2 > /dev/null || alias test='busybox test'
+	if test "x$D" = "x"; then
+		# Remove busybox.nosuid if it's a symlink, because this situation indicates
+		# that we're installing or upgrading to a one-binary busybox.
+		if test -h /bin/busybox.nosuid; then
+			rm -f /bin/busybox.nosuid
+		fi
+		for suffix in "" ".nosuid" ".suid"; do
+			if test -e /etc/busybox.links$suffix; then
+				while read link; do
+					if test ! -e "$link"; then
+						# we can use busybox here because even if we are using splitted busybox
+						# we've made a symlink from /bin/busybox to /bin/busybox.nosuid.
+						busybox echo "#!/bin/busybox$suffix" > $link
+					fi
+				done < /etc/busybox.links$suffix
+			fi
+		done
+	fi
+}
+
diff --git a/recipes-core/busybox/busybox_1.21.1.bbappend b/recipes-core/busybox/busybox_1.21.1.bbappend
deleted file mode 100644
index b4935b2..0000000
--- a/recipes-core/busybox/busybox_1.21.1.bbappend
+++ /dev/null
@@ -1,87 +0,0 @@
-PR .= ".1"
-
-FILES_${PN} += "${libdir}/${PN}"
-
-# We should use sh wrappers instead of links so the commands could get correct
-# security labels
-python create_sh_wrapper_reset_alternative_vars () {
-    # We need to load the full set of busybox provides from the /etc/busybox.links
-    # Use this to see the update-alternatives with the right information
-
-    dvar = d.getVar('D', True)
-    pn = d.getVar('PN', True)
-
-    def create_sh_alternative_vars(links, target, mode):
-        import shutil
-        # Create sh wrapper template
-        fwp = open("busybox_wrapper", 'w')
-        fwp.write("#!%s" % (target))
-        os.fchmod(fwp.fileno(), mode)
-        fwp.close()
-        # Install the sh wrappers and alternatives reset to link to them
-        wpdir = os.path.join(d.getVar('libdir', True), pn)
-        wpdir_dest = '%s%s' % (dvar, wpdir)
-        if not os.path.exists(wpdir_dest):
-            os.makedirs(wpdir_dest)
-        f = open('%s%s' % (dvar, links), 'r')
-        for alt_link_name in f:
-            alt_link_name = alt_link_name.strip()
-            alt_name = os.path.basename(alt_link_name)
-            # Copy script wrapper to wp_path
-            alt_wppath = '%s%s' % (wpdir, alt_link_name)
-            alt_wppath_dest = '%s%s' % (wpdir_dest, alt_link_name) 
-            alt_wpdir_dest = os.path.dirname(alt_wppath_dest)
-            if not os.path.exists(alt_wpdir_dest):
-                os.makedirs(alt_wpdir_dest)
-            shutil.copy2("busybox_wrapper", alt_wppath_dest)
-            # Re-set alternatives
-            # Match coreutils
-            if alt_name == '[':
-                alt_name = 'lbracket'
-            d.appendVar('ALTERNATIVE_%s' % (pn), ' ' + alt_name)
-            d.setVarFlag('ALTERNATIVE_LINK_NAME', alt_name, alt_link_name)
-            if os.path.exists(alt_wppath_dest):
-                d.setVarFlag('ALTERNATIVE_TARGET', alt_name, alt_wppath)
-        f.close()
-
-        os.remove("busybox_wrapper")
-        return
-
-    if os.path.exists('%s/etc/busybox.links' % (dvar)):
-        create_sh_alternative_vars("/etc/busybox.links", "/bin/busybox", 0o0755)
-    else:
-        create_sh_alternative_vars("/etc/busybox.links.nosuid", "/bin/busybox.nosuid", 0o0755)
-        create_sh_alternative_vars("/etc/busybox.links.suid", "/bin/busybox.suid", 0o4755)
-}
-
-# Add to PACKAGEBUILDPKGD so it could override the alternatives, which are set in
-# do_package_prepend() section of busybox_*.bb.
-PACKAGEBUILDPKGD_prepend = "create_sh_wrapper_reset_alternative_vars "
-
-# Use sh wrappers instead of links
-pkg_postinst_${PN} () {
-	# This part of code is dedicated to the on target upgrade problem.
-	# It's known that if we don't make appropriate symlinks before update-alternatives calls,
-	# there will be errors indicating missing commands such as 'sed'.
-	# These symlinks will later be updated by update-alternatives calls.
-	test -n 2 > /dev/null || alias test='busybox test'
-	if test "x$D" = "x"; then
-		# Remove busybox.nosuid if it's a symlink, because this situation indicates
-		# that we're installing or upgrading to a one-binary busybox.
-		if test -h /bin/busybox.nosuid; then
-			rm -f /bin/busybox.nosuid
-		fi
-		for suffix in "" ".nosuid" ".suid"; do
-			if test -e /etc/busybox.links$suffix; then
-				while read link; do
-					if test ! -e "$link"; then
-						# we can use busybox here because even if we are using splitted busybox
-						# we've made a symlink from /bin/busybox to /bin/busybox.nosuid.
-						busybox echo "#!/bin/busybox$suffix" > $link
-					fi
-				done < /etc/busybox.links$suffix
-			fi
-		done
-	fi
-}
-
-- 
1.7.10.4


