Return-Path: <ajlennon@gmail.com>
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F39DE009EB
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 08:57:10 -0800 (PST)
Received: by mail-we0-f169.google.com with SMTP id w62so1727390wes.0
	for <yocto@yoctoproject.org>; Mon, 03 Mar 2014 08:57:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=QTnCdWxDkPrxBEZT82KVO7gQrPaky87TwHU8AafFVp0=;
	b=L4aaqlW4lFkSxxPVn8YEbBvvCxweukh158Rpq/CLb6Nh876GAwF6TiJcAWfXdawBuM
	A+CKcTu1XUV2X4Z+2NZqTuCE8KDd31myatHlnvxH6nHCOtolpnGl+gM+jaHiYFmf32P8
	hMmo/D+BukkMhQ71FF48GF6OBNzPmNvJu01ZXZKFMdOnWsVwQH6xB2c5t8WpfNgWPaC/
	8yCJZLsHP5BsVkjYrcpirkVOQhmSMD+/mELMZQZLnaQP2s0Y2dqiY4Xe9nDOfD57XhJz
	7uCYVl+501fs/vfzMiifZSviSj+ieksatnXS4UirBhHKG6aYDhMT/iqCQv/Yci6NhEOm
	uqIA==
X-Received: by 10.194.90.233 with SMTP id bz9mr8146370wjb.65.1393865829950;
	Mon, 03 Mar 2014 08:57:09 -0800 (PST)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id f7sm37941181wjb.7.2014.03.03.08.57.09
	for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 03 Mar 2014 08:57:09 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Mon,  3 Mar 2014 16:56:29 +0000
Message-Id: <7f0b95a485f9c5a1429ae55c0f6e1a9968500c3b.1393865664.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1393865664.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1393865664.git.ajlennon@dynamicdevices.co.uk>
In-Reply-To: <cover.1393865664.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1393865664.git.ajlennon@dynamicdevices.co.uk>
Subject: [meta-mono] [PATCH 1/1] dbus-sharp, dbus-sharp-glib: Added C# managed implementation of D-Bus and GLib bindings
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
X-List-Received-Date: Mon, 03 Mar 2014 16:57:11 -0000

Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 recipes-mono/dbus-sharp-glib/dbus-sharp-glib.inc   |   35 ++++++++++++++++++++
 .../dbus-sharp-glib/dbus-sharp-glib_0.6.0.bb       |    6 ++++
 .../fix-message-reader-writer.patch                |   29 ++++++++++++++++
 recipes-mono/dbus-sharp/dbus-sharp.inc             |   31 +++++++++++++++++
 recipes-mono/dbus-sharp/dbus-sharp_0.8.0.bb        |    9 +++++
 5 files changed, 110 insertions(+)
 create mode 100644 recipes-mono/dbus-sharp-glib/dbus-sharp-glib.inc
 create mode 100644 recipes-mono/dbus-sharp-glib/dbus-sharp-glib_0.6.0.bb
 create mode 100644 recipes-mono/dbus-sharp/dbus-sharp-0.8.0/fix-message-reader-writer.patch
 create mode 100644 recipes-mono/dbus-sharp/dbus-sharp.inc
 create mode 100644 recipes-mono/dbus-sharp/dbus-sharp_0.8.0.bb

diff --git a/recipes-mono/dbus-sharp-glib/dbus-sharp-glib.inc b/recipes-mono/dbus-sharp-glib/dbus-sharp-glib.inc
new file mode 100644
index 0000000..6f1367a
--- /dev/null
+++ b/recipes-mono/dbus-sharp-glib/dbus-sharp-glib.inc
@@ -0,0 +1,35 @@
+SUMMARY = "C# implementation of D-Bus GlibC integration module"
+DESCRIPTION = "This is a fork of ndesk-dbus-glib, which provides GLib main loop integration for Managed D-Bus."
+SECTION = "devel/mono"
+DEPENDS = "mono dbus-sharp"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "files://COPYING;md5=ea73672fbe49f67f1c1b44a7e763dab4"
+
+inherit autotools
+
+def dbus_sharp_glib_download_version(d):
+    pvsplit = d.getVar('PV', True).split('.')
+    return pvsplit[0] + '.' + pvsplit[1]
+
+SDIRVER = "${@dbus_sharp_glib_download_version(d)}"
+
+SRC_URI = "https://github.com/mono/dbus-sharp-glib/archive/v${SDIRVER}.tar.gz"
+
+S = "${WORKDIR}/${PN}-${SDIRVER}"
+
+FILESPATH =. "${FILE_DIRNAME}/${PN}-${PV}:"
+
+FILES_${PN} += " \
+  ${libdir}/mono/gac/dbus-sharp-glib/2.0.0.0__5675b0c3093115b5/dbus-sharp-glib.dll.config \
+  ${libdir}/mono/gac/dbus-sharp-glib/2.0.0.0__5675b0c3093115b5/dbus-sharp-glib.dll \
+  ${libdir}/mono/dbus-sharp-glib-2.0/dbus-sharp-glib.dll \
+"
+
+FILES_${PN}-dbg += " \
+  ${libdir}/mono/gac/dbus-sharp-glib/2.0.0.0__5675b0c3093115b5/dbus-sharp-glib.dll.mdb \
+"
+
+do_configure_prepend() {
+  export DBUS_SHARP_LIBS="/r:${STAGING_LIBDIR}/mono/dbus-sharp-2.0/dbus-sharp.dll"
+}
+
diff --git a/recipes-mono/dbus-sharp-glib/dbus-sharp-glib_0.6.0.bb b/recipes-mono/dbus-sharp-glib/dbus-sharp-glib_0.6.0.bb
new file mode 100644
index 0000000..c86dc31
--- /dev/null
+++ b/recipes-mono/dbus-sharp-glib/dbus-sharp-glib_0.6.0.bb
@@ -0,0 +1,6 @@
+require dbus-sharp-glib.inc
+
+inherit pkgconfig
+
+SRC_URI[md5sum] = "1b00ef8523eb830acaa34b3f6fb8d739"
+SRC_URI[sha256sum] = "d337d5a4dbaab2084972f85d175ba30ca87aa6baaa635288f3b37ca71f2d9047"
diff --git a/recipes-mono/dbus-sharp/dbus-sharp-0.8.0/fix-message-reader-writer.patch b/recipes-mono/dbus-sharp/dbus-sharp-0.8.0/fix-message-reader-writer.patch
new file mode 100644
index 0000000..e4fb89a
--- /dev/null
+++ b/recipes-mono/dbus-sharp/dbus-sharp-0.8.0/fix-message-reader-writer.patch
@@ -0,0 +1,29 @@
+diff -ur dbus-sharp-0.8.org/src/Protocol/MessageReader.cs dbus-sharp-0.8/src/Protocol/MessageReader.cs
+--- dbus-sharp-0.8.org/src/Protocol/MessageReader.cs	2014-03-03 13:37:15.777082234 +0000
++++ dbus-sharp-0.8/src/Protocol/MessageReader.cs	2014-03-03 13:38:28.253082420 +0000
+@@ -576,8 +576,8 @@
+ 			int sof = Marshal.SizeOf (fis[0].FieldType);
+ 
+ 			unsafe {
+-				byte* pVal = (byte*)&val;
+-				DirectCopy (sof, (uint)(fis.Length * sof), (IntPtr)pVal);
++				GCHandle valueHandle = GCHandle.Alloc(val);
++ 				DirectCopy (sof, (uint)(fis.Length * sof), (IntPtr)valueHandle);
+ 			}
+ 
+ 			return val;
+diff -ur dbus-sharp-0.8.org/src/Protocol/MessageWriter.cs dbus-sharp-0.8/src/Protocol/MessageWriter.cs
+--- dbus-sharp-0.8.org/src/Protocol/MessageWriter.cs	2014-03-03 13:37:21.661082245 +0000
++++ dbus-sharp-0.8/src/Protocol/MessageWriter.cs	2014-03-03 13:38:56.325082508 +0000
+@@ -428,9 +428,8 @@
+ 			if (MessageReader.IsEligibleStruct (typeof (T), fis)) {
+ 				byte[] buffer = new byte[Marshal.SizeOf (fis[0].FieldType) * fis.Length];
+ 				unsafe {
+-					byte* pVal = (byte*)&value;
+-					Marshal.Copy ((IntPtr)pVal, buffer, 0, buffer.Length);
+-				}
++					GCHandle valueHandle = GCHandle.Alloc(value);
++ 					Marshal.Copy ((IntPtr) valueHandle, buffer, 0, buffer.Length);				}
+ 				stream.Write (buffer, 0, buffer.Length);
+ 				return;
+ 			}
diff --git a/recipes-mono/dbus-sharp/dbus-sharp.inc b/recipes-mono/dbus-sharp/dbus-sharp.inc
new file mode 100644
index 0000000..2629d9a
--- /dev/null
+++ b/recipes-mono/dbus-sharp/dbus-sharp.inc
@@ -0,0 +1,31 @@
+SUMMARY = "C# implementation of D-Bus"
+DESCRIPTION = "An inter-process communication framework that lets applications	interface with the system event bus as well as allowing them to talk to one another in a peer-to-peer configuration."
+SECTION = "devel/mono"
+DEPENDS = "mono"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "files://COPYING;md5=09d60852216ea29fdba9ea146513336c"
+
+inherit autotools
+
+def dbus_sharp_download_version(d):
+    pvsplit = d.getVar('PV', True).split('.')
+    return pvsplit[0] + '.' + pvsplit[1]
+
+SDIRVER = "${@dbus_sharp_download_version(d)}"
+
+SRC_URI = "https://github.com/mono/dbus-sharp/archive/v${SDIRVER}.tar.gz"
+
+S = "${WORKDIR}/${PN}-${SDIRVER}"
+
+FILESPATH =. "${FILE_DIRNAME}/${PN}-${PV}:"
+
+FILES_${PN} += " \
+  ${libdir}/mono/dbus-sharp-2.0/* \
+  ${libdir}/mono/gac/dbus-sharp/2.0.0.0__5675b0c3093115b5/dbus-sharp.dll.config \
+  ${libdir}/mono/gac/dbus-sharp/2.0.0.0__5675b0c3093115b5/dbus-sharp.dll \
+"
+
+FILES_${PN}-dbg += " \
+  ${libdir}/mono/gac/dbus-sharp/2.0.0.0__5675b0c3093115b5/dbus-sharp.dll.mdb \
+"
+
diff --git a/recipes-mono/dbus-sharp/dbus-sharp_0.8.0.bb b/recipes-mono/dbus-sharp/dbus-sharp_0.8.0.bb
new file mode 100644
index 0000000..61f773c
--- /dev/null
+++ b/recipes-mono/dbus-sharp/dbus-sharp_0.8.0.bb
@@ -0,0 +1,9 @@
+require dbus-sharp.inc
+
+inherit pkgconfig
+
+SRC_URI += "file://fix-message-reader-writer.patch"
+
+SRC_URI[md5sum] = "b63c684b326a20119cdefdddb1fa0578"
+SRC_URI[sha256sum] = "efbe1ab0c519efe80fe3498a5836b5d754af87f9b3cff3bf0cbb16d5fc7e0a50"
+
-- 
1.7.9.5


