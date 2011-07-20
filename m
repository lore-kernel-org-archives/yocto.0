Return-Path: <B29882@freescale.com>
Received: from AM1EHSOBE004.bigfish.com (am1ehsobe004.messaging.microsoft.com
	[213.199.154.207])
	by mx1.pokylinux.org (Postfix) with ESMTP id A95084C803DB
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2011 15:15:41 -0500 (CDT)
Received: from mail34-am1-R.bigfish.com (10.3.201.249) by
	AM1EHSOBE004.bigfish.com (10.3.204.24) with Microsoft SMTP Server id
	14.1.225.22; Wed, 20 Jul 2011 20:15:40 +0000
Received: from mail34-am1 (localhost.localdomain [127.0.0.1])	by
	mail34-am1-R.bigfish.com (Postfix) with ESMTP id 5271A708304;
	Wed, 20 Jul 2011 20:15:40 +0000 (UTC)
X-SpamScore: 3
X-BigFish: VS3(zzzz1202h1082kzz8275bhz2dh2a8h668h839h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail34-am1 (localhost.localdomain [127.0.0.1]) by mail34-am1
	(MessageSwitch) id 131119294045869_10938;
	Wed, 20 Jul 2011 20:15:40 +0000 (UTC)
Received: from AM1EHSMHS008.bigfish.com (unknown [10.3.201.252])	by
	mail34-am1.bigfish.com (Postfix) with ESMTP id 0017EF9804B;
	Wed, 20 Jul 2011 20:15:39 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS008.bigfish.com
	(10.3.207.108) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Wed, 20 Jul 2011 20:15:37 +0000
Received: from az33smr01.freescale.net (10.64.34.199) by
	039-SN1MMR1-002.039d.mgd.msft.net (10.84.1.15) with Microsoft SMTP
	Server id 14.1.289.8; Wed, 20 Jul 2011 15:15:35 -0500
Received: from busy.am.freescale.net (busy.am.freescale.net [10.82.193.15])	by
	az33smr01.freescale.net (8.13.1/8.13.0) with ESMTP id p6KKFXuF010986;
	Wed, 20 Jul 2011 15:15:34 -0500 (CDT)
From: Matthew McClintock <msm@freescale.com>
To: <yocto@yoctoproject.org>, <openembedded-core@openembedded.org>
Date: Wed, 20 Jul 2011 15:14:05 -0500
Message-ID: <1311192845-7233-1-git-send-email-msm@freescale.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-Mailman-Approved-At: Wed, 20 Jul 2011 15:43:53 -0500
Cc: Matthew McClintock <msm@freescale.com>, Tom Rini <tom_rini@mentor.com>
Subject: [PATCH] Make intltool use perlnative instead of perl on host
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
X-List-Received-Date: Wed, 20 Jul 2011 20:15:43 -0000
Content-Type: text/plain

intltool recipe was using perl from the host instead of perl from
poky. This forces the recipe to use poky's perl (along with perl
modules it pulls in)

Signed-off-by: Matthew McClintock <msm@freescale.com>
Signed-off-by: Tom Rini <tom_rini@mentor.com>
---
 meta/recipes-devtools/intltool/intltool.inc       |    2 +-
 meta/recipes-devtools/intltool/intltool_0.40.6.bb |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-devtools/intltool/intltool.inc b/meta/recipes-devtools/intltool/intltool.inc
index a4bccd3..c934654 100644
--- a/meta/recipes-devtools/intltool/intltool.inc
+++ b/meta/recipes-devtools/intltool/intltool.inc
@@ -10,7 +10,7 @@ DEPENDS = "libxml-parser-perl-native"
 #RDEPENDS_${PN} = "libxml-parser-perl"
 RRECOMMENDS_${PN} = "perl-modules"
 
-inherit autotools pkgconfig
+inherit autotools pkgconfig perlnative
 
 export PERL_virtclass-native = "/usr/bin/env perl"
 BBCLASSEXTEND = "native"
diff --git a/meta/recipes-devtools/intltool/intltool_0.40.6.bb b/meta/recipes-devtools/intltool/intltool_0.40.6.bb
index ea67144..c7938e5 100644
--- a/meta/recipes-devtools/intltool/intltool_0.40.6.bb
+++ b/meta/recipes-devtools/intltool/intltool_0.40.6.bb
@@ -1,7 +1,7 @@
 require intltool.inc
 LICENSE="GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
-PR = "r2"
+PR = "r3"
 
 SRC_URI_append = " file://intltool-nowarn-0.40.0.patch"
 
-- 
1.7.5.4



