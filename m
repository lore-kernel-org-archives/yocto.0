Return-Path: <RGC@hms.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 543A2E00CE5; Wed,  7 Dec 2016 06:55:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.71 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 22545 seconds by postgrey-1.32 at yocto-www;
	Wed, 07 Dec 2016 06:55:04 PST
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0071.outbound.protection.outlook.com [104.47.2.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2D83E0081A
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 06:55:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=hms365.onmicrosoft.com; s=selector1-hms-se;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Kmxz+cTr7ag8ZtRUJzCQrWFyZ4yXRXkC4IYAJOZi5Lo=;
	b=BNUYy7QlYYKD1XSkSjqCa47jef5m9hT/c3Ep/kn/REd7Mz68VfX/mTy73ddsbiqgQClGvy1wse/7sPXi8WHJbt4185hJhpRMXpGEaegtcaQvvZ8fpVEkr8+Z0ArsjqTMnd7yx4gbBqHMnJym1Xd3d/syKLr2H4sW36TBsp9uiLU=
Received: from DB5PR0601MB1992.eurprd06.prod.outlook.com (10.166.12.135) by
	DB5PR0601MB1990.eurprd06.prod.outlook.com (10.166.12.27) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.761.9; Wed, 7 Dec 2016 08:23:57 +0000
Received: from DB5PR0601MB1992.eurprd06.prod.outlook.com ([10.166.12.135]) by
	DB5PR0601MB1992.eurprd06.prod.outlook.com ([10.166.12.135]) with
	mapi id 15.01.0761.017; Wed, 7 Dec 2016 08:23:57 +0000
From: Rafael Gago Castano <RGC@hms.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: libssp_nonshared.a not present in native SDK.
Thread-Index: AQHSUGL4NIxqRMiI1EOprFRfBZV2SA==
Date: Wed, 7 Dec 2016 08:23:57 +0000
Message-ID: <DB5PR0601MB199276F3BD562C88737B1A73C2850@DB5PR0601MB1992.eurprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is ) smtp.mailfrom=RGC@hms.se; 
x-originating-ip: [25.165.200.132]
x-ms-office365-filtering-correlation-id: 959e8c6a-a387-431b-f123-08d41e7a63bb
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:DB5PR0601MB1990; 
x-microsoft-exchange-diagnostics: 1; DB5PR0601MB1990;
	7:yCh63UIEVYhIX/iShxIWbJBMluF5W18ZGCvhW//XcBX2Wvo5hwjRK7dnXO0AzSpXiEwczdsHhEi0n/MzuPLeVvXXfHHzHPee77Po0Ljm4IfhZ697IjZTMEpczL2JjARhhPKmuNMMxF/8a7VNr4NBEt88Ih2hDMuowo8tAwfIv44Z+cry7FVUlQDHOQhpJqloM+AqWftGM5f0auqlMBsO9Ovp/9mZ0h2sE4ZVbrVSSYEKk9mJidvXGeyUmTW22xGHtvUNv6ieiwoYuezWe1jwpVZD6FidbjIWyyN54oVMqvRt7Vf4mtggrkY+HU8ea2Y5NzvSvpkKLPEuKVM2tynwfNnHyTnTm/YATcmhqT3jw2Y4MceTgRiHF/XWdpIJiiWmAQ89ZzwWofEiRDY9X+1ueJ9Hi6mDTkL55ihgHSv3KMtSsTLfrl5rspYyyQjzPBrgvIuz+pvriZiWQNz6ww6Aog==
x-microsoft-antispam-prvs: <DB5PR0601MB199075E9E66F5E2175E9FE3FC2850@DB5PR0601MB1990.eurprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(5213294742642);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123560025)(20161123562025)(20161123564025)(20161123555025)(6072148);
	SRVR:DB5PR0601MB1990; BCL:0; PCL:0; RULEID:;
	SRVR:DB5PR0601MB1990; 
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(189002)(199003)(101416001)(2351001)(105586002)(106356001)(106116001)(66066001)(74482002)(33656002)(76576001)(6506006)(5640700002)(39450400002)(38730400001)(450100001)(107886002)(77096006)(97736004)(122556002)(189998001)(3280700002)(2906002)(8676002)(2501003)(3660700001)(68736007)(9686002)(1730700003)(8936002)(81166006)(81156014)(3846002)(6116002)(102836003)(7696004)(110136003)(5660300001)(6916009)(92566002)(2900100001)(7736002)(305945005)(7846002)(74316002)(86362001)(54356999)(50986999);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB5PR0601MB1990;
	H:DB5PR0601MB1992.eurprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: hms.se does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hms.se
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2016 08:23:57.0664 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5c7c1590-4488-4e42-bc9c-15218f8ac994
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR0601MB1990
X-Mailman-Approved-At: Thu, 08 Dec 2016 07:14:14 -0800
Subject: libssp_nonshared.a not present in native SDK.
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
X-List-Received-Date: Wed, 07 Dec 2016 14:55:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello!

We are using krogoth for generating our images.

Yesterday, when cross-compiling with the SDK (relocatable/non-extensible), =
I noticed that CMake projects weren't generated because the compiler featur=
e detection was failing. CMake enables fstack-protector for each of its pla=
tform tests and hance requires "libssp_nonshared.a" for linking. A quick se=
arch revealed that "libssp_nonshared.a" is actually missing from the SDK.

I found that "libssp_nonshared.a" comes from "gcc-utils.inc". So adding...

IMAGE_INSTALL_append +=3D "libssp"

...fixes (or workarounds) the issue and allows CMake projects to cross-comp=
ile fine.

What I see is that I can't manually add all the libraries present in "gcc-u=
tils.inc" as "IMAGE_INSTALL_append"s. Some of them (e.g libquadmath) fail w=
ith the error:

"Couldn't find anything to satisfy 'libquadmath'"

So I added those that doesn't cause errors by trial and error. This looks w=
rong.

All the statics in "gcc-utils.inc" look to me like they should be on the SD=
K by default, as they are gcc/libc related and in this case (libssp) essent=
ial to use some of the compiler features, so I'm wondering:

If this is a bug in krogoth?
If it isn't a bug, what is the right way to add all these gcc-runtime libs?

Best regards,
Rafa.=

