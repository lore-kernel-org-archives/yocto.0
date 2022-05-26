Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15201C433F5
	for <webhook@archiver.kernel.org>; Thu, 26 May 2022 23:08:15 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web08.1487.1653606491703333251
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 May 2022 16:08:11 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=OjI6+yuo;
 spf=pass (domain: intel.com, ip: 192.55.52.115,
 mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1653606491; x=1685142491;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=gKnvgJXLms0b/5z2WzcvMNaMhVu4V1mP44+A44SQ+H4=;
  b=OjI6+yuoQHLwWeZiTBABpyTNfAZdGaZMvA456p/mUB290zehUliNsRIk
   IQsLUs0i+Sg9jrwKwRlWciKnmUkf7xe5Wfn60x8B6BnSR4oOYvFU6NiHI
   mOAqKah8Nbfvlb5qdpgBQrLOEVGJoYsQcIJXKHGIYYJej7/All3iVRpue
   XAOdyDWvX65kNurG8KN4jWZfPSQu1ugHIB5vw6Kk68VR99hpyZSquPGti
   /s1M5JQbI0yWuJEq3HJLMGgFti7ke7IMjpDRnOcyO6JAF88uzcGMMeBel
   7p1uVM8kQcGq/xdfURfxSQGnEV2D/tvkBJIae9HEk9qcAbjGP5g14t5r4
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="274423516"
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600";
   d="scan'208";a="274423516"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 16:08:11 -0700
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600";
   d="scan'208";a="746594409"
Received: from bengchee-mobl.gar.corp.intel.com (HELO
 anmitta2-mobl3.intel.com) ([10.215.145.129])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 16:08:09 -0700
From: Anuj Mittal <anuj.mittal@intel.com>
To: richard.purdie@linuxfoundation.org,
	yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][PATCH 1/2] config.py: define workers for
 honister
Date: Fri, 27 May 2022 07:08:01 +0800
Message-Id: <20220526230802.6101-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 May 2022 23:08:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57195

Define the worker list for honister so we can test reliably now the
release support is ending.

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 config.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.py b/config.py
index f36c273..e7539d9 100644
--- a/config.py
+++ b/config.py
@@ -152,6 +152,7 @@ all_workers = workers + workers_bringup + workers_buildperf + workers_arm
 
 # Worker filtering for older releases
 workers_prev_releases = {
+    "honister" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
     "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
     "gatesgarth" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
     "dunfell" : (""alma8", centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
-- 
2.35.3


