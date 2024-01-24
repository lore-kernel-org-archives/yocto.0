Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CD54C46CD2
	for <webhook@archiver.kernel.org>; Wed, 24 Jan 2024 21:06:41 +0000 (UTC)
Received: from mta-65-226.siemens.flowmailer.net (mta-65-226.siemens.flowmailer.net [185.136.65.226])
 by mx.groups.io with SMTP id smtpd.web10.36230.1706130398091329409
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jan 2024 13:06:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=peter.marko@siemens.com header.s=fm1 header.b=JpIiyq20;
 spf=pass (domain: rts-flowmailer.siemens.com, ip: 185.136.65.226, mailfrom: fm-256628-2024012421063507dd7d65474b282071-gz71_x@rts-flowmailer.siemens.com)
Received: by mta-65-226.siemens.flowmailer.net with ESMTPSA id 2024012421063507dd7d65474b282071
        for <yocto@lists.yoctoproject.org>;
        Wed, 24 Jan 2024 22:06:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=peter.marko@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=lvckyVw1AMKyu1tHJy/7z32Wg+1zl7FCmPWC7C/fmmI=;
 b=JpIiyq20RQBOeG0DmF7VFeubzXv27WX6qaWi/V2E7xQg4K7YT8UWSJ71Z7Eqh9dZXyw2gw
 VcyHky/BZgsdRJckL0ZFOxG7D8tLPbKHwSnkEJ1AnQa9Ui3Ou3cVWucBH67dSqDJzURhfs3X
 5fJrG8JS6Oz9o/LiKag2emsc7deCk=;
From: Peter Marko <peter.marko@siemens.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Marko <peter.marko@siemens.com>
Subject: [meta-virtualization][PATCH v2] netavark: correct PV
Date: Wed, 24 Jan 2024 22:05:45 +0100
Message-Id: <20240124210545.20070-1-peter.marko@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-256628:519-21489:flowmailer
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 21:06:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62272

From: Peter Marko <peter.marko@siemens.com>

Current hash is 20 commits after tag, so add +git to PV.

Signed-off-by: Peter Marko <peter.marko@siemens.com>
---
 .../netavark/{netavark_1.9.0.bb => netavark_git.bb}              | 1 +
 1 file changed, 1 insertion(+)
 rename recipes-containers/netavark/{netavark_1.9.0.bb => netavark_git.bb} (99%)

diff --git a/recipes-containers/netavark/netavark_1.9.0.bb b/recipes-containers/netavark/netavark_git.bb
similarity index 99%
rename from recipes-containers/netavark/netavark_1.9.0.bb
rename to recipes-containers/netavark/netavark_git.bb
index 5249acee..9d3a1172 100644
--- a/recipes-containers/netavark/netavark_1.9.0.bb
+++ b/recipes-containers/netavark/netavark_git.bb
@@ -5,6 +5,7 @@ LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=86d3f3a95c324c9479bd8986968f4327"
 
 SRCREV = "167e2e4f167cadc635bbacb5331674b67787d08e"
+PV = "1.9.0+git"
 
 # It is possible to fetch the source using the crate fetcher instead:
 #SRC_URI = "crate://crates.io/${BPN}/${PV}"
-- 
2.30.2


