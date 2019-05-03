Return-Path: <hnje@triax.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 097BFE00798; Fri,  3 May 2019 23:04:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.15.133 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 17939 seconds by postgrey-1.32 at yocto-www;
	Fri, 03 May 2019 23:04:49 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-eopbgr150133.outbound.protection.outlook.com [40.107.15.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9804AE0043B
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 23:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=triax.onmicrosoft.com; 
	s=selector1-triax-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=gHVrTcEtfFNmH2w/TV89U7pYgiUiGcdCAX33RdKjTwc=;
	b=LTPspN299btYZez69IdXdwX6s1EgjWIp2slN0XsFxT2Jfex6sQBWQCcGhHOK69EJPVWz+xW2bY6UqmMCok8IhEz58pEAoPTE96UXjc28/EWXWK8OvVev7gWZBRZK8LVgtxeQ2HmybMrLNXTb5xzokIo2CYUwd9svoWg++od56p4=
Received: from AM0PR09MB2626.eurprd09.prod.outlook.com (20.177.110.218) by
	AM0PR09MB2420.eurprd09.prod.outlook.com (20.177.110.86) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1856.11; Fri, 3 May 2019 05:29:19 +0000
Received: from AM0PR09MB2626.eurprd09.prod.outlook.com
	([fe80::390b:e068:bc0b:578c]) by
	AM0PR09MB2626.eurprd09.prod.outlook.com
	([fe80::390b:e068:bc0b:578c%7]) with mapi id 15.20.1856.012;
	Fri, 3 May 2019 05:29:19 +0000
From: "Henrik Nymann Jensen (HNJE)" <hnje@triax.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Yocto concept and support for dual version firmware
	upgrad and boot
Thread-Index: AQHVAXEolBQNMGYxDUi1fPM+/kf/hw==
Date: Fri, 3 May 2019 05:29:19 +0000
Message-ID: <e57f9cc6-35b4-57f1-eebb-d636f4850613@triax.com>
References: <CAA=hcWQwNRM6M=vd82w=EbX2NGGyKcQ9tT-VC00A2a3KoQ_anw@mail.gmail.com>
In-Reply-To: <CAA=hcWQwNRM6M=vd82w=EbX2NGGyKcQ9tT-VC00A2a3KoQ_anw@mail.gmail.com>
Accept-Language: en-150, da-DK, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1P191CA0010.EURP191.PROD.OUTLOOK.COM (2603:10a6:3:cf::20)
	To AM0PR09MB2626.eurprd09.prod.outlook.com
	(2603:10a6:208:e2::26)
authentication-results: spf=none (sender IP is ) smtp.mailfrom=hnje@triax.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [193.106.123.182]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0f21d2ea-790c-4dd2-d94d-08d6cf884a67
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
	SRVR:AM0PR09MB2420; 
x-ms-traffictypediagnostic: AM0PR09MB2420:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR09MB24203BA3C1461B9AA160524ACA350@AM0PR09MB2420.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(346002)(366004)(39850400004)(136003)(376002)(199004)(189003)(6506007)(25786009)(53546011)(386003)(2351001)(5660300002)(486006)(76176011)(2906002)(2501003)(73956011)(102836004)(52116002)(305945005)(86362001)(31696002)(71190400001)(71200400001)(186003)(4744005)(26005)(7736002)(99286004)(64756008)(2616005)(5640700003)(11346002)(446003)(66946007)(6306002)(316002)(6486002)(476003)(14444005)(66066001)(256004)(478600001)(14454004)(6436002)(966005)(36756003)(6246003)(66446008)(229853002)(68736007)(31686004)(6116002)(53936002)(6916009)(8676002)(6512007)(66556008)(66476007)(1730700003)(81156014)(81166006)(8936002)(3846002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR09MB2420;
	H:AM0PR09MB2626.eurprd09.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: triax.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: itD5NNSMWRQ3jRa7BbLkEKQdyBPkemVL5/TGGYSjjTy4AHT3Nu8LE7vSMGkZzBqPCNEN5wT+oyA5OvDakqharAw1l5yZZ3d5Jr+WhiFNZnKGeCRrosxK9+/TDR7A38U0O4CGB2NLb7kEBw+oEG1UaEFH2JBdyaWiCrOg6zbAWnNzRDeTwfvEFBRKYH/OUVqnjb7iLk1oYbTvR6uJE/nyiKuRMWTJ2NhlUO+x14s1GPNEDedUIi80TMVXiG5jnC31e4da0JOFKhmfrLS6Gi0wJqSNC9ootIVIVm8uTgK6iwbgc5ll3N0Z7F96iH+nP4ZtXDyHVYt4HhxB+c9twBGpfJFt6WpJNbYo9T1wYSQEBRhnnUCtSAVAu/IrxHnNLfraa9RCTvjqv1tYSyKxIXUMalHGTqiI82qaKqJLK/OgehI=
MIME-Version: 1.0
X-OriginatorOrg: triax.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f21d2ea-790c-4dd2-d94d-08d6cf884a67
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 05:29:19.2844 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0e4fd38b-2bbd-4850-8e60-c136d92e69d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR09MB2420
Subject: Re: Yocto concept and support for dual version firmware upgrad and boot
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
X-List-Received-Date: Sat, 04 May 2019 06:04:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <9944BDBBB52F0E46AF7A2027BD9E717C@eurprd09.prod.outlook.com>
Content-Transfer-Encoding: base64

T24gMjAxOS0wNS0wMyAwMzo1NSwgSkggd3JvdGU6DQo+IEhpLA0KPg0KPiBBcmUgdGhlcmUgYW55
IFlvY3RvIHJlY2lwZXMgdG8gc3VwcG9ydCBkdWFsIHZlcnNpb24gY29udHJvbCBmb3INCj4gZmly
bXdhcmUgaW1hZ2UgdXBncmFkZSBhbmQgYm9vdD8NCg0KVGhpcyBpcyBub3Qgc29tZXRoaW5nIFlv
Y3RvIGNvbWVzIHdpdGggb3V0IG9mIHRoZSBib3gsIGJ1dCBib3RoIHJhdWMgYW5kIA0Kc3d1cGRh
dGUNCnByb3ZpZGVzIGEgbWV0YSBsYXllciB5b3UgY291bGQgdXNlLg0KDQpodHRwczovL2dpdGh1
Yi5jb20vcmF1Yy9tZXRhLXJhdWMNCmh0dHBzOi8vZ2l0aHViLmNvbS9zYmFiaWMvbWV0YS1zd3Vw
ZGF0ZQ0KDQo+IFRoZSBzY2VuYXJpbyBpcyB0byBtYWtlIDIgcGFydGl0aW9ucywgb25lIHBhcnRp
dGlvbiB0byBpbnN0YWxsIGEgd29yaw0KPiB2ZXJzaW9uIG9mIGltYWdlLCBzYXkgdjEuMCwgYW5v
dGhlciBwYXJ0aXRpb24gdG8gaW5zdGFsbCBhIGRldmVsb3BtZW50DQo+IHZlcnNpb24gb2YgaW1h
Z2UsIHNheSB2MS4xLCB0aGUgYm9vdCBwcm9jZXNzIHNob3VsZCBwaWNrIHVwIHRoZQ0KPiBoaWdo
ZXN0IHRoZSB2ZXJzaW9uIHYxLjEgZmlyc3QsIGlmIGl0IGZhaWxzIHRvIGJvb3QsIGl0IHJldHJl
YXRzIGJhY2sNCj4gdG8gYm9vdCBvbGQgdmVyc2lvbiB2MS4wLg0KPg0KPiBBcHByZWNpYXRlIGFu
eSB0aXBzIG9yIHJlZmVyZW5jZSBmb3IgdGhhdCBpbXBsZW1lbnRhdGlvbiBpbiBZb2N0by4NCj4N
Cj4gVGhhbmsgeW91Lg0KPg0KPiBLaW5kIHJlZ2FyZHMsDQo+DQo+IC0ganVwaXRlcg0K

