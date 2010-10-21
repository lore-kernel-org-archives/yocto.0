Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD67A4C803C9
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 23:56:21 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 Oct 2010 21:56:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,215,1286175600"; d="scan'208";a="566017131"
Received: from unknown (HELO [10.255.12.141]) ([10.255.12.141])
	by orsmga002.jf.intel.com with ESMTP; 20 Oct 2010 21:56:21 -0700
Message-ID: <4CBFC7F4.6040709@intel.com>
Date: Wed, 20 Oct 2010 21:56:20 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Subject: How to create a Blacksand Image with source tarball
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Oct 2010 04:56:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Richard, Scott:

Here is what I did to create the blacksand sdk live image with a source 
tarball.  I still need to include the docs and release notes at the top 
level, but we now have the basic infrastructure in place.

2 changes where required, first to the local.conf file to include the 
serial port changes (with one additional tweak):

SYSLINUX_OPTS_atom-pc = "serial 0 115200"
SERIAL_CONSOLE_atom-pc = "115200 ttyS0"
APPEND_atom-pc = "console=ttyS0,115200 console=tty0"


And then a new image, that I named poky-image-spec-live, pretty straight 
forward, we just need to edit the build_src_tarball_bin to include the 
docs and release notes.

diff --git a/meta/recipes-sato/images/poky-image-spec-live.bb 
b/meta/recipes-sato/images/poky-image-spec-live.bb
new file mode 100644
index 0000000..1abeb95
--- /dev/null
+++ b/meta/recipes-sato/images/poky-image-spec-live.bb
@@ -0,0 +1,23 @@
+DESCRIPTION = "Bootable Live SDK Image for Atom-PC Board"
+
+require recipes-core/images/poky-image-live.inc
+
+LABELS += "boot install"
+
+ROOTFS = "${DEPLOY_DIR_IMAGE}/poky-image-spec-${MACHINE}.ext3"
+
+LICENSE = "MIT"
+
+PR = "r0"
+
+do_bootimg[depends] += "poky-image-sdk:do_rootfs"
+
+build_src_tarball_bin () {
+        install -d ${S}/hdd/boot
+       (cd ${OEROOT}; git archive HEAD | bzip2 > 
"${S}/hdd/boot/poky4.tar.bz2")
+}
+
+python do_bootimg_prepend () {
+       import bb
+        bb.build.exec_func('build_src_tarball_bin', d)
+}



