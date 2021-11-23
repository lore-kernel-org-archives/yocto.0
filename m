Return-Path: <leimaohui@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1589C433F5
	for <webhook@archiver.kernel.org>; Tue, 23 Nov 2021 02:20:56 +0000 (UTC)
Received: from mail1.bemta26.messagelabs.com (mail1.bemta26.messagelabs.com
 [85.158.142.2])
 by mx.groups.io with SMTP id smtpd.web09.6003.1637634055408733835
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Nov 2021 18:20:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=170520fj header.b=PsqKqOyj;
 spf=pass (domain: fujitsu.com, ip: 85.158.142.2,
 mailfrom: leimaohui@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fujitsu.com;
	s=170520fj; t=1637634048; i=@fujitsu.com;
	bh=a/vH8Ykcxcf7V0o4oL7/4G0FffDnsPfKjnfMToMzAZU=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type;
	b=PsqKqOyjx8W/I0Wg4YSuxdLUui0hvBwa10Fbw+CWAjRKeJ2uO27aULW0GXBuv97dz
	 5D2Wuuyws9umMHF6zrL5SzeDaFDUcruaUBR4X/7+LZbShDQHxtcti2dB2P8ILs5avX
	 /zWI32EEFLfLKK/m7MN9AudZOZGQN4QAgAUcehr4ZafdfuSIILLYVLkV6hdWWfVva9
	 sMpGU88KrpAgq5vc6ET13wiDgjVr/hSuv+bYzkUoMbVBtxPfv8tLE4PzdgsPDagc4b
	 vEu2u4WRBHE6QC+28jQ6Nw478xUNPUMXG91qU34Q2C21oJZjA5loIQb83+UiZjwCkT
	 FjCszqNleewpw==
Received: from [100.113.3.203] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
	by server-2.bemta.az-a.eu-central-1.aws.symcld.net id 02/54-32197-FFF4C916;
 Tue, 23 Nov 2021 02:20:47 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRWlGSWpSXmKPExsViZ8MxRfe//5x
  Eg2lP5Sw2drxjdGD0mHnqEXMAYxRrZl5SfkUCa8ak/o+sBas5KnbeWsDcwLiMvYuRi0NIoIdJ
  4tyx6SwQzl5GianXN7N1MXJysAloSOyeepm5i5GDQ0RASeLuPz2QMLOAmsTRlz+ZQWxhAUeJ7
  9ubwcpZBFQlvuxuZQSxeQVcJLq67oPFJQQUJKY8fM8MEReUODnzCQvEHAmJgy9eMEPUKEm8vb
  SHEcKukJg1q41pAiPvLCQts5C0LGBkWsVomVSUmZ5RkpuYmaNraGCga2horGuoa2RkppdYpZu
  ol1qqm5yaV1KUCJTVSywv1iuuzE3OSdHLSy3ZxAgMsJRCxkc7GE+//qB3iFGSg0lJlHeB4ZxE
  Ib6k/JTKjMTijPii0pzU4kOMMhwcShK8C32AcoJFqempFWmZOcBgh0lLcPAoifDO8QNK8xYXJ
  OYWZ6ZDpE4xKkqJ8zaCJARAEhmleXBtsAi7xCgrJczLyMDAIMRTkFqUm1mCKv+KUZyDUUmYdw
  nIFJ7MvBK46a+AFjMBLe7dMxtkcUkiQkqqgamykoMt4vDUhBe3l4tJZz2IKDAoENNdrnYwVeh
  1xrEArgmHHRyzVzbJCXk7d1Stlmd5dcF3PTPj5mMq944IKAbOkfKv1BeO0JTsS43jeVi/5Y9k
  YNuJraq2a23OtPB4HbdZLnrcJ5jn5PU1rdOPa66Xny+44Hap9Nzub4LMtm9e+EbUljzV1Ev0r
  l5pepc3xiTBmCtgv9hTb88P595tV7XYsdKO+ev5hdyuycUtYUt+MLs5b3F/su7Us+mNGybnsk
  S9VV6xsFJURCP+PodgcXHriz33l7iwdHzd5SbjEHs74dvs3VExlovqz+YLPrgjeeyj9/dHdyK
  jrDn+sbLwsZ3PNGJ5IHJse4XWDMW9SizFGYmGWsxFxYkA1e5fHCsDAAA=
X-Env-Sender: leimaohui@fujitsu.com
X-Msg-Ref: server-3.tower-226.messagelabs.com!1637634047!23932!1
X-Originating-IP: [62.60.8.148]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.81.5; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 30364 invoked from network); 23 Nov 2021 02:20:47 -0000
Received: from unknown (HELO mailhost1.uk.fujitsu.com) (62.60.8.148)
  by server-3.tower-226.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 23 Nov 2021 02:20:47 -0000
Received: from R01UKEXCASM126.r01.fujitsu.local ([10.183.43.178])
	by mailhost1.uk.fujitsu.com (8.14.5/8.14.5) with ESMTP id 1AN2KewT024917
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Tue, 23 Nov 2021 02:20:47 GMT
Received: from localhost.localdomain (10.167.225.227) by
 R01UKEXCASM126.r01.fujitsu.local (10.183.43.178) with Microsoft SMTP Server
 (TLS) id 15.0.1497.26; Tue, 23 Nov 2021 02:20:38 +0000
From: Lei Maohui <leimaohui@fujitsu.com>
To: <yocto@lists.yoctoproject.org>
CC: Lei Maohui <leimaohui@fujitsu.com>
Subject: [yocto] [meta-cgl][PATCH] resource-agents: Fix QA Issue:
Date: Tue, 23 Nov 2021 19:20:29 +0800
Message-ID: <1637666429-4258-1-git-send-email-leimaohui@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.225.227]
X-ClientProxiedBy: G08CNEXCHPEKD07.g08.fujitsu.local (10.167.33.80) To
 R01UKEXCASM126.r01.fujitsu.local (10.183.43.178)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Nov 2021 02:20:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55391

ERROR: resource-agents-4.5.0-r0 do_package_qa: QA Issue: resource-agents installs files in /var/volatile, but it is expected to be empty [empty-dirs]

Signed-off-by: Lei Maohui <leimaohui@fujitsu.com>
---
 .../cluster-resource-agents/resource-agents_4.5.0.bb           | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
index 261681c..d6fb708 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
@@ -57,8 +57,7 @@ EXTRA_OECONF += "--disable-fatal-warnings \
                  --with-rsctmpdir=/var/run/heartbeat/rsctmp"
 
 do_install:append() {
-    rm -rf "${D}${localstatedir}/run"
-    rmdir --ignore-fail-on-non-empty "${D}${localstatedir}"
+    rm -rf "${D}${localstatedir}"
 }
 
 # tickle_tcp is published under GPLv3, we just split it into ${PN}-extra,
-- 
2.25.1


