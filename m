Return-Path: <vincent.daanen@orthotaxy.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3154E009DC; Wed,  4 Apr 2018 02:59:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.103 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0103.outbound.protection.outlook.com [104.47.2.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 406CFE008E4
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2018 02:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=orthotaxy.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=uV/MhHRGfXmi0jbzRPcF4NQ+VoxRfkULOaH0ySSFOVs=;
	b=Rl32EezfUpdt0xMx0UUXGk09TL56A8grG244JsIGxWxh0jaj1OobT30gRiIcTadJCzStOkADTg9IRXtq6zehiUaxhiWA6vH6tz3lYWQR+cgwDT3g6o6b2oYa78fA5vjQFWQlS2fplonKZfbbAiGao3yTj09muVM9+PFdODzgE9s=
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM (10.175.180.135) by
	VI1P192MB0077.EURP192.PROD.OUTLOOK.COM (10.175.179.151) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.653.12; Wed, 4 Apr 2018 09:58:57 +0000
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::d9f:f0dc:1854:63eb]) by VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::d9f:f0dc:1854:63eb%17]) with mapi id 15.20.0631.015;
	Wed, 4 Apr 2018 09:58:57 +0000
From: Vincent Daanen <vincent.daanen@orthotaxy.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] defconfig file (or fragment files) not used
Thread-Index: AdPGsRgiBH7nQ9LET1GPBu0dtVUh0QAttlOAAAAkq7AANHF9AADwNWaQ
Date: Wed, 4 Apr 2018 09:58:56 +0000
Message-ID: <VI1P192MB014383CA38845AA9DDF6F53B8DA40@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
References: <VI1P192MB014309F6A26B68B561F4B3588DA30@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
	<4d479834-e8a6-0f65-e34f-2cbd271192bd@windriver.com>
	<VI1P192MB0143A7A3AA8AB0E0433F0E738DA10@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
	<21f3437f-9256-d24f-d21a-6b4556c75e27@windriver.com>
In-Reply-To: <21f3437f-9256-d24f-d21a-6b4556c75e27@windriver.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=vincent.daanen@orthotaxy.com; 
x-originating-ip: [152.77.102.34]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1P192MB0077;
	7:gwEBx8cxPC6H+bCg5p3EOKuJNrncXZkMpkPZa0KKMM1l2GDbWUlUUv3+VwnFb8ucZr4ZjgYNQ7DN8GiJG2vC894cGWkxDoutgImcDahbzwG/KTxIjY/TBLDvfmVFZmH1MQykOmX0WFG8FjZ6IrpWfCCZf6vee3bz+PBsC4eBfpdRUf42OcIOYX/IWpGEZqZKovAsKPTyCxjQhg/tp/eEupM2CuFWW2ukCh7xp7DkODvp/JGCXV8NMqxzi68jrmds
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 2c7df2c1-f2de-402b-4829-08d59a12ae7a
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4604075)(3008032)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:VI1P192MB0077; 
x-ms-traffictypediagnostic: VI1P192MB0077:
x-microsoft-antispam-prvs: <VI1P192MB0077C4C55AB9EA716E5DA5738DA40@VI1P192MB0077.EURP192.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3231221)(944501327)(52105095)(10201501046)(93006095)(93001095)(3002001)(6041310)(20161123562045)(2016111802025)(20161123560045)(20161123564045)(20161123558120)(6072148)(6043046)(201708071742011);
	SRVR:VI1P192MB0077; BCL:0; PCL:0; RULEID:; SRVR:VI1P192MB0077; 
x-forefront-prvs: 0632519F33
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39380400002)(366004)(376002)(346002)(396003)(39830400003)(189003)(199004)(2501003)(558084003)(486006)(186003)(25786009)(2906002)(102836004)(3660700001)(93886005)(68736007)(5660300001)(229853002)(8676002)(6436002)(110136005)(33656002)(66066001)(86362001)(26005)(106356001)(316002)(7696005)(476003)(99286004)(9686003)(11346002)(76176011)(53936002)(6506007)(478600001)(2900100001)(8936002)(305945005)(105586002)(97736004)(446003)(5250100002)(3846002)(6116002)(6246003)(81166006)(55016002)(81156014)(3280700002)(7736002)(74316002)(14454004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1P192MB0077;
	H:VI1P192MB0143.EURP192.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: orthotaxy.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: lfl8ihW4zscBe3Njo+AWBR60vOMufWkouG9vpb34TwYWe0BlId6kLfhbP93Ya32AeAqEUvlpDprTKcrowztJalYlgd6OPjtezn4WDBFM1GqXQ68/kEfQWDtU6Vjv/2wt9bK/EFPdh3jrj2gHivH413pIXrNSTnoF/GONTWlgdJttiJygQOZzfzCium16//RL0PC6Mam7PwtAOReBjYWT6QKOtrtSSgMjGlx75BfeZLgP8+pCrXlW6q8KJroR0PQFgNfdDVGZt62Yuet0JGWiEHLDcgG0gSRkxckPanqjU2tUgkFWw8t5pR50c0MRJBfb+obGYoYNyHsBnDVAuBq4s4PPT4UrsA3FEVxzO4jGBGZv2gMis/HLJerrJEgwMZZ0pc3Wh4DbvM+X/pDnnG/M2byUnkD7W53Zu4Ats2xlUEU=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: orthotaxy.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c7df2c1-f2de-402b-4829-08d59a12ae7a
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2018 09:58:56.9662 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0c838133-9c42-4d53-8cbc-7a36ef5279a7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB0077
Subject: Re: defconfig file (or fragment files) not used
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
X-List-Received-Date: Wed, 04 Apr 2018 09:59:02 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDAzLzMwLzIwMTgsIEJydWNlIEFzaGZpZWxkIHdyb3RlDQo+DQo+IElzIHRoaXMg
dXNpbmcgbWFzdGVyIG9mIG9lLWNvcmUgPyBJcyB0aGlzIGEgc2V0dXAgdGhhdCBJIGNhbiBjb25m
aWd1cmUgYW5kIGJ1aWxkIGhlcmUgPw0KPiANCj4gSWYgSSBjYW4gZWFzaWx5IHJlcHJvZHVjZSBp
dCwgSSBjYW4gb2ZmZXIgYmV0dGVyIHN1Z2dlc3Rpb25zLg0KDQpJJ20gdXNpbmcgcm9ja28gdmVy
c2lvbg0KRG8geW91IG5lZWQgbW9yZSBpbmZvIHRvIGhlbHAgbWUgPw0KDQpUaGFua3MNCg0KVmlu
Y2VudA0K

