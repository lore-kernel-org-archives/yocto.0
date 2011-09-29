Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE004.bigfish.com (tx2ehsobe002.messaging.microsoft.com
	[65.55.88.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D795E004CF
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2011 22:54:36 -0700 (PDT)
Received: from mail48-tx2-R.bigfish.com (10.9.14.242) by
	TX2EHSOBE004.bigfish.com (10.9.40.24) with Microsoft SMTP Server id
	14.1.225.22; Thu, 29 Sep 2011 05:54:35 +0000
Received: from mail48-tx2 (localhost.localdomain [127.0.0.1])	by
	mail48-tx2-R.bigfish.com (Postfix) with ESMTP id 9885AA98372	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 05:54:35 +0000 (UTC)
X-SpamScore: 3
X-BigFish: VS3(zzzz1202h1082kzz8275bhz2dh2a8h668h839h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 0,13,
Received: from mail48-tx2 (localhost.localdomain [127.0.0.1]) by mail48-tx2
	(MessageSwitch) id 1317275595940142_8271;
	Thu, 29 Sep 2011 05:53:15 +0000 (UTC)
Received: from TX2EHSMHS040.bigfish.com (unknown [10.9.14.253])	by
	mail48-tx2.bigfish.com (Postfix) with ESMTP id C5F9C40171	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 05:52:35 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS040.bigfish.com
	(10.9.99.140) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Thu, 29 Sep 2011 05:52:35 +0000
Received: from az33smr02.freescale.net (10.64.34.200) by
	039-SN1MMR1-003.039d.mgd.msft.net (10.84.1.16) with Microsoft SMTP
	Server id 14.1.323.7; Thu, 29 Sep 2011 00:52:35 -0500
Received: from right.am.freescale.net (right.am.freescale.net [10.82.193.13])
	by az33smr02.freescale.net (8.13.1/8.13.0) with ESMTP id
	p8T5qXmq014523	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 00:52:34 -0500 (CDT)
From: Matthew McClintock <msm@freescale.com>
To: <yocto@yoctoproject.org>
Date: Thu, 29 Sep 2011 00:52:28 -0500
Message-ID: <1317275552-19908-3-git-send-email-msm@freescale.com>
X-Mailer: git-send-email 1.7.6.1
In-Reply-To: <1317275552-19908-1-git-send-email-msm@freescale.com>
References: <1317275552-19908-1-git-send-email-msm@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: [PATCH 3/7] Make git fetch run with -f so rebased branches don't fail
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 29 Sep 2011 05:54:36 -0000
Content-Type: text/plain

git fetches can fail (or at least return failed) when trying to
fetch and prune rebased branches. This patch simply adds a -f
to the git fetch command so these failure are ignore

Generally, if some SHA was rebased away it's not coming back so
there is no point in not doing this force

Signed-off-by: Matthew McClintock <msm@freescale.com>
---
 bitbake/lib/bb/fetch2/git.py |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index fb6125c..87a35d9 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -190,7 +190,7 @@ class Git(FetchMethod):
                 logger.debug(1, "No Origin")
 
             runfetchcmd("%s remote add --mirror=fetch origin %s" % (ud.basecmd, repourl), d)
-            fetch_cmd = "%s fetch --prune %s refs/*:refs/*" % (ud.basecmd, repourl)
+            fetch_cmd = "%s fetch -f --prune %s refs/*:refs/*" % (ud.basecmd, repourl)
             bb.fetch2.check_network_access(d, fetch_cmd, ud.url)
             runfetchcmd(fetch_cmd, d)
             runfetchcmd("%s prune-packed" % ud.basecmd, d)
-- 
1.7.6.1



