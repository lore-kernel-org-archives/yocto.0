Return-Path: <peter.t.smith@ge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C746E00C6A; Fri,  7 Jun 2019 03:21:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [67.231.149.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx0a-00176a03.pphosted.com (mx0a-00176a03.pphosted.com
	[67.231.149.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71371E009EA
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2019 03:21:43 -0700 (PDT)
Received: from pps.filterd (m0047961.ppops.net [127.0.0.1])
	by m0047961.ppops.net-00176a03. (8.16.0.27/8.16.0.27) with SMTP id
	x57AJEvo019736
	for <yocto@yoctoproject.org>; Fri, 7 Jun 2019 06:21:43 -0400
From: "Smith, Peter1 (GE Renewable Energy)" <peter.t.smith@ge.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: EXT: Re: [yocto] [meta-security] AppArmor 2.11 no longer
	available on Ubuntu archive (sumo branch)
Thread-Index: AdUdBZcvoxt64H99T6emAmBmOpbYvgAE4yqAAABkTKA=
Date: Fri, 7 Jun 2019 10:21:29 +0000
Message-ID: <VI1P101MB0157F2FD088EDE4070F7892DDE100@VI1P101MB0157.NAMP101.PROD.OUTLOOK.COM>
References: <VI1P101MB01576372CF3A49D74933DBC3DE100@VI1P101MB0157.NAMP101.PROD.OUTLOOK.COM>
	<CAJTo0LY4BHK4zSLZCyaH_0nwG9MPcmgFaTbkOuWXZ6+NGN2AJA@mail.gmail.com>
In-Reply-To: <CAJTo0LY4BHK4zSLZCyaH_0nwG9MPcmgFaTbkOuWXZ6+NGN2AJA@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcMjEyNTM0Njc0XGFwcGRhdGFccm9hbWluZ1wwOWQ4NDliNi0zMmQzLTRhNDAtODVlZS02Yjg0YmEyOWUzNWJcbXNnc1xtc2ctMDIzNDRiYWEtODkwZS0xMWU5LTgzYTktYTA4Y2ZkZTBhNDQ1XGFtZS10ZXN0XDAyMzQ0YmFjLTg5MGUtMTFlOS04M2E5LWEwOGNmZGUwYTQ0NWJvZHkudHh0IiBzej0iMTU3OSIgdD0iMTMyMDQzNzY0ODgxNDMwMTkyIiBoPSJBUWQ4SXBKTy9heCt1ZytacDVNKzhqMHdHd1k9IiBpZD0iIiBibD0iMCIgYm89IjEiLz48L21ldGE+
x-dg-rorf: 
x-originating-ip: [205.173.90.140]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d9c2f4bd-0b2e-4725-aa9a-08d6eb31e7fd
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:VI1P101MB0208; 
x-ms-traffictypediagnostic: VI1P101MB0208:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <VI1P101MB0208B4D0D84E043A14B41138DE100@VI1P101MB0208.NAMP101.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(366004)(136003)(346002)(39860400002)(376002)(13464003)(189003)(199004)(5660300002)(76176011)(7696005)(71200400001)(229853002)(486006)(25786009)(71190400001)(446003)(11346002)(7110500001)(53936002)(8676002)(53546011)(316002)(9686003)(6436002)(6306002)(14454004)(15650500001)(14444005)(81156014)(99286004)(6506007)(55016002)(256004)(81166006)(2420400007)(66066001)(3846002)(66446008)(6116002)(76116006)(52536014)(86362001)(186003)(68736007)(66476007)(66946007)(478600001)(66556008)(64756008)(102836004)(73956011)(74316002)(7736002)(6246003)(26005)(476003)(4326008)(6916009)(966005)(2906002)(33656002)(8936002)(305945005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1P101MB0208;
	H:VI1P101MB0157.NAMP101.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ge.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: eQEkWznF8Iuh2iWHf7vOKuJUd6HqPDWf/qghijN2npIx2jLMLCvtKwkvcZHDfKaBZyBpkoXxgcIQW96epi1kjuyeJgVSUCggCloBoaP8jqWsB/u5q83lI/+HsfWDE7uHsgSo+h0R9JxnIDGMoI+btBU9N++1KckqOL/ut+kZa6vyaejM54GJFTdCYnW0OVIJU1N8HCxXj3uEVJHLmPZFlzJf4oNipiO965GDdHugPdwM8drnLIT/ci6Y1gAz9f2jHi31Kl8L2n67uo9A8D8vkBvutl2XYRc6N0aKzzEyzROnVBQVYz3vzJenwuPReetrukGvDNIpPeGpkFrr3W7r0hWXZVtoTb/wMsUQtS8CT+RlyqZX37hOczgG5KoSpwZjTLKpV4YBWubxlO7wx6xSmwaap4NwyRtu/f1VZo/sOkc=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d9c2f4bd-0b2e-4725-aa9a-08d6eb31e7fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 10:21:29.6739 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 15ccb6d1-d335-4996-b6f9-7b6925f08121
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 212534674@ge.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P101MB0208
X-OriginatorOrg: ge.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-06-07_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
	priorityscore=1501 malwarescore=0
	suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
	lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999
	adultscore=0
	classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
	definitions=main-1906070074
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: EXT: Re: [meta-security] AppArmor 2.11 no longer available on Ubuntu archive (sumo branch)
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
X-List-Received-Date: Fri, 07 Jun 2019 10:21:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TWFueSB0aGFua3MsIHNpdHVhdGlvbiB1bmRlcnN0b29kLg0KDQpQZXRlciBTbWl0aA0KDQpTZW5p
b3IgRW1lcmdpbmcgVGVjaG5vbG9naWVzIEVuZ2luZWVyDQpHcmlkIFNvbHV0aW9ucw0KR0UgUmVu
ZXdhYmxlIEVuZXJneQ0KDQotTk9OIFBVQkxJQy0NCg0KDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQpGcm9tOiBCdXJ0b24sIFJvc3MgPHJvc3MuYnVydG9uQGludGVsLmNvbT4gDQpTZW50
OiAwNyBKdW5lIDIwMTkgMTE6MTANClRvOiBTbWl0aCwgUGV0ZXIxIChHRSBSZW5ld2FibGUgRW5l
cmd5KSA8cGV0ZXIudC5zbWl0aEBnZS5jb20+DQpDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0K
U3ViamVjdDogRVhUOiBSZTogW3lvY3RvXSBbbWV0YS1zZWN1cml0eV0gQXBwQXJtb3IgMi4xMSBu
byBsb25nZXIgYXZhaWxhYmxlIG9uIFVidW50dSBhcmNoaXZlIChzdW1vIGJyYW5jaCkNCg0KVGhh
dCBpcyBkZWxpYmVyYXRlIGFuZCBieSBkZXNpZ24sIHJlY2lwZXMgc2hvdWxkbid0IGZldGNoIGZy
b20gRGViaWFuL1VidW50dSBhcmNoaXZlcyBmb3IgdGhpcyByZWFzb24uDQoNCmh0dHA6Ly9naXQu
eW9jdG9wcm9qZWN0Lm9yZy9jZ2l0L2NnaXQuY2dpL21ldGEtc2VjdXJpdHkvY29tbWl0Lz9pZD00
NjJkNzY3MDBhM2MyNzQ4MDY3ZDQ2ODVkYjg5ODVjNTExYjFiNDZjDQppcyBhIHBhdGNoIHRvIG1h
c3RlciB0aGF0IG5lZWRzIHRvIGJlIGJhY2twb3J0ZWQgdG8gd2Fycmlvci90aHVkL3N1bW8uDQoN
ClJvc3MNCg0KT24gRnJpLCA3IEp1biAyMDE5IGF0IDExOjA3LCBTbWl0aCwgUGV0ZXIxIChHRSBS
ZW5ld2FibGUgRW5lcmd5KSA8cGV0ZXIudC5zbWl0aEBnZS5jb20+IHdyb3RlOg0KPg0KPiBXZSBh
cmUgYnVpbGRpbmcgd2l0aCBtZXRhLXNlY3VyaXR5IChmcm9tIHN1bW8gYnJhbmNoKSB3aGljaCBj
dXJyZW50bHkgdXNlcyB2Mi4xMSBvZiBBcHBBcm1vciwgaXQgc2VlbXMgb3Zlcm5pZ2h0IHRoYXQg
dGhlIHNvdXJjZSBhcmNoaXZlIGhhcyBiZWVuIHJlbW92ZWQgZnJvbSB0aGUgVWJ1bnR1IGFyY2hp
dmVzLiBEb2VzIGFueW9uZSBrbm93IGlmIHRoaXMgaXMgYSBkZWxpYmVyYXRlIGFjdGlvbiwgb3Ig
aWYgbm90IHdobyB0byBjb250YWN0IHRvIGdldCBpdCBwdXQgYmFjay4NCj4NCj4NCj4NCj4gUGV0
ZXIgU21pdGgNCj4NCj4NCj4NCj4gU2VuaW9yIEVtZXJnaW5nIFRlY2hub2xvZ2llcyBFbmdpbmVl
cg0KPg0KPiBHcmlkIFNvbHV0aW9ucw0KPg0KPiBHRSBSZW5ld2FibGUgRW5lcmd5DQo+DQo+DQo+
DQo+IC1OT04gUFVCTElDLQ0KPg0KPg0KPg0KPg0KPg0KPg0KPg0KPiAtLQ0KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiB5b2N0byBtYWlsaW5nIGxp
c3QNCj4geW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVj
dC5vcmcvbGlzdGluZm8veW9jdG8NCg==

