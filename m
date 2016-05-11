Return-Path: <samuli.piippo@qt.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A9A5E00D9E; Wed, 11 May 2016 07:09:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.118 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0118.outbound.protection.outlook.com [157.56.112.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59B03E00D77
	for <yocto@yoctoproject.org>; Wed, 11 May 2016 07:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=qtcompany.onmicrosoft.com; s=selector1-qt-io;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Z2NYJXxlb9f7AVUL0p8tDDaHZp6k5vhzD/iCfacJ3Ms=;
	b=jaVIKK0kQ0NXnyJ8c0YPmYLSEUOW2Q5gx4ZIZabBe6MI2PWVarLOy7Qc5WxjiHuIDeBLmZsGA6A0QUQKz9YCHGHXt0Kj0/ewIh/cO3mT91J4N9ZtdFziqz+vE0/mO1gMgTm9+qNr7zI1UuiT0Au4oeuYtme8gM1snpyb7Cd3Zm0=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=qt.io; 
Received: from piippo.intra.qt.io (192.89.120.53) by
	AM2PR02MB0563.eurprd02.prod.outlook.com (2a01:111:e400:840b::19) with
	Microsoft SMTP Server (TLS) id 15.1.492.11;
	Wed, 11 May 2016 12:38:50 +0000
From: Samuli Piippo <samuli.piippo@qt.io>
To: <yocto@yoctoproject.org>, <richard.purdie@linuxfoundation.org>
Date: Wed, 11 May 2016 15:39:36 +0300
Message-ID: <1462970376-21723-1-git-send-email-samuli.piippo@qt.io>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [192.89.120.53]
X-ClientProxiedBy: DB5PR02CA0019.eurprd02.prod.outlook.com
	(2a01:111:e400:5805::29) To AM2PR02MB0563.eurprd02.prod.outlook.com
	(2a01:111:e400:840b::19)
X-MS-Office365-Filtering-Correlation-Id: 840169d8-d9b5-4269-5143-08d3799934a9
X-Microsoft-Exchange-Diagnostics: 1; AM2PR02MB0563;
	2:HkGRhEvRrGw5ZfvdfIMIFopJ4kQdl/1eoup3o/wtmtFj862pdcYH4qctYo7jnLkJiY+shDQnaIJOrIYak2KRjU0btzxx7icHctFVVVwasNg+kqVRohCN+kUVWPurSLZCk/d0RaEtMXLiuVc/INwl4ty8nw0ICA3O9VSTE0yx/TYDnzoONeggdWoMYjzC97yK;
	3:wr4+oV4grOOtp3eTYQQxxpePjGplNdZoJxt9H3YfzvGHJRm3DiNTPlfeDMWScG3soH0S7qbluhHGK/De+bLx9buIysiftKcS52WgKHYC8aZyghn8b+RbBxV1xN90cImX
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:AM2PR02MB0563;
X-Microsoft-Exchange-Diagnostics: 1; AM2PR02MB0563;
	25:uEinmvMLxE7k9BIyAZyTEkjpiyi1cqZKKyLh1EYcRYk86BoRyQ6MreiRvX4gahu9bnhkTZYRgJ56Q9+EaD5p98C7SdIYlk44vWVR5+hMmTIdt1WpheznXwy+w7RjWe7GCFbopgUW3xm4cgymj5Wup9c4WlQSjUTdPpW2lWGeS4GaPTGq0RA09bOYwq9pSSWwGbjSaaBU/cMEa/2c6hQoaZuDlP8FRy9t61F2KjAYNgFiiEvNWfB8kx2SqkKzafj05AB+RuhiYezyKQx9Qzg8SGxTVM8Y6ggm+vx4U/q4/p9uQr7pkH8DON+gUoySbNyX9Rx93WlvdfrcenzsqqvXDCSjnNqMNMoLgSC2XCntqsgOPj1S/epqGP+Uof9BnEGh3SRY1NcjB4dMHWStryOTXaBegyzqVJHEfGrSJDAJn8Tpbtitkoi6/uNNHeiCQ5eK61qOwbhIgUyo6GgiIT7hS1b9ja1AOowSnIEwxPx/j3eIvhk8/CWMHKjQxCPrjaU8asFVi/Svb80DNiFowAo8+j9T0D4nGPhU+qz9zu+g4y+jtmZKSiHBr9zvwcUdBIS5cT1x9aRd8Sxl9hsl1cQYQp12eNdG0bf+WRR81zeGgqnmnIY+3KnCxSJyTUzzpopBExA+nuqJH0HvAfkCprEpMHEsYtMbXMyQ5WfbqIO8qjsvWlrzLpWBWT2roZG4XOQVwRusqlRVF2twWg5Rq0m+htCBg74uJz96XxvE2jXd4/M=;
	20:rpK0xwwwxHtbxnurxWb2M/Sck6M8Qk2WIamPPUVKAbkn4hCNDUEQJ1xgGtfLRMYGAnOyeXUwU2sYJ1xSwdlPwx8ZpfwzTwtnBvw8r3ldbi9AWMLyZOVpYgvM57quRZYCnIoNjVyDKWy4bbVV5Ibqe8PqjFy7eGP9MnEmZvM0Ro4=
X-Microsoft-Antispam-PRVS: <AM2PR02MB0563DC94F5FCF1A780B2A1D4E9720@AM2PR02MB0563.eurprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040130)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6041072)(6042046)(6043046);
	SRVR:AM2PR02MB0563; BCL:0; PCL:0; RULEID:; SRVR:AM2PR02MB0563; 
X-Microsoft-Exchange-Diagnostics: 1; AM2PR02MB0563;
	4:o4LjaG5otPq9FyrfnIo4KUdABm9TaOsTM4fMmLH8hK0Nu2dEOHOlIATHGhBgQafHNKlHWCeBykh+mNTbWcniMqzOLe6QZ5XEezntOxcWtm7zSZohHloKUKDEGNWKogcuQxaziEU7o23n6tAtYFYjftztF9/ud01JWRMkzUiJzROXXo+5LtNJmLmUT7S+J45A6AIq6V9iz9sk1ztbcNmjPF2jyog5kmcyO689w/ZaIhiN+JvvMmxdX6S6B1mx3ujLgSk14CVCTaA2Ih5juTcYhwPDpVcO81HMYl46BFJbuBRtftfUCq9vkJa17x4UXn9FjWok5VCbQPVc9WeUWYawkP9CZy68KJLv5J/8nQ+qBin3198ALNzUgOJyinq0QPkIZyLo6VAUSazmrvbMB9iVBHMIx8kb5ajQPf6cS5T2q8Ffm3G0j6LgpGnYVt3sFjhg
X-Forefront-PRVS: 0939529DE2
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6009001)(47776003)(15650500001)(66066001)(2906002)(3846002)(6116002)(92566002)(586003)(50986999)(81166006)(19580405001)(19580395003)(5003940100001)(50226002)(86362001)(575784001)(229853001)(50466002)(74482002)(48376002)(42186005)(5008740100001)(33646002)(189998001)(107886002)(5001770100001)(36756003)(5004730100002)(53416004)(21314002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM2PR02MB0563;
	H:piippo.intra.qt.io; FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; AM2PR02MB0563;
	23:ULC+sWo0rXVUh9JnbhaMyIEx2HMBWs4OVpRA7tVLQvHBog2uYyNUuVmYnlrTZt0bkU3CjYJ1zCVrDQ2CAccV3Pv54RBc13b4+QAQkxkQH2fogvTPn45/r3iCfZVHj8E2A2IgIBOBO8dYLCJulfhHk6mO+QYEuaQP/9xjPq3/q+nwI6bRI1EI8V8+ejTT5GcgsX3J/5u6ONKygISKxRTQWcmAWrmtN2Lg3pOJPiPQCPWmY3cgunf4Yp8ejCMi49yUi/K3dTgCbwJ9ZdZYs7RF4intNjVrBFONY3nOXrioPXjaWGGkNfyH7GnP6JesSYXH8Lhq5zpsHM3PmqUJ852Ex/RJr4E7bqB0gRrXVuJ17mAo02zhljxAxltkbd8K6tf+hOIh9QwmgOrayYagfdnLRddg0TowYrUBGs8cesVE20q8ASiIaPmNcy4pKJu5Wg0UiVyqKG7Ndwvyf9hkykpnwDhgLa57cArZM3quBJZiMkCIPeXgKW7o9xk7pl/G3yRmk5xkly3UiWSLWUShqEkMX9aJ8k9+3s3zB5sIo8cVgBDSsvQ/Rhe1l0rSHysKbxjK7H6MyMVhQPNotZGMXKnwGWAYo9NiA7FQkboLH741MYnKX43EmbQa9cCEKuuNMStomnttjs7d3sDmEZkchGGUs8wtAMl6nWEsKy5gwp58qUgFXX4WoRdEOgwpGf8cB/w6UffgW9ORdEmB1IC9KOmetUc5HhxC4wkLtrZixuTchHjONxtCjqJB1Jz2fTnz0HH6qCJ/eHxF5nGA7kCUJfcOJMefsdzo1vArSrJ6vJGIrlAZbqtKLcER7olnCx/3wBcYR2PpOcwJwLA/jzUA0DZcsBIN9xQjUz9/N2v+HQ5pDa4gNb0ke1jFnGH+zmud75njBnp73qCORF+oGb/X2Z18lw==
X-Microsoft-Exchange-Diagnostics: 1; AM2PR02MB0563;
	5:lORoei5NHDJBtmuyR0CGpBtpPwecVfAbnnejC8fjo9XgDw9iwYyKbhGIyGsZ0HsYKJC9/Y0QeuA7njPahLnCoJ8T25PAh3hnZUNLLQO3AmE8pjwmwlPmb4g7uo1Nnoqy8v5Kl3fHZeZAZUCNlYgkPA==;
	24:5CC+eOw6i/a8wrbB4lAWGZ5QoMGj3en4q7Rz5Nf9vSqtqWP9mUVMGBIgtflN6oI4jWJ+Yf9EcR1NjrKFhdKK3PUhcadS5sOb23yo9c/JTN8=;
	7:OV5ekH7u1+s6hqD97n7ZQ4u8XPTgvcUt+IyCdd2xKgQGbj1BpFhu9vRXQfsYBTukpIc7yCMnygCy+tzxyjrGmx41bvCIXTMvc4B9VacTENwVHwsHUJslCXbXdOY4VbxJgsDhIFRekHV2IrZ5tnJ/fqu7ZW+DfhUwFBb3puUTxqjCnx6PMk/2Dul0T5HJfKeJ
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: qt.io
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2016 12:38:50.6403 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM2PR02MB0563
Subject: [meta-mingw][PATCH] mingw64: update headers and runtime files
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
X-List-Received-Date: Wed, 11 May 2016 14:09:52 -0000
Content-Type: text/plain

Update to more recent version that fixes errors with conflicting
declaration of 'xxx' with 'C' linkage coming from intrin.h

Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
---
 ...ingw-w64-headers_3.1.0.bb => nativesdk-mingw-w64-headers_3.3.0.bb} | 4 ++--
 ...ingw-w64-runtime_3.1.0.bb => nativesdk-mingw-w64-runtime_3.3.0.bb} | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-headers_3.1.0.bb => nativesdk-mingw-w64-headers_3.3.0.bb} (80%)
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-runtime_3.1.0.bb => nativesdk-mingw-w64-runtime_3.3.0.bb} (88%)

diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_3.1.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_3.3.0.bb
similarity index 80%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_3.1.0.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_3.3.0.bb
index 06312d6..06e2dd0 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_3.1.0.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_3.3.0.bb
@@ -7,8 +7,8 @@ COMPATIBLE_HOST = ".*-mingw.*"
 SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2 \
            file://epsilon.patch"
 
-SRC_URI[md5sum] = "df0e7657f46cbd59ed9cbe2a50c66e15"
-SRC_URI[sha256sum] = "ece7a7e7e1ab5e25d5ce469f8e4de7223696146fffa71c16e2a9b017d0e017d2"
+SRC_URI[md5sum] = "3c56901ca7be60beba6d58caff168240"
+SRC_URI[sha256sum] = "44764daa65f9adf562b0456e7b681c73c074dc6d1d3ae210f6000af0b641fcef"
 
 S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-headers"
 B = "${WORKDIR}/build-${TARGET_SYS}"
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.1.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.3.0.bb
similarity index 88%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.1.0.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.3.0.bb
index ddffcf4..26f7c03 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.1.0.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.3.0.bb
@@ -5,8 +5,8 @@ LIC_FILES_CHKSUM = "file://../COPYING;md5=bb936f0e04d8f1e19ad545100cee9654"
 COMPATIBLE_HOST = ".*-mingw.*"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2"
-SRC_URI[md5sum] = "df0e7657f46cbd59ed9cbe2a50c66e15"
-SRC_URI[sha256sum] = "ece7a7e7e1ab5e25d5ce469f8e4de7223696146fffa71c16e2a9b017d0e017d2"
+SRC_URI[md5sum] = "3c56901ca7be60beba6d58caff168240"
+SRC_URI[sha256sum] = "44764daa65f9adf562b0456e7b681c73c074dc6d1d3ae210f6000af0b641fcef"
 
 S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-crt"
 B = "${WORKDIR}/build-${TARGET_SYS}"
-- 
1.9.1


