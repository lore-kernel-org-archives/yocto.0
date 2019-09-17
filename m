Return-Path: <josiasinacio@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05C04E00D54; Tue, 17 Sep 2019 01:15:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FORGED_SPF_HELO,
	FREEMAIL_FROM, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (josiasinacio[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust *      [40.92.9.53 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
	(mail-oln040092009053.outbound.protection.outlook.com [40.92.9.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C10AE006B6
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2019 01:15:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=FJ5/cflh6SvZCU2/MqkjlC6uqY8ZlR/y79e3XpXrU7Im5jMDU02S7T5wmayvxUcOxTvdrjg7xvGeK1wai915pRCgbOt7snXcbN1fm8YsxF/f0eCvwEUEDJhRJe4/uhcUkCw5hprwX4W8heqvbnA1io0zdkT2pQxDiuHnfvjtrEOmNT/KmOIMhKM1mNNhPNZvV+FbPppXEx9taIximfI/7BSWnePAJwKKkAzrhL6R5V4/wrPI5NWN4GLHQsozMuUi7Xw6W3j0WtVt+QSfKh9RkIcSGTpI1PXm08ZcYC7GLWlg9qlxE+Ra1GBJ9pWrwV4nXbyK8c4/C/uVH1WCO/K4yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=5ULXj+xUrlHIATY5p1BV4/lc6F34PYui0XgXLl6kD4E=;
	b=dOsKesgxbBzPopdeR16UmchUkkcKFREDP3nQ2p+4nB37yRDBnKqaY/vjDzrYCM5p66cNRm06C76ynYJYOe+OE2mP3Mj2dG2Trd20HdevoOxBB3UqvFuqcy2qMoXAjGR3fUeUDYr6xfIhmi95MeDSb1Ci3XfupzFVpgwmv8ios4JguUYFZ/dDhxGqompseMn/px1YoXZHcnkGwu6XQXCwto/6yhKV1C+VRSfaNy0iF8oAaeA7H1jm7FkuH4rcQBH/qwQRYftsgJJ1KIBv6bw0GiZpLUkT84/psQ40S7DDRpmp/9cT83HCl9TIgFSSrd8NbQ4M6PSGrqgZZ1nRs1XX1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
	dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=5ULXj+xUrlHIATY5p1BV4/lc6F34PYui0XgXLl6kD4E=;
	b=UxPCgAp2+1lT7a9vyX5/BWAeUu6Ppn/BvFwCjegtd0+4jAywa3d1FaDiDnOjvFbVocqcyHb2LGnq1x4vXanAqluKymICz548QEd11mqMjIr7AIGMA8flB/CcKL5wD68WdIwbwVSDRr/q6fWRCPg/I5i/7LPOjp8t+E/QCswNGXWRQq3sqc6EDjWayy+2Uzc8xYKTzLjN+yqGCXm8AKhxIG9ELYXZA5JJed51nB+vlfkuJXIVOxeRZ5jC+DG20sfnhlgfOSOkzbcWJNe7vb82JVl1aiTkQTuxEl166HlLjjLn8RlqKq0DiVmBuhJ4pNuX8P3HyFy4Ylu3isa3nnJ95Q==
Received: from CO1NAM04FT016.eop-NAM04.prod.protection.outlook.com
	(10.152.90.56) by CO1NAM04HT043.eop-NAM04.prod.protection.outlook.com
	(10.152.90.182) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2263.14;
	Tue, 17 Sep 2019 08:15:31 +0000
Received: from SC1PR80MB4558.lamprd80.prod.outlook.com (10.152.90.55) by
	CO1NAM04FT016.mail.protection.outlook.com (10.152.90.168) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2263.14 via Frontend Transport; Tue, 17 Sep 2019 08:15:30 +0000
Received: from SC1PR80MB4558.lamprd80.prod.outlook.com
	([fe80::7172:9b35:5c33:edd4]) by
	SC1PR80MB4558.lamprd80.prod.outlook.com
	([fe80::7172:9b35:5c33:edd4%5]) with mapi id 15.20.2263.023;
	Tue, 17 Sep 2019 08:15:30 +0000
From: Josias Inacio da Silva Filho <josiasinacio@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: devtool modify both target and native recipe
Thread-Index: AQHVbTASKGy52nucckuXs6kgipo/+Q==
Date: Tue, 17 Sep 2019 08:15:30 +0000
Message-ID: <SC1PR80MB4558AF3F33D9C5835EA7B2B2C18F0@SC1PR80MB4558.lamprd80.prod.outlook.com>
Accept-Language: pt-BR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: YQBPR0101CA0023.CANPRD01.PROD.OUTLOOK.COM
	(2603:10b6:c00::36) To SC1PR80MB4558.lamprd80.prod.outlook.com
	(2603:10d6:300:4::23)
x-incomingtopheadermarker: OriginalChecksum:04B1E7642C53E95231F9D1E0A5E90E76D9D67DBC38066761E5BE57BFC85FD4B3;
	UpperCasedChecksum:883B8AF6A1849784BE17BD0F36FE2BE7AD7DFE1498BF76E53B6FC737A78856FB;
	SizeAsReceived:7261; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Apple Mail (2.3445.102.3)
x-tmn: [+JLTOGA4a4ackenPUshp1CcCY/dqhLZq]
x-microsoft-original-message-id: <77CDB71D-996A-459C-9233-135600BCAB9A@hotmail.com>
x-ms-publictraffictype: Email
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
	SRVR:CO1NAM04HT043; 
x-ms-traffictypediagnostic: CO1NAM04HT043:
x-microsoft-antispam-message-info: unYaMHA5PSk1dLCG257h3NkUViIc/mV5eySCoe4Yf+BmngQRfzYkh/mmXJMQdTFb1wTlmTLJ1Ohvhx46vCzY+F5z5FXSVH79hB3KpMvWtA9TRQ7QZDkfeFtJhJjExyjWVI2VMh2TRxTPOYE5Xp2L/R1WNmAdLRNDYNJ64C+bd5k/IMcx7qRogWVJUeTQElpM
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 1db7fce9-3f5d-421e-b529-08d73b47342f
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2019 08:15:30.6579 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM04HT043
Subject: devtool modify both target and native recipe
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
X-List-Received-Date: Tue, 17 Sep 2019 08:15:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <4EA8F64B8196D445B7C970255A118544@lamprd80.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

I have a recipe that supports building both native and target, however I no=
ticed only one can be modified at a time.

If I try doing:
$ devtool modify myrecipe path_x
$ devtool modify myrecipe-native path_x

It complains saying I can only modify one variant at a time.

The way to get around this issue was to go into build/workspace/appends/myr=
ecipe and change this line:

EXTERNALSRC_pn-myrecipe =3D path_x

To this:
EXTERNALSRC =3D path_x

But I wanted to have a proper solution for this. I also saw this comment in=
 the file:
# NOTE: We use pn- overrides here to avoid affecting multiple variants in t=
he case where the recipe uses BBCLASSEXTEND

Is there a way to disable that?


