Return-Path: <samuli.piippo@qt.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C67EE00CFF; Fri, 10 Nov 2017 15:09:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.117 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 43366 seconds by postgrey-1.32 at yocto-www;
	Fri, 10 Nov 2017 15:09:28 PST
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0117.outbound.protection.outlook.com [104.47.2.117])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D32FDE00CEC
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 15:09:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=qtcompany.onmicrosoft.com; s=selector1-qt-io;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=UNkIr6w7bNFbr8gszY+x0PS87SpOhl6xUqizctidR98=;
	b=efXyv0kr/yP9/lmupeiPTjjgwwOaHoGh2PXEVuxw1PJGG6NBf1vHa+uj76p/8eAhgkn4imskmQoHEffg/nKpdtkZpu0WKul5+Guz/Gr2zDA72RvRwPgwdkqitd1x2KKy4KPjoYUvSANyVvlIhF1wFJz+Cpg79l0IpJOICgxa5gg=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=samuli.piippo@qt.io; 
Received: from piippo.intra.qt (192.89.120.53) by
	DB6PR0202MB2581.eurprd02.prod.outlook.com (2603:10a6:4:1b::15) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.218.12;
	Fri, 10 Nov 2017 09:31:24 +0000
From: Samuli Piippo <samuli.piippo@qt.io>
To: yocto@yoctoproject.org
Date: Fri, 10 Nov 2017 11:30:55 +0200
Message-Id: <1510306255-31149-1-git-send-email-samuli.piippo@qt.io>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [192.89.120.53]
X-ClientProxiedBy: HE1PR0102CA0032.eurprd01.prod.exchangelabs.com
	(2603:10a6:7:14::45) To DB6PR0202MB2581.eurprd02.prod.outlook.com
	(2603:10a6:4:1b::15)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f3896106-b76e-46bd-0426-08d5281dcf80
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(4534020)(4602075)(4627115)(201703031133081)(201702281549075)(2017052603258);
	SRVR:DB6PR0202MB2581; 
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0202MB2581;
	3:0ym97rca064J+OjjKJt0xRYLiZx5xrlRDHSEkQzjm15VkwhiDR0+GmcTwSMlIAQylqrOfky1W+kBbQdr1H0OjI2WIRMmfFTxYNxQLPVMjVj0oQ6RZXnxRn0ZebDqRk8UdSTso4Hfl+txemFIhdkBlQlgB2PZD1FZxPygXPcqKP0QeI1aooWeOyNQ1Nuczv4mgeAnUm4/sKVq7MuwoigGPjOuvKB840HYD9chhOEJ2Yj6HkT2k29V+q059ae3j4Nl;
	25:I4Cf0HqRLhu3SIa+s8mDA9kACiwM1jz9Fw8IbU7/J5CwW9fh/df0MJSbGwhVovGypy0RQWur6I0VrH54KIoZFNQAtTLyKWbg09EmolSGlii5wuOMbziHs1JbbXUfCrTNLl3AbN7X12La6exApZflMuKUkJDci0z850b+BAiTpxUqGBWUu8G0G0czgfOmuFNncd0Dzy+uFH5BHUc+NhvYzGsKqcng37ottzXKMxKPVHsxTcqvhUbXb1iWvrnCNNkjqqIAAnd+nayarmaQtbylIpmD5GeTA+QLjG9kq/zgXKm/ESivKNzTExRPLR8LUvy2uqhgvQ7QbuhNec5EF+Hdfw==;
	31:ObxkSXkRFHBgMbBv4y3GEwVDwVBZ9SLkhAycSUs1DcMwTNWh96WLNaDyG9cvVCsrGWHXjCi9LzE+8wSGYfDXgYopzEyj8cOXlo7cBCOLgKAL/NQOB3ycwihrUC2RmNnBYzRtBKeFEaPsH62O6JLTRzYnsCTm8SkdlegeYWJ7Mf9iGOp1jXcCMu039kkm+xeCYs/HKqBn4p15QTLWvhC/vL2Sl9UbotX3QyT4Fswf7fE=
X-MS-TrafficTypeDiagnostic: DB6PR0202MB2581:
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0202MB2581;
	20:o8ryfDUq0WAPmA3XwdHNFRlRQRVrTezCHjBaKMxUwW6K3VaqkJVczKweU/aWPMJ6uizK6U2a0WxHzEw4hphdju//BCVzr2WyFFk8g5TqGF4vuGKkqviqj+90RtS8wID3yDt2PW0Lam+bebh6azRxhPNYilgq5jfCehyemvHcThezG5295KtU+WSgYyPBX6H/V7snu7RgOtgm2ccYK5NTCMKJuliTISxtfZmPgC+wKldEgKKfItFtMPnrdmu+1Axso3PuFpXDDqMUqSHQpRFpkSZDe8QiXWiLnc531dUZXAOoBf/UuRCiPUqTYzbKXFrAiyedVwuD5POTgxF910pAHm62fhMsYTM9xEmddwzIkiBQnH4adTm8DydYV/4+/owMLd398Sjq3hiFYWVpuKFtsc+Jc1YPg67lBF505L1fuiQdGn+tg/MYcBR+aCjJR8xxyP59ai99YLE7efrD63GrJW23wUwsdlJU6LYSs5lBJv6SREJmNQD8O9hRrVcrgLiL;
	4:RPUIKWrq8GwCasr231RhQuwjT0iPIitM0ZHHRkGTpLvW5Mn8insfEyR9udLHiQ02GJXeTdQezxCxxBetCgIvHHsTlx3vK2RsoE+SL6n7la5AsiiZ5PPOUGVh3enFu23CJX8HSQcsIjskXDzCEu+ksRj9MQ9ImPGVqL88TJT00ddNeZsGLasB360DGUS3VD3/tNJdaURM1bLfP/K4qcpebFdpJckqkcoxheMXtC/tdC8BI3qUDcQJyxwj1cJY1Rk2yvZMgcBF986xeYucARW9jw==
X-Exchange-Antispam-Report-Test: UriScan:;
X-Microsoft-Antispam-PRVS: <DB6PR0202MB258164FC488EBF4735D41EEDE9540@DB6PR0202MB2581.eurprd02.prod.outlook.com>
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(100000703101)(100105400095)(3231021)(10201501046)(6041248)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123564025)(20161123562025)(20161123560025)(20161123555025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:DB6PR0202MB2581; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DB6PR0202MB2581; 
X-Forefront-PRVS: 0487C0DB7E
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6009001)(376002)(346002)(39830400002)(199003)(189002)(8676002)(50466002)(25786009)(33646002)(2361001)(68736007)(69596002)(6512007)(53416004)(101416001)(16526018)(16586007)(189998001)(478600001)(6666003)(81166006)(53936002)(50226002)(8936002)(48376002)(97736004)(6916009)(3846002)(6116002)(316002)(74482002)(5003940100001)(50986999)(66066001)(5660300001)(105586002)(81156014)(305945005)(2351001)(106356001)(6506006)(6486002)(7736002)(47776003)(2906002)(86362001)(575784001)(36756003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0202MB2581;
	H:piippo.intra.qt; FPR:; SPF:None; PTR:InfoNoRecords; A:1; MX:1;
	LANG:en; 
Received-SPF: None (protection.outlook.com: qt.io does not designate permitted
	sender hosts)
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; DB6PR0202MB2581;
	23:ozfIc5Zw+evhfOLzFwBDgq4VukAyQYdaLbjuW4P?=
	=?us-ascii?Q?zvoRwKRrcRZq0G98s9ecNae7BcrLQAEuiYbcuADQBFDHD6qiRqJcg1PoUTPB?=
	=?us-ascii?Q?4dEjuKN8gVjlwZBA+39R9nJ9FNEy/enTdWewfIAzUEUC02Dobfttjdv8V5UK?=
	=?us-ascii?Q?dypkVw0rUnzGCBe3R/d1JnX+5FUZXgrk928b/tdK6mWjM+0NwFpHQ0cT9UPU?=
	=?us-ascii?Q?UT2SRKhgOGMRFP46blEufGMCPj1sd/9jPmc8djvPbGPrmRgmo/Nf+FY9ALEB?=
	=?us-ascii?Q?9h6WKkFNfN+WYPkItvzPr8/R+NMwCR2wKFdowyIDY/7PeFjGhTJTgP3lqFpG?=
	=?us-ascii?Q?ySaTLATDq9dUMAG2LVGgq+N1+T//VIfwA5cADBI2jTuil1/6lpiuuf+iTZhg?=
	=?us-ascii?Q?zdsfYnNS/oZA7knNLh4E2XdMMCw7uYV2QRxFEBIUU1+LcM0ONxb+WV5Zb4S6?=
	=?us-ascii?Q?j8FCugJbi3qCdfkKflwFZy3Nlz7kzw57CaLMZe22ngT2iINMyMeFGjSbk+JJ?=
	=?us-ascii?Q?X1dKRhxpxSTy9gnTute2DgTzYeSwaTEKjSNikv4nb92AAlNxsF3IcqDGcvoX?=
	=?us-ascii?Q?1G68xMv6Ed0RQewUW2TP0aW3nIlNF019tsHCZOdK1PSfwrNAQTwmJg5Kb7wy?=
	=?us-ascii?Q?D8hLtSqYeW5E7b/9civrXfZaMAuZIkb4RahyLIIxxKgpGRIVezDUh3XXU/q7?=
	=?us-ascii?Q?ATrAxPzk8MMg5aXv4TbQ3c3UkP59MsC2/2hzgSqcWtCU74kEqcQSi7GA/GRP?=
	=?us-ascii?Q?Zi49AMF8153cByRETTwQEA7KfNN7UBYcSGjpm8iSucIzoZ3TCurnDSWcv3Bg?=
	=?us-ascii?Q?tBcaWI5PvCqlfNyuKzS6dSa0dQzLuc5fAPj6qNN6FDWk2P151ofhMZaNoyEz?=
	=?us-ascii?Q?T7Uh/P/PnJx1IQPOF06VjjOitubYueD0FnvzDQxZhYt2cmskulmZUwPIW1JD?=
	=?us-ascii?Q?UJE+CRPdY31VJuGjx9TIyL3IJTH6fbkowx1dEEvfg2E7quJsPkmgiISZVOpw?=
	=?us-ascii?Q?G+ifFDa7gzRDlm5hQiH7tZnmxXrwyM/mtIw/uPnqfxrYxUKjKiVhvui3/C01?=
	=?us-ascii?Q?aipspeTUx6GVj3Av4TXUn57N7UJ4coK549TSkIdRv+f1YqO9AIT5VmTYI5G9?=
	=?us-ascii?Q?bq6tZBsQU/QaagLZ11S+JGEIvWHLPK+o/?=
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0202MB2581;
	6:IA6TA9w34uvTankeENsy6aYth3WgpXfkc3WSMuuNXpqzUTkPkNuG6JJbm+ltb4eSBVyWZocXd8Q/e0ZBtlep21Pu3pKkyla1arR40mLiddNu5OBhqAaCMNF0l7wCXgZ5G9EGEZ+9fdtZiROJ4qEPmlv74oIF9j3kS2vHe+xEmkA6NR2Awp63jyKtmCQBDjweH6p12g+YTgDjTuUW/u44yhTrPquEwnCoKqkKhubby0NuH1YdoyhNXdEb1K5zL9X9ROgvA/SyRpL4vKDA0g3pfpPFyUOHbFHXiASKqWlXnBruh2GmfJdCyZLPE6EiJGZUE6V64HK1vIZ0LFcQHnefkxGWBTX9wMwOfvr5KFZouLQ=;
	5:96BwQ/+1le+AcAVzdpPF+hi2KyFpZrlFzhgVuTmOPzP49BZftarOsCEmUEI05PyL6mAP1XclpyPSLshIWaELIb27A2tBXlHy/bolQw1IzzC5GzBdkyaJjzI24jDFNPsmVitwEmPrcyZJ18Iq6vG4KnZwvP6Maqr2gKV7p2eAORY=;
	24:la7C8KAWWtr4jwhFxoCpK/TChPpNYbKgRj0OT2Nb5DdOdu0WkO9+JLtK/CNH92hokiIsClLdXxE2NGbYWnZ2hk/jQVrxW0gfnsOCDk1MWXk=;
	7:IpRVXi47pDWw055gXV1rwL89ugLJJ0hC+qDgL0xA3zMhEycRSwz0mfd6GF3KSjlt0uwsH4Nob7ndRTuILqKlyk28Z2VZDxfJPQEHs0UCR7XV589zYfDZDh9cHNkdmdeYFcaLQ+zKCdRCQYvTGn1tRq7VHiaTcLhm72ETruRIwGWoG43KsT8Bpo1nUcK5teKV6e0ObNNkNzh0ekQTRStIuoTKHupuSsK+Xeu4BgxDtT3yj48VZAmw8ayzGpH4OXvh
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: qt.io
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2017 09:31:24.1197 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f3896106-b76e-46bd-0426-08d5281dcf80
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 20d0b167-794d-448a-9d01-aaeccc1124ac
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0202MB2581
Subject: [meta-mingw][PATCH] mingw64: update to 5.0.3
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
X-List-Received-Date: Fri, 10 Nov 2017 23:09:31 -0000
Content-Type: text/plain

Use the latest mingw64 release to get access to the latest Windows APIs

BUILDSDK_CPPFLAGS were emptied from poky.conf, but are needed for mingw
build to include correct float.h. (error: '_MCW_DN' undeclared here)

Disable shared library for nativesdk-gettext as it fails with
'undefined reference to `xmlFree''

Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
---
 recipes-core/gettext/gettext_0.19.%.bbappend                        | 2 +-
 ...gw-w64-headers_3.1.0.bb => nativesdk-mingw-w64-headers_5.0.3.bb} | 4 ++--
 ...gw-w64-runtime_3.1.0.bb => nativesdk-mingw-w64-runtime_5.0.3.bb} | 6 ++++--
 3 files changed, 7 insertions(+), 5 deletions(-)
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-headers_3.1.0.bb => nativesdk-mingw-w64-headers_5.0.3.bb} (83%)
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-runtime_3.1.0.bb => nativesdk-mingw-w64-runtime_5.0.3.bb} (84%)

diff --git a/recipes-core/gettext/gettext_0.19.%.bbappend b/recipes-core/gettext/gettext_0.19.%.bbappend
index b33970a..95ea030 100644
--- a/recipes-core/gettext/gettext_0.19.%.bbappend
+++ b/recipes-core/gettext/gettext_0.19.%.bbappend
@@ -2,7 +2,7 @@ DEPENDS_append_mingw32 = " pthreads-win32"
 LDFLAGS_prepend_mingw32 = " -lpthread "
 
 CFLAGS_append_mingw32 = " -DLIBXML_STATIC"
-EXTRA_OECONF_append_mingw32 = " --enable-threads=windows --enable-static"
+EXTRA_OECONF_append_mingw32 = " --enable-threads=windows --enable-static --disable-shared"
 
 FILESEXTRAPATHS_prepend_mingw32 := "${THISDIR}/${BPN}:"
 SRC_URI_append_mingw32 = " \
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_3.1.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb
similarity index 83%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_3.1.0.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb
index 5cd4e34..3948392 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_3.1.0.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb
@@ -7,8 +7,8 @@ COMPATIBLE_HOST = ".*-mingw.*"
 SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2 \
            file://epsilon.patch"
 
-SRC_URI[md5sum] = "df0e7657f46cbd59ed9cbe2a50c66e15"
-SRC_URI[sha256sum] = "ece7a7e7e1ab5e25d5ce469f8e4de7223696146fffa71c16e2a9b017d0e017d2"
+SRC_URI[md5sum] = "5524c20312560cc8683b7d8ee292cb8c"
+SRC_URI[sha256sum] = "2a601db99ef579b9be69c775218ad956a24a09d7dabc9ff6c5bd60da9ccc9cb4"
 
 S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-headers"
 B = "${WORKDIR}/build-${TARGET_SYS}"
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.1.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_5.0.3.bb
similarity index 84%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.1.0.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_5.0.3.bb
index c4292ad..29df124 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.1.0.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_5.0.3.bb
@@ -5,14 +5,16 @@ LIC_FILES_CHKSUM = "file://../COPYING;md5=bb936f0e04d8f1e19ad545100cee9654"
 COMPATIBLE_HOST = ".*-mingw.*"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2"
-SRC_URI[md5sum] = "df0e7657f46cbd59ed9cbe2a50c66e15"
-SRC_URI[sha256sum] = "ece7a7e7e1ab5e25d5ce469f8e4de7223696146fffa71c16e2a9b017d0e017d2"
+SRC_URI[md5sum] = "5524c20312560cc8683b7d8ee292cb8c"
+SRC_URI[sha256sum] = "2a601db99ef579b9be69c775218ad956a24a09d7dabc9ff6c5bd60da9ccc9cb4"
 
 S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-crt"
 B = "${WORKDIR}/build-${TARGET_SYS}"
 
 inherit autotools nativesdk
 
+BUILDSDK_CPPFLAGS = "-isystem${STAGING_INCDIR}"
+
 INHIBIT_DEFAULT_DEPS = "1"
 DEPENDS = "nativesdk-mingw-w64-headers virtual/${TARGET_PREFIX}gcc-initial "
 
-- 
2.7.4


