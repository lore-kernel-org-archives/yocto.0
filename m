Return-Path: <gshastri@juniper.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F748E0095D; Wed,  1 Apr 2015 05:35:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.101 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bn0101.outbound.protection.outlook.com [157.56.110.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 504FBE00968
	for <yocto@yoctoproject.org>; Wed,  1 Apr 2015 05:35:20 -0700 (PDT)
Received: from BLUPR05CA0071.namprd05.prod.outlook.com (10.141.20.41) by
	BL2PR05MB132.namprd05.prod.outlook.com (10.242.198.27) with Microsoft
	SMTP Server (TLS) id 15.1.118.21; Wed, 1 Apr 2015 12:35:19 +0000
Received: from BN1AFFO11FD048.protection.gbl (2a01:111:f400:7c10::112) by
	BLUPR05CA0071.outlook.office365.com (2a01:111:e400:855::41) with
	Microsoft
	SMTP Server (TLS) id 15.1.125.19 via Frontend Transport; Wed, 1 Apr 2015
	12:35:19 +0000
Authentication-Results: spf=softfail (sender IP is 66.129.239.17)
	smtp.mailfrom=juniper.net; yoctoproject.org;
	dkim=none (message not signed) header.d=none;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
	juniper.net discourages use of 66.129.239.17 as permitted sender)
Received: from P-EMF03-SAC.jnpr.net (66.129.239.17) by
	BN1AFFO11FD048.mail.protection.outlook.com (10.58.53.63) with Microsoft
	SMTP Server (TLS) id 15.1.136.16 via Frontend Transport;
	Wed, 1 Apr 2015 12:35:18 +0000
Received: from magenta.juniper.net (172.17.27.123) by P-EMF03-SAC.jnpr.net
	(172.24.192.21) with Microsoft SMTP Server (TLS) id 14.3.146.0;
	Wed, 1 Apr 2015 05:35:17 -0700
Received: from gshastri-desktop.juniper.net
	(gshastri-desktop.englab.juniper.net [10.92.9.56])	by
	magenta.juniper.net (8.11.3/8.11.3) with ESMTP id t31CZGD21125;
	Wed, 1 Apr 2015 05:35:16 -0700
	(PDT)	(envelope-from gshastri@juniper.net)
From: Gaurang Shastri <gshastri@juniper.net>
To: <yocto@yoctoproject.org>
Date: Wed, 1 Apr 2015 05:38:58 -0700
Message-ID: <1427891938-17616-1-git-send-email-gshastri@juniper.net>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:66.129.239.17; CTRY:US; IPV:NLI; EFV:NLI;
	BMV:1; SFV:NSPM;
	SFS:(10019020)(6009001)(189002)(199003)(86362001)(48376002)(50466002)(15975445007)(62966003)(105596002)(19580395003)(50226001)(110136001)(19580405001)(575784001)(229853001)(47776003)(53416004)(106466001)(46102003)(92566002)(33646002)(77096005)(36756003)(87936001)(77156002)(50986999)(16796002)(2351001)(6806004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BL2PR05MB132;
	H:P-EMF03-SAC.jnpr.net; FPR:; SPF:SoftFail; MLV:sfv; MX:1; A:1;
	LANG:en; 
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BL2PR05MB132;
X-Microsoft-Antispam-PRVS: <BL2PR05MB13295B6C8336E2684D0F2E5D5F30@BL2PR05MB132.namprd05.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(5002010)(5005006); SRVR:BL2PR05MB132; BCL:0;
	PCL:0; RULEID:; SRVR:BL2PR05MB132; 
X-Forefront-PRVS: 053315510E
X-OriginatorOrg: juniper.net
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2015 12:35:18.3758 (UTC)
X-MS-Exchange-CrossTenant-Id: bea78b3c-4cdb-4130-854a-1d193232e5f4
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=bea78b3c-4cdb-4130-854a-1d193232e5f4;
	Ip=[66.129.239.17]; Helo=[P-EMF03-SAC.jnpr.net]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2PR05MB132
Cc: openembedded-core@lists.openembedded.org
Subject: [Add xorriso recipe] Add xorriso tool support
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
X-List-Received-Date: Wed, 01 Apr 2015 12:35:43 -0000
Content-Type: text/plain

xorriso copies file objects from POSIX compliant filesystems into
Rock Ridge enhanced ISO 9660 filesystems and allows session-wise
manipulation of such filesystems.

Signed-off-by: Gaurang Shastri <gshastri@juniper.net>
---
 meta/recipes-support/xorriso/xorriso_1.3.8.bb |   17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 meta/recipes-support/xorriso/xorriso_1.3.8.bb

diff --git a/meta/recipes-support/xorriso/xorriso_1.3.8.bb b/meta/recipes-support/xorriso/xorriso_1.3.8.bb
new file mode 100644
index 0000000..93914b4
--- /dev/null
+++ b/meta/recipes-support/xorriso/xorriso_1.3.8.bb
@@ -0,0 +1,17 @@
+DESCRIPTIONS = "xorriso copies file objects from POSIX compliant filesystems into Rock Ridge enhanced ISO 9660 filesystems and allows session-wise manipulation of such filesystems"
+
+inherit autotools
+
+DEPENDS += "attr zlib"
+
+SRC_URI = "http://www.gnu.org/software/${BPN}/${BPN}-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "a0fc534ef8f9589282a189f0e6cdf952"
+SRC_URI[sha256sum] = "901204634651533f7cbd105eab560534702458258529aac4b2f0fc946992107e"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
+LICENSE = "GPLv3"
+
+EXTRA_OECONF = "--disable-libacl"
+
+BBCLASSEXTEND = "nativesdk"
-- 
1.7.9.5


