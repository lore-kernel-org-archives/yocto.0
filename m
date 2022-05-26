Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15E15C433FE
	for <webhook@archiver.kernel.org>; Thu, 26 May 2022 23:08:15 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web08.1487.1653606491703333251
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 May 2022 16:08:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=CnI8F90+;
 spf=pass (domain: intel.com, ip: 192.55.52.115,
 mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1653606493; x=1685142493;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=KzpqrwEBEFLKSBKHp5Fsy7zTqb/BjxlV5IxJjOm4kFI=;
  b=CnI8F90+e0cjJnivEPmsgjRaq+7aK8U3NMCNP7xVyJ+HwnvyWnkvMuYP
   RBtUXIOa4QgFuuoq+4nn7XffFUY4G6G1acALdA1vENl2DlJ6NMjjwbw0m
   B+FZH7ddyX1XB8cPghbw98HjlbqAOealFDGR/bZ1k49N+yyAI/s19wnW5
   E5XyJbYlMvFAXNhx3U/NsiO/EGDqpHpkcRdTOqs7RFCcFpZwK92jQUHm4
   7dR+rdE7hkq10lFG0uHucnvpt+LgC85x5DAnJ4oM9vyrWksHnSm0ek87j
   sorO3lOP4p0iieyJvHoXtUoYMPvJHsfr2qJ89bAEHHOY5DE/fmCzCiuFo
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="274423518"
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600";
   d="scan'208";a="274423518"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 16:08:12 -0700
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600";
   d="scan'208";a="746594416"
Received: from bengchee-mobl.gar.corp.intel.com (HELO
 anmitta2-mobl3.intel.com) ([10.215.145.129])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 16:08:11 -0700
From: Anuj Mittal <anuj.mittal@intel.com>
To: richard.purdie@linuxfoundation.org,
	yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][PATCH 2/2] config.py: fix quotes in
 workers_prev_releases list
Date: Fri, 27 May 2022 07:08:02 +0800
Message-Id: <20220526230802.6101-2-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220526230802.6101-1-anuj.mittal@intel.com>
References: <20220526230802.6101-1-anuj.mittal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 May 2022 23:08:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57196

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index e7539d9..c3c21f1 100644
--- a/config.py
+++ b/config.py
@@ -155,7 +155,7 @@ workers_prev_releases = {
     "honister" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
     "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
     "gatesgarth" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
-    "dunfell" : (""alma8", centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
+    "dunfell" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
     "zeus" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "warrior" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
     "thud" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
-- 
2.35.3


