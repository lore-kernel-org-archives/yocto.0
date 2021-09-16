Received: from mail1.wrs.com (mail1.wrs.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web09.7866.1631778219827755259
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Sep 2021 00:43:39 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: liezhi.yang@windriver.com)
Received: from mail.windriver.com (mail.wrs.com [147.11.1.11])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 18G7hcEY000986
	(version=TLSv1.1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Thu, 16 Sep 2021 00:43:38 -0700
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 18G7hc6i011555
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Thu, 16 Sep 2021 00:43:38 -0700 (PDT)
Received: from ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 16 Sep 2021 00:43:38 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.14; Thu, 16 Sep 2021 00:43:37 -0700
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Thu, 16 Sep 2021 00:43:36 -0700
From: "Robert Yang" <liezhi.yang@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [layerindex-web][PATCH] recipeparse.py: Checkout deplayerbranch before parsing
Date: Thu, 16 Sep 2021 16:14:12 +0800
Message-ID: <20210916081412.112448-1-liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain

Fixed:
$ ./update.py -b hardknott,master

ERROR: Variable PREMIRRORS_append contains an operation using the old override syntax. Please convert this layer/metadata before attempting to use with a newer bitbake.

This is because it doesn't checkout master branch when parse it, this patch
fixed the problem.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/recipeparse.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/layerindex/recipeparse.py b/layerindex/recipeparse.py
index 62c08e91..0870e4f3 100644
--- a/layerindex/recipeparse.py
+++ b/layerindex/recipeparse.py
@@ -118,6 +118,7 @@ def setup_layer(config_data, fetchdir, layerdir, layer, layerbranch, logger):
                 logger.warning('Recommends %s of layer %s does not have branch record for branch %s - ignoring' % (dep.dependency.name, layer.name, layerbranch.branch.name))
                 continue
         deplayerdir = os.path.join(deprepodir, deplayerbranch.vcs_subdir)
+        utils.checkout_layer_branch(deplayerbranch, deprepodir, logger)
         utils.parse_layer_conf(deplayerdir, config_data_copy)
     config_data_copy.delVar('LAYERDIR')
     return config_data_copy
-- 
2.17.1

