Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4FA4C4332F
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 00:06:15 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web10.10942.1698797174368952767
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Oct 2023 17:06:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=yuWQwhO0;
 spf=pass (domain: smile.fr, ip: 209.85.221.50, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-32daeed7771so3867017f8f.3
        for <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 17:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1698797172; x=1699401972; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7cCxkz6yXT59SKPrrRwbz8z9Un3DMts9EGMulAXNyik=;
        b=yuWQwhO0EnVM7aBCoBjcsU9O/X/edo65JMcvMRxWhQOn33H47nK3nPBcXULva1XkiQ
         6uRZ6MTui4MgouObGqmBVNKR6gM8AIdxl2H4iR5c9+Ifc7m16iC8F51JcLJkJbYDficp
         1Ib67NdCkPd+j1J6mD7BFkhAD7k4+RNNZh11YLCzX75VRx0XRoJGr+J0yU2mzhWVjiEF
         FtwqsHniv09o5uBLVbISY2CQcBGASEigrn5fz+577V43YsJYpDVqX27BT0mPXXB1EHCv
         2JVIrOhLKzF/0CxkLsvWx4YqrT2K9WJ6yWj3uWkLTJaCDn4x3BPFbrCb4HQSIaWvoIds
         etvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698797172; x=1699401972;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7cCxkz6yXT59SKPrrRwbz8z9Un3DMts9EGMulAXNyik=;
        b=BnFAM+DCFTXpJorwaW4H2vh3idbdNURNUEiRoCkVooLB5dZ4kapL/O5BRBHwQrr/2i
         xrjAA+M0lakCoLM5rh2DSPW2y0aDCL5rN7QeRTIK39+KA3l9y4NsyJttrau4lqv5c7FZ
         hFJDeEQuizirSzv5nEA37ix7Zz88ZaVW19m4M/jpeRsiYsJqRHw04s/sQJpoePvVRUwy
         F/yqTli6dOr5Gta0ZZpdMInw0BPMfxCeLMELb09T0CmHl8gP+PM1kywL993Ni0RBpUlj
         661Ep3wy2T7/dKSeZHpColeYYeqIt830cTuysc9i7HEwnf+qyw4X90Q4cA4XCtZm/dNZ
         TCTA==
X-Gm-Message-State: AOJu0Yz5zR+jVf8yjkn23mqgD8ZxGhIuxEG8LiACjCKhFVrJU1fPOV4W
	bhqByBtFBfofdzzylAUflGbFBPaSeC98l6BzrBg=
X-Google-Smtp-Source: AGHT+IFTQrG1oirNlwMRxjUuIzyLsjmKRjslgSVXj6XUugGZvC85Vw9m1AWsJlzow396BOzrDJPDMg==
X-Received: by 2002:a5d:4e03:0:b0:32d:83b7:bdb3 with SMTP id p3-20020a5d4e03000000b0032d83b7bdb3mr9030181wrt.70.1698797171931;
        Tue, 31 Oct 2023 17:06:11 -0700 (PDT)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id m5-20020adfe945000000b0032f7cc56509sm2571620wrn.98.2023.10.31.17.06.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Oct 2023 17:06:11 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Alex Kanavin <alex.kanavin@gmail.com>,
	Yoann Congal <yoann.congal@smile.fr>
Subject: [auh][PATCH 2/6] upgrade-helper.py: refactor _get_packages_to_upgrade to return a dict
Date: Wed,  1 Nov 2023 01:05:30 +0100
Message-Id: <20231101000534.241551-3-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20231101000534.241551-1-yoann.congal@smile.fr>
References: <20231101000534.241551-1-yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 00:06:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61540

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 upgrade-helper.py | 32 ++++++++++++++++++++++++--------
 1 file changed, 24 insertions(+), 8 deletions(-)

diff --git a/upgrade-helper.py b/upgrade-helper.py
index 57bf59a..2538d61 100755
--- a/upgrade-helper.py
+++ b/upgrade-helper.py
@@ -440,15 +440,23 @@ class Updater(object):
         pkgs_ctx = {}
 
         I(" ########### The list of recipes to be upgraded #############")
-        for p, ov, nv, m, r in pkgs_to_upgrade:
-            I(" %s, %s, %s, %s, %s" % (p, ov, nv, m, r))
+        for pkg_to_upgrade in pkgs_to_upgrade:
+            I(" %s, %s, %s, %s, %s" % (
+                pkg_to_upgrade["pn"],
+                pkg_to_upgrade["cur_ver"],
+                pkg_to_upgrade["next_ver"],
+                pkg_to_upgrade["maintainer"],
+                pkg_to_upgrade["revision"],
+            ))
+
+            p = pkg_to_upgrade["pn"]
 
             pkgs_ctx[p] = {}
             pkgs_ctx[p]['PN'] = p
-            pkgs_ctx[p]['PV'] = ov
-            pkgs_ctx[p]['NPV'] = nv
-            pkgs_ctx[p]['MAINTAINER'] = m
-            pkgs_ctx[p]['NSRCREV'] = r
+            pkgs_ctx[p]['PV'] = pkg_to_upgrade["cur_ver"]
+            pkgs_ctx[p]['NPV'] = pkg_to_upgrade["next_ver"]
+            pkgs_ctx[p]['MAINTAINER'] = pkg_to_upgrade["maintainer"]
+            pkgs_ctx[p]['NSRCREV'] = pkg_to_upgrade["revision"]
 
             pkgs_ctx[p]['base_dir'] = self.uh_recipes_all_dir
         I(" ############################################################")
@@ -471,7 +479,8 @@ class Updater(object):
         succeeded_pkgs_ctx = []
         failed_pkgs_ctx = []
         attempted_pkgs = 0
-        for pn, _, _, _, _ in pkgs_to_upgrade:
+        for pkg_to_upgrade in pkgs_to_upgrade:
+            pn = pkg_to_upgrade["pn"]
             pkg_ctx = pkgs_ctx[pn]
             pkg_ctx['error'] = None
 
@@ -675,7 +684,14 @@ class UniverseUpdater(Updater):
             if status == 'UPDATE' and not no_upgrade_reason:
                 # Always do the upgrade if recipes are specified
                 if self.recipes and pn in self.recipes or self._pkg_upgradable(pn, next_ver, maintainer):
-                    pkgs_list.append((pn, cur_ver, next_ver, maintainer, revision))
+                    pkg_to_upgrade = {
+                        "pn": pn,
+                        "cur_ver": cur_ver,
+                        "next_ver": next_ver,
+                        "maintainer": maintainer,
+                        "revision": revision
+                    }
+                    pkgs_list.append(pkg_to_upgrade)
             else:
                 if no_upgrade_reason:
                     I(" Skip package %s (status = %s, current version = %s," \
-- 
2.30.2


