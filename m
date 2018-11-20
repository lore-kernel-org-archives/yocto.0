Return-Path: <samuli.piippo@qt.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84EF4E00C87; Tue, 20 Nov 2018 12:25:16 -0800 (PST)
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
	*      [40.107.14.131 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr140131.outbound.protection.outlook.com [40.107.14.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04BAFE00C80
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2018 12:25:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=qtcompany.onmicrosoft.com; s=selector1-qt-io;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=vRvnRtfxMsdDW3MMXiFFF0p1MSUZcHE4XyrSR4RAgfo=;
	b=bh+sw9vISMcsAp+AbHJno8a/YW7NDXtjfc4OgBlchDvdtUtTbcWvo+Xj6/Fb+QanV7IZH9Mo7mcq9MczNMabeF1a0JovLuglVWxE3rKlGMfKWxWLwn7oUgUKhUpmEcm+/4K2pGm3mHXhtRFWyvgL+OQXkg9XWtU7OPqepw1x98Y=
Received: from HE1PR0201MB2265.eurprd02.prod.outlook.com (10.168.145.136) by
	HE1PR0201MB2042.eurprd02.prod.outlook.com (10.167.187.148) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1339.26; Tue, 20 Nov 2018 10:51:57 +0000
Received: from HE1PR0201MB2265.eurprd02.prod.outlook.com
	([fe80::e588:a17c:cfbc:83f9]) by
	HE1PR0201MB2265.eurprd02.prod.outlook.com
	([fe80::e588:a17c:cfbc:83f9%8]) with mapi id 15.20.1294.045;
	Tue, 20 Nov 2018 10:51:57 +0000
From: Samuli Piippo <samuli.piippo@qt.io>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-mingw][PATCH v2 2/2] cmake: add support for building
	nativesdk-cmake
Thread-Index: AQHUgL8O+ItFZRgvaEexXqpl8tXWIQ==
Date: Tue, 20 Nov 2018 10:51:57 +0000
Message-ID: <20181120105141.1264-1-samuli.piippo@qt.io>
References: <20181115092658.29152-2-samuli.piippo@qt.io>
In-Reply-To: <20181115092658.29152-2-samuli.piippo@qt.io>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.89.120.53]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: AM6P191CA0070.EURP191.PROD.OUTLOOK.COM
	(2603:10a6:209:7f::47) To HE1PR0201MB2265.eurprd02.prod.outlook.com
	(2603:10a6:3:7f::8)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=samuli.piippo@qt.io; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1PR0201MB2042;
	6:kbRWp9xroBcLKUO/GrPrYb7LnQzVn2BPBk8BwS7en1xKX6FGaE3LLsFVGVn4aaZP+ZQQ3B9wCNdz4xheHMoPGtoD60kjiYpUU2WfoLdqJZKlMpnn2kLkbkeAAvqyMYBi+QR5h+irPfUjoBZLcBV5Ks2+AtUAhG+7cfy9BhorRCwtsdXj6Qe0D1gtevDmW98ZmHZ2KYRWTl+X+/OTWzeBlhdDZg9d2r6qqhn0apHVUYcoMWCsVljTg/hafnLU0k6OeL2++l5QCbee6W3eW8gGOcCUPiRz4jbiQvVRpd6bDf9FngoagM8x2zKxBhSWlx/k5+ObMwEXucFLH/O/rh+n1wvMhAcMjLMxcNR+UAQnFW3CcEo2fDtlEamsKOk/4OmLndBJSRsV9t1CWU4MznXYrw1QOU4ys+vi7KM9tDBvYjBhKOScGIXTz0gfb2siJy3lRTcTlQdk6BrYCkoZ+FoaqQ==;
	5:uuaqW5g9rvEpI9sbz4Nop/rk/CE1Je40qoIoKtvVZ8TW3X9f1dncS88I3bLIefnrY9m6dS3hUD4R7I6Lq8oLhJ3YnTVwESA17hctbrV/KOvUozqOs29C9D4J2jnp16Mm1FVP2AwELn1M8jCVKca/R+VCM8zhfvOH3fetCv12evw=;
	7:cW3RixT3bnJ0wiZjMZn7NCqvl/gDT9drdWeAI9vndRnWKUmisuGGROquu6QnmFKtdXSeu/+sxQXMj3Busecjnnx7qw6SI9u1dc25LtgCvhgQcQ9Ci6+5hmfwIKmVlHOFONeoauREce0BQ7J0Upzn+w==
x-ms-office365-filtering-correlation-id: d20df2ae-492e-4a05-6d31-08d64ed630d8
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390098)(7020095)(4652040)(8989299)(5600074)(711020)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:HE1PR0201MB2042; 
x-ms-traffictypediagnostic: HE1PR0201MB2042:
x-microsoft-antispam-prvs: <HE1PR0201MB2042837604DA988C03090582E9D90@HE1PR0201MB2042.eurprd02.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3231442)(944501410)(52105112)(10201501046)(3002001)(93006095)(93001095)(148016)(149066)(150057)(6041310)(20161123560045)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123562045)(201708071742011)(7699051)(76991095);
	SRVR:HE1PR0201MB2042; BCL:0; PCL:0; RULEID:;
	SRVR:HE1PR0201MB2042; 
x-forefront-prvs: 08626BE3A5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39850400004)(396003)(376002)(346002)(136003)(366004)(199004)(189003)(99286004)(25786009)(6436002)(5640700003)(2501003)(26005)(68736007)(316002)(106356001)(6486002)(97736004)(1857600001)(186003)(478600001)(36756003)(256004)(74482002)(6506007)(386003)(6116002)(71200400001)(44832011)(3846002)(486006)(305945005)(6512007)(71190400001)(7736002)(8936002)(53936002)(33896004)(1076002)(52116002)(50226002)(6916009)(66066001)(76176011)(105586002)(2351001)(14454004)(86362001)(5660300001)(2906002)(8676002)(2900100001)(446003)(2616005)(476003)(81166006)(81156014)(1730700003)(102836004)(11346002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR0201MB2042;
	H:HE1PR0201MB2265.eurprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: qt.io does not designate permitted
	sender hosts)
x-microsoft-antispam-message-info: dFZAdIEy1R7k7lCR+/SrZNV6mpTONfdYIdTLdXixb9uYz0ewhQL0PENqLJcp4/GXlMLRhRa0Ydyo+/L41x5e2OL76yIgEmULdQEPMC8nVSmLMFVZ/0U7CqpqOV12uqiCFYzLZRBByGNDKj7Pjx9PO1vJYCK//7baiSrCVDAQGvGLD/VJBCOUQxYcZXGgXrZY3qw7QaqhwCa3clt6uzNISGaYigJdJqLdpM+Cs5HrZrEUuAqhNKY63dYHtVL/s+dRwjx29HwOOm1HAq0KEZObuwEv2eiPdD8D0g+wBKCLASIs4SG7ZF7HTCtHFQpbXQjxXB+m8wfeocvHTJ2EtxDy8F75K+Gtqpbg+92p2228fQU=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: qt.io
X-MS-Exchange-CrossTenant-Network-Message-Id: d20df2ae-492e-4a05-6d31-08d64ed630d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2018 10:51:57.8239 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 20d0b167-794d-448a-9d01-aaeccc1124ac
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0201MB2042
Subject: [meta-mingw][PATCH v2 2/2] cmake: add support for building nativesdk-cmake
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
X-List-Received-Date: Tue, 20 Nov 2018 20:25:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Build nativesdk-cmake and dependency libs without without openssl.

Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
---
 recipes-devtools/cmake/cmake_%.bbappend           | 7 +++++++
 recipes-extended/libarchive/libarchive_%.bbappend | 1 +
 recipes-support/curl/curl_%.bbappend              | 2 ++
 3 files changed, 10 insertions(+)
 create mode 100644 recipes-devtools/cmake/cmake_%.bbappend
 create mode 100644 recipes-extended/libarchive/libarchive_%.bbappend
 create mode 100644 recipes-support/curl/curl_%.bbappend

diff --git a/recipes-devtools/cmake/cmake_%.bbappend b/recipes-devtools/cma=
ke/cmake_%.bbappend
new file mode 100644
index 0000000..d9d7ceb
--- /dev/null
+++ b/recipes-devtools/cmake/cmake_%.bbappend
@@ -0,0 +1,7 @@
+DEPENDS_remove_mingw32 =3D "ncurses"
+
+cmake_do_generate_toolchain_file_append_mingw32() {
+    cat >> ${WORKDIR}/toolchain.cmake <<EOF
+set( CMAKE_SYSTEM_NAME Windows )
+EOF
+}
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


