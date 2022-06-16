Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7486CC43334
	for <webhook@archiver.kernel.org>; Thu, 16 Jun 2022 02:26:40 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by mx.groups.io with SMTP id smtpd.web10.13288.1655346370518309501
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Jun 2022 19:26:11 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=kAuxIcnb;
 spf=pass (domain: intel.com, ip: 134.134.136.65,
 mailfrom: naveen.kumar.saini@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1655346370; x=1686882370;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=uKERRFFKkUPYlxAhvFQNu0H7Vz9edUPHVqaJ76FhCaE=;
  b=kAuxIcnb1G2BzOlYdlj1o4nIDtbsdV837jT/A5UBAFfDaZB37nIqKOMA
   +AcxaeWBPACfTJSd+BElXzkgCl9TuuVikuIA5OKFXyufwRjkOkSxXXei9
   /ysThq0WDHELsyWtaN8GDcWjh3hkw0gRCA/+pJ8rTeANMcA/pk9pqpip7
   V6pR8qTIJjof8ZJ/WAuOVswoxs6854J/SrTwjbnZ2KFPPySOObgB9SY83
   N1eqtU8DDmyh1uL6171oAa8wIeWyP/XCERSfN5v5fyEVvffCzojxqIBj6
   eRHvz4UQCJeaTkvntcEZ5He40G4ydMMbzoUWseXG7qDAsUx8Va1wH5PCq
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="280181345"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600";
   d="scan'208";a="280181345"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 19:26:09 -0700
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600";
   d="scan'208";a="583463363"
Received: from saininav-desk1.png.intel.com ([10.158.87.77])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 19:26:08 -0700
From: Naveen Saini <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][kirkstone][PATCH 2/2] README.txt: update for kirkstone
 release
Date: Thu, 16 Jun 2022 10:44:47 +0800
Message-Id: <20220616024447.1156346-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220616024447.1156346-1-naveen.kumar.saini@intel.com>
References: <20220616024447.1156346-1-naveen.kumar.saini@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Jun 2022 02:26:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57338

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 README.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/README.txt b/README.txt
index ec860fd..5e0c4b6 100644
--- a/README.txt
+++ b/README.txt
@@ -9,9 +9,9 @@ Prerequisites:
 ==============
 
 This layer depends on:
-    Yocto distro (master)
+    Yocto distro (kirkstone)
         git://git.yoctoproject.org/poky
-    Python layer (meta-openembedded/meta-python)
+    Python layer (meta-openembedded/meta-python) (kirkstone)
         git://git.openembedded.org/meta-openembedded
 
 Modify local conf by adding:
-- 
2.25.1


