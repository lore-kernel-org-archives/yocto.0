Return-Path: <gshastri@juniper.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3864EE0085D; Tue, 31 Mar 2015 01:07:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.129 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2003 seconds by postgrey-1.32 at yocto-www;
	Tue, 31 Mar 2015 01:07:32 PDT
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0129.outbound.protection.outlook.com [207.46.100.129])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAA6FE00854
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 01:07:32 -0700 (PDT)
Received: from BL2PR05CA0045.namprd05.prod.outlook.com (10.255.226.45) by
	BL2PR05MB132.namprd05.prod.outlook.com (10.242.198.27) with Microsoft
	SMTP Server (TLS) id 15.1.118.21; Tue, 31 Mar 2015 07:34:02 +0000
Received: from BL2FFO11FD008.protection.gbl (2a01:111:f400:7c09::172) by
	BL2PR05CA0045.outlook.office365.com (2a01:111:e400:c04::45) with
	Microsoft SMTP Server (TLS) id 15.1.125.19 via Frontend Transport;
	Tue, 31 Mar 2015 07:34:02 +0000
Authentication-Results: spf=softfail (sender IP is 66.129.239.17)
	smtp.mailfrom=juniper.net; yoctoproject.org;
	dkim=none (message not signed) header.d=none;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
	juniper.net discourages use of 66.129.239.17 as permitted sender)
Received: from P-EMF03-SAC.jnpr.net (66.129.239.17) by
	BL2FFO11FD008.mail.protection.outlook.com (10.173.161.4) with Microsoft
	SMTP Server (TLS) id 15.1.136.16 via Frontend Transport;
	Tue, 31 Mar 2015 07:34:02 +0000
Received: from magenta.juniper.net (172.17.27.123) by P-EMF03-SAC.jnpr.net
	(172.24.192.21) with Microsoft SMTP Server (TLS) id 14.3.146.0;
	Tue, 31 Mar 2015 00:34:00 -0700
Received: from gshastri-desktop.juniper.net
	(gshastri-desktop.englab.juniper.net [10.92.9.56])	by
	magenta.juniper.net (8.11.3/8.11.3) with ESMTP id t2V7Y0D00517;
	Tue, 31 Mar 2015 00:34:00 -0700
	(PDT)	(envelope-from gshastri@juniper.net)
From: Gaurang Shastri <gshastri@juniper.net>
To: <yocto@yoctoproject.org>
Date: Tue, 31 Mar 2015 00:37:39 -0700
Message-ID: <1427787459-22162-1-git-send-email-gshastri@juniper.net>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:66.129.239.17; CTRY:US; IPV:NLI; EFV:NLI;
	BMV:1; SFV:NSPM;
	SFS:(10019020)(6009001)(189002)(199003)(19580395003)(86362001)(105596002)(110136001)(77156002)(62966003)(87936001)(15975445007)(50226001)(575784001)(19580405001)(48376002)(50466002)(47776003)(53416004)(229853001)(50986999)(106466001)(46102003)(92566002)(33646002)(77096005)(15395725005)(36756003)(2351001)(6806004)(16796002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BL2PR05MB132;
	H:P-EMF03-SAC.jnpr.net; FPR:; SPF:SoftFail; MLV:sfv; MX:1; A:1;
	LANG:en; 
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BL2PR05MB132;
X-Microsoft-Antispam-PRVS: <BL2PR05MB132480DEBEF5DA6665B6306D5F40@BL2PR05MB132.namprd05.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(5002010)(5005006); SRVR:BL2PR05MB132; BCL:0;
	PCL:0; RULEID:; SRVR:BL2PR05MB132; 
X-Forefront-PRVS: 0532BF6DC2
X-OriginatorOrg: juniper.net
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2015 07:34:02.2241 (UTC)
X-MS-Exchange-CrossTenant-Id: bea78b3c-4cdb-4130-854a-1d193232e5f4
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=bea78b3c-4cdb-4130-854a-1d193232e5f4;
	Ip=[66.129.239.17]; Helo=[P-EMF03-SAC.jnpr.net]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2PR05MB132
Cc: enealinux@lists.enea.com
Subject: [PATCH] Add makedumpfile utility
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
X-List-Received-Date: Tue, 31 Mar 2015 08:07:37 -0000
Content-Type: text/plain

PR No : [https://bugzilla.yoctoproject.org/show_bug.cgi?id=7069]

Signed-off-by: Gaurang Shastri <gshastri@juniper.net>
---
 .../recipes-cgl/makedumpfile/makedumpfile_1.5.0.bb |   19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.0.bb

diff --git a/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.0.bb b/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.0.bb
new file mode 100644
index 0000000..ce3027e
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.0.bb
@@ -0,0 +1,19 @@
+DESCRIPTION = "Make dump file utility"
+LICENSE = "GPLv2"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
+
+SRC_URI = "http://sourceforge.net/projects/makedumpfile/files/makedumpfile/1.5.0/makedumpfile-${PV}.tar.gz;name=makedumpfile"
+
+SRC_URI[makedumpfile.md5sum] = "e22277d77752c71525a79eab148abf55"
+SRC_URI[makedumpfile.sha256sum] = "8a771a22c6ba79dc505e55727f0cfd357ccb3c97defe21cefd5a67b64452fca7"
+
+DEPENDS = "zlib elfutils bzip2"
+
+EXTRA_OEMAKE = "TARGET=${TARGET_ARCH}"
+
+do_install() {
+	install -d ${D}${bindir}/
+	install -c -m 755 ${S}/makedumpfile ${D}${bindir}/
+}
+
-- 
1.7.9.5


