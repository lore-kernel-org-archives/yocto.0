Return-Path: <prvs=11912dd6d2=alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 799F6E00C4F; Tue, 15 Oct 2019 16:22:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_LOW,URI_NOVOWEL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [148.163.156.75 listed in list.dnswl.org]
	*  0.5 URI_NOVOWEL URI: URI hostname has long non-vowel sequence
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
X-Greylist: delayed 12278 seconds by postgrey-1.32 at yocto-www;
	Tue, 15 Oct 2019 16:22:46 PDT
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com
	[148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BB1EE00924
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2019 16:22:46 -0700 (PDT)
Received: from pps.filterd (m0098781.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
	x9FJuGf5016308; Tue, 15 Oct 2019 14:58:05 -0500
Received: from nam05-dm3-obe.outbound.protection.outlook.com
	(mail-dm3nam05lp2058.outbound.protection.outlook.com [104.47.49.58])
	by mx0a-00010702.pphosted.com with ESMTP id 2vkav1tsmu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Tue, 15 Oct 2019 14:58:05 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=GnpyIhkFSnfKurzxoUuODkl5kj358YugbL5d15GtukY66253w8z/dzUO/ObMOXzdxQC8D0jHuRwGhZfdu2C17VKjWk8qP35GFQnZ6hRwAn3ee8SvwHekajx+/k8Te/T5FSWFK97QwVOROG2cVrLVLAL9Mq50M1xL2/unZR8lLoaNJXAodLd2LpLnJScAupNb5t9p4//t9h5Wp5rTGoZixqaScPj405co6+x2y9mdgrEq9VSJbKnsn3d2wK1yDoCIaAWGi2oiRj+mQj3wCb07zko9DAy8mCYf7Bauql0D0SU1jVxHjIwkQgo2CZFXSj131iugBfsNa/PE6bq+o7Jcrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=iWxDDkFNY6y2riypk8ZwwCyHvX3HxBR+XyIKLLgEKAk=;
	b=VNTF8TUi2csiXHkBma5V+wkQLlXLhmIuqCpc2xqjcFcTQB703C//JugubtGvJyhw/XboDBogYSJ2V0i3eqDmCsa2eq7RBi9Q/vOd6OUNrVayO0fBjLBo+bT73ElgCjsTQ26OKjjfXyyW3b44mTMk7PNo8r7Br/X2m6llbsTPNjk0e6SD7RANxWe/dB7NnTvZJCbtRPpjwSkcONogB2TH46OvtQSlfRfwXf/MletiXlqwF7k1p0zqjp9c91GE9JK2wH01ku9vy24ahv6V6+8qWSOi7amEVhxxeCZpIJg0pE7FmMgzy54526X2RX61trrfen4wzkw71+CF0VV2w8BTSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com;
	dkim=pass header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=iWxDDkFNY6y2riypk8ZwwCyHvX3HxBR+XyIKLLgEKAk=;
	b=lZQ1i8wrWhOupsHMoBYJHSHQwnkA1Qm+/2Od+V4/Sp5AqBDxXLDN/skkX7hti6VYPlt7w3Ko9ja9woabqFtnR3FaNNf9ygFaX3CBVoVuIDY8eFSK+QcPfnVQ/3jXguDetOBMRjunYV+1EuPTvDIVlA22FH6zAMnDYbKk7M1CK0M=
Received: from SN6PR04MB4221.namprd04.prod.outlook.com (52.135.71.147) by
	SN6PR04MB3885.namprd04.prod.outlook.com (52.135.81.150) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2347.18; Tue, 15 Oct 2019 19:58:03 +0000
Received: from SN6PR04MB4221.namprd04.prod.outlook.com
	([fe80::8547:97f1:be48:5962]) by
	SN6PR04MB4221.namprd04.prod.outlook.com
	([fe80::8547:97f1:be48:5962%7]) with mapi id 15.20.2347.023;
	Tue, 15 Oct 2019 19:58:03 +0000
From: Alejandro Del Castillo <alejandro.delcastillo@ni.com>
To: Ycn aKaJoseph <ycnakajsph@gmail.com>, "richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>
Thread-Topic: [EXTERNAL] Re: [opkg-devel] [OE-core][opkg-utils ] Bug 13528 :
	adding SPDX license identifier
Thread-Index: AQHVgFNOEf++bbrE+0q8dQNCETNRlqdaF2WAgAINpIA=
Date: Tue, 15 Oct 2019 19:58:02 +0000
Message-ID: <eaf089a9-cc1f-95f2-fde3-c88ab12f5ad0@ni.com>
References: <CAC3TgAKRkeRjHDasNM6S_eSeBe82i3VYVWWuwLkUxm4GxTca4Q@mail.gmail.com>
	<2e40c398-ccf3-ee90-56df-3a2c6d458088@ni.com>
	<bec60eb90762feb06f014079d98aca92464d5568.camel@linuxfoundation.org>
	<CAC3TgA+ai=LNV5Aq+6Nc+e+yFnXJ_bpUBZnqce4q_wWiSCUiOA@mail.gmail.com>
In-Reply-To: <CAC3TgA+ai=LNV5Aq+6Nc+e+yFnXJ_bpUBZnqce4q_wWiSCUiOA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0701CA0038.namprd07.prod.outlook.com
	(2603:10b6:803:2d::31) To SN6PR04MB4221.namprd04.prod.outlook.com
	(2603:10b6:805:30::19)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [130.164.62.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 08cfd5f0-5091-424a-a021-08d751a9fcac
x-ms-traffictypediagnostic: SN6PR04MB3885:
x-ms-exchange-purlcount: 4
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR04MB3885D207FB8D6A828709244F86930@SN6PR04MB3885.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 01917B1794
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(346002)(136003)(396003)(39860400002)(376002)(199004)(189003)(966005)(99286004)(6486002)(4326008)(4001150100001)(2906002)(256004)(14444005)(14454004)(66066001)(8936002)(2501003)(36756003)(5660300002)(25786009)(229853002)(6436002)(71190400001)(478600001)(71200400001)(81156014)(81166006)(31696002)(316002)(476003)(6306002)(31686004)(66556008)(386003)(486006)(6246003)(110136005)(2616005)(54906003)(6506007)(6512007)(64756008)(446003)(53546011)(305945005)(7736002)(76176011)(11346002)(3846002)(8676002)(52116002)(102836004)(26005)(66946007)(66446008)(6116002)(86362001)(186003)(66476007);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB3885;
	H:SN6PR04MB4221.namprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Eg5QAuVHa9BrKL04+2h75ACuplQCC9r28gDZwII4sHO/+rKP1IkFdRb33t7jzdQjb23iYmrSh878J71SRbul0P47OuRH3cc1xqkrRC53ExsaGex5o9+NK3aVZs8dclF+vzeZIbLx+WIQyF6p8ZdWYsjFTWsV4JSMOrxf46PvpZJw8WIc2dbdDCGS42nQF6dXdMxerxE5gy0UQlsBb6rWoQ3yREC3kRe4ym9r1VXYEn1tIh8KnwEplkIZFrq52kX/zBzVo3yfEQmGa1vHgAPUQFZllhxOI0e4LvivbD5q0nskI58yGCurOKpNI1MIUiUG1k2aXpVtpTnEf/M7nQahCk6XWpWMBaANpxINfcIvQTyJhVAGZNWnaDFFP1+karx3YpscjoHKVQN1ICSFWNmaQo250wzBNF5xopo5dRsnWiZaVKf/3/wVKADDxDo3t9bkcarb3Y6/uark+tlaBFeSMA==
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08cfd5f0-5091-424a-a021-08d751a9fcac
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2019 19:58:02.9937 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6mFxW0vEo8WxkWv5z3TcAur2pcuBivOe+AlhCafyszp7gj9SKFGp215knwO0tbHyasiujso2kuQ7Mo6mgekuWesL20dy8pOWTDCKi9jG0w0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB3885
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
	definitions=2019-10-15_06:2019-10-15,2019-10-15 signatures=0
X-Proofpoint-Spam-Details: rule=inbound_policy_notspam policy=inbound_policy
	score=30 spamscore=0
	priorityscore=1501 phishscore=0 impostorscore=0 mlxscore=0 bulkscore=0
	suspectscore=0 clxscore=1015 adultscore=0 malwarescore=0
	mlxlogscore=999
	lowpriorityscore=0 classifier=spam adjust=30 reason=mlx scancount=1
	engine=8.12.0-1908290000 definitions=main-1910150170
Cc: Haris Okanovic <haris.okanovic@ni.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"opkg-devel@googlegroups.com" <opkg-devel@googlegroups.com>
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
X-List-Received-Date: Tue, 15 Oct 2019 23:22:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <7EDFF65A3C0F3547B7AC5D25F5A763D6@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

DQoNCk9uIDEwLzE0LzE5IDc6MzYgQU0sIFljbiBhS2FKb3NlcGggd3JvdGU6DQo+IEhpLA0KPiAN
Cj4gR1BMLTIuMC1vbmx5IHdhcyBhcHBsaWVkIHRvIHNjcmlwdCB3aXRob3V0IHByZXZpb3VzIExp
Y2VuY2VzIGFuZCANCj4gR1BMLTIuMC1vci1sYXRlciB0byB0aG9zZSBtZW50aW9uaW5nIGl0LCBo
b3dldmVyIEknbSB3b25kZXJpbmcgaWYgSSANCj4gc2hvdWxkIGFsc28gYWRkIGEgU1BEWCBpZCB0
byB0aGUgbWFrZWZpbGUgPw0KPiANCj4gSGVyZSdzIGZpcnN0IGF0dGVtcHQgd2l0aG91dCBpZGVu
dGlmaWVyIHRvIHRoZSBNYWtlZmlsZS4NCg0KSSBkb24ndCBoYXZlIGEgcHJlZmVyZW5jZSByZWdh
cmRpbmcgYWRkaW5nIGEgU1BEWCBpZGVudGlmaWVyIGZvciB0aGUgDQpNYWtlZmlsZS4gSWYgSSBk
b24ndCBzZWUgYW55IGNvbW1lbnRzIG9uZSB3YXkgb3IgdGhlIG90aGVyLCBJIHdpbGwgcHVsbCAN
CnRoZSBwYXRjaCBpbiwgYnkgdGhlIGVuZCBvZiB0aGUgd2Vlay4NCg0KdGhhbmtzIGFnYWluIGZv
ciB0YWtpbmcgY2FyZSBvZiB0aGlzLA0KDQpBbGVqYW5kcm8NCg0KPiBPbiBGcmksIE9jdCAxMSwg
MjAxOSBhdCA2OjQ1IFBNIDxyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnIA0KPiA8
bWFpbHRvOnJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmc+PiB3cm90ZToNCj4gDQo+
ICAgICBPbiBGcmksIDIwMTktMTAtMTEgYXQgMTU6NTQgKzAwMDAsIEFsZWphbmRybyBEZWwgQ2Fz
dGlsbG8gd3JvdGU6DQo+ICAgICAgPiBPbiAxMC8xMS8xOSA4OjUxIEFNLCBZY24gYUthSm9zZXBo
IHdyb3RlOg0KPiAgICAgID4gPiBIaSBndXlzLA0KPiAgICAgID4gPg0KPiAgICAgID4gPiBodHRw
czovL2J1Z3ppbGxhLnlvY3RvcHJvamVjdC5vcmcvc2hvd19idWcuY2dpP2lkPTEzNTI4DQo+ICAg
ICA8aHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vYnVnemlsbGEueW9jdG9wcm9q
ZWN0Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTM1MjhfXzshZnFXSmNubFRrak0hNFp1Z1ZoRmtPY2lG
dWN3OUZiWWJMQ0VySjY0N1hGeUx2Rjc2TVBfMFVvNEY4c2E1MWhpMUdid21QbVpUaXNVMTdWcXN6
USQ+DQo+IA0KPiAgICAgID4gPiA8DQo+ICAgICAgPiA+DQo+ICAgICBodHRwczovL3VybGRlZmVu
c2UuY29tL3YzL19faHR0cHM6Ly9idWd6aWxsYS55b2N0b3Byb2plY3Qub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMzUyOF9fOyFmcVdKY25sVGtqTSE4UnRzV0pYYkR6X2wwNjNaU1ZLclJNd3ZRNUtHZEQw
bGs5YVNqbFVXOVZITTJ3dWZJVEpuQnVJdm92UXhvVDB5Slh1LTZRJA0KPiAgICAgID4gPiA+DQo+
ICAgICAgPiA+DQo+ICAgICAgPiA+IEknbSBhYm91dCB0byB3b3JrIG9uIHRoYXQgYnVnIGhvd2V2
ZXIgbW9zdCBvZiB0aGUgc2NyaXB0IGluIG9wa2ctDQo+ICAgICAgPiA+IHV0aWxzDQo+ICAgICAg
PiA+IGRpciBhcmUgdW4tbGljZW5jZWQgYW5kIHRoZXJlJ3Mgbm8gaGludCBmb3IgbWUgdG8gZGVj
aWRlIHdoYXQgU1BEWA0KPiAgICAgID4gPiBJZGVudGlmaWVyIHRvIGFkZC4NCj4gICAgICA+DQo+
ICAgICAgPiB0aGFua3MgZm9yIGRvaW5nIHRoaXMhDQo+ICAgICAgPg0KPiAgICAgID4gPiBUaGUg
ZG91YnQgY29uY2VybnMgdGhvc2Ugc2NyaXB0IDoNCj4gICAgICA+ID4gbWFrZVBhY2thZ2UNCj4g
ICAgICA+ID4gb3BrZy1idWlsZA0KPiAgICAgID4gPiBvcGtnLWJ1aWxkcGFja2FnZQ0KPiAgICAg
ID4gPiBvcGtnLWNvbXBhcmUtaW5kZXhlcw0KPiAgICAgID4gPiBvcGtnLWRpZmYNCj4gICAgICA+
ID4gb3BrZy1leHRyYWN0LWZpbGUNCj4gICAgICA+ID4gb3BrZy1ncmFwaC1kZXBzDQo+ICAgICAg
PiA+IG9wa2ctbGlzdC1maWVsZHMNCj4gICAgICA+ID4gb3BrZy1tYWtlLWluZGV4DQo+ICAgICAg
PiA+IG9wa2ctc2hvdy1kZXBzDQo+ICAgICAgPiA+IG9wa2ctdW5idWlsZA0KPiAgICAgID4gPiBv
cGtnLXVwZGF0ZS1pbmRleA0KPiAgICAgID4gPg0KPiAgICAgID4gPiBXaGF0IGxpY2Vuc2UgZG8g
eW91IHdhbnQgdGhlbSB0byBjYXJyeSA/DQo+ICAgICAgPg0KPiAgICAgID4gTG9va2luZyBhdCB0
aGUgY29tbWl0IGhpc3RvcnksIG9wa2ctZ3JhcGgtZGVwcyB3YXMgYXV0aG9yZWQgYnkgSGFyaXMN
Cj4gICAgICA+IE9rYW5vdmljLCBhbmQgdGhlIHJlc3QgYnkgUmljaGFyZCBQdXJkaWUgKGluY2x1
ZGVkIHRoZW0gb24gdGhlDQo+ICAgICAgPiB0aHJlYWQpLg0KPiAgICAgID4NCj4gICAgICA+IE15
IHRha2Ugb24gaXQ6wqAgc2luY2Ugb3BrZyBpcyBsaWNlbnNlZCBhcyBHUEx2MissIGFuZCB0aGUg
ZmlsZXMgdGhhdA0KPiAgICAgID4gaGF2ZSBhIGxpY2Vuc2UgaW4gb3BrZy11dGlscyBhcmUgR1BM
djIrLCBtYWtlIHNlbnNlIHRvIG1lIHRvIGxpY2Vuc2UNCj4gICAgICA+IHRoZSByZXN0IGFzIEdQ
THYyKyB0b28uDQo+IA0KPiAgICAgSSBkaWRuJ3QgYXV0aG9yIHRoZXNlLCB0aGV5IHdlcmUgaW1w
b3J0ZWQgZnJvbSBpcGtnLXV0aWxzIHdoaWNoIHdhcw0KPiAgICAgcGFydCBvZiBoYW5kaGVsZHMu
b3JnDQo+ICAgICA8aHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHA6Ly9oYW5kaGVsZHMu
b3JnX187IWZxV0pjbmxUa2pNITRadWdWaEZrT2NpRnVjdzlGYlliTENFcko2NDdYRnlMdkY3Nk1Q
XzBVbzRGOHNhNTFoaTFHYndtUG1aVGlzV2RXdVlva0EkPi4NCj4gICAgIEkgZGlkIG1vZGlmeSB0
aGluZ3MgcXVpdGUgYSBiaXQgZHVyaW5nIHRoZQ0KPiAgICAgaW1wb3J0Lg0KPiANCj4gICAgIGhh
bmRoZWxkcy5vcmcNCj4gICAgIDxodHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cDovL2hh
bmRoZWxkcy5vcmdfXzshZnFXSmNubFRrak0hNFp1Z1ZoRmtPY2lGdWN3OUZiWWJMQ0VySjY0N1hG
eUx2Rjc2TVBfMFVvNEY4c2E1MWhpMUdid21QbVpUaXNXZFd1WW9rQSQ+J3MNCj4gICAgIENWUyBy
ZXBvcyBhcmVuJ3QgdGhlcmUgYW55IG1vcmUgYnV0IEkgZG8gaGF2ZSBvbGQNCj4gICAgIHNvdXJj
ZXMgbHlpbmcgYXJvdW5kIGxvY2FsbHkuIEkgaGF2ZSBhIHNuYXBzaG90IG9mIHRoZSBDVlMgcmVw
byBmcm9tDQo+ICAgICAyMDA1MDkzMCBhbmQgaXQgaGFzIEdQTHYyIENPUFlJTkcgZmlsZSAobm90
IDIrLCBqdXN0IDIpLg0KPiANCj4gICAgIEknZCBzdWdnZXN0IHdlIGZvbGxvdyB0aGUgb3JpZ2lu
YWwgbGljZW5zaW5nIG9mIHRoYXQgYW5kIGdvIHdpdGggR1BMdjIuDQo+IA0KPiAgICAgQ2hlZXJz
LA0KPiANCj4gICAgIFJpY2hhcmQNCj4gDQo+IA0KPiANCj4gDQo=

