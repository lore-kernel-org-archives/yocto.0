Return-Path: <Zongchun.Yu@freescale.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEBD8E005B7; Thu, 10 Dec 2015 02:27:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.115 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 859 seconds by postgrey-1.32 at yocto-www;
	Thu, 10 Dec 2015 02:27:37 PST
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0115.outbound.protection.outlook.com [157.56.111.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 944B0E002F9
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 02:27:37 -0800 (PST)
Received: from BY2PR0301MB1655.namprd03.prod.outlook.com (10.163.28.145) by
	BY2PR0301MB1653.namprd03.prod.outlook.com (10.163.28.143) with
	Microsoft SMTP
	Server (TLS) id 15.1.337.19; Thu, 10 Dec 2015 10:13:16 +0000
Received: from CH1PR03CA003.namprd03.prod.outlook.com (10.255.156.148) by
	BY2PR0301MB1655.namprd03.prod.outlook.com (10.163.28.145) with
	Microsoft SMTP
	Server (TLS) id 15.1.337.19; Thu, 10 Dec 2015 09:49:34 +0000
Received: from BN1BFFO11FD026.protection.gbl (10.255.156.132) by
	CH1PR03CA003.outlook.office365.com (10.255.156.148) with Microsoft SMTP
	Server (TLS) id 15.1.355.16 via Frontend Transport;
	Thu, 10 Dec 2015 09:49:34 +0000
Authentication-Results: spf=permerror (sender IP is 192.88.168.50)
	smtp.mailfrom=freescale.com; freescale.mail.onmicrosoft.com; dkim=none
	(message not signed) header.d=none; freescale.mail.onmicrosoft.com;
	dmarc=none action=none header.from=freescale.com;
Received-SPF: PermError (protection.outlook.com: domain of freescale.com used
	an invalid SPF mechanism)
Received: from tx30smr01.am.freescale.net (192.88.168.50) by
	BN1BFFO11FD026.mail.protection.outlook.com (10.58.144.89) with
	Microsoft SMTP Server (TLS) id 15.1.346.13 via Frontend Transport;
	Thu, 10 Dec 2015 09:49:34 +0000
Received: from neptune.ap.freescale.net (neptune.ap.freescale.net
	[10.192.208.77])
	by tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id
	tBA9nVn0031104; Thu, 10 Dec 2015 02:49:32 -0700
From: <b40527@freescale.com>
To: <yocto@yoctoproject.org>
Date: Thu, 10 Dec 2015 17:49:25 +0800
Message-ID: <1449740965-19599-1-git-send-email-b40527@freescale.com>
X-Mailer: git-send-email 1.8.3.2
X-EOPAttributedMessage: 0
X-Microsoft-Exchange-Diagnostics: 1; BN1BFFO11FD026;
	1:tlPDRCxsNx/nO2rwmU0DqJQrZDoMxSeyeiXinQy2u1XUrxGhrzRwt/6Egve6LTw/j16obzMNCOoXFRmMGmqSxGwhNZoE00yDMkL1Az6SnoBoYxUCKNHp6CY120HdxGr2Laxnv7gwwZ/OpfL/yOs7d3eKi94e61S29t03I/puTFvZOr3+/f6ACoPdkRr/6gOyP144Hg/zh0YrsPiUDIfN+/BtDWq/D4wFWii49L4kwSMObrORGGLorRYuyViX5gcIXnWcpIAEXtqWUMJeEOrXqgiBnNqa50avjh4aEQ+yAmYHLWEMPUP0oOMjpVun0osimgTXu5/7iuECxJWT72AtAzjcaQ/SLLDHkfKyvzYcFI8B1eXrI+3l/9ZWWAPnAd5nV5Mu4f8qLbjaOsAFJJVwxMPgqVn58WU445TnukReAA0=
X-Forefront-Antispam-Report: CIP:192.88.168.50; CTRY:US; IPV:NLI; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(6009001)(2980300002)(448002)(189002)(199003)(5001960100002)(11100500001)(189998001)(107886002)(586003)(5003940100001)(5008740100001)(110136002)(36756003)(19580405001)(77096005)(15975445007)(97736004)(50226001)(1096002)(19580395003)(4001430100002)(92566002)(104016004)(1220700001)(81156007)(6806005)(2351001)(47776003)(229853001)(106466001)(48376002)(87936001)(50466002)(50986999)(575784001)(33646002)(85326001)(86152002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BY2PR0301MB1655;
	H:tx30smr01.am.freescale.net; FPR:; SPF:PermError;
	PTR:InfoDomainNonexistent; MX:1; A:1; LANG:en; 
MIME-Version: 1.0
X-Microsoft-Exchange-Diagnostics: 1; BY2PR0301MB1655;
	2:eOLKrZwUBEqe7gSBD/4uqZ5sDKi6Txq4hPLGlAYTqt/mb0y+1hgx4aicq3xllqO66nqLVLz1z4ui3+Iwgki8/b+6bgbSaSOStVqPJlgH9f/oNGd3LJEllBEna85SXb+7zmpH+krI9Q0Z/FcDVFynUg==;
	3:/nIa7A0KsC8pUcipgsg4igvT9NUg1ei1w6zQfI4DhGwFo9I6t7on1RsfHusgvx2EEbECkFXkMBhc1XsOWLc3CVRVi0ld5gwkZxOzreX0xUCNi8bybcUfRIKf1JGZGvgr1h9yKLSfNNaRN6SZBuYQ6+QjVrsekIZLu+1DgOPT3ngtfkRodzX81MsiesK+SnMES2lGp2xrd2eCR0AYngoncDksqnpPB3eE9Hs3kFOyu+8=;
	25:Kezgu1EGOrQVDTyLAGdT0LVhPib+Ebl9s0/vt7FHnr5dO2EiLvHGA/yPBtaxWiX9xlgVAKM4uJE8p+whBqRXWZX3l643B34eB7r3DF/34zB3pxY2OasGM08M42hP4d+xdXsCXz+hm2kqCN5hgUO8Wd9QnOc6drqOLVopLnZinbQ0czJw60F5S0NcuvdImguZoEuulZKxvIlXOzudxyd5VySFwdOXbfJOf9pbEw8t+VxhYLanSthIhR6R8lhf4MB2pZm+Ik38ZeqtVauq7wbfSw==
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY2PR0301MB1655;
X-Microsoft-Exchange-Diagnostics: 1; BY2PR0301MB1655;
	20:qwhjrOUwPFZJgmXMa8NSNGrIByLrNky7IwRIoTVP5sc+XPxThmIqMCorrtciVgq724aMehz66soK7CBk8bsYjSOtcpcklA64NEnA0YjieZLer0uyMBBzP0fTGOw9scSK2y5tap0k9XT7kB2dIHnfj1hZu/reVcVdo/9lUWzB16OODEVylqaYvEvpIvTphd6l6aRDRTUEOHgAptaJzfwA11hCZnupYotX71dGCZmZBJad+t1ynObgtnMoS9LqdJdgwXvseDNslPn9Ks+IxU4gZIFz5hDZ/XNWtIxmz5Hqt71HnmMa9g9VpSRVO4r2iBXAoXrlLhNast5nIxi0qJoE9qbjLrVqW0OO6x/3ncrhPk4=;
	4:wwQYnyCCuS1tVY/mNFhzgeX2PolF87d4y8HKlzyWpndJEUpOPyDXhjq3wnqmKY0a+F6Y3mEl/FMlGxr9u5xvryI6tdWO63wVWexrLw79U0QHLVALS/Xp+Nq7dY6AWFKvcGR1hwYGoFR09Verdl6OIFHljxBT0JWcfKDf/I1tzneNXFfI60U1Wkqo3ltY6vW10FOKK3Xcwn1XrGUifcCbjtfxp70Pj4xc30m4dIUmyU/yT0VZAab2yl+zYFJeAYjKx2YCNhJBUUsJGQTRKilatSMQt0w5DfhTfD8ML7P1ajPdyOqT2Wr5S44zg7G0k5WS8djgcDqlcs7P+2utm9LMHreLQmqG9kDAzlo6YBDZMytHnbCwqFcCZR2A4sfzAzjW7BXOKfaF41id4G07mPN/9tCFm/Nu0+z0sJYTnpre9FIrAUkJ/9FN7hbreXE5gwDN
X-Microsoft-Antispam-PRVS: <BY2PR0301MB165509023079F779AA12B798F7E90@BY2PR0301MB1655.namprd03.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(101931422205132);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(520078)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:BY2PR0301MB1655; BCL:0; PCL:0; RULEID:;
	SRVR:BY2PR0301MB1655; 
X-Forefront-PRVS: 078693968A
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BY2PR0301MB1655;
	23:d8UO2lKmBpV2wffNz3vyVNoF2rbI4Wrwwl947pS?=
	=?us-ascii?Q?jGCykrEL2MygJN0C7TraUxaMQvJJTTY5L4okKrTy1ojU6heDdYY6txzifgW1?=
	=?us-ascii?Q?QLcyRwrGpX4FvIQyDz2HpcCD4lve+tJ79rOcMjaMhc04+++CLREJLNWdgjNj?=
	=?us-ascii?Q?857orWGhbs0G96PEKTW3CW3/g2ElxZ4FWwts1Qh9a6S78qlB08yNv5hYOMX/?=
	=?us-ascii?Q?3g6ma46W955xk8+8XmiKRFzf5UWyYato8ILr2KS0hmc5RVUDZ7WIAlIFhl2J?=
	=?us-ascii?Q?jaSZujGC0wNxZF91HZtRglpH8x1pVykYl/017QL5VNR+f52Iadx9fL0lLSuc?=
	=?us-ascii?Q?4AnVFeTGwHjWoETS5TFB1UtqjUXYY/Q8LCwQCdOu5AR5hEEPxsxkILEQOXoY?=
	=?us-ascii?Q?Zm+UM8foj7KhySnJdVLmAec1bEwsz/Io7W9ktU5+CbNytQLd5krCPmTro5eS?=
	=?us-ascii?Q?vXRTy/n1D3ey6uSxYkxihJ9qdjYecsvbYnr8w4ibTg7TnNMFzRowIQ37E3Fc?=
	=?us-ascii?Q?zTS6GX7aR8RLAtvnMRrqHQGJO+N/jVW/7WeJoRvWJOKiMiFjRI2Y7BU1wOwB?=
	=?us-ascii?Q?+WK7LGi4DcGp+RPNOWTmiQhE37fzjQcMvEEADQFH3xggM9VOdenYPChaV/jW?=
	=?us-ascii?Q?mHgIyYmgDIbVoSdurI5VbPxbK0g930iLJdvpUrsHUqaweQe419wwLh79nrop?=
	=?us-ascii?Q?jRIz3q6/SeMiZiyBMarGfrzU9B9loj566OqyyIlTp4RuP3ZqZKkh+NW59+Cp?=
	=?us-ascii?Q?O25ddATDAnz0m1wyJ3hXQ9CvwYMHvWcEAiyOb3ktQ2I6K2rWFNcGWqmwsjtw?=
	=?us-ascii?Q?7p1EsEu2PZxXT3QxgeM65xUKat/sOwFMqjcqg8Nh4A8YKAIKw3uv4Bv2tubs?=
	=?us-ascii?Q?uWFH3DJM/GAoy+8+lbSOr6WxjN/xvJKzCiZREJvbXUUG61szsEgcSdQp+2wp?=
	=?us-ascii?Q?w5Yah4UlCyZEabp1MI0mWRj4I0jDdMROIOC0Dy/gZC73HaqkB5HUahksqoA5?=
	=?us-ascii?Q?IsyEXghIqUJmmsXVU5QRHuMBGsLUonNTHTJ3jTDZR08Owyf91Bnjo9nlwbbp?=
	=?us-ascii?Q?7ZE+d1bo=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BY2PR0301MB1655;
	5:GfBeqavkMikTVc0K7sU2kn+essdVmgXVsyBMd+aZOlRiul80TxJsA2B1O6AZbTk/r5pI0s/hqMU5+Kn7QYf31y3tq1y1iPVl9/E2FEXHZdLfbq4WU7DiIMKwP+ZWHE4nU1AK6JHS670EeXuARn4PpA==;
	24:2W+PtdKlXNO/mg/E+l/fd3L97so5VYep+z5TGfb0Z8vXt3ZykILdE37Dmy5a9J31GWbRnBaBhzKT9Rak+ETIqYtil2jgJiNdBHccSMxse2g=;
	23:YqOVqRedtyx2h2C6eLu2ulfaWf3ihRISAEikWycOqyp6uyaq7vGZbOowqqpsim1gS6XdQQiTr/i4ZSwbmuOpUjW/RaiFUP/LSnRSMjVyCitbFVaFO8u5uMB/4hXrUnlM2PVus5qPYTtIYB+3soaRwOH6QHtjaTBz4xSP4vKPhPOl5avaHy8veW9WlUVMNhQ5
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2015 09:49:34.1844 (UTC)
X-MS-Exchange-CrossTenant-Id: 710a03f5-10f6-4d38-9ff4-a80b81da590d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=710a03f5-10f6-4d38-9ff4-a80b81da590d;
	Ip=[192.88.168.50]; Helo=[tx30smr01.am.freescale.net]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR0301MB1655
X-Microsoft-Exchange-Diagnostics: 1; BY2PR0301MB1653;
	2:hSFiby0sFBq46/lx72Bir2gT17HFnCHW+XrghDrD8yJGSiAlOoPJAiEc1oZJmGFehHVl1Lsy+kyPFLjYi7Se49MEaVmO1fjo9B5YqE6xtJNswV/+lWPK2DH8mH68rf7maok6HACZ0dLpzzsKf7XkzQ==;
	23:B6hj6FRAAX41zG2j8cIy86dUy3MRTPZMF/JxBaokN27OiiktDR6JVaet7mrx5+Y7PpCCnny9n30KV70CtMGB4Lt6p/lGCbCkVW9TQlELoMpf/WYp3HNNaa/3AFEdKKdnux47hBjK6QOKe569LNxxdyF3wIYZDFMSzxZB6KnsQ9ajFiPYe+6xHejDnJM4ekU9
X-OriginatorOrg: freescale.com
Cc: Zongchun Yu <Zongchun.Yu@freescale.com>
Subject: [meta-cgl][PATCH] heartbeat: Fix the broken url
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
X-List-Received-Date: Thu, 10 Dec 2015 10:27:41 -0000
Content-Type: text/plain

From: Zongchun Yu <Zongchun.Yu@freescale.com>

Signed-off-by: Zongchun Yu <Zongchun.Yu@freescale.com>
---
 meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
index af03843..7fbed11 100644
--- a/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
+++ b/meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.6.bb
@@ -28,7 +28,7 @@ LIC_FILES_CHKSUM = " \
     file://doc/COPYING.LGPL;md5=d8045f3b8f929c1cb29a1e3fd737b499 \
 "
 SRC_URI = " \
-    http://hg.linux-ha.org/heartbeat-STABLE_3_0/archive/cceeb47a7d8f.tar.bz2 \
+    http://hg.linux-ha.org/heartbeat-STABLE_3_0/archive/958e11be8686.tar.bz2 \
     file://membership-ccm-Makefile.am-fix-warning.patch \
     file://Makefile.am-not-chgrp-in-cross-compile.patch \
     file://configure.in-Error-and-warning-fix.patch \
@@ -36,9 +36,9 @@ SRC_URI = " \
     file://heartbeat-bootstrap-libtool.patch \
     file://heartbeat.service \
 "
-SRC_URI[md5sum] = "3a98cf97842b8a557728be4fb94c8c5d"
-SRC_URI[sha256sum] = "a76ec86cd60428f89536c635a5109cf1e9c7f20283874041a4306960e69952f4"
-S = "${WORKDIR}/Heartbeat-3-0-cceeb47a7d8f/"
+SRC_URI[md5sum] = "101c8f507b1f407468d5ef15ae6719da"
+SRC_URI[sha256sum] = "851d2add2c129fef9fede764fec80229e1f6e7295e0e979950d10258648b462c"
+S = "${WORKDIR}/Heartbeat-3-0-958e11be8686/"
 DEPENDS = "cluster-glue corosync gnutls"
 RDEPENDS_${PN} += "python"
 inherit autotools-brokensep pkgconfig useradd
-- 
1.8.3.2


