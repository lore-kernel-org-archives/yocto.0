Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA2ADC433F5
	for <webhook@archiver.kernel.org>; Wed,  1 Jun 2022 02:22:32 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web09.2659.1654050141187624278
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 May 2022 19:22:22 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=DFJ6jdL6;
 spf=pass (domain: intel.com, ip: 134.134.136.126,
 mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1654050141; x=1685586141;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=c62XgD/il9sAeSS4r/e2VUPkbeRxgpfofNTi3q/+ZNU=;
  b=DFJ6jdL6HI8Gb1hSf902/25hEtjOA+dH+mVeX5cHVgL8v5fTrCAgyXES
   6hyVEMfb4WZQQok9hGrc7xtH3NbVEeAnEyqknCb3t48Al7MzH1e9R+GXU
   PAiSpIHsmuKKU0xxD1b4n0Rfn7K96DpgCvVTv0GYryPIa/qbgp8NwlRoG
   5iFTtHqkHS7x14/PyYqyF6EM1MQdKvR9ayO5tKIQIfXAaxE3/xfBGqEQ5
   bGFllz3MijFlLxJqFALCkf6PEttSipNqc0jmis4+fgKQw2jYLjm53mucX
   HiuYxLqNgds/ijobfuREVbELdmi+Tvs8x5pONDVZfSACHFMczrjzhxPPm
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="257518868"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600";
   d="scan'208";a="257518868"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 19:22:19 -0700
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600";
   d="scan'208";a="679873827"
Received: from rpuvenes-mobl1.gar.corp.intel.com (HELO
 anmitta2-mobl3.intel.com) ([10.215.250.27])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 19:22:17 -0700
From: Anuj Mittal <anuj.mittal@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][PATCH] schedulers.py: dont schedule check-layer
 for honister
Date: Wed,  1 Jun 2022 10:21:49 +0800
Message-Id: <20220601022149.13804-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Jun 2022 02:22:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57239

Honister is now EOL so remove the scheduled check.

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 schedulers.py | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/schedulers.py b/schedulers.py
index a11ce14..6d33969 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -417,10 +417,6 @@ schedulers.append(sched.Nightly(name='nightly-check-layer', branch='master', pro
 schedulers.append(sched.Nightly(name='nightly-metrics', branch='master', properties=parent_default_props('metrics'),
                   builderNames=['metrics'], hour=7, minute=0))
 
-# Run check-layer-nightly twice a week for honister
-schedulers.append(sched.Nightly(name='nightly-check-layer-honister', properties=parent_default_props('check-layer-nightly', 'honister'),
-                  builderNames=['check-layer-nightly'], dayOfWeek=[2, 5], hour=2, minute=0, codebases = {'' : {'branch' : 'honister'}}))
-
 # Run check-layer-nightly twice a week for kirkstone
 schedulers.append(sched.Nightly(name='nightly-check-layer-kirkstone', properties=parent_default_props('check-layer-nightly', 'kirkstone'),
                   builderNames=['check-layer-nightly'], dayOfWeek=[0, 3], hour=2, minute=0, codebases = {'' : {'branch' : 'kirkstone'}}))
-- 
2.35.3


