Return-Path: <prvs=1194d61036=alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DADF4E00DB1; Fri, 18 Oct 2019 11:01:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_LOW,URI_NOVOWEL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [148.163.158.57 listed in list.dnswl.org]
	*  0.5 URI_NOVOWEL URI: URI hostname has long non-vowel sequence
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com
	[148.163.158.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A54BCE0096F
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2019 11:01:38 -0700 (PDT)
Received: from pps.filterd (m0098779.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
	x9IHueA3017894; Fri, 18 Oct 2019 13:01:35 -0500
Received: from nam05-by2-obe.outbound.protection.outlook.com
	(mail-by2nam05lp2059.outbound.protection.outlook.com [104.47.50.59])
	by mx0b-00010702.pphosted.com with ESMTP id 2vkcn6k6w5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Fri, 18 Oct 2019 13:01:35 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=E8EsSZ/EcqdwYdOvQ5lQv90FzGta+M3Fd4YdJEWOG3vXEQWoWy9KlKTuw1otXjy77fJ65mGDTJgzdnZmeZ1lNBWJjh4VglrjhuCH+MymSTmexrTWQ8GmyOwlhAbZkojvl/WTrsIeUlQccXOp55hBndozWsCkdRhozyc9rdHE4rI6QijkEE7yrAdm9HWFckUKxTYHOCCQPDcklY9PtKdvOoNsnr+9kCJnhIm74WDx2mxn/9lY1acfu2d2wz80BS5lTbAET+6CY6UkCdGRiWRlBCyByjRmj6XWRt4AzowrsgZSX0yXiuq8V1uBwQ444sycQcpRXbn6KptjctBbP4+wIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=kgpp+y9jjWShnNbiukWg7TDQlyGZt6ND9h7saHUElzw=;
	b=MLrU3SGwtEf9o1iCkqJTvDG/mn7haiZkWBMCOssVGls70CefTJdzEOLiAhfeOmYcq2TRVTCJFceYzFKnw9WMQzysmcSJJamghD61Hhw94Fob9zXWQedsDsbf9ddffFshMi0j2+3wLOkbHXqAiHgytAUqvCUU1YUgDq7xgQFd6OUo4Bh4uUpw9SdHLK9O9oZSP43zv6Zl/j3z34KeZ20tFhJboOb0/gWuhMzm4Dyhg37gd0hur+mUDUUZkPJyUEe82cji0yGLcPfpOx/xkH5f9U8G06tQirj5/stbyofXAVFr5KRiiZi5zuEtlJws9MD7ZNWHLVH3BYWh3tFnO1z0hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com;
	dkim=pass header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=kgpp+y9jjWShnNbiukWg7TDQlyGZt6ND9h7saHUElzw=;
	b=VoCJoz1o7RURUrgmJ6JN2cX3rvBy7cJcOdGQxeErUL/5oXWHRblb6DMTarx1Qt551EKKACXA2GJvMs8Yx0DffELH8DIcQ+xh6hXJKGQA6ho0Bn7CFfX+qNuWtTHK3ySjXHnYsFmQZaqaG+vvnQea7Ac6TgwE3FX15hy3ZHJanH0=
Received: from DM6PR04MB4219.namprd04.prod.outlook.com (20.176.78.18) by
	DM6PR04MB6044.namprd04.prod.outlook.com (20.178.226.74) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2347.16; Fri, 18 Oct 2019 18:01:33 +0000
Received: from DM6PR04MB4219.namprd04.prod.outlook.com
	([fe80::5527:4a9d:4a82:79d2]) by
	DM6PR04MB4219.namprd04.prod.outlook.com
	([fe80::5527:4a9d:4a82:79d2%3]) with mapi id 15.20.2347.024;
	Fri, 18 Oct 2019 18:01:33 +0000
From: Alejandro Del Castillo <alejandro.delcastillo@ni.com>
To: Ycn aKaJoseph <ycnakajsph@gmail.com>, "richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>
Thread-Topic: [EXTERNAL] Re: Re: [opkg-devel] [OE-core][opkg-utils ] Bug 13528
	: adding SPDX license identifier
Thread-Index: AQHVhd4TNUnkEqUnJki77Hfa2FvnqQ==
Date: Fri, 18 Oct 2019 18:01:33 +0000
Message-ID: <410db50e-6b13-6db0-451f-654ce4fef89f@ni.com>
References: <CAC3TgAKRkeRjHDasNM6S_eSeBe82i3VYVWWuwLkUxm4GxTca4Q@mail.gmail.com>
	<2e40c398-ccf3-ee90-56df-3a2c6d458088@ni.com>
	<bec60eb90762feb06f014079d98aca92464d5568.camel@linuxfoundation.org>
	<CAC3TgA+ai=LNV5Aq+6Nc+e+yFnXJ_bpUBZnqce4q_wWiSCUiOA@mail.gmail.com>
	<eaf089a9-cc1f-95f2-fde3-c88ab12f5ad0@ni.com>
In-Reply-To: <eaf089a9-cc1f-95f2-fde3-c88ab12f5ad0@ni.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0501CA0006.namprd05.prod.outlook.com
	(2603:10b6:803:40::19) To DM6PR04MB4219.namprd04.prod.outlook.com
	(2603:10b6:5:9c::18)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [130.164.62.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d7af0a20-97ff-48ad-cc00-08d753f535ad
x-ms-traffictypediagnostic: DM6PR04MB6044:
x-ms-exchange-purlcount: 4
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR04MB6044F3EE1793696C3BC8B3DF866C0@DM6PR04MB6044.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 01949FE337
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(39860400002)(136003)(396003)(346002)(376002)(189003)(199004)(186003)(86362001)(110136005)(64756008)(4001150100001)(66946007)(66066001)(31696002)(3846002)(66556008)(36756003)(6116002)(66446008)(14444005)(6436002)(7736002)(256004)(54906003)(6486002)(305945005)(6306002)(31686004)(43066004)(66476007)(316002)(6512007)(229853002)(71190400001)(8936002)(14454004)(52116002)(476003)(2616005)(4326008)(53546011)(6506007)(478600001)(8796002)(81166006)(6246003)(76176011)(2501003)(81156014)(486006)(99286004)(8676002)(5660300002)(66806009)(446003)(386003)(26005)(102836004)(11346002)(25786009)(71200400001)(966005)(2906002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR04MB6044;
	H:DM6PR04MB4219.namprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gIJSSeL1UQXznR55AAMi34sqkxQv1Mw3IlFkAlqU3JCxd/ZjkIcJEs2R3wfK3mMf3s4emOnFTm8D9QKE/Npxy/4mxz8t0KVE4bHfMBJ9C2AACgp8xK8ac2b7BQxi8ENdjTHkBPvs0Qc8lt8OdcNxmQOkxkcj1Ehjdyzzofr8r+oZL93JL9tIGzZcJGzIVaemeICxqtmDkZ4PTUK1e5HNRTz21auFsZ+xnRipcLep+DlAxdODjj+4umd7ERXVq8eQRKR6TUzl4a5agzxZdmhUNyKiC4w6Bu/Gb+jzwlYWBaNUG62I/HwAdZztWR8/M1rWhhN8oVDf4ArhbX2ytbNk6Dv+FziCiBBNkk5gqLDNqnNNfSU2lMI2WeBuEd0qTwtDGJCeoeiWZkCxh/rVFN9iz/v0RXrgeDujhMvT7s9/71MthitC7O4iiFkS0CNgKnakBrgtaWMij7Sd8nMbmoPxBQ==
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7af0a20-97ff-48ad-cc00-08d753f535ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2019 18:01:33.0948 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FUBhnRdvFa1ONsp94XNPDDJLwI95488eS/EAItF4YkV8Ba/M2SHFMrAZvugvQXD7iK3qq/ArV9aLyetJ9EuSSVuXzhKiY1eC02bswj7YYms=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6044
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
	definitions=2019-10-18_04:2019-10-18,2019-10-18 signatures=0
X-Proofpoint-Spam-Details: rule=inbound_policy_notspam policy=inbound_policy
	score=30 adultscore=0
	impostorscore=0 mlxscore=0 lowpriorityscore=0 clxscore=1015
	phishscore=0
	spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
	mlxlogscore=999
	suspectscore=0 classifier=spam adjust=30 reason=mlx scancount=1
	engine=8.12.0-1908290000 definitions=main-1910180163
Cc: Haris Okanovic <haris.okanovic@ni.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"opkg-devel@googlegroups.com" <opkg-devel@googlegroups.com>
Subject: Re: [opkg-devel] [OE-core][opkg-utils ] Bug 13528 : adding SPDX license identifier
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: "opkg-devel@googlegroups.com" <opkg-devel@googlegroups.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 18 Oct 2019 18:01:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <4570063A3C496045A1E2AB469A0D80B8@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

bWVyZ2VkLCB0aGFua3MhDQoNCk9uIDEwLzE1LzE5IDI6NTggUE0sIEFsZWphbmRybyBEZWwgQ2Fz
dGlsbG8gd3JvdGU6DQo+IA0KPiANCj4gT24gMTAvMTQvMTkgNzozNiBBTSwgWWNuIGFLYUpvc2Vw
aCB3cm90ZToNCj4+IEhpLA0KPj4NCj4+IEdQTC0yLjAtb25seSB3YXMgYXBwbGllZCB0byBzY3Jp
cHQgd2l0aG91dCBwcmV2aW91cyBMaWNlbmNlcyBhbmQNCj4+IEdQTC0yLjAtb3ItbGF0ZXIgdG8g
dGhvc2UgbWVudGlvbmluZyBpdCwgaG93ZXZlciBJJ20gd29uZGVyaW5nIGlmIEkNCj4+IHNob3Vs
ZCBhbHNvIGFkZCBhIFNQRFggaWQgdG8gdGhlIG1ha2VmaWxlID8NCj4+DQo+PiBIZXJlJ3MgZmly
c3QgYXR0ZW1wdCB3aXRob3V0IGlkZW50aWZpZXIgdG8gdGhlIE1ha2VmaWxlLg0KPiANCj4gSSBk
b24ndCBoYXZlIGEgcHJlZmVyZW5jZSByZWdhcmRpbmcgYWRkaW5nIGEgU1BEWCBpZGVudGlmaWVy
IGZvciB0aGUNCj4gTWFrZWZpbGUuIElmIEkgZG9uJ3Qgc2VlIGFueSBjb21tZW50cyBvbmUgd2F5
IG9yIHRoZSBvdGhlciwgSSB3aWxsIHB1bGwNCj4gdGhlIHBhdGNoIGluLCBieSB0aGUgZW5kIG9m
IHRoZSB3ZWVrLg0KPiANCj4gdGhhbmtzIGFnYWluIGZvciB0YWtpbmcgY2FyZSBvZiB0aGlzLA0K
PiANCj4gQWxlamFuZHJvDQo+IA0KPj4gT24gRnJpLCBPY3QgMTEsIDIwMTkgYXQgNjo0NSBQTSA8
cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZw0KPj4gPG1haWx0bzpyaWNoYXJkLnB1
cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnPj4gd3JvdGU6DQo+Pg0KPj4gICAgICBPbiBGcmksIDIw
MTktMTAtMTEgYXQgMTU6NTQgKzAwMDAsIEFsZWphbmRybyBEZWwgQ2FzdGlsbG8gd3JvdGU6DQo+
PiAgICAgICA+IE9uIDEwLzExLzE5IDg6NTEgQU0sIFljbiBhS2FKb3NlcGggd3JvdGU6DQo+PiAg
ICAgICA+ID4gSGkgZ3V5cywNCj4+ICAgICAgID4gPg0KPj4gICAgICAgPiA+IGh0dHBzOi8vdXJs
ZGVmZW5zZS5jb20vdjMvX19odHRwczovL2J1Z3ppbGxhLnlvY3RvcHJvamVjdC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEzNTI4X187IWZxV0pjbmxUa2pNITRfVVRrZnQ2WXZxSVNNaV9aeXhUM25iQkRk
eGJ5bGxXWjU5T0htbWlrRlFxQW5RLWxuN3BHZUxqTmlkZWRlSUdZMGlEZ0EkDQo+PiAgICAgIDxo
dHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cHM6Ly9idWd6aWxsYS55b2N0b3Byb2plY3Qu
b3JnL3Nob3dfYnVnLmNnaT9pZD0xMzUyOF9fOyFmcVdKY25sVGtqTSE0WnVnVmhGa09jaUZ1Y3c5
RmJZYkxDRXJKNjQ3WEZ5THZGNzZNUF8wVW80RjhzYTUxaGkxR2J3bVBtWlRpc1UxN1Zxc3pRJD4N
Cj4+DQo+PiAgICAgICA+ID4gPA0KPj4gICAgICAgPiA+DQo+PiAgICAgIGh0dHBzOi8vdXJsZGVm
ZW5zZS5jb20vdjMvX19odHRwczovL2J1Z3ppbGxhLnlvY3RvcHJvamVjdC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEzNTI4X187IWZxV0pjbmxUa2pNIThSdHNXSlhiRHpfbDA2M1pTVktyUk13dlE1S0dk
RDBsazlhU2psVVc5VkhNMnd1ZklUSm5CdUl2b3ZReG9UMHlKWHUtNlEkDQo+PiAgICAgICA+ID4g
Pg0KPj4gICAgICAgPiA+DQo+PiAgICAgICA+ID4gSSdtIGFib3V0IHRvIHdvcmsgb24gdGhhdCBi
dWcgaG93ZXZlciBtb3N0IG9mIHRoZSBzY3JpcHQgaW4gb3BrZy0NCj4+ICAgICAgID4gPiB1dGls
cw0KPj4gICAgICAgPiA+IGRpciBhcmUgdW4tbGljZW5jZWQgYW5kIHRoZXJlJ3Mgbm8gaGludCBm
b3IgbWUgdG8gZGVjaWRlIHdoYXQgU1BEWA0KPj4gICAgICAgPiA+IElkZW50aWZpZXIgdG8gYWRk
Lg0KPj4gICAgICAgPg0KPj4gICAgICAgPiB0aGFua3MgZm9yIGRvaW5nIHRoaXMhDQo+PiAgICAg
ICA+DQo+PiAgICAgICA+ID4gVGhlIGRvdWJ0IGNvbmNlcm5zIHRob3NlIHNjcmlwdCA6DQo+PiAg
ICAgICA+ID4gbWFrZVBhY2thZ2UNCj4+ICAgICAgID4gPiBvcGtnLWJ1aWxkDQo+PiAgICAgICA+
ID4gb3BrZy1idWlsZHBhY2thZ2UNCj4+ICAgICAgID4gPiBvcGtnLWNvbXBhcmUtaW5kZXhlcw0K
Pj4gICAgICAgPiA+IG9wa2ctZGlmZg0KPj4gICAgICAgPiA+IG9wa2ctZXh0cmFjdC1maWxlDQo+
PiAgICAgICA+ID4gb3BrZy1ncmFwaC1kZXBzDQo+PiAgICAgICA+ID4gb3BrZy1saXN0LWZpZWxk
cw0KPj4gICAgICAgPiA+IG9wa2ctbWFrZS1pbmRleA0KPj4gICAgICAgPiA+IG9wa2ctc2hvdy1k
ZXBzDQo+PiAgICAgICA+ID4gb3BrZy11bmJ1aWxkDQo+PiAgICAgICA+ID4gb3BrZy11cGRhdGUt
aW5kZXgNCj4+ICAgICAgID4gPg0KPj4gICAgICAgPiA+IFdoYXQgbGljZW5zZSBkbyB5b3Ugd2Fu
dCB0aGVtIHRvIGNhcnJ5ID8NCj4+ICAgICAgID4NCj4+ICAgICAgID4gTG9va2luZyBhdCB0aGUg
Y29tbWl0IGhpc3RvcnksIG9wa2ctZ3JhcGgtZGVwcyB3YXMgYXV0aG9yZWQgYnkgSGFyaXMNCj4+
ICAgICAgID4gT2thbm92aWMsIGFuZCB0aGUgcmVzdCBieSBSaWNoYXJkIFB1cmRpZSAoaW5jbHVk
ZWQgdGhlbSBvbiB0aGUNCj4+ICAgICAgID4gdGhyZWFkKS4NCj4+ICAgICAgID4NCj4+ICAgICAg
ID4gTXkgdGFrZSBvbiBpdDrCoCBzaW5jZSBvcGtnIGlzIGxpY2Vuc2VkIGFzIEdQTHYyKywgYW5k
IHRoZSBmaWxlcyB0aGF0DQo+PiAgICAgICA+IGhhdmUgYSBsaWNlbnNlIGluIG9wa2ctdXRpbHMg
YXJlIEdQTHYyKywgbWFrZSBzZW5zZSB0byBtZSB0byBsaWNlbnNlDQo+PiAgICAgICA+IHRoZSBy
ZXN0IGFzIEdQTHYyKyB0b28uDQo+Pg0KPj4gICAgICBJIGRpZG4ndCBhdXRob3IgdGhlc2UsIHRo
ZXkgd2VyZSBpbXBvcnRlZCBmcm9tIGlwa2ctdXRpbHMgd2hpY2ggd2FzDQo+PiAgICAgIHBhcnQg
b2YgaGFuZGhlbGRzLm9yZw0KPj4gICAgICA8aHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0
dHA6Ly9oYW5kaGVsZHMub3JnX187IWZxV0pjbmxUa2pNITRadWdWaEZrT2NpRnVjdzlGYlliTENF
cko2NDdYRnlMdkY3Nk1QXzBVbzRGOHNhNTFoaTFHYndtUG1aVGlzV2RXdVlva0EkPi4NCj4+ICAg
ICAgSSBkaWQgbW9kaWZ5IHRoaW5ncyBxdWl0ZSBhIGJpdCBkdXJpbmcgdGhlDQo+PiAgICAgIGlt
cG9ydC4NCj4+DQo+PiAgICAgIGhhbmRoZWxkcy5vcmcNCj4+ICAgICAgPGh0dHBzOi8vdXJsZGVm
ZW5zZS5jb20vdjMvX19odHRwOi8vaGFuZGhlbGRzLm9yZ19fOyFmcVdKY25sVGtqTSE0WnVnVmhG
a09jaUZ1Y3c5RmJZYkxDRXJKNjQ3WEZ5THZGNzZNUF8wVW80RjhzYTUxaGkxR2J3bVBtWlRpc1dk
V3VZb2tBJD4ncw0KPj4gICAgICBDVlMgcmVwb3MgYXJlbid0IHRoZXJlIGFueSBtb3JlIGJ1dCBJ
IGRvIGhhdmUgb2xkDQo+PiAgICAgIHNvdXJjZXMgbHlpbmcgYXJvdW5kIGxvY2FsbHkuIEkgaGF2
ZSBhIHNuYXBzaG90IG9mIHRoZSBDVlMgcmVwbyBmcm9tDQo+PiAgICAgIDIwMDUwOTMwIGFuZCBp
dCBoYXMgR1BMdjIgQ09QWUlORyBmaWxlIChub3QgMissIGp1c3QgMikuDQo+Pg0KPj4gICAgICBJ
J2Qgc3VnZ2VzdCB3ZSBmb2xsb3cgdGhlIG9yaWdpbmFsIGxpY2Vuc2luZyBvZiB0aGF0IGFuZCBn
byB3aXRoIEdQTHYyLg0KPj4NCj4+ICAgICAgQ2hlZXJzLA0KPj4NCj4+ICAgICAgUmljaGFyZA0K
Pj4NCj4+DQo+Pg0KPj4NCj4gDQoNCi0tIA0KQ2hlZXJzLA0KDQpBbGVqYW5kcm8NCg==

