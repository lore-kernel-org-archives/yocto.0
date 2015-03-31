Return-Path: <gshastri@juniper.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22884E0085D; Tue, 31 Mar 2015 01:28:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.132 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2317 seconds by postgrey-1.32 at yocto-www;
	Tue, 31 Mar 2015 01:28:39 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0132.outbound.protection.outlook.com [157.56.110.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99223E00854
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 01:28:39 -0700 (PDT)
Received: from BY2PR05MB143.namprd05.prod.outlook.com (10.242.39.153) by
	BY2PR05MB584.namprd05.prod.outlook.com (10.141.219.153) with Microsoft
	SMTP Server (TLS) id 15.1.112.19; Tue, 31 Mar 2015 08:28:37 +0000
Received: from BY2PR05CA035.namprd05.prod.outlook.com (10.141.250.25) by
	BY2PR05MB143.namprd05.prod.outlook.com (10.242.39.153) with Microsoft
	SMTP Server (TLS) id 15.1.118.21; Tue, 31 Mar 2015 08:28:36 +0000
Received: from BN1AFFO11FD022.protection.gbl (2a01:111:f400:7c10::162) by
	BY2PR05CA035.outlook.office365.com (2a01:111:e400:2c5f::25) with
	Microsoft SMTP Server (TLS) id 15.1.125.19 via Frontend Transport;
	Tue, 31 Mar 2015 08:28:36 +0000
Received: from P-EMF03-SAC.jnpr.net (66.129.239.17) by
	BN1AFFO11FD022.mail.protection.outlook.com (10.58.52.82) with Microsoft
	SMTP Server (TLS) id 15.1.130.10 via Frontend Transport;
	Tue, 31 Mar 2015 08:28:35 +0000
Received: from magenta.juniper.net (172.17.27.123) by P-EMF03-SAC.jnpr.net
	(172.24.192.21) with Microsoft SMTP Server (TLS) id 14.3.146.0;
	Tue, 31 Mar 2015 01:28:31 -0700
Received: from gshastri-desktop.juniper.net
	(gshastri-desktop.englab.juniper.net [10.92.9.56])	by
	magenta.juniper.net
	(8.11.3/8.11.3) with ESMTP id t2V8SVD27549	for <yocto@yoctoproject.org>;
	Tue,
	31 Mar 2015 01:28:31 -0700 (PDT)	(envelope-from gshastri@juniper.net)
From: Gaurang Shastri <gshastri@juniper.net>
To: <yocto@yoctoproject.org>
Date: Tue, 31 Mar 2015 01:32:10 -0700
Message-ID: <1427790730-7132-1-git-send-email-gshastri@juniper.net>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-EOPAttributedMessage: 0
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
	juniper.net discourages use of 66.129.239.17 as permitted sender)
Authentication-Results: spf=softfail (sender IP is 66.129.239.17)
	smtp.mailfrom=gshastri@juniper.net; yoctoproject.org;
	dkim=none (message not signed) header.d=none;
X-Forefront-Antispam-Report: CIP:66.129.239.17; CTRY:US; IPV:NLI; EFV:NLI;
	BMV:1; SFV:NSPM;
	SFS:(10019020)(6009001)(189002)(199003)(50226001)(87936001)(106466001)(105596002)(47776003)(50986999)(36756003)(33646002)(86362001)(2351001)(92566002)(16796002)(50466002)(229853001)(77156002)(110136001)(62966003)(450100001)(46102003)(6806004)(53416004)(48376002)(15975445007)(19580395003)(77096005)(107886001)(19580405001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BY2PR05MB143;
	H:P-EMF03-SAC.jnpr.net; FPR:; SPF:SoftFail; MLV:sfv; MX:1; A:1;
	LANG:en; 
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:; SRVR:BY2PR05MB143;
	UriScan:; BCL:0; PCL:0; RULEID:; SRVR:BY2PR05MB584; 
X-Microsoft-Antispam-PRVS: <BY2PR05MB143928AA9D503A48C3DDCDFD5F40@BY2PR05MB143.namprd05.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(5002010)(5005006); SRVR:BY2PR05MB143; BCL:0;
	PCL:0; RULEID:; SRVR:BY2PR05MB143; 
X-Forefront-PRVS: 0532BF6DC2
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2015 08:28:35.6682 (UTC)
X-MS-Exchange-CrossTenant-Id: bea78b3c-4cdb-4130-854a-1d193232e5f4
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=bea78b3c-4cdb-4130-854a-1d193232e5f4;
	Ip=[66.129.239.17]; Helo=[P-EMF03-SAC.jnpr.net]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR05MB143
X-OriginatorOrg: juniper.net
Subject: [[Patch2]Makedumpfile] Add makedumpfile
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
X-List-Received-Date: Tue, 31 Mar 2015 08:28:43 -0000
Content-Type: text/plain

PR NO:[https://bugzilla.yoctoproject.org/show_bug.cgi?id=7069]

Signed-off-by: Gaurang Shastri <gshastri@juniper.net>
---
 .../recipes-cgl/makedumpfile/makedumpfile_1.5.0.bb |    3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.0.bb b/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.0.bb
index ce3027e..bd86b64 100644
--- a/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.0.bb
+++ b/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.0.bb
@@ -13,7 +13,6 @@ DEPENDS = "zlib elfutils bzip2"
 EXTRA_OEMAKE = "TARGET=${TARGET_ARCH}"
 
 do_install() {
-	install -d ${D}${bindir}/
-	install -c -m 755 ${S}/makedumpfile ${D}${bindir}/
+	install -Dm 0755 ${S}/makedumpfile ${D}${bindir}/makedumpfile
 }
 
-- 
1.7.9.5


