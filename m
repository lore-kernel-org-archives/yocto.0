Return-Path: <prvs=1187de8b3b=alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF16FE00B9E; Fri, 11 Oct 2019 09:12:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [148.163.158.57 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
X-Greylist: delayed 1125 seconds by postgrey-1.32 at yocto-www;
	Fri, 11 Oct 2019 09:12:55 PDT
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com
	[148.163.158.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46383E00B9E
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2019 09:12:55 -0700 (PDT)
Received: from pps.filterd (m0098778.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
	x9BFfuPP004189; Fri, 11 Oct 2019 10:54:05 -0500
Received: from nam01-sn1-obe.outbound.protection.outlook.com
	(mail-sn1nam01lp2059.outbound.protection.outlook.com [104.47.32.59])
	by mx0b-00010702.pphosted.com with ESMTP id 2ver51cusy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Fri, 11 Oct 2019 10:54:04 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=UjWLjbC5ywTc4nFDDpondlZxS0epOnAIUqs40AM7WPYcl59rkWOpbM60dMBx8AkUIkuPQIVJFG5msdwzVPztEzQQsBAJZelOzmqFG+rtMGoTuY/WoEdoLEThEYlSdt6UhRNeVOga+cRlRcMjg44cHDWUCeFcJXo1myKdY9H953WfDRTmDEZwXuukevg/j3j26V5CzmbWFCqeOYj4ExdxOL8v7q7K/Vdm691c0HoUxuUAzaw2BII5xRZhshyRwrAentJw+cHX53dvf8hyfPADjmpSKs0J6XXCc89m6Ya01K9gu1JqzM10ajod5SN2s/9cVqAEY/VFk031JnnkUh3zKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=4fTtGDKGDHs6xY2KE9/u09BHN1+luoEKEukvlCdK8vM=;
	b=AsfsyxA2HHjqDRxF278OjhI2EukpFsaT4crSnlwKu82QuCXQDOx+IWoarZrLQyXshKBZ4KphoGiY5SFO0zqMTTyWl2yNCyXUehyUnFVWQz1OzV9RuLmnWO491GbhZUKpObJwtVWjDfobjkKv7RIvyEZOR/xIaEs8HR6kMmW5u6kye5xUMCeCm0U0oTHhUcPvYFsMm0eD/GcH57zE5LElNDsRY6+rAVewEJvfoZADp5u0PW86+d7CmMCNrNaStx9MCTSod5vvEquTAhvvgm6CMmIm+JvARLIiv+Hz3GrAStls9INmfOYBnL0WBtJvWosnAxE7F64LvMNzmQZgABOEeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com;
	dkim=pass header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=4fTtGDKGDHs6xY2KE9/u09BHN1+luoEKEukvlCdK8vM=;
	b=Hxowsqxdq1QRVERKQtdRg9vsHQp4MRy2h8uRoV9j3FJHsF08eX17AyHtmzBISp3lUiBllZQt/mglwWS3c34mqSd+2QjbOwtFC8lOf/ZSL+x1AYyxiqyqdDipIL/QrAWnkHD7YPUnTdDX4BS1Yb8Lwh4oBBwxnyQf3/2NK3+5LCQ=
Received: from SN6PR04MB4221.namprd04.prod.outlook.com (52.135.71.147) by
	SN6PR04MB5261.namprd04.prod.outlook.com (20.178.7.12) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2347.21; Fri, 11 Oct 2019 15:54:03 +0000
Received: from SN6PR04MB4221.namprd04.prod.outlook.com
	([fe80::8547:97f1:be48:5962]) by
	SN6PR04MB4221.namprd04.prod.outlook.com
	([fe80::8547:97f1:be48:5962%7]) with mapi id 15.20.2327.026;
	Fri, 11 Oct 2019 15:54:03 +0000
From: Alejandro Del Castillo <alejandro.delcastillo@ni.com>
To: "opkg-devel@googlegroups.com" <opkg-devel@googlegroups.com>, Ycn aKaJoseph
	<ycnakajsph@gmail.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Haris Okanovic <haris.okanovic@ni.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Thread-Topic: [EXTERNAL] [opkg-devel] [OE-core][opkg-utils ] Bug 13528 :
	adding SPDX license identifier
Thread-Index: AQHVgDsFCKfrKUwofkGbqLcIGrh9iadVl7qA
Date: Fri, 11 Oct 2019 15:54:02 +0000
Message-ID: <2e40c398-ccf3-ee90-56df-3a2c6d458088@ni.com>
References: <CAC3TgAKRkeRjHDasNM6S_eSeBe82i3VYVWWuwLkUxm4GxTca4Q@mail.gmail.com>
In-Reply-To: <CAC3TgAKRkeRjHDasNM6S_eSeBe82i3VYVWWuwLkUxm4GxTca4Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0701CA0020.namprd07.prod.outlook.com
	(2603:10b6:803:28::30) To SN6PR04MB4221.namprd04.prod.outlook.com
	(2603:10b6:805:30::19)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [130.164.62.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6f8482da-97d9-4f77-bd73-08d74e633cf4
x-ms-traffictypediagnostic: SN6PR04MB5261:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR04MB52613F7021FB1B684C5DD6FD86970@SN6PR04MB5261.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:530;
x-forefront-prvs: 0187F3EA14
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(346002)(39860400002)(376002)(366004)(136003)(199004)(189003)(26005)(66946007)(64756008)(66556008)(71190400001)(66476007)(102836004)(71200400001)(81156014)(36756003)(186003)(2501003)(66446008)(81166006)(5660300002)(316002)(53546011)(110136005)(7736002)(6436002)(305945005)(2906002)(6306002)(478600001)(256004)(6512007)(966005)(14444005)(76176011)(8676002)(229853002)(6506007)(25786009)(386003)(52116002)(6116002)(99286004)(3846002)(6486002)(4744005)(14454004)(6246003)(8936002)(476003)(486006)(11346002)(446003)(2616005)(31686004)(66066001)(86362001)(31696002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5261;
	H:SN6PR04MB4221.namprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HK3IFtaaRHt1Iit2/VtOycvQ96lp2KMrGJpxEQ17IublndGIyOD9Ht3nozbAm3iTtg/YYMNOrmQOAVaFb8lYnrPLeJo5i18PazuOlgZnZpzkznp71EkBP0IPyAItf3f/HWGpJxYdjmPAw4+BdLNyMPgqoleYfB2oSFAIHgirTFDZZTvHdQbfK34qgosBwV2Gxi0D+yfMzOYSpJu8hbKm2MjHWiwDLNpF1Zd9m6BhMx61AqjJoURNTpUf4A4pSZ+EgFcss7in0WrBCUB1+cV3ybccWfGGShT8XhZRTyzPToMa7aJEKDWW2eFF9UCR6M5O/3mPxjAmAtMTD8HNs7Vb08a+SwR4uar2Fpfv799WyXKPUF2QVg5p3CoFaMYnHlFmIe8xWOiEHTHL20aostIhNTh7S5e9h5ayDvZ4NKJWZIUXh9yuI2oKTmaQFmCsjIep4i+EsP7FJ9QxGW9qIUoCTw==
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f8482da-97d9-4f77-bd73-08d74e633cf4
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2019 15:54:03.0144 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7QMH6QL6RZnNvckaOUGy7XVA8yOq9WqvwcvY42FxQDxz/Vkyv5a6Tfxnf3wquk4IZwmnzaECzq9m2apM71Kt1MFISA+Qp5ID4p5qXCUx/Ww=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5261
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
	definitions=2019-10-11_09:2019-10-10,2019-10-11 signatures=0
X-Proofpoint-Spam-Details: rule=inbound_policy_notspam policy=inbound_policy
	score=30
	priorityscore=1501 phishscore=0 adultscore=0 lowpriorityscore=0
	mlxlogscore=999 suspectscore=0 impostorscore=0 clxscore=1011
	malwarescore=0 spamscore=0 mlxscore=0 bulkscore=0 classifier=spam
	adjust=30 reason=mlx scancount=1 engine=8.12.0-1908290000
	definitions=main-1910110144
Subject: Re: [opkg-devel] [OE-core][opkg-utils ] Bug 13528 : adding SPDX license identifier
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
X-List-Received-Date: Fri, 11 Oct 2019 16:12:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <A99D008BFAC60948907E6721013FA9FF@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

DQpPbiAxMC8xMS8xOSA4OjUxIEFNLCBZY24gYUthSm9zZXBoIHdyb3RlOg0KPiBIaSBndXlzLA0K
PiANCj4gaHR0cHM6Ly9idWd6aWxsYS55b2N0b3Byb2plY3Qub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MzUyOCANCj4gPGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL2J1Z3ppbGxhLnlv
Y3RvcHJvamVjdC5vcmcvc2hvd19idWcuY2dpP2lkPTEzNTI4X187IWZxV0pjbmxUa2pNIThSdHNX
SlhiRHpfbDA2M1pTVktyUk13dlE1S0dkRDBsazlhU2psVVc5VkhNMnd1ZklUSm5CdUl2b3ZReG9U
MHlKWHUtNlEkPg0KPiANCj4gSSdtIGFib3V0IHRvIHdvcmsgb24gdGhhdCBidWcgaG93ZXZlciBt
b3N0IG9mIHRoZSBzY3JpcHQgaW4gb3BrZy11dGlscyANCj4gZGlyIGFyZSB1bi1saWNlbmNlZCBh
bmQgdGhlcmUncyBubyBoaW50IGZvciBtZSB0byBkZWNpZGUgd2hhdCBTUERYIA0KPiBJZGVudGlm
aWVyIHRvIGFkZC4NCg0KdGhhbmtzIGZvciBkb2luZyB0aGlzIQ0KDQo+IFRoZSBkb3VidCBjb25j
ZXJucyB0aG9zZSBzY3JpcHQgOg0KPiBtYWtlUGFja2FnZQ0KPiBvcGtnLWJ1aWxkDQo+IG9wa2ct
YnVpbGRwYWNrYWdlDQo+IG9wa2ctY29tcGFyZS1pbmRleGVzDQo+IG9wa2ctZGlmZg0KPiBvcGtn
LWV4dHJhY3QtZmlsZQ0KPiBvcGtnLWdyYXBoLWRlcHMNCj4gb3BrZy1saXN0LWZpZWxkcw0KPiBv
cGtnLW1ha2UtaW5kZXgNCj4gb3BrZy1zaG93LWRlcHMNCj4gb3BrZy11bmJ1aWxkDQo+IG9wa2ct
dXBkYXRlLWluZGV4DQo+IA0KPiBXaGF0IGxpY2Vuc2UgZG8geW91IHdhbnQgdGhlbSB0byBjYXJy
eSA/DQoNCkxvb2tpbmcgYXQgdGhlIGNvbW1pdCBoaXN0b3J5LCBvcGtnLWdyYXBoLWRlcHMgd2Fz
IGF1dGhvcmVkIGJ5IEhhcmlzIA0KT2thbm92aWMsIGFuZCB0aGUgcmVzdCBieSBSaWNoYXJkIFB1
cmRpZSAoaW5jbHVkZWQgdGhlbSBvbiB0aGUgdGhyZWFkKS4NCg0KTXkgdGFrZSBvbiBpdDogIHNp
bmNlIG9wa2cgaXMgbGljZW5zZWQgYXMgR1BMdjIrLCBhbmQgdGhlIGZpbGVzIHRoYXQgDQpoYXZl
IGEgbGljZW5zZSBpbiBvcGtnLXV0aWxzIGFyZSBHUEx2MissIG1ha2Ugc2Vuc2UgdG8gbWUgdG8g
bGljZW5zZSB0aGUgDQpyZXN0IGFzIEdQTHYyKyB0b28uDQoNCkhhcmlzLCBSaWNoYXJkLCB0aG91
Z2h0cz8NCg0KLS0gDQpDaGVlcnMsDQoNCkFsZWphbmRybw0K

