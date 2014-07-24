Return-Path: <zhenhua.luo@freescale.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3476E0078E; Thu, 24 Jul 2014 05:17:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [207.46.163.212 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2lp0212.outbound.protection.outlook.com [207.46.163.212])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50A7DE006B7
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 05:17:42 -0700 (PDT)
Received: from BY2PR03CA050.namprd03.prod.outlook.com (10.141.249.23) by
	DM2PR0301MB0718.namprd03.prod.outlook.com (25.160.97.139) with
	Microsoft SMTP
	Server (TLS) id 15.0.985.8; Thu, 24 Jul 2014 12:17:39 +0000
Received: from BL2FFO11FD060.protection.gbl (2a01:111:f400:7c09::161) by
	BY2PR03CA050.outlook.office365.com (2a01:111:e400:2c5d::23) with
	Microsoft SMTP Server (TLS) id 15.0.995.14 via Frontend Transport;
	Thu, 24 Jul 2014 12:17:38 +0000
Received: from az84smr01.freescale.net (192.88.158.2) by
	BL2FFO11FD060.mail.protection.outlook.com (10.173.161.188) with
	Microsoft SMTP Server (TLS) id 15.0.980.11 via Frontend Transport;
	Thu, 24 Jul 2014 12:17:38 +0000
Received: from fly.ap.freescale.net (fly.ap.freescale.net [10.193.20.25])
	by az84smr01.freescale.net (8.14.3/8.14.0) with ESMTP id s6OCHZ98005115;
	Thu, 24 Jul 2014 05:17:36 -0700
From: Zhenhua Luo <zhenhua.luo@freescale.com>
To: <yocto@yoctoproject.org>
Date: Thu, 24 Jul 2014 20:20:01 +0800
Message-ID: <1406204401-17220-1-git-send-email-zhenhua.luo@freescale.com>
X-Mailer: git-send-email 1.9.3
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:192.88.158.2; CTRY:US; IPV:CAL; IPV:NLI;
	EFV:NLI; SFV:NSPM;
	SFS:(979002)(6009001)(189002)(199002)(69596002)(19580405001)(77982001)(19580395003)(104166001)(87286001)(50466002)(4396001)(76482001)(44976005)(97736001)(229853001)(110136001)(87936001)(92566001)(81156004)(105606002)(102836001)(21056001)(6806004)(80022001)(64706001)(68736004)(74662001)(77156001)(104016003)(92726001)(26826002)(31966008)(79102001)(50226001)(83072002)(88136002)(93916002)(74502001)(95666004)(85852003)(48376002)(81342001)(106466001)(36756003)(2351001)(85306003)(89996001)(83322001)(50986999)(99396002)(33646002)(86362001)(47776003)(62966002)(20776003)(46102001)(84676001)(107046002)(81542001)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:; SCL:1; SRVR:DM2PR0301MB0718;
	H:az84smr01.freescale.net; FPR:; MLV:ovrnspm;
	PTR:InfoDomainNonexistent; MX:1; LANG:; 
MIME-Version: 1.0
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:
X-Forefront-PRVS: 028256169F
Received-SPF: Fail (: domain of freescale.com does not designate 192.88.158.2
	as permitted sender) receiver=; client-ip=192.88.158.2;
	helo=az84smr01.freescale.net;
Authentication-Results: spf=fail (sender IP is 192.88.158.2)
	smtp.mailfrom=zhenhua.luo@freescale.com; 
X-OriginatorOrg: freescale.com
Subject: [meta-selinux][PATCH] Enable two options to ensure selinux can boot up
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 Jul 2014 12:17:46 -0000
Content-Type: text/plain

* CONFIG_SECURITY=y
* CONFIG_SECURITYFS=y

Signed-off-by: Zhenhua Luo <zhenhua.luo@freescale.com>
---
 recipes-kernel/linux/linux-yocto/selinux.cfg | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-kernel/linux/linux-yocto/selinux.cfg b/recipes-kernel/linux/linux-yocto/selinux.cfg
index 53cdf57..2edd366 100644
--- a/recipes-kernel/linux/linux-yocto/selinux.cfg
+++ b/recipes-kernel/linux/linux-yocto/selinux.cfg
@@ -18,6 +18,8 @@ CONFIG_EXT4_FS_SECURITY=y
 CONFIG_JFS_SECURITY=y
 CONFIG_REISERFS_FS_SECURITY=y
 CONFIG_JFFS2_FS_SECURITY=y
+CONFIG_SECURITY=y
+CONFIG_SECURITYFS=y
 CONFIG_SECURITY_NETWORK=y
 CONFIG_SECURITY_SELINUX=y
 CONFIG_SECURITY_SELINUX_BOOTPARAM=y
-- 
1.9.3


