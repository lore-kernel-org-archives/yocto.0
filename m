Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE005.bigfish.com (tx2ehsobe003.messaging.microsoft.com
	[65.55.88.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AA0CE01279
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2011 22:53:04 -0700 (PDT)
Received: from mail68-tx2-R.bigfish.com (10.9.14.249) by
	TX2EHSOBE005.bigfish.com (10.9.40.25) with Microsoft SMTP Server id
	14.1.225.22; Thu, 29 Sep 2011 05:53:02 +0000
Received: from mail68-tx2 (localhost.localdomain [127.0.0.1])	by
	mail68-tx2-R.bigfish.com (Postfix) with ESMTP id F08CB15B0217	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 05:53:01 +0000 (UTC)
X-SpamScore: 6
X-BigFish: VS6(z37d5kzzz1202h1082kzz8275bh8275dhz2dh2a8h668h839h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 0,13,
Received: from mail68-tx2 (localhost.localdomain [127.0.0.1]) by mail68-tx2
	(MessageSwitch) id 1317275556889690_13754;
	Thu, 29 Sep 2011 05:52:36 +0000 (UTC)
Received: from TX2EHSMHS014.bigfish.com (unknown [10.9.14.239])	by
	mail68-tx2.bigfish.com (Postfix) with ESMTP id CCAB4100804F	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 05:52:36 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS014.bigfish.com
	(10.9.99.114) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Thu, 29 Sep 2011 05:52:36 +0000
Received: from az33smr02.freescale.net (10.64.34.200) by
	039-SN1MMR1-001.039d.mgd.msft.net (10.84.1.13) with Microsoft SMTP
	Server id 14.1.323.7; Thu, 29 Sep 2011 00:52:36 -0500
Received: from right.am.freescale.net (right.am.freescale.net [10.82.193.13])
	by az33smr02.freescale.net (8.13.1/8.13.0) with ESMTP id
	p8T5qXms014523	for
	<yocto@yoctoproject.org>; Thu, 29 Sep 2011 00:52:35 -0500 (CDT)
From: Matthew McClintock <msm@freescale.com>
To: <yocto@yoctoproject.org>
Date: Thu, 29 Sep 2011 00:52:30 -0500
Message-ID: <1317275552-19908-5-git-send-email-msm@freescale.com>
X-Mailer: git-send-email 1.7.6.1
In-Reply-To: <1317275552-19908-1-git-send-email-msm@freescale.com>
References: <1317275552-19908-1-git-send-email-msm@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: [PATCH 5/7] scripts/oe-buildenv-internal: Add SOCKS5_{USER, PASSWD} to BB_ENV_EXTRAWHITE
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
X-List-Received-Date: Thu, 29 Sep 2011 05:53:04 -0000
Content-Type: text/plain

From: Kumar Gala <galak@kernel.crashing.org>

If a SOCKS5 gateway is needed for a proxy access like git it might also
require authentication to the proxy via a password and username.  Adding
SOCKS5_USER & SOCKS5_PASSWD to BB_ENV_EXTRAWHITE allow for automation
of the authentication request to occur when something like a git fetch
is going through the proxy.

Also, add several require git variables to be exported to the fetcher

Signed-off-by: Kumar Gala <galak@kernel.crashing.org>
Signed-off-by: Matthew McClintock <msm@freescale.com>
---
 bitbake/lib/bb/fetch2/__init__.py |    3 ++-
 scripts/oe-buildenv-internal      |    3 +--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index f6fa46c..fb6138b 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -385,7 +385,8 @@ def runfetchcmd(cmd, d, quiet = False, cleanup = []):
     exportvars = ['PATH', 'GIT_PROXY_COMMAND', 'GIT_PROXY_HOST',
                   'GIT_PROXY_PORT', 'GIT_CONFIG', 'http_proxy', 'ftp_proxy',
                   'https_proxy', 'no_proxy', 'ALL_PROXY', 'all_proxy',
-                  'SSH_AUTH_SOCK', 'SSH_AGENT_PID', 'HOME']
+                  'SSH_AUTH_SOCK', 'SSH_AGENT_PID', 'HOME',
+                  'GIT_PROXY_IGNORE', 'SOCKS5_USER', 'SOCKS5_PASSWD']
 
     for var in exportvars:
         val = bb.data.getVar(var, d, True)
diff --git a/scripts/oe-buildenv-internal b/scripts/oe-buildenv-internal
index 61ac18c..21b92b0 100755
--- a/scripts/oe-buildenv-internal
+++ b/scripts/oe-buildenv-internal
@@ -70,5 +70,4 @@ unset BITBAKEDIR
 # Used by the runqemu script
 export BUILDDIR
 export PATH
-
-export BB_ENV_EXTRAWHITE="MACHINE DISTRO TCMODE TCLIBC http_proxy ftp_proxy https_proxy all_proxy ALL_PROXY no_proxy SSH_AGENT_PID SSH_AUTH_SOCK BB_SRCREV_POLICY SDKMACHINE BB_NUMBER_THREADS PARALLEL_MAKE GIT_PROXY_COMMAND"
+export BB_ENV_EXTRAWHITE="MACHINE DISTRO TCMODE TCLIBC http_proxy ftp_proxy https_proxy all_proxy ALL_PROXY no_proxy SSH_AGENT_PID SSH_AUTH_SOCK BB_SRCREV_POLICY SDKMACHINE BB_NUMBER_THREADS PARALLEL_MAKE GIT_PROXY_COMMAND GIT_PROXY_IGNORE SOCKS5_PASSWD SOCKS5_USER"
-- 
1.7.6.1



