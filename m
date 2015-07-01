Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60779E00A54; Wed,  1 Jul 2015 06:08:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.135 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0135.outbound.protection.outlook.com [157.56.111.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7F07E00A4B
	for <yocto@yoctoproject.org>; Wed,  1 Jul 2015 06:08:39 -0700 (PDT)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) by
	BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) with
	Microsoft SMTP
	Server (TLS) id 15.1.195.15; Wed, 1 Jul 2015 13:08:37 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) with
	mapi id 15.01.0195.005; Wed, 1 Jul 2015 13:08:37 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: SAS NONE <sarsher83@yahoo.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] SAMA5D3 header files for C application development
Thread-Index: AQHQs7eCNoGZj8MYvUWuaCLIPY5nwp3Ghptg
Date: Wed, 1 Jul 2015 13:08:37 +0000
Message-ID: <BN3PR0501MB1090AAEA23B3F7C3A89CFBDBBBA80@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <1375415882.87911.1435725356116.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <1375415882.87911.1435725356116.JavaMail.yahoo@mail.yahoo.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yahoo.com; dkim=none (message not signed)
	header.d=none;
x-originating-ip: [98.100.91.242]
x-microsoft-exchange-diagnostics: 1; BN3PR0501MB1090;
	5:CzcA/oUlC3wmB+RAaqDTF8oJ8QNZ8Hc9oEpPx/txMDGTKwdftySoPmSFNCgz9msCd1JUNYfJx91JPeKQr1CNxidGQxIriSWc0eV3LmRFENfVaODJXo2pI84DakVdp0DNoEDZ1HRud/4EKyxGirn+jQ==;
	24:412BgvfKWIOi+uR5nCN6rRMsou0rJF9Q5IC0H6h3AHYCwOGJOtvh5HNt1zSsQjkrSsseRm9g7J2uA2+LWT7LLRXoEut4TskZVhtNT1rNSpQ=;
	20:Xw4IBcvd0wPs3FcM4GqS1IB6KNTEd34efRugXHiZBW9uIUvOxnZmmx5XU8XXp6YG8mc7IVzXoJaWIlwFNUDU2w==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1090;
x-microsoft-antispam-prvs: <BN3PR0501MB109082A75A891392CE696AD0BBA80@BN3PR0501MB1090.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(3002001); SRVR:BN3PR0501MB1090; BCL:0;
	PCL:0; RULEID:; SRVR:BN3PR0501MB1090; 
x-forefront-prvs: 0624A2429E
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(51704005)(377454003)(164054003)(19580395003)(19580405001)(86362001)(5003600100002)(87936001)(2656002)(2501003)(99286002)(40100003)(1720100001)(77096005)(102836002)(77156002)(62966003)(15975445007)(5001770100001)(33656002)(106116001)(189998001)(76576001)(5002640100001)(2950100001)(2900100001)(50986999)(54356999)(76176999)(74316001)(107886002)(5001960100002)(92566002)(46102003)(2521001)(66066001)(122556002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1090;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2015 13:08:37.5451 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1090
Subject: Re: SAMA5D3 header files for C application development
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
X-List-Received-Date: Wed, 01 Jul 2015 13:08:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U2FtLA0KDQoNCj4gRnJvbTogeW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86
eW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnXSBPbiBCZWhhbGYgT2YgU0FTIE5PTkUNCj4g
U2VudDogV2VkbmVzZGF5LCBKdWx5IDAxLCAyMDE1IDEyOjM2IEFNDQo+IFRvOiB5b2N0b0B5b2N0
b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFt5b2N0b10gU0FNQTVEMyBoZWFkZXIgZmlsZXMgZm9y
IEMgYXBwbGljYXRpb24gZGV2ZWxvcG1lbnQNCj4NCj4gSGksDQo+DQo+IEknbSB1c2luZyBTQU1B
NUQzLXhwbGFpbmVkIGJvYXJkIGFuZCBidWlsdCBhIExpbnV4IGtlcm5lbCAzLjE4IGRpc3RybyBm
b3IgaXQgdXNpbmcgdGhlIFBva3kgWW9jdG8gYnVpbGQgZGlyZWN0b3J5LsKgIEkndmUgYWxzbyBj
cmVhdGVkIHRoZSBzZGsgYW5kIGluc3RhbGxlZCBpdCBpbiAvb3B0L3Bva3ktYXRtZWwvMS43LjIu
wqAgUmFuIGhlbGxvIHdvcmxkIGV4YW1wbGUgaW4gZWNsaXBzZSBob3dldmVyIEknbSB0cnlpbmcg
dG8gZmluZCB0aGUgQyBoZWFkZXIgZmlsZXMgZm9yIHRoZSBwZXJpcGhlcmFscyBzbyBJIGNhbiBk
ZXZlbG9wIGFwcGxpY2F0aW9ucyB1c2luZyB0aGUgU1BJIGJ1cyBvciB0aGUgaTJjIGJ1cy7CoCBB
bnkgaGVscCBpbiBsb2NhdGluZyB0aGVzZSBoZWFkZXIgZmlsZXMgb3IgaG93IHRvIGdvIGFib3V0
IGRldmVsb3BpbmcgYW5kIGNyb3NzIGNvbXBpbGluZyB0aGUgQyBjb2RlIGluIGVjbGlwc2U/wqAg
SSd2ZSBhbHJlYWR5IGxvb2tlZCBhdCB0aGUgWW9jdG8gYWR0IG1hbnVhbCBmb3IgZWNsaXBzZSB3
aGljaCBpcyB2ZXJ5IG1pbmltdW0uDQo+IA0KPiBBbnkgaGVscCBpcyBncmVhdGx5IGFwcHJlY2lh
dGVkLg0KDQpJJ20gYXNzdW1pbmcgYmFzZWQgb24geW91ciBxdWVzdGlvbnMgdGhhdCB5b3UgYXJl
IG5ldyB0byB0aGUgZGV2aWNlIHRyZWUgc2V0dXAgZm9yIEFSTSBpbiB0aGUgTGludXgga2VybmVs
IGFuZCBob3cgdG8gbWFrZSB1c2Ugb2YgaXQgb24gdGhlIGtlcm5lbCBzaWRlIGFuZCB0aGUgdXNl
cnNwYWNlIHNpZGUuICBJZiBzbywgSSdkIHN1Z2dlc3QgeW91IGdvIHRvIGh0dHA6Ly93d3cuYXQ5
MS5jb20vbGludXg0c2FtL2Jpbi92aWV3L0xpbnV4NFNBTS9MaW51eEtlcm5lbCBhbmQgcmVhZCB0
aGUgZG9jdW1lbnRhdGlvbiBsaW5rZWQgaW4gdGhlICJDaGFuZ2VzIGludHJvZHVjZWQgYnkgRGV2
aWNlIFRyZWUgU3VwcG9ydCBzZWN0aW9uIi4gIFRoZW4gQXRtZWwgaGFzIGRvY3VtZW50YXRpb24g
c3BlY2lmaWMgdG8gdGhlaXIgU1BJIGFuZCBJMkMgd2l0aCB0aGUgTGludXgga2VybmVsIGRvY3Vt
ZW50YXRpb24uICBMb29rIHVuZGVyIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9z
cGkvc3BpX2F0bWVsLnR4dCBhbmQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ky
Yy9pMmMtYXQ5MS50eHQgaW4geW91ciBrZXJuZWwgc291cmNlLg0KDQpJbiBzdW1tYXJ5LCBpZiB5
b3UgYXJlIGx1Y2t5IGVub3VnaCB0aGF0IHRoZSBkZXZpY2UgeW91IHdhbnQgdG8gY29tbXVuaWNh
dGUgd2l0aCBoYXMgZGV2aWNlIHRyZWUgc3VwcG9ydCwgdGhlbiB5b3Ugd291bGQgYWRkIHRoYXQg
ZGV2aWNlIHRvIHlvdXIgZGV2aWNlIHRyZWUgZmlsZXMgYW5kIGZvbGxvdyB0aGVpciBkb2N1bWVu
dGF0aW9uIG9uIGhvdyB0byBjb21tdW5pY2F0ZSB3aXRoIGl0IGZyb20gdXNlcnNwYWNlLiAgRm9y
IGV4YW1wbGUsIEkgYW0gdXNpbmcgdGhlIEFENTQ0NiBEQUMgb24gbXkgaGFyZHdhcmUsIGFuZCBB
bmFsb2cgRGV2aWNlcyBoYXMgZXhjZWxsZW50IGRvY3VtZW50YXRpb24gb2YgdGhlaXIgREFDIExp
bnV4IGtlcm5lbCBkcml2ZXIgaGVyZTogaHR0cDovL3dpa2kuYW5hbG9nLmNvbS9yZXNvdXJjZXMv
dG9vbHMtc29mdHdhcmUvbGludXgtZHJpdmVycy9paW8tZGFjL2FkNTQ0Ni4gIEZvciB0aGlzIGRl
dmljZSBJIG9wZW4gdXAgYSBmaWxlIGFuZCB3cml0ZSBhIHZhbHVlIGZvciB0aGUgZGVzaXJlZCBv
dXRwdXQgdm9sdGFnZSwgYW5kIHRoZW4gdGhlIGRyaXZlciB0YWtlcyBjYXJlIG9mIGNvbW11bmlj
YXRpbmcgdG8gdGhlIEFENTQ0Ni4gIE90aGVyd2lzZSBJIHRoaW5rIHlvdSBjYW4gdXNlIHRoZSBn
ZW5lcmljIHNwaWRldiBpbnRlcmZhY2UgZm9yIHJlYWRpbmcgYW5kIHdyaXRpbmcgZGF0YSBvbiB0
aGUgU1BJIHBvcnQgKGFuZCBJIHRoaW5rIHRoZXJlIGlzIHNvbWV0aGluZyBzaW1pbGFyIGZvciBJ
MkM/KS4NCg0KU2luY2UgeW91IGhhdmUgcXVlc3Rpb25zIHRoYXQgYXJlIHNwZWNpZmljIHRvIHlv
dXIgaGFyZHdhcmUsIEkgdGhpbmsgeW91IG1heSBiZSBhYmxlIHRvIGdldCBiZXR0ZXIgYW5zd2Vy
cyBvbiBBdG1lbCdzIEFUOTEgZm9ydW1zIG9yIGNoZWNraW5nIGZvciBpbmZvcm1hdGlvbiBvbiBM
aW51eCBrZXJuZWwgZHJpdmVyIHN1cHBvcnQgZm9yIHlvdXIgc3BlY2lmaWMgSTJDIGFuZCBTUEkg
ZGV2aWNlcy4gIElmIHlvdSBhcmUgaGF2aW5nIHByb2JsZW1zIGJ1aWxkaW5nIGFuIGFwcGxpY2F0
aW9uIHdpdGggdGhlIEVjbGlwc2UgQURUIGFuZCBnZXR0aW5nIHRvIHJ1biBvbiB5b3VyIGhhcmR3
YXJlLCB0aGVuIGxldCB1cyBrbm93IHNvbWUgc3BlY2lmaWMgZGV0YWlscyB3aXRoIHRoZSBwcm9i
bGVtcyB5b3UgYXJlIHNlZWluZy4NCg0KUmVnYXJkcywNCkJyeWFuDQoNCj4gDQo+IFRoYW5rcywN
Cj4gDQo+IFNhbQ0K

