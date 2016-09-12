Return-Path: <hgujulan@visteon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C34E8E00ACE; Mon, 12 Sep 2016 18:36:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.113 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0113.outbound.protection.outlook.com [104.47.2.113])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51E21E00A6A
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 18:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=visteon.onmicrosoft.com; s=selector1-visteon-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=O5Dd+0HrqTznAl1lLMO5QjP8iR+3UKv3qsjWQq1HGYo=;
	b=tW5hyarcen/ZKfWZCgz93ws3BPycKg7a7/MH2uC3tq07dPjp3hP/9mOrpGlJb9lVLTMSTFy14x3Z7gg1I6sUsE2Kc3HuV61VLZZHia+NAQDpcbt3miU7uyfu3eLVj19F+2KlZOOCTxTHNK30EW2vMGYXWDeS6Ra+fig/nkClgEs=
Received: from DB6PR0601MB2663.eurprd06.prod.outlook.com (10.168.82.16) by
	DB6PR0601MB2663.eurprd06.prod.outlook.com (10.168.82.16) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.609.9; Mon, 12 Sep 2016 14:02:27 +0000
Received: from DB6PR0601MB2663.eurprd06.prod.outlook.com ([10.168.82.16]) by
	DB6PR0601MB2663.eurprd06.prod.outlook.com ([10.168.82.16]) with mapi id
	15.01.0609.018; Mon, 12 Sep 2016 14:02:27 +0000
From: "Gujulan Elango, Hari Prasath (H.)" <hgujulan@visteon.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Modify fetch URL in BBappend file
Thread-Index: AdIM/Ve1Dz1g7Bg3T+Wyh335JqQyZQ==
Date: Mon, 12 Sep 2016 14:02:27 +0000
Message-ID: <DB6PR0601MB26638DB2BE028C31DBEBFB48CFFF0@DB6PR0601MB2663.eurprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=visteon.com;
x-originating-ip: [49.207.185.191]
x-ms-office365-filtering-correlation-id: 060f2b7e-6684-4940-b1c3-08d3db156e02
x-microsoft-exchange-diagnostics: 1; DB6PR0601MB2663;
	6:y9wCrA56kEozsKd2KN/T5zkNWPbi2EbQkuLaGLEePc0Eqa1fmAVrmKD0CPfi3UuKjJ9OCft+9iQy6pXoAVSBVLOuVShrsqclmV72IpP97zpce2Nhww4waogcE1QKVldjJr1wfAuggThs2lb84r9BLfM1gSCwLc9Hd8XXQdqEDbtMacgGDJu34EWfVtZO8w2f5GkVpbx74+dwqJYPGNtmKxLiP0CJfP4V9EF6h5ayBsUxTjWx87s2vie2oUiqJx8VuVbH+xtwnoYEiZQgBTepH1NrJrj3hJJBUKsgBIQzGzQ/Yoeq4P83j+6UhTf0jTguyenjx5E6d69obm8J6oUOcA==;
	5:7ooq5DUNT3Kkp2x+3n/CRqn22LcWF7G6Z6NgOGJ/TSQ3JJrd+cO0QRRMXY+aX4Xtsjey+fY64kVJaoksCdchFWx2iPnzu/5yCye0OwYTD9avIOgDYNejBphXIQxRmJ9aUueWY1NV46VYJNU3Fkw8TQ==;
	24:r0M+3464ffztA/lVeGfEox9OfxDQNMaKshB9Qb2i2CDJ/fXK8/bviMjqmWjd4X0m32goCMjFABVglxbLfv6NOI2g7X21wQvDufuHhkx+9hE=;
	7:tGcHBgbHkqk2M/3aKXBFMoVychZ34Qf3oCWbbIaeIryBb05SMXJqPcApZEfcY0E/FKW/r6dammKdKaK7RiQLjixDG0iuFY4KlHALhflW5vdqdbV7/2nq14W8Qcv/BwHkw7tibNKBc8oHTwy1e7hFkCEcM3uu6bINHEysLijzSPU7v1nJYcQGDi7FmvJ9DAZiOrG7YSC4kR6J3rTW9ycWd4puJrCraZ9CZjVyV8Jyd0eQ4aov1ur6wGxomP64wa/0
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB6PR0601MB2663;
x-microsoft-antispam-prvs: <DB6PR0601MB2663FD38605E76304B4D5263CFFF0@DB6PR0601MB2663.eurprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6055026);
	SRVR:DB6PR0601MB2663; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0601MB2663; 
x-forefront-prvs: 006339698F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(53754006)(76576001)(86362001)(54356999)(6116002)(50986999)(5660300001)(33656002)(3846002)(102836003)(122556002)(2351001)(11100500001)(15975445007)(5640700001)(8936002)(229853001)(2900100001)(77096005)(1730700003)(8676002)(110136002)(586003)(66066001)(3660700001)(9686002)(7736002)(107886002)(4001520100001)(7846002)(305945005)(19580395003)(87936001)(92566002)(189998001)(10400500002)(81166006)(2906002)(74316002)(450100001)(2501003)(3280700002)(5002640100001)(87386001)(7696004)(5001760100003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0601MB2663;
	H:DB6PR0601MB2663.eurprd06.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: visteon.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2016 14:02:27.3836 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a147aaf-01ec-498c-80a1-e34a8c63c548
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0601MB2663
Subject: Modify fetch URL in BBappend file
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
X-List-Received-Date: Tue, 13 Sep 2016 01:36:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All

We are including the meta-ivi layer in our custom distribution. There is a =
package 'dlt-daemon' whose fetch URL got modified upstream in the recipe fi=
le due to some corruption in the repositories. I want to modify this URL in=
 the corresponding bbappend file in my custom BSP layer. I tried specifying=
 the new URL using the SRC_URI+, but when I built the package it ends up wi=
th error as it tries to fetch the URL in the original .bb file and doesn't =
take the fixed URL from the bbappend file.

http://git.yoctoproject.org/cgit/cgit.cgi/meta-ivi/commit/?h=3D10.0&id=3D2a=
aa1d7bdd2f112bb4fa9f5e55f9966f4deb4679

The link above shows the commit that fixed the URL change in upstream which=
 I am trying to bring in my bbappend file. I am not sure if I am missing so=
mething here.

Regards,
Hari Prasath


