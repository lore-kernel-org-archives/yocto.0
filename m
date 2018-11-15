Return-Path: <samuli.piippo@qt.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48E62E00ABE; Thu, 15 Nov 2018 17:21:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.4.135 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
	(mail-eopbgr40135.outbound.protection.outlook.com [40.107.4.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA20AE008D7
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 17:21:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=qtcompany.onmicrosoft.com; s=selector1-qt-io;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Cq9hLcfvfswJHW2u/SM+VhvzX12+6EJj/nRWbpVBa1A=;
	b=l1cb3PmS5XKHAGbzji5ky2/+59+CC527yDIaJvuRXAdUIeTimiXW8SqeabuntYA1TOSbmhnPBwGx4YxdX4uwIQNFm+lPoMlO7r5Ym8fx3Yu02+cEaqfD3SHLQsBwf0RTSPY47z5rEZ6k+d7IQKKqmSO5R6G62iuNBkOGsmgUpp8=
Received: from HE1PR0201MB2265.eurprd02.prod.outlook.com (10.168.145.136) by
	HE1PR0201MB2187.eurprd02.prod.outlook.com (10.168.30.150) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1294.45; Thu, 15 Nov 2018 09:29:00 +0000
Received: from HE1PR0201MB2265.eurprd02.prod.outlook.com
	([fe80::e588:a17c:cfbc:83f9]) by
	HE1PR0201MB2265.eurprd02.prod.outlook.com
	([fe80::e588:a17c:cfbc:83f9%6]) with mapi id 15.20.1294.045;
	Thu, 15 Nov 2018 09:29:00 +0000
From: Samuli Piippo <samuli.piippo@qt.io>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-mingw][PATCH 2/2] cmake: add support for building
	nativesdk-cmake
Thread-Index: AQHUfMWken6OBg9SkkewDdqOLrusFw==
Date: Thu, 15 Nov 2018 09:29:00 +0000
Message-ID: <20181115092658.29152-2-samuli.piippo@qt.io>
References: <20181115092658.29152-1-samuli.piippo@qt.io>
In-Reply-To: <20181115092658.29152-1-samuli.piippo@qt.io>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.89.120.53]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: AM6P192CA0077.EURP192.PROD.OUTLOOK.COM
	(2603:10a6:209:8d::18) To HE1PR0201MB2265.eurprd02.prod.outlook.com
	(2603:10a6:3:7f::8)
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1PR0201MB2187;
	6:IKAHSfWNsZN5E35NldP6pQcQ6U9kC+wfGZP5vvUcMFH+Rq9R8od17IlPu570J50IcRwjlhx4IDlYpoSBbhGOKCV+QcylqhOLCbydZ/MUDhQAVY+nuko66jUk12apNP6pkljofHdFa8hseu///jDaoeOo8XaoPtRn+b73MGyll4RTVDHOzC/QugSWFE/RJoUEl/JlG+NVrPJiwgIAbUCl701Mo/5qYIJAUYMDK3v8iSjV+tq78ss1UzwhDuuwSWB6yjKMFTNpYyX2oLcsg6w79u6ePbAriMae3PXP4mZSzM6Httxzy4cYt3orw0OvtAvpNr4rgPlt2cBQH1Zjzq4riRnUY3V0o7X4b1l5rE743F6tVGGI/3XBe/V06rAbmXbwk82TyWhUGGC9M1oGB2Lc7tmmgTNLXY2Okoc6c8EycP15CJie0GnDKyEqEJ0n6jJNvS/NTBJjvQto5xsKU1wKIw==;
	5:zOjuOzVClsKGutk/qIkiZ3IfofkyTeyXOUDfJlHy7hfZYCd1bnKmiEw8BOkGzwWKghHssmcD3YS4MucU+Vd6Lnjp/q3oaZqFVzSHPPWHlBZaq/Fs2Afasvg6hhcVrKTAVcXyH23jRpbi/ADJxNqblHB1A+GajesDkAwJMI2H5rE=;
	7:JC4IFYFoy9WXyIRtEDCdOYb2EH2Ah9kxP245RrPNj7jFsigZ8aMv8xftdFL2tN46jZPttY/rfdMuxg7x4h/OR2YauPRSfjMDAqyMJQ9/Ou1RBgDM8uSNToVDk+POprTgDlFdAcqp0cm9z17UmA2rAQ==
x-ms-office365-filtering-correlation-id: 669b699a-f426-48bb-b61b-08d64adcc65c
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390098)(7020095)(4652040)(8989299)(5600074)(711020)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:HE1PR0201MB2187; 
X-MS-TrafficTypeDiagnostic: HE1PR0201MB2187:|HE1PR0201MB2187:
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=samuli.piippo@qt.io; 
x-microsoft-antispam-prvs: <HE1PR0201MB21870AA7D1FAF64380C81DE3E9DC0@HE1PR0201MB2187.eurprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(3002001)(3231415)(944501410)(52105112)(93006095)(93001095)(148016)(149066)(150057)(6041310)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123562045)(20161123558120)(201708071742011)(7699051)(76991095);
	SRVR:HE1PR0201MB2187; BCL:0; PCL:0; RULEID:;
	SRVR:HE1PR0201MB2187; 
x-forefront-prvs: 08572BD77F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(376002)(346002)(396003)(136003)(366004)(39850400004)(189003)(199004)(50226002)(25786009)(81156014)(36756003)(6916009)(8676002)(81166006)(5660300001)(1730700003)(4326008)(8936002)(2351001)(2906002)(74482002)(106356001)(105586002)(316002)(6116002)(14454004)(3846002)(66066001)(7736002)(6512007)(2501003)(97736004)(6506007)(305945005)(1076002)(53936002)(68736007)(6486002)(86362001)(186003)(102836004)(2616005)(71200400001)(486006)(44832011)(256004)(52116002)(99286004)(476003)(26005)(76176011)(6436002)(478600001)(11346002)(71190400001)(5640700003)(33896004)(2900100001)(386003)(446003)(1857600001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR0201MB2187;
	H:HE1PR0201MB2265.eurprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: qt.io does not designate permitted
	sender hosts)
x-microsoft-antispam-message-info: 7294EVa3I82qyeeKMW9Bb0ZWkj4uavu78iv/hDLrAbQ3po+UUD6mAc1ZlUO1YeWC9OujEs5mgWdh6jSegXxtU6LWhC8aLTAJk+L3qkhieFbOyYaqtG4n9kIxnjOtN1DqiJ4hwIp0kMV/Pu+cxfCi2A6cRmoi1KL/oz/iAXM0lCvbR5eh8tQ70h6nINOunLC73Mxfx8bBjZbYWJFG4nQlcdFfI9PON+lhTEHU6jwGdWyReBZLvIa0QQ7zlGDEPxDi6hwGoqlGhP1Sh3hfiwRuUjjvWdDL4fGWzYOJM5nhMiQAB/IN4sN0f5mFOt92NKuqw+dXl5ecta77WNOfCaSZKlkUtp2PX/CYZNryeQvY85w=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 669b699a-f426-48bb-b61b-08d64adcc65c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2018 09:29:00.3229 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 20d0b167-794d-448a-9d01-aaeccc1124ac
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0201MB2187
X-Microsoft-Exchange-Diagnostics: 1; HE1PR0201MB2187;
	23:OUXnzmOXaJW3wI6thTQDLpdeaiIhA/RQVCmM6lVMdUdIJZ6TUoPVeaioEs/mrSmFSL+KSs7qpT6tTR5EEfB2ShMBUVmRj+04FCRmyuzZcaxEzoGqjt3Jc4LikNDRRyoMnSb6F6IwXVvQ3t6EjhqEeA==
X-OriginatorOrg: qt.io
Subject: [meta-mingw][PATCH 2/2] cmake: add support for building nativesdk-cmake
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
X-List-Received-Date: Fri, 16 Nov 2018 01:21:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Build nativesdk-cmake and dependency libs without without openssl.

Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
---
 .../nativesdk-packagegroup-sdk-host.bbappend              | 1 +
 recipes-devtools/cmake/cmake_%.bbappend                   | 8 ++++++++
 recipes-extended/libarchive/libarchive_%.bbappend         | 1 +
 recipes-support/curl/curl_%.bbappend                      | 2 ++
 4 files changed, 12 insertions(+)
 create mode 100644 recipes-devtools/cmake/cmake_%.bbappend
 create mode 100644 recipes-extended/libarchive/libarchive_%.bbappend
 create mode 100644 recipes-support/curl/curl_%.bbappend

diff --git a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bba=
ppend b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
index ad69b13..9544ffb 100644
--- a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
+++ b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbappend
@@ -2,4 +2,5 @@ RDEPENDS_${PN}_mingw32 =3D "\
     nativesdk-pkgconfig \
     nativesdk-libtool \
     nativesdk-qemu \
+    nativesdk-cmake \
     "
diff --git a/recipes-devtools/cmake/cmake_%.bbappend b/recipes-devtools/cma=
ke/cmake_%.bbappend
new file mode 100644
index 0000000..f76cd82
--- /dev/null
+++ b/recipes-devtools/cmake/cmake_%.bbappend
@@ -0,0 +1,8 @@
+DEPENDS_remove_mingw32 =3D "ncurses"
+
+cmake_do_generate_toolchain_file_append_mingw32() {
+    cat >> ${WORKDIR}/toolchain.cmake <<EOF
+set( CMAKE_SYSTEM_NAME Windows )
+EOF
+}
+
diff --git a/recipes-extended/libarchive/libarchive_%.bbappend b/recipes-ex=
tended/libarchive/libarchive_%.bbappend
new file mode 100644
index 0000000..a411b40
--- /dev/null
+++ b/recipes-extended/libarchive/libarchive_%.bbappend
@@ -0,0 +1 @@
+EXTRA_OECONF_append_mingw32 =3D " --without-cng"
diff --git a/recipes-support/curl/curl_%.bbappend b/recipes-support/curl/cu=
rl_%.bbappend
new file mode 100644
index 0000000..7865b46
--- /dev/null
+++ b/recipes-support/curl/curl_%.bbappend
@@ -0,0 +1,2 @@
+PACKAGECONFIG_remove_class-nativesdk_mingw32 =3D "ssl"
+RRECOMMENDS_lib${BPN}_remove_mingw32 =3D "ca-certificates"
--=20
2.17.1


