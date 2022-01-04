Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 276DEC433EF
	for <webhook@archiver.kernel.org>; Tue,  4 Jan 2022 06:50:26 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web08.3483.1641279024742298187
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jan 2022 22:50:25 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=nugT3c1Y;
 spf=pass (domain: intel.com, ip: 134.134.136.100,
 mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1641279024; x=1672815024;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=EpqEaaT4EVnH0ddXxDkYdbkkhqtODojzarIWqqDUrdY=;
  b=nugT3c1Y+VNxDPfjV/3vGo0lKSL+wLho4c27hDteURpwLeRX84bzyihb
   XT+Tir6JP8G1mhorT8W3qxjCOBy/4qySa+TErtrcC/QPmrnVanevNRbIe
   p9Tsy6hPsFBn2q/YriSzp4+2YexLLYR7rHtWCRDq8Q0XTPneDzJK3HTRh
   AtW9M/SaKPMRecfdPanE8uDpJrNbzUBjTcjOjyHOUwWqvQhXB4Hm1YY7+
   b5IdzwATyn2FYqoqSMvn3CCyKEyCx+8pI/vgEfa0O/1xiPtJ9W1L41h4R
   gnaRI9I//R//I0zuX0ELUOTtkBmH9qkOdzNwAi29E8mFsOm6BXGZCU+Wv
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10216"; a="305522978"
X-IronPort-AV: E=Sophos;i="5.88,260,1635231600";
   d="scan'208";a="305522978"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2022 22:50:23 -0800
X-IronPort-AV: E=Sophos;i="5.88,260,1635231600";
   d="scan'208";a="470065415"
Received: from asaninud-mobl1.gar.corp.intel.com (HELO
 anmitta2-mobl3.intel.com) ([10.213.130.119])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2022 22:50:22 -0800
From: Anuj Mittal <anuj.mittal@intel.com>
To: yocto@lists.yoctoproject.org,
	richard.purdie@linuxfoundation.org
Subject: [yocto-autobuilder2][PATCH] config.py: enable fedora34 for hardknott
Date: Tue,  4 Jan 2022 14:50:10 +0800
Message-Id: <20220104065010.10699-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jan 2022 06:50:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55713

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 5b21095..ea042c6 100644
--- a/config.py
+++ b/config.py
@@ -147,7 +147,7 @@ all_workers = workers + workers_bringup + workers_buildperf + workers_arm
 
 # Worker filtering for older releases
 workers_prev_releases = {
-    "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora31", "fedora32", "fedora33", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
+    "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
     "gatesgarth" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
     "dunfell" : ("centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
     "zeus" : ("centos7", "debian8", "debian9", "debian10", "fedora28", "fedora29", "fedora30", "opensuse150", "opensuse151", "ubuntu1604", "ubuntu1804", "ubuntu1904", "perf-"),
-- 
2.33.1


