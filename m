Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFA4BE01438
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2012 04:48:42 -0800 (PST)
Received: from mail-la0-f72.google.com ([209.85.215.72])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 05 Nov 2012 04:48:41 -0800
Received: by mail-la0-f72.google.com with SMTP id s15so4147088lag.11
	for <yocto@yoctoproject.org>; Mon, 05 Nov 2012 04:48:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references
	:x-gm-message-state;
	bh=PTrCNVGdIgZpgktP4mKs+P2KTlWgDPFzLewPd1ZGZ0M=;
	b=m469oth5JpQBLtDsjbuce8/whKmJSShOL2cj9Z5OWJKNkuy4H2KzQvjiCh+duc7Xso
	NeP1rFbHp/jIMYqa78zvjD8bR+xpm4dSs0o87UaAAuysAPqERaZlBWKgXzx8s44Yj9mT
	c6mJhqo7yI8rv0e9pM6Nwg5k1gWC+LMZQXuPJaQSS7VmK9jHLkATxSAnhYAbu13rgIjT
	wRIBDOvn6sp0b58TKCwFhuyCq2/DP/vFbbCt9oWmkZyYPKK4dXkJXJAPyZ1lyRccqnRu
	NoB0eZbpuj63ex/+mMsTDXWjn75YR+zDKI/jhyvxn7IRY4SI1MDAx1vQAkYsYXK8YvxW
	C46g==
Received: by 10.180.8.197 with SMTP id t5mr13048185wia.5.1352119720016;
	Mon, 05 Nov 2012 04:48:40 -0800 (PST)
Received: by 10.180.8.197 with SMTP id t5mr13048178wia.5.1352119719953;
	Mon, 05 Nov 2012 04:48:39 -0800 (PST)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id fa9sm11451350wib.5.2012.11.05.04.48.38
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 05 Nov 2012 04:48:39 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: kishore.k.bodke@intel.com,
	nitin.a.kamble@intel.com
Date: Mon,  5 Nov 2012 12:47:20 +0000
Message-Id: <1352119640-25949-4-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
In-Reply-To: <1352119640-25949-1-git-send-email-ross.burton@intel.com>
References: <1352119640-25949-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQn3w8sXrSP+KeMpG54cEZEqDzK/VZdjg3a8/7diQQcroLOF94yKPUDpq0kYAcNZ4aQslrwM/P07pVmpOfc6IDXNMfxKwwhXSGHegZkk/FqdH+vh9FslodyHSV0Gn7ZyjER/wMKTk+C5COZgzUG7xv/YTKWEpQ==
Cc: yocto@yoctoproject.org
Subject: [PATCH 3/3] emgd-driver-bin: add xorg-abi-video- dependency
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
X-List-Received-Date: Mon, 05 Nov 2012 12:48:42 -0000

xserver changes the driver ABI at will, and refuses to load drivers with the
wrong ABI version. So that we know about this error at image build time instead
of when xserver fails to start, RDEPEND on the ABI version we expect.

This dependency is added programmatically so that bitbake doesn't look for a
provider of xorg-abi-video-8 at parse time, which it won't find.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb |    9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb
index e068f7a..cc78d61 100644
--- a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb
+++ b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.14.bb
@@ -19,6 +19,15 @@ LIC_FILES_CHKSUM = "file://${WORKDIR}/${EMGD_LIC_DIR}/License.txt;md5=b54f01caaf
 DEPENDS = "rpm-native xz-native"
 RDEPENDS = "libxcb-dri2"
 
+# Add the ABI dependency at package generation time, as otherwise bitbake will
+# attempt to find a provider for it (and fail) when it does the parse.
+#
+# This version *must* be kept correct.
+python populate_packages_prepend() {
+    pn = d.getVar("PN", True)
+    d.appendVar("RDEPENDS_" + pn, " xorg-abi-video-8")
+}
+
 SRC_URI = "https://edc.intel.com/Download.aspx?id=6190;downloadfilename=LIN_IEMGD_1_14_GOLD_2443.tgz"
 
 SRC_URI[md5sum] = "733a7f237ffce21238ce2c9956df4fd6"
-- 
1.7.10


