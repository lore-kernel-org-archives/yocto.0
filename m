Return-Path: <samuli.piippo@qt.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C23CE00C72; Thu, 15 Nov 2018 22:54:27 -0800 (PST)
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
X-Greylist: delayed 380 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Nov 2018 22:54:24 PST
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr140131.outbound.protection.outlook.com [40.107.14.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F19FCE00ABE
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 22:54:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=qtcompany.onmicrosoft.com; s=selector1-qt-io;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=qLKzS2PwuG6UAM0xNVx7MO1bu6mUzF2n2nXjumBFr1E=;
	b=iaDdiDdTRewYP2HF65ZgUcHJfaZdycp/KqsDtOlqMJWGeUdXaET+WjuVAWUTd4zJ4+zYKc/5kk3ZxI1C+w1fsmt0xFpF4ZEqYduIUdF93e+DvfrwNrNDy/uECxg6gcKPPZUzktGfyP8hvEe/DIQHQXuBS3pczoZoS+BTTPmfBqs=
Received: from HE1PR0201MB2265.eurprd02.prod.outlook.com (10.168.145.136) by
	HE1PR0201MB2202.eurprd02.prod.outlook.com (10.168.30.153) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1294.26; Thu, 15 Nov 2018 09:21:25 +0000
Received: from HE1PR0201MB2265.eurprd02.prod.outlook.com
	([fe80::e588:a17c:cfbc:83f9]) by
	HE1PR0201MB2265.eurprd02.prod.outlook.com
	([fe80::e588:a17c:cfbc:83f9%6]) with mapi id 15.20.1294.045;
	Thu, 15 Nov 2018 09:21:25 +0000
From: Samuli Piippo <samuli.piippo@qt.io>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-mingw][PATCH] Remove security flags from GCCPIE
Thread-Index: AQHUfMSU2LMIpuGs/EWbHAW6pfGYBQ==
Date: Thu, 15 Nov 2018 09:21:25 +0000
Message-ID: <20181115092110.12009-1-samuli.piippo@qt.io>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.89.120.53]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: AM5P189CA0024.EURP189.PROD.OUTLOOK.COM
	(2603:10a6:206:15::37) To HE1PR0201MB2265.eurprd02.prod.outlook.com
	(2603:10a6:3:7f::8)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=samuli.piippo@qt.io; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1PR0201MB2202;
	6:38rKapGXbhxYV6JbLLlaN5aWVbe52qEHr0tv2JGEfDeANQ3dFt1M0zixvZ07CScjP49a5WCM0eZpQrqSKozyzEtvmc+1qoNmfUdHRe6x8Bct97ShkaL7bprTdI9MYijOWeVU06zBCfJQjJl3nbr/DQHFw3NJSoGt4SPEe8lZ4WLSWZcvmniOyq4nA/8gP10imFg13tgtnKiKAQSIjxngVY7PVzvfGmPj9ezaSIKHSLnk8IPuHOI84XcbDZsjxkBxMGDkUoC2dceep608GzLnoJQKflX+baFO/FJRBLKWKGqYQDcrtpsSROZQ0N+/o5/Rizz9KVa+krxRQ8B/Ln4yY97aRRDC+7OOBkQvsCXkUcuOLbmcuweeQ88aQlSgXLpJ9FMY3RDo4JTYSPh1H+Kf/cQEoGUz5VvCzUTPob3X8tIum+1lUhmek0np7xTG5BDnC0B6EfO9VWo0gftQ/Q1Pzw==;
	5:W8/Yp0RiJMv+o+gLr8SwEjtjWLa5VXmoI8skLg1sCRbmpIxFitr0oBu3spkF8HCLMrJ5G/+2I8XDuUDXBC+jZ7VCTzAqosYpy0WfIp7/IUKeGQ5YorUPqRQ+wcqM5ubTskrBrf4tlZ0qnjg7prT9TZU5i3MXNV5JzmS1fsmkrI4=;
	7:Y6jHHIgffX7+JXML76/0iUi0uGchE5YGdXSGryP13SfC9ssOHbguaiibjJH+StRLXadsR2YqP6WoTMKsNX+wedxvR6Aa6CRF5nGChPRyJF5zxShMIGXLhh9Gwa3WoQJle9yix1k56O2bBUXrzNvRwg==
x-ms-office365-filtering-correlation-id: 41718267-fd84-4196-6973-08d64adbb725
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390098)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:HE1PR0201MB2202; 
X-MS-TrafficTypeDiagnostic: HE1PR0201MB2202:|HE1PR0201MB2202:
x-microsoft-antispam-prvs: <HE1PR0201MB22027F9DEC6FE1D91656A68CE9DC0@HE1PR0201MB2202.eurprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(192374486261705);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3002001)(3231415)(944501410)(52105112)(148016)(149066)(150057)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123558120)(20161123560045)(20161123562045)(201708071742011)(7699051)(76991095);
	SRVR:HE1PR0201MB2202; BCL:0; PCL:0; RULEID:;
	SRVR:HE1PR0201MB2202; 
x-forefront-prvs: 08572BD77F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39850400004)(396003)(346002)(136003)(366004)(376002)(199004)(189003)(105586002)(15650500001)(106356001)(71200400001)(1730700003)(186003)(71190400001)(6916009)(33896004)(2906002)(6436002)(14454004)(478600001)(52116002)(8936002)(8676002)(99286004)(81166006)(6512007)(6486002)(81156014)(53936002)(316002)(2351001)(5660300001)(6506007)(26005)(386003)(1857600001)(2616005)(5640700003)(1076002)(74482002)(102836004)(6116002)(3846002)(4326008)(86362001)(14444005)(256004)(25786009)(44832011)(36756003)(2900100001)(2501003)(486006)(97736004)(68736007)(305945005)(7736002)(66066001)(50226002)(476003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR0201MB2202;
	H:HE1PR0201MB2265.eurprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: qt.io does not designate permitted
	sender hosts)
x-microsoft-antispam-message-info: wcByglHmN6dQYUwZS3bkq8gKtfeXC3NC1dXSsyYNst3VcHr12XDMheANhEjWo+HjdBr9oODHC9/4akikLLtHLGMb6CmBdD9udp++5AwoyelBhDTYZLcFxcoURdeyUmaRdltnN9cUzWi/JhoeszrqUtlGhF/+k7z6LuHtUY6sgLwt+6TXQntocO6BRMCAFX8I8OUplDBukWsohdnjJyLcoxTjGo/W446yRpBp5zjvOmtz6OPdo2yUlABeO5M7xjZUD1LPSwvKJ/ETeKj/HJ/wCUSiZoI3qnoP7q7iJrERerL8dxVyvwWk+6DFXLvTkp+rN/7yoqDCutxPL2SIu+Csk9PRY8kRSMd/TV2T6u3SzOI=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 41718267-fd84-4196-6973-08d64adbb725
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2018 09:21:25.5323 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 20d0b167-794d-448a-9d01-aaeccc1124ac
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0201MB2202
X-Microsoft-Exchange-Diagnostics: 1; HE1PR0201MB2202;
	23:vLOBp6Sp2zOs0NU4xtuaup2/yMaF7iYHSwF5HtIGa2rlPxPkJxNUc/iba4LTmiSk0Jjm6nEVvCricZKK1e4suQWEF8c6xkznDWl54SNlLbqncn7fHkJRaVRPaZMYm1xp44xp1dkT+1XVwEmeOJgsHg==
X-OriginatorOrg: qt.io
Subject: [meta-mingw][PATCH] Remove security flags from GCCPIE
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
X-List-Received-Date: Fri, 16 Nov 2018 06:54:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

GCCPIE defaults to "--enable-default-pie" in security_flags.inc,
which breaks Windows binaries.

Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
---
 conf/machine-sdk/include/mingw32-common.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/conf/machine-sdk/include/mingw32-common.inc b/conf/machine-sdk=
/include/mingw32-common.inc
index 92bd184..cd56380 100644
--- a/conf/machine-sdk/include/mingw32-common.inc
+++ b/conf/machine-sdk/include/mingw32-common.inc
@@ -38,3 +38,6 @@ BB_HASHBASE_WHITELIST_append =3D " WINDRES RC"
=20
 # Needed to override no-static-libs.inc
 DISABLE_STATIC_mingw32 =3D ""
+
+# disable security flags
+GCCPIE_mingw32 =3D ""
--=20
2.17.1


