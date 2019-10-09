Return-Path: <aehs29@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EB25E00D75; Tue,  8 Oct 2019 17:40:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.0 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FORGED_SPF_HELO,FREEMAIL_FROM,NML_ADSP_CUSTOM_MED,RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS,SPOOFED_FREEMAIL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (aehs29[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.69.44 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
	*  2.0 SPOOFED_FREEMAIL SPOOFED_FREEMAIL
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
	(mail-eopbgr690044.outbound.protection.outlook.com [40.107.69.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C29DEE00805
	for <yocto@yoctoproject.org>; Tue,  8 Oct 2019 17:40:06 -0700 (PDT)
Received: from BN6PR02CA0104.namprd02.prod.outlook.com (2603:10b6:405:60::45)
	by MN2PR02MB6222.namprd02.prod.outlook.com (2603:10b6:208:186::23)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.24;
	Wed, 9 Oct 2019 00:40:05 +0000
Received: from SN1NAM02FT031.eop-nam02.prod.protection.outlook.com
	(2a01:111:f400:7e44::200) by BN6PR02CA0104.outlook.office365.com
	(2603:10b6:405:60::45) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.25 via
	Frontend Transport; Wed, 9 Oct 2019 00:40:05 +0000
Authentication-Results: spf=softfail (sender IP is 149.199.60.83)
	smtp.mailfrom=gmail.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=fail action=none header.from=gmail.com; 
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
	gmail.com discourages use of 149.199.60.83 as permitted sender)
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
	SN1NAM02FT031.mail.protection.outlook.com (10.152.72.116) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2327.21
	via Frontend Transport; Wed, 9 Oct 2019 00:40:05 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
	by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
	(envelope-from <aehs29@gmail.com>)
	id 1iHzxj-0004SQ-Au; Tue, 08 Oct 2019 17:36:19 -0700
Received: from [127.0.0.1] (helo=xsj-smtp-dlp1.xlnx.xilinx.com)
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <aehs29@gmail.com>)
	id 1iHzxe-0007Zw-7E; Tue, 08 Oct 2019 17:36:14 -0700
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
	by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id
	x990aDBx028690; Tue, 8 Oct 2019 17:36:13 -0700
Received: from [172.19.2.8] (helo=xsjalejandr50.xilinx.com)
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <aehs29@gmail.com>)
	id 1iHzxd-0007ZW-FD; Tue, 08 Oct 2019 17:36:13 -0700
From: Alejandro Enedino Hernandez Samaniego <aehs29@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  8 Oct 2019 17:36:11 -0700
Message-Id: <1570581371-13224-1-git-send-email-aehs29@gmail.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-Result: No--6.858-7.0-31-1
X-imss-scan-details: No--6.858-7.0-31-1;No--6.858-5.0-31-1
X-TM-AS-User-Approved-Sender: No;No
X-TM-AS-Result-Xfilter: Match text exemption rules:No
X-EOPAttributedMessage: 0
X-Matching-Connectors: 132150552053682489;
	(f9e945fa-a09a-4caa-7158-08d2eb1d8c44); ()
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(39860400002)(396003)(346002)(376002)(136003)(189003)(199004)(426003)(2616005)(82202003)(4326008)(5660300002)(6916009)(8936002)(9786002)(305945005)(2906002)(48376002)(107886003)(336012)(50226002)(26005)(55446002)(486006)(16586007)(126002)(476003)(61266001)(36756003)(47776003)(316002)(50466002)(8676002)(70586007)(51416003)(498600001)(86362001)(2351001)(2361001)(76482006)(356004)(70206006)(81156014)(81166006)(73392003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6222; H:xsj-pvapsmtpgw01;
	FPR:; SPF:SoftFail; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1;
	A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0567e722-aabe-4486-6e8f-08d74c513a77
X-MS-TrafficTypeDiagnostic: MN2PR02MB6222:
X-Microsoft-Antispam-PRVS: <MN2PR02MB6222BF470F93900A24AC7117CF950@MN2PR02MB6222.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 018577E36E
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9LUrtIChS3PeMI/9s1cw2GMPxqRD1NQGFIFfflylHCe94/KHVxWPibg9J3iSKDYL/Oox/wPmiGpR3nBO21++HKedXofALpqo9h50lGOBhODlKGlkqJR3zdB/39y6YVArJ53nOdq5oAPeXkFzJcrGVlqMu6qsoivw1bBziBfj37DIBRDziwfTq0eobT+/3cgcVJDRgFJpZN7kEQgkAQltfScpMhcioTv6QAhpRvJwtv7ztz3HOwhIE8Epv4IppjsmNjtx10TgrtlrQAJo3fjhhj601ym7XSjJ20fr/jGmzErqqqlBLBluFIVi1wFvgHxc+yw7xSO0pNdaI6EQddtvLm/o+UjEemN/G22jgLE3IufkP2LxqgBr+/ohlzSnTL/PNuzaZ+5VBlpQPRoWcYhYMMVHRQ2+daXJsd1Pa2wGsv8=
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2019 00:40:05.1350 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0567e722-aabe-4486-6e8f-08d74c513a77
X-MS-Exchange-CrossTenant-Id: 5afe0b00-7697-4969-b663-5eab37d5f47e
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5afe0b00-7697-4969-b663-5eab37d5f47e;
	Ip=[149.199.60.83]; Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6222
X-Mailman-Approved-At: Wed, 09 Oct 2019 03:45:44 -0700
Cc: Alejandro Enedino Hernandez Samaniego <aehs29@gmail.com>
Subject: [PATCH] documentation: Update multiconfig syntax and explanation on BBMULTICONFIG
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
X-List-Received-Date: Wed, 09 Oct 2019 00:40:08 -0000
Content-Type: text/plain

The syntax to use multiconfig builds changed from multiconfig:foo:target
to mc:foo:target.

Clarify that BBMULTICONFIG defines additional configurations along with
the one coming from local.conf.

Fix these changes on both the dev manual and the reference manual.

Signed-off-by: Alejandro Enedino Hernandez Samaniego <aehs29@gmail.com>
---
 .../dev-manual/dev-manual-common-tasks.xml         | 26 ++++++++++++++--------
 documentation/ref-manual/ref-variables.xml         |  4 ++--
 2 files changed, 19 insertions(+), 11 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 165c3aa..f72f81f 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -5420,26 +5420,34 @@
                             <literallayout class='monospaced'>
      BBMULTICONFIG = "x86 arm"
                             </literallayout>
+                          </para>
+
+                          <para>Please note, that a "default" configuration already exists by definition,
+                          this configuration is named: "" (empty string) and is defined by the variables
+                          coming from your local.conf file. So, the previous example actually adds two
+                          additional configurations to your build "arm" and "x86" along with "".
                             </para></listitem>
                         <listitem><para>
                             <emphasis>Launch BitBake</emphasis>:
                             Use the following BitBake command form to launch the
                             multiple configuration build:
                             <literallayout class='monospaced'>
-     $ bitbake [multiconfig:<replaceable>multiconfigname</replaceable>:]<replaceable>target</replaceable> [[[multiconfig:<replaceable>multiconfigname</replaceable>:]<replaceable>target</replaceable>] ... ]
+     $ bitbake [mc:<replaceable>multiconfigname</replaceable>:]<replaceable>target</replaceable> [[[mc:<replaceable>multiconfigname</replaceable>:]<replaceable>target</replaceable>] ... ]
                             </literallayout>
                             For the example in this section, the following
                             command applies:
                             <literallayout class='monospaced'>
-     $ bitbake multiconfig:x86:core-image-minimal multiconfig:arm:core-image-sato
+     $ bitbake mc:x86:core-image-minimal mc:arm:core-image-sato mc::core-image-base
                             </literallayout>
                             The previous BitBake command builds a
                             <filename>core-image-minimal</filename> image that
                             is configured through the
-                            <filename>x86.conf</filename> configuration file
-                            and builds a <filename>core-image-sato</filename>
+                            <filename>x86.conf</filename> configuration file,
+                            a <filename>core-image-sato</filename>
                             image that is configured through the
-                            <filename>arm.conf</filename> configuration file.
+                            <filename>arm.conf</filename> configuration file and a
+                            <filename>core-image-base</filename> that is configured
+                            through your <filename>local.conf</filename> configuration file.
                             </para></listitem>
                     </itemizedlist>
                     <note>
@@ -5479,7 +5487,7 @@
                     build, you must declare the dependencies in the recipe
                     using the following statement form:
                     <literallayout class='monospaced'>
-     <replaceable>task_or_package</replaceable>[mcdepends] = "multiconfig:<replaceable>from_multiconfig</replaceable>:<replaceable>to_multiconfig</replaceable>:<replaceable>recipe_name</replaceable>:<replaceable>task_on_which_to_depend</replaceable>"
+     <replaceable>task_or_package</replaceable>[mcdepends] = "mc:<replaceable>from_multiconfig</replaceable>:<replaceable>to_multiconfig</replaceable>:<replaceable>recipe_name</replaceable>:<replaceable>task_on_which_to_depend</replaceable>"
                     </literallayout>
                     To better show how to use this statement, consider the
                     example scenario from the first paragraph of this section.
@@ -5487,7 +5495,7 @@
                     that builds the <filename>core-image-sato</filename>
                     image:
                     <literallayout class='monospaced'>
-     do_image[mcdepends] = "multiconfig:x86:arm:core-image-minimal:do_rootfs"
+     do_image[mcdepends] = "mc:x86:arm:core-image-minimal:do_rootfs"
                     </literallayout>
                     In this example, the
                     <replaceable>from_multiconfig</replaceable> is "x86".
@@ -5502,7 +5510,7 @@
                    Once you set up this dependency, you can build the
                    "x86" multiconfig using a BitBake command as follows:
                    <literallayout class='monospaced'>
-     $ bitbake multiconfig:x86:core-image-sato
+     $ bitbake mc:x86:core-image-sato
                    </literallayout>
                    This command executes all the tasks needed to create
                    the <filename>core-image-sato</filename> image for the
@@ -5518,7 +5526,7 @@
                    Consider this change to the statement in the
                    <filename>core-image-sato</filename> recipe:
                    <literallayout class='monospaced'>
-     do_image[mcdepends] = "multiconfig:x86:arm:core-image-minimal:do_image"
+     do_image[mcdepends] = "mc:x86:arm:core-image-minimal:do_image"
                    </literallayout>
                    In this case, BitBake must create the
                    <filename>core-image-minimal</filename> image for the
diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 93b7588..8ad3f9b 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -1344,12 +1344,12 @@
 
         <glossentry id='var-BBMULTICONFIG'><glossterm>BBMULTICONFIG</glossterm>
             <info>
-                BBMULTICONFIG[doc] = "Specifies each separate configuration when you are building targets with multiple configurations."
+                BBMULTICONFIG[doc] = "Specifies each additional separate configuration when you are building targets with multiple configurations."
             </info>
             <glossdef>
                 <para role="glossdeffirst">
 <!--                <para role="glossdeffirst"><imagedata fileref="figures/define-generic.png" /> -->
-                    Specifies each separate configuration when you are
+                    Specifies each additional separate configuration when you are
                     building targets with multiple configurations.
                     Use this variable in your
                     <filename>conf/local.conf</filename> configuration file.
-- 
2.7.4


