Return-Path: <elvis.dowson@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44BA1E00596
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 11:49:47 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so1668351wgb.11
	for <yocto@yoctoproject.org>; Thu, 03 May 2012 11:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=xp+iCvFf29Z5VX4357bhk5oqtS3L+q1IB0r6232zkpU=;
	b=KyQDpMFjQES8uuWrf/cDsSYm5JRXgMdnw7dFkiH3lZbpcR48EANLzry685xViMJEg8
	Wr1ATGfPShrt6IdnUm/qsgW/HCZw9gpGjo4jVZvG4oc+UU94dLuvANP56B75uk6ywR21
	4TYrz+rlejlLBa5u05cAEFQotFIqQnPg2W0EV3Gnuws71b9haU7NRCHaNWglL1FVmm/q
	bp8SIJRlftbrIEUwnCPnpq43y8aQWxL4DPhoWLL8pYehQyLPiGqWHKrUwDFV1ViqPOBB
	hO+uhDd0rkIEBuHWeTv8poxP5EhjoUpEkXoh79ILa4xP83dE6VBPYYQr2FGc84lCh9bd
	2g/w==
Received: by 10.180.100.230 with SMTP id fb6mr6730788wib.3.1336070986434;
	Thu, 03 May 2012 11:49:46 -0700 (PDT)
Received: from [192.168.1.33] (240.Red-88-6-19.staticIP.rima-tde.net.
	[88.6.19.240])
	by mx.google.com with ESMTPS id o2sm5866807wiv.11.2012.05.03.11.49.44
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 03 May 2012 11:49:45 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Thu, 3 May 2012 20:49:42 +0200
Message-Id: <18B7FDE4-E620-42A2-87D2-7D7A98F299DE@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1257)
X-Mailer: Apple Mail (2.1257)
Subject: [meta-xilinx] Rename to util-linux_2.21.1.bbappend
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
X-List-Received-Date: Thu, 03 May 2012 18:49:47 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
     This patch fixes a build issue with meta-xilinx, since =
util-linux_2.21.bb recipe has been renamed to util-linux_2.21.1.bb

Best regards,

Elvis Dowson


=46rom 6d5684d44c1eac67e551a98b0751e996470d203c Mon Sep 17 00:00:00 2001
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Thu, 3 May 2012 20:34:51 +0200
Subject: [PATCH] Rename to util-linux_2.21.1.bbappend

This commit renames util-linux_2.21.bbappend to =
util-linux_2.21.1.bbappend
to match the corresponding change in version to the
poky/meta/recipes-core/util-linux/util-linux_2.21.1.bb recipe.

Signed-off-by: Elvis Dowson <elvis.dowson@gmail.com>
---
recipes-core/util-linux/util-linux_2.21.1.bbappend |    3 +++
recipes-core/util-linux/util-linux_2.21.bbappend   |    3 ---
2 files changed, 3 insertions(+), 3 deletions(-)
create mode 100644 recipes-core/util-linux/util-linux_2.21.1.bbappend
delete mode 100644 recipes-core/util-linux/util-linux_2.21.bbappend

diff --git a/recipes-core/util-linux/util-linux_2.21.1.bbappend =
b/recipes-core/util-linux/util-linux_2.21.1.bbappend
new file mode 100644
index 0000000..5199eb2
--- /dev/null
+++ b/recipes-core/util-linux/util-linux_2.21.1.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS :=3D "${THISDIR}/${PN}"
+# Disable microblaze ncurses support
+EXTRA_OECONF_microblaze +=3D " --without-ncurses "
diff --git a/recipes-core/util-linux/util-linux_2.21.bbappend =
b/recipes-core/util-linux/util-linux_2.21.bbappend
deleted file mode 100644
index 5199eb2..0000000
--- a/recipes-core/util-linux/util-linux_2.21.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-FILESEXTRAPATHS :=3D "${THISDIR}/${PN}"
-# Disable microblaze ncurses support
-EXTRA_OECONF_microblaze +=3D " --without-ncurses "
--=20
1.7.9.5




