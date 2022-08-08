Return-Path: <leimaohui@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20A20C19F2A
	for <webhook@archiver.kernel.org>; Mon,  8 Aug 2022 02:23:05 +0000 (UTC)
Received: from mail1.bemta37.messagelabs.com (mail1.bemta37.messagelabs.com
 [85.158.142.1])
 by mx.groups.io with SMTP id smtpd.web09.20660.1659925376303872367
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Aug 2022 19:22:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=170520fj header.b=mfvUBCqS;
 spf=pass (domain: fujitsu.com, ip: 85.158.142.1,
 mailfrom: leimaohui@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fujitsu.com;
	s=170520fj; t=1659925374; i=@fujitsu.com;
	bh=MvNzFvbXQYDdEjREtGBOCcgJ78FSMhoLobsIdgDRVdw=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type;
	b=mfvUBCqSVXMlk9TwlAvp3BwjsjUykLpqNX4q5Z8+GHvbNrI1vn1gAANcstnfd01Fu
	 x2SGfo3EvdC7W04aO/vsTZNDtGHqTP3c3gUkxI9zAoM/JbI8b77IdQFHT/iwAKEnpk
	 ua8MvFSJoumfZ/dpcmjNAZ11wG4pDbVy2dXFNfhFDo2/Ej1edSwyWyvDwCYuaD7mPU
	 /IMpsV0dcM1vWnwcqCDK2GB5KycQahEe1hPm4qmFiIN6K3WpE47ZZ19otrOQ5zxVfM
	 k0TB/ZOmNQZJb/13vBU7GA9HMWxH1mVJAj7T8S9fNa2Ws/S1y6QnBw47NQCaeEXaB1
	 P2tDkA2cGIkqw==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKIsWRWlGSWpSXmKPExsViZ8OxWbe2+EO
  Swd0PTBYbO94xOjB6zDz1iDmAMYo1My8pvyKBNePN1flsBW84KjqXXWVsYLzD3sXIxSEkcJlR
  4ujcCYwQzjEmiS3/zjNBOHsYJVZ23mXtYuTkYBPQkNg99TJzFyMHh4iAksTdf3ogYWYBNYmjL
  38yg9jCAjYS7Zt6wcpZBFQkGvousIHYvAIuEotO/GUBsSUEFCSmPHzPDBEXlDg58wkLxBwJiY
  MvXjBD1ChJvL20hxHCrpB4ffgSVFxN4uq5TcwTGPlnIWmfhaR9ASPTKkbbpKLM9IyS3MTMHF1
  DAwNdQ0NTCG1prpdYpZuol1qqm5dfVJKha6iXWF6sl1pcrFdcmZuck6KXl1qyiREYminFKUd3
  MB7b90vvEKMkB5OSKO8K9w9JQnxJ+SmVGYnFGfFFpTmpxYcYZTg4lCR4+QqBcoJFqempFWmZO
  cA4gUlLcPAoifC+yAFK8xYXJOYWZ6ZDpE4xKkqJ8+YUASUEQBIZpXlwbbDYvMQoKyXMy8jAwC
  DEU5BalJtZgir/ilGcg1FJmPdkPtAUnsy8Erjpr4AWMwEt3vD5PcjikkSElFQDk4H3U8EvYfq
  RF1fs17r68LCrZ+HiW2U//0Z7FpszvD246cDrN92FH/bxlH0sE2TnWzo7wJ0zc+/he/ucr65c
  mHpg4d39/NWCDsUey3P6pmmsOsKo+lJU3f7g3R9398/jvHrO+AiffbwX23/+lkc723K+cfjsj
  TdKcfiuFLxgD/9dZqHY9S8lmSK+rNBV1fzwkEegJ39T/7Vys0kXFYt+ceZVKP9+cUHAiTlWnz
  v//zXVjue73/G/cY1Rl9itY9d6W2ub+oSY894FrllL5q9wcmbiv/9CncshMt8808FxiZXfS5G
  LQmYrL5r/q65TeNLyZn3T9G1rpuRF/daq4/iVaVC4akvWlec6U1q5OXgmKLEUZyQaajEXFScC
  ANP/2IRIAwAA
X-Env-Sender: leimaohui@fujitsu.com
X-Msg-Ref: server-2.tower-732.messagelabs.com!1659925372!395642!1
X-Originating-IP: [62.60.8.179]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.87.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 3545 invoked from network); 8 Aug 2022 02:22:53 -0000
Received: from unknown (HELO n03ukasimr04.n03.fujitsu.local) (62.60.8.179)
  by server-2.tower-732.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 8 Aug 2022 02:22:53 -0000
Received: from n03ukasimr04.n03.fujitsu.local (localhost [127.0.0.1])
	by n03ukasimr04.n03.fujitsu.local (Postfix) with ESMTP id 72E2C7B
	for <yocto@lists.yoctoproject.org>; Mon,  8 Aug 2022 03:22:52 +0100 (BST)
Received: from R01UKEXCASM126.r01.fujitsu.local (R01UKEXCASM126
 [10.183.43.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by n03ukasimr04.n03.fujitsu.local (Postfix) with ESMTPS id 6679275
	for <yocto@lists.yoctoproject.org>; Mon,  8 Aug 2022 03:22:52 +0100 (BST)
Received: from localhost.localdomain (10.167.225.227) by
 R01UKEXCASM126.r01.fujitsu.local (10.183.43.178) with Microsoft SMTP Server
 (TLS) id 15.0.1497.32; Mon, 8 Aug 2022 03:22:51 +0100
From: Lei Maohui <leimaohui@fujitsu.com>
To: <yocto@lists.yoctoproject.org>
CC: Lei Maohui <leimaohui@fujitsu.com>
Subject: [yocto] [meta-cgl][PATCH] resource-agents: Bug fix.
Date: Mon, 8 Aug 2022 10:22:40 +0800
Message-ID: <1659925360-4365-1-git-send-email-leimaohui@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.225.227]
X-ClientProxiedBy: G08CNEXCHPEKD08.g08.fujitsu.local (10.167.33.83) To
 R01UKEXCASM126.r01.fujitsu.local (10.183.43.178)
X-Virus-Scanned: ClamAV using ClamSMTP
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Aug 2022 02:23:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57792

Fix error as the fowllowing:

resource-agents-4.5.0-r0 do_package_qa: QA Issue: lib32-resource-agents installs files in /var/volatile, but it is expected to be empty [empty-dirs]

Signed-off-by: Lei Maohui <leimaohui@fujitsu.com>
---
 .../cluster-resource-agents/resource-agents_4.5.0.bb          | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
index 9349ab9..1da020e 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
@@ -59,8 +59,8 @@ EXTRA_OECONF += "--disable-fatal-warnings \
                  --with-rsctmpdir=/var/run/heartbeat/rsctmp"
 
 do_install:append() {
-    rm -rf "${D}${localstatedir}/run"
-    rmdir --ignore-fail-on-non-empty "${D}${localstatedir}"
+    rm -rf ${D}${localstatedir}/run
+    rm -rf ${D}${localstatedir}
 }
 
 # tickle_tcp is published under GPLv3, we just split it into ${PN}-extra,
-- 
2.25.1


