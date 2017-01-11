Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DCA7E004A0; Wed, 11 Jan 2017 04:34:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.111.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Wed, 11 Jan 2017 04:34:09 PST
Received: from BLU004-OMC4S36.hotmail.com (blu004-omc4s36.hotmail.com
	[65.55.111.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 623AFE003E4
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 04:34:09 -0800 (PST)
Received: from EUR02-HE1-obe.outbound.protection.outlook.com ([65.55.111.136])
	by BLU004-OMC4S36.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Wed, 11 Jan 2017 04:33:07 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=M3tzcP97+TEM/ZW4Go9O+18sNyUFOJ4AYQq311WpgGE=;
	b=u63AJ5/MWC4cWnFm3L2+nay1KEexZKdOMb4rSdj7Fm0CZk2pDUqmppBiby0YK4HyWmAgWsci5zCn24iTjzh0HzdOMCLpBgzYcFPP+46vbuf55u/Ju/fuWNlVG2/CRZYof0A0rZQr0Gkdi7rpKTor05Ef3o94AjAMg9ygxHmxbhrU2eNkRFCItbRijrwFUQlvPlaqqEzXkWMDz3FZRjIb/t50thSukNTCqGci/eDrrkNRAaNLo3k2iqhhAqC9WepKMJlZLtdSNGKe4YzbV8wbqau4b6aCjr2eMaDzpw0gxi0w3DqaIHWmlGbh9ZhuyC1Si6wgYb3Uj37eiEWegpGV7w==
Received: from AM5EUR02FT023.eop-EUR02.prod.protection.outlook.com
	(10.152.8.57) by AM5EUR02HT063.eop-EUR02.prod.protection.outlook.com
	(10.152.9.126) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.803.8;
	Wed, 11 Jan 2017 12:33:06 +0000
Received: from MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM (10.152.8.58) by
	AM5EUR02FT023.mail.protection.outlook.com (10.152.8.166) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.803.8 via Frontend Transport; Wed, 11 Jan 2017 12:33:06 +0000
Received: from MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM ([10.166.236.147]) by
	MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM ([10.166.236.147]) with mapi id
	15.01.0845.012; Wed, 11 Jan 2017 12:33:06 +0000
From: Chris Trobridge <christrobridge@hotmail.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Failure Inheriting rpm_sign
Thread-Index: AQHSaBLQr6aBtVwoVUGgLuVcOQw3RKEwgW+AgAK8CYA=
Date: Wed, 11 Jan 2017 12:33:05 +0000
Message-ID: <MMXP123MB012561EAC82EB3E38F223035DA660@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
References: <MMXP123MB0125B632BF3BE563B71B6EA1DA630@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
	<CAMKF1sqAb+CStmPbEcTNb15kUBgj-HTdjCiY89CTwdVmjA-DPQ@mail.gmail.com>
In-Reply-To: <CAMKF1sqAb+CStmPbEcTNb15kUBgj-HTdjCiY89CTwdVmjA-DPQ@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originalarrivaltime: 11 Jan 2017 12:33:00.0737 (UTC)
	FILETIME=[D8A39B10:01D26C06]
x-incomingtopheadermarker: OriginalChecksum:FAD3003165EDFE6A8AC42717ABB80A8CF21633113F9BF70EC550774A0D3302A5;
	UpperCasedChecksum:1DD52E71E531FF4B04617A24675E6389169BE385DECDE27334F0B8BCFB7A0255;
	SizeAsReceived:7681; Count:38
x-ms-exchange-messagesentrepresentingtype: 1
x-incomingheadercount: 38
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; AM5EUR02HT063;
	7:ID12YZ++DBLOUKaVYodRFbu8+xrNLIWych3tMEjxJL0Mq3RV1xbcyMx1+ojIdvur4YZdv8VkhBglLFkpsy3zxtTw5M6CblWRz1dq23mR+CkiQXQSAfh2Tm66Lu7/8NCDCvUt0PI9jvZ0FBq8a49/U/gbAC+jF///PaOOxqk8PNSXnVlTPFXwwum7N86J1UuIWW7ZgyBUfLqHsDjnboTq0xdN6f+aeBxN3Is4+dHKRjvDuUCTB5HxFz0rPLCB8oeuO8gcmeLBM0JkX1/J4x/KXfXwSJ1kuLAhvvUFyAaIfkH9JCx9W7j9HlnfgpnsX5fVh93IzTWOrKQ0WbTiYrth/WUep+7ocWiLkGf/Eq05n3dehsbQD+alnpI6rfMQdfa8OzDTsqexQ9rNfc3yxGUaouDtNMFgOh+NcX6PMI6xeFl2KZ2utqLDPw3Bf7g8WIb3O9PJ2C9HBHASfKtAqAP2TA==
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5EUR02HT063;
	H:MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: ae356445-8f82-4861-93d4-08d43a1dfd8d
x-microsoft-antispam: BCL:0; PCL:0; RULEID:(22001)(8291501021);
	SRVR:AM5EUR02HT063; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(444111334)(444112120)(432015012)(82015046);
	SRVR:AM5EUR02HT063; BCL:0; PCL:0; RULEID:; SRVR:AM5EUR02HT063; 
x-forefront-prvs: 01842C458A
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2017 12:33:05.8427 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR02HT063
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Failure Inheriting rpm_sign
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
X-List-Received-Date: Wed, 11 Jan 2017 12:34:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <207FC9C0484A544FAD962CDD0B045D98@GBRP123.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

T24gTW9uLCAyMDE3LTAxLTA5IGF0IDEwOjQ3IC0wODAwLCBLaGVtIFJhaiB3cm90ZToNCj4gT24g
RnJpLCBKYW4gNiwgMjAxNyBhdCAzOjUyIEFNLCBDaHJpcyBUcm9icmlkZ2UNCj4gPGNocmlzdHJv
YnJpZGdlQGhvdG1haWwuY29tPiB3cm90ZToNCj4gPiBJIGFtIGdldHRpbmcgIkV4Y2VwdGlvbjog
T1NFcnJvcjogW0Vycm5vIDddIEFyZ3VtZW50IGxpc3QgdG9vIGxvbmciDQo+ID4gZm9yIHNpZ25f
cnBtIGluIHRoZSBkb19wYWNrYWdlX3dyaXRlX3JwbSB0YXNrcyBmb3IgdGhlDQo+ID4gbGludXgt
eW9jdG8gYW5kIGdsaWJjLWxvY2FsZSByZWNpcGVzLg0KPiA+IA0KPiA+IFRoaXMgaXMgYnVpbGRp
bmcgY29yZS1pbWFnZS1taW5pbWFsIChhbmQgYWxzbyBteSBvd24gaW1hZ2UpIHdpdGgNCj4gPiBt
b3J0eSAoNWFhNDgxZCkgb24gRmVkb3JhIDI1Lg0KPiA+IA0KPiA+IEkgaGF2ZSBlbmFibGVkIHRo
ZSBycG0gc2lnbmluZyB3aXRoOg0KPiA+IA0KPiA+IElOSEVSSVQgKz0gIiBzaWduX3JwbSINCj4g
PiBSUE1fR1BHX05BTUUgPSAie25hbWV9Ig0KPiA+IFJQTV9HUEdfUEFTU1BIUkFTRSA9ICJ7cGFz
c3BocmFzZX0iDQo+ID4gSU1BR0VfSU5TVEFMTF9hcHBlbmQgPSAiIHNpZ25pbmcta2V5cy1ycG0i
DQo+ID4gDQo+ID4gVGhlIGVycm9yIG1lc3NhZ2UgbWFrZXMgc29tZSBzZW5zZSBpbiBhcyBtdWNo
IGFzIHRoZXNlIHJlY2lwZXMNCj4gPiBwcm9kdWNlIGEgbG90IG9mIHBhY2thZ2VzIChmb3IgZXhh
bXBsZSwgZ2xpYmMtbG9jYWxlIHByb2R1Y2VzIDE3OTENCj4gPiBwYWNrYWdlcykgYW5kIHRoZSBj
b21tYW5kIGxpbmUgaW4gdGhlIGxvZyBpcyBwcmV0dHkgYmlnLCBhbHRob3VnaA0KPiA+IHJlYWRp
bmcgYXJvdW5kIEkgZGlkbid0IGZpbmQgYSBjb25zZW5zdXMgb24gd2hhdCB0aGUgbWF4IGNvbW1h
bmQNCj4gPiBsaW5lIHNob3VsZCBiZS4NCj4gPiANCj4gPiBUaGUgY29kZSB0byBzaWduIHJwbXMg
aXMgaW4gbWV0YS9saWIvb2UvZ3BnX3NpZ24ucHkNCj4gPiBiL21ldGEvbGliL29lL2dwZ19zaWdu
LnB5IGFuZCBpdCBidWlsZHMgdXAgb25lIGNvbW1hbmQgbGluZSB3aXRoDQo+ID4gYWxsIHRoZSBw
YWNrYWdlcy4NCj4gPiANCj4gPiBJIGNoYW5nZWQgdGhlIGNvZGUgKHBhdGNoIGFwcGVuZGVkKSB0
byBzaWduIGVhY2ggcnBtIGluIGEgc2VwYXJhdGUNCj4gPiBjb21tYW5kIGFuZCB0aGUgYnVpbGQg
Y29tcGxldGVkIHN1Y2Nlc3NmdWxseS7CoMKgVGhlIHNpZ25pbmcNCj4gPiBvcGVyYXRpb25zIHRh
a2UgYSBsYXJnZSBhbW91bnQgb2YgdGltZSBzbyBJIHRoaW5rIHRoaXMgbWlnaHQgYmUgYQ0KPiA+
IHJlYXNvbmFibGUgY2hhbmdlIGJ1dCB5b3UgbWF5IGhhdmUgb3RoZXIgY29uY2VybnMuDQo+IA0K
PiBUaGlzIGNlcnRhaW5seSBpcyB1c2VmdWwsIHBlcmhhcHMgdGhlIHNpZ25pbmcgYml0cyBjYW4g
YmUgbW92ZWQgdG8NCj4gaW5kaXZpZHVhbA0KPiByZWNpcGUgcGFja2FnaW5nIHRhc2tzIHRoYXQg
d2F5IGl0IG1heSBiZSBwYXJhbGxlbGl6ZWQgYSBiaXQNCj4gDQoNClRoYW5rcyBSYWosDQoNClNv
bWV0aGluZyBuZWVkcyB0byBiZSBkb25lIGFzLCB1bmxlc3MgSSd2ZSBtZXNzZWQgdXAgc29tZXdo
ZXJlLCB5b3UNCmNhbm5vdCBidWlsZCBldmVuIGNvcmUtaW1hZ2UtbWluaW1hbCB3aXRoIHJwbSBz
aWduaW5nIGVuYWJsZWQgc28gdGhlDQpzaWduX3JwbSBjbGFzcyBpcyBlZmZlY3RpdmVseSBicm9r
ZW4uDQoNClRoZSBjaGFuZ2UgSSBtYWRlIHdvcmtzLCBidXQgaXQncyB0cnVlIGlzIGxlc3MgZWZm
aWNpZW50IHRoYW4gc2lnbmluZw0KcnBtcyBpbmRpdmlkdWFsbHkuICBUaGUgZXhwZW5zZSBvZiB0
aGUgc2lnbmF0dXJlIGdlbmVyYXRpb24gbWVhbnQgaXQNCndhc24ndCBpbmVmZmljaWVudCB0byBz
aWduIGVhY2ggcGFja2FnZSBpbiBhIHJlY2lwZSB3aXRoIGEgc2VwYXJhdGUNCmNvbW1hbmQuDQoN
Ckhvd2V2ZXIsIGxvb2tpbmcgaW4gcGFja2FnZV9ycG0uYmJjbGFzcywgdGhlIGVuZCBvZiBkb19w
YWNrYWdlX3JwbSgpDQpoYXM6DQoNCmlmIGQuZ2V0VmFyKCdSUE1fU0lHTl9QQUNLQUdFUycsIFRy
dWUpID09ICcxJzoNCsKgwqDCoMKgYmIuYnVpbGQuZXhlY19mdW5jKCJzaWduX3JwbSIsIGQpDQoN
ClNvLCB0byBhdm9pZCBjb25mdXNpb24sIGFsbCB0aGUgcnBtcyBpbiBvbmUgcmVjaXBlIGFyZSBw
YWNrYWdlZCBpbg0KdGFzaywgYW5kIHRoZW4gdGhhdCB0YXNrIGNhbGxzIHRoZSBmdW5jdGlvbiAg
c2lnbiBhbGwgdGhlIHBhY2thZ2VzLiAgSQ0KZG9uJ3Qga25vdyBpZiB0aGVyZSdzIGEgd2F5IGZv
ciBkb19wYWNrYWdlX3JwbSgpIHRvIHNwYXduIHRhc2tzIHRvIHNpZ24NCmVhY2ggcGFja2FnZSBp
bmRpdmlkdWFsbHkuDQoNCkkgYWxzbyBmb3VuZCBJIG5lZWRlZCAnSU1BR0VfSU5TVEFMTF9hcHBl
bmQgPSAiIHNpZ25pbmcta2V5cy1ycG0iJw0KbG9jYWwuY29uZiwgdG8gZGVwbG95IHRoZSBwdWJs
aWMga2V5IGJ1dCBpbiBzaWduX3JwbXMuYmJjbGFzcyB0aGVyZSBpczoNCg0KZG9fcGFja2FnZV9p
bmRleFtkZXBlbmRzXSArPSAic2lnbmluZy1rZXlzOmRvX2RlcGxveSINCmRvX3Jvb3Rmc1tkZXBl
bmRzXSArPSAic2lnbmluZy1rZXlzOmRvX3BvcHVsYXRlX3N5c3Jvb3QiDQoNCkl0IG1heSBiZSB0
aGlzIGlzbid0IHF1aXRlIHdoYXQgaXMgcmVxdWlyZWQuDQoNClJlZ2FyZHMsDQpDaHJpcw0KDQo=

