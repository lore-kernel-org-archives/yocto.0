Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26085C47DD9
	for <webhook@archiver.kernel.org>; Fri, 22 Mar 2024 16:07:38 +0000 (UTC)
Received: from esa2.hc324-48.eu.iphmx.com (esa2.hc324-48.eu.iphmx.com [207.54.68.120])
 by mx.groups.io with SMTP id smtpd.web10.17318.1711123339969878645
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Mar 2024 09:02:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=HMpjQtwD;
 spf=pass (domain: bmw.de, ip: 207.54.68.120, mailfrom: prvs=804ae39e5=philip.lorenz@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1711123340; x=1742659340;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=7mf16GH6jv6K+IV2YgSP+QIWxdgzJRyjeCE2usri9rg=;
  b=HMpjQtwDL7RwyLswEBEH4H3va4onn/twKOwO10hvgAZgTXZ/OWQRUzph
   lndhdJcAZp2dNNCBV/tYTZLkJu8/VNSqN1+pcfSv4pnwnyxrr17w7lu9N
   o5W9YyzV0nGwmUstReDm6Y+/L9jg7fqatkI12KONFSaD43TV64oA/AHUO
   0=;
X-CSE-ConnectionGUID: nmTjdHczSL+5Tdpx8jYwCQ==
X-CSE-MsgGUID: Fi9erWeGSaWYss/oKCfQEA==
Received: from esagw2.bmwgroup.com (HELO esagw2.muc) ([160.46.252.38]) by
 esa2.hc324-48.eu.iphmx.com with ESMTP/TLS; 22 Mar 2024 17:02:17 +0100
Received: from esabb3.muc ([160.50.100.30])  by esagw2.muc with ESMTP/TLS;
 22 Mar 2024 16:54:57 +0100
Received: from smucmp10e.bmwgroup.net (HELO SMUCMP10E.europe.bmw.corp) ([10.30.13.87])
 by esabb3.muc with ESMTP/TLS; 22 Mar 2024 16:54:57 +0100
Received: from localhost.localdomain (10.30.85.207) by SMUCMP10E.europe.bmw.corp
 (2a03:1e80:a15:58f::2027) with Microsoft SMTP Server (version=TLS;
 Fri, 22 Mar 2024 16:54:57 +0100
From: "Philip Lorenz" <philip.lorenz@bmw.de>
To: <yocto@lists.yoctoproject.org>
CC: Philip Lorenz <philip.lorenz@bmw.de>, Joe MacDonald
	<joe.macdonald@siemens.com>, Yi Zhao <yi.zhao@windriver.com>
Subject: [meta-selinux][PATCH] busybox: Fix wrapper creation
Date: Fri, 22 Mar 2024 16:54:12 +0100
Message-ID: <20240322155412.3569750-1-philip.lorenz@bmw.de>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-ClientProxiedBy: SMUCMP10E.europe.bmw.corp (2a03:1e80:a15:58f::2027) To
 SMUCMP10E.europe.bmw.corp (2a03:1e80:a15:58f::2027)
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Mar 2024 16:07:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62826

`PACKAGEBUILDPKGD` was dropped in Yocto 4.2 and
`PACKAGE_PREPROCESS_FUNCS` should be used instead. The only requirement
for wrapper creation is that it is executed before any of the
`update-alternatives` hooks are executed. This continues to hold as the
call to `create_sh_wrapper_reset_alternative_vars` is prepended only
after the `update-alternatives` class has been inherited.

Additionally, this also fixes a race condition leading to
non-deterministic buildhistory entries in busybox's `sysroot` files.
The race condition was caused by the creation of the wrapper files
inside `D` (i.e. the image directory) which is also consumed by other
tasks such as `do_populate_sysroot` which may be executing in parallel
to `do_package`.

Signed-off-by: Philip Lorenz <philip.lorenz@bmw.de>
---
 recipes-core/busybox/busybox_selinux.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-core/busybox/busybox_selinux.inc b/recipes-core/busybox/busybox_selinux.inc
index ded8007..740980f 100644
--- a/recipes-core/busybox/busybox_selinux.inc
+++ b/recipes-core/busybox/busybox_selinux.inc
@@ -8,7 +8,7 @@ python create_sh_wrapper_reset_alternative_vars () {
     # We need to load the full set of busybox provides from the /etc/busybox.links
     # Use this to see the update-alternatives with the right information
 
-    dvar = d.getVar('D')
+    dvar = d.getVar('PKGD')
     pn = d.getVar('PN')
     base_bindir = d.getVar('base_bindir')
 
@@ -55,9 +55,9 @@ python create_sh_wrapper_reset_alternative_vars () {
         create_sh_alternative_vars("/etc/busybox.links.suid", "%s/busybox.suid" % base_bindir, 0o4755)
 }
 
-# Add to PACKAGEBUILDPKGD so it could override the alternatives, which are set in
+# Add to PACKAGE_PREPROCESS_FUNCS so it could override the alternatives, which are set in
 # do_package:prepend() section of busybox_*.bb.
-PACKAGEBUILDPKGD:prepend = "create_sh_wrapper_reset_alternative_vars "
+PACKAGE_PREPROCESS_FUNCS:prepend = "create_sh_wrapper_reset_alternative_vars "
 
 # Use sh wrappers instead of links
 pkg_postinst:${PN} () {
-- 
2.44.0


