Return-Path: <umamahesh.y@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47E31E00CD4; Sun, 15 Oct 2017 07:13:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.8.186.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from GWS08.hcl.com (gws08.hcl.com [192.8.186.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2F18E00B67
	for <yocto@yoctoproject.org>; Sun, 15 Oct 2017 07:13:52 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.43,382,1503340200"; d="scan'208";a="76788813"
Received: from unknown (HELO CHN-CORP-HT01.CORP.HCL.IN) ([10.249.2.33])
	by GWS08.hcl.com with ESMTP/TLS/AES128-SHA; 15 Oct 2017 19:43:50 +0530
Received: from CHN-CORP-EDGE1.CORP.HCL.COM (10.249.1.159) by
	CHN-CORP-HT01.CORP.HCL.IN (10.249.2.33) with Microsoft SMTP Server
	(TLS) id 14.3.339.0; Sun, 15 Oct 2017 19:43:50 +0530
Received: from APC01-SG2-obe.outbound.protection.outlook.com (65.55.88.244) by
	transportedge.hcl.com (10.249.1.159) with Microsoft SMTP Server
	(TLS) id 14.3.339.0; Sun, 15 Oct 2017 19:43:02 +0530
Received: from HK2PR04MB0995.apcprd04.prod.outlook.com (10.165.58.153) by
	HK2PR04MB0996.apcprd04.prod.outlook.com (10.165.58.154) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Sun, 15 Oct 2017 14:13:47 +0000
Received: from HK2PR04MB0995.apcprd04.prod.outlook.com
	([fe80::7da9:d478:cd68:f048]) by
	HK2PR04MB0995.apcprd04.prod.outlook.com
	([fe80::7da9:d478:cd68:f048%13]) with mapi id 15.20.0077.022;
	Sun, 15 Oct 2017 14:13:47 +0000
From: Umamahesh Yelchuruvenkata <umamahesh.y@hcl.com>
To: Vincent Prince <vincent.prince.fr@gmail.com>
Thread-Topic: [yocto] Procedure for adding driver in Yocto
Thread-Index: AdNCUyU9vC4Mhnc1SNCD76rUbn5L1gADsaYAANdkzuA=
Date: Sun, 15 Oct 2017 14:13:46 +0000
Message-ID: <HK2PR04MB0995E6C41F4CE558BD3B0DE0E64E0@HK2PR04MB0995.apcprd04.prod.outlook.com>
References: <HK2PR04MB09958FA97340182BB1D3D0E9E64A0@HK2PR04MB0995.apcprd04.prod.outlook.com>
	<CAB2nKc80fwSyRcuNMDrxkuWWjTq7cUpzohTJ7xcc4jWMyCEGEw@mail.gmail.com>
In-Reply-To: <CAB2nKc80fwSyRcuNMDrxkuWWjTq7cUpzohTJ7xcc4jWMyCEGEw@mail.gmail.com>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [14.141.193.151]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HK2PR04MB0996;
	6:K+n/Ghou9B39uKu5s64NOK0KxfSx4heZ1AypERpDLLKdItzHWA/RpopiJoevqKzapUiEU5Fg1e3jctVp0celiStJSaemUOIMIKfZGqaxuI4d8Na1UGvVbIZ5cFxcJ+p3apGraIguqrXpGRliHerxoJndYhnsi1iUWxuYGUrW3+kjQKiMe4knqb+15u+PXdfWI4aCNee1Xq5OIgvG1MkJtf1HgLGGxCAgo99hn9oY7Syfh5971fqek+MIR18plivtCRDX6mctX4ogtKdhDOw9FOqCViIiPrKR+Mb0SE18dgqjSCfwYpmgE5urG2Wpr+86SMfBFhfglYwrWtL+U8jQkA==;
	5:iOEKVnqz2SJdodDm0dzPp/2hHH9jGlIaMb3W9YjveV1Twi3HH847muzW+mEl1I474hAmQcO0CLtUbfKJDfhzR5lrOGk7C4AsdWjQV+67/qksYC7auPBabBhwhdvDJZeKekU3NYzEzig1v8mZzsUxvn74lSWKNONiYx2hItLPxss=;
	24:LbUafZzK+yUyegWYkMnpvnTUlOc0o0mE9hsJ4+9Foi+ltWPD6aYMu6MhEuCxBhjlBmA16+gfFj7CJCjCIulGUaFf3V0MfS9T6nfM5jWhrtQ=;
	7:kVjd5aQDxZvYt554fSrzp+xF+40VD5G8SByC5/HwDvXoafAm5yr5ogsGcPzy8qauUyk/RUecAjUqrafNvOIz5ZD9IwMVYeTxeNnIy/ulcihzNDG4MdaDzFAhqDske4fh8tgkf4FT8WbUJuhoWWuZcO7kqIVEAPTMkXadsrNf4T/Nb5apAmYG5jF30yHD/zUw9SEej5ygmRxHKRMc7/Q3d4aaWgWzp/HNPyQIg/KSTxI=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 5a20b8c7-f77f-47a5-fbde-08d513d6f376
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:HK2PR04MB0996; 
x-ms-traffictypediagnostic: HK2PR04MB0996:
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=umamahesh.y@hcl.com; 
x-exchange-antispam-report-test: UriScan:(3501301888747);
x-microsoft-antispam-prvs: <HK2PR04MB09969C92CCD1C008D1D7ECF2E64E0@HK2PR04MB0996.apcprd04.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(93006095)(93001095)(10201501046)(3002001)(100000703101)(100105400095)(6041248)(20161123564025)(20161123558100)(20161123560025)(20161123555025)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:HK2PR04MB0996; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HK2PR04MB0996; 
x-forefront-prvs: 046164D5C4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(376002)(346002)(377424004)(189002)(38564003)(13464003)(199003)(5660300001)(7696004)(101416001)(7736002)(9686003)(99286003)(6306002)(81156014)(8676002)(97736004)(55016002)(81166006)(39060400002)(3846002)(106356001)(4326008)(3660700001)(68736007)(4001150100001)(305945005)(53936002)(74316002)(2950100002)(6916009)(54356999)(76176999)(50986999)(105586002)(86362001)(6116002)(102836003)(554214002)(6436002)(53546010)(5890100001)(5250100002)(66066001)(189998001)(6506006)(25786009)(14454004)(966005)(229853002)(478600001)(8936002)(6246003)(2906002)(3280700002)(2900100001)(33656002)(316002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HK2PR04MB0996;
	H:HK2PR04MB0995.apcprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: hcl.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2017 14:13:46.9820 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 189de737-c93a-4f5a-8b68-6f4ca9941912
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR04MB0996
X-OriginatorOrg: HCL.COM
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Procedure for adding driver in Yocto
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
X-List-Received-Date: Sun, 15 Oct 2017 14:13:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgDQoNCkkgYW0gdXNpbmcgd2FuZGJvYXJkLCAuYmIgZmlsZSBpbiB0aGUgZm9sbG93aW5nIHBh
dGgNCg0KL3lvY3RvaW14LWZzbC1ic3Avc291cmNlcy9tZXRhLWZyZWVzY2FsZS0zcmRwYXJ0eS9y
ZWNpcGVzLWtlcm5lbC9rZXJuZWwtbW9kdWxlcw0KDQpDb250YWlucyBrZXJuZWwtbW9kdWxlLW1j
Y18yLjEuMDEuYmINCg0KQnV0IGhvdyBkbyBJIGVkaXQgaXQgdG8gYWRkIGEgbmV3IGRyaXZlci4g
DQoNClBsZWFzZSBzdWdnZXN0Lg0KDQpUaGFua3MNClVtYW1haGVzaA0KDQotLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQ0KRnJvbTogVmluY2VudCBQcmluY2UgW21haWx0bzp2aW5jZW50LnByaW5j
ZS5mckBnbWFpbC5jb21dIA0KU2VudDogMTEgT2N0b2JlciAyMDE3IDEyOjU0DQpUbzogVW1hbWFo
ZXNoIFllbGNodXJ1dmVua2F0YSA8dW1hbWFoZXNoLnlAaGNsLmNvbT4NCkNjOiB5b2N0b0B5b2N0
b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBQcm9jZWR1cmUgZm9yIGFkZGluZyBk
cml2ZXIgaW4gWW9jdG8NCg0KSGksDQoNCklmIHlvdSB3YW50IHRvIGNyZWF0ZSBhIGtlcm5lbCBt
b2R1bGUsIHlvdSBjYW4gdXNlIHRoYXQga2luZCBvZiByZWNpcGUNCg0KbWV0YS14LWJzcC9yZWNp
cGVzLWtlcm5lbC9rZXJuZWwtbW9kdWxlL2tlcm5lbC1tb2R1bGUtbW9kdWxlbmFtZS5iYjoNCg0K
U1VNTUFSWSA9ICJLZXJuZWwgbG9hZGFibGUgbW9kdWxlIg0KREVTQ1JJUFRJT04gPSAiVGhpcyBw
YWNrYWdlIGluY2x1ZGVzIGxvYWRhYmxlIG1vZHVsZSINCkxJQ0VOU0UgPSAiR1BMdjIiDQpMSUNf
RklMRVNfQ0hLU1VNID0gImZpbGU6Ly9DT1BZSU5HO21kNT1hMDRiYTJkOTQ3MjVlNzI3MGFmMDkx
ZjFmMWNiNjU4MCINCg0KUFYgLj0gIitnaXQke1NSQ1BWfSINCg0KU1JDUkVWID0gImUyNmJhYmEy
NWZhNzkyNzMwZDA5YzZlNTMzNDgxNGIzMDM3ZTdiYzciDQpTUkNfVVJJID0gImdpdDovL3VybC9t
b2R1bGVuYW1lLmdpdCINCg0KUyA9ICIke1dPUktESVJ9L2dpdCINCg0KaW5oZXJpdCBtb2R1bGUN
Cg0KS0VSTkVMX01PRFVMRV9BVVRPTE9BRCA9ICJtb2R1bGVuYW1lIg0KDQpJZiBpdCBvayBmb3Ig
eW91ID8NCkJlc3QgUmVnYXJkcywNClZpbmNlbnQNCg0KMjAxNy0xMC0xMSA3OjQwIEdNVCswMjow
MCBVbWFtYWhlc2ggWWVsY2h1cnV2ZW5rYXRhIDx1bWFtYWhlc2gueUBoY2wuY29tPjoNCj4gSGkN
Cj4NCj4NCj4NCj4gSSBhbSBsb29raW5nIGZvciBhIHByb2NlZHVyZSBob3cgdG8gYWRkIGFuIG5l
dyBkcml2ZXIgaW4gWW9jdG8gS2VybmVsLiANCj4gSSB0cmllZCBhZGRpbmcgYW4gc2FtcGxlIGNo
YXIgZHJpdmVyIGJ5IHVwZGF0aW5nIEtjb25maWcgYW5kIG1ha2VmaWxlIA0KPiBvZiByZXNwZWN0
aXZlIGRpcmVjdG9yeSBhbmQgYnkgZGVmYXVsdCBtYXJrZWQgYXMgYnVpbHQgaW4gYnkgZGVmYXVs
dC4NCj4NCj4NCj4NCj4gQnV0IEkgZG8gbm90IHNlZSB0aGUgZHJpdmVyIGlzIGNvbWluZyB1cCB3
aGlsZSBrZXJuZWwgaXMgYm9vdGVkLg0KPg0KPg0KPg0KPiBQbGVhc2Ugc3VnZ2VzdCB0aGUgcHJv
Y2VkdXJlLg0KPg0KPg0KPg0KPiBUaGFua3MNCj4NCj4gVW1hbWFoZXNoDQo+DQo+DQo+DQo+IDo6
RElTQ0xBSU1FUjo6DQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAtLS0tLS0t
LQ0KPg0KPiBUaGUgY29udGVudHMgb2YgdGhpcyBlLW1haWwgYW5kIGFueSBhdHRhY2htZW50KHMp
IGFyZSBjb25maWRlbnRpYWwgYW5kIA0KPiBpbnRlbmRlZCBmb3IgdGhlIG5hbWVkIHJlY2lwaWVu
dChzKSBvbmx5Lg0KPiBFLW1haWwgdHJhbnNtaXNzaW9uIGlzIG5vdCBndWFyYW50ZWVkIHRvIGJl
IHNlY3VyZSBvciBlcnJvci1mcmVlIGFzIA0KPiBpbmZvcm1hdGlvbiBjb3VsZCBiZSBpbnRlcmNl
cHRlZCwgY29ycnVwdGVkLCBsb3N0LCBkZXN0cm95ZWQsIGFycml2ZSANCj4gbGF0ZSBvciBpbmNv
bXBsZXRlLCBvciBtYXkgY29udGFpbiB2aXJ1c2VzIGluIHRyYW5zbWlzc2lvbi4gVGhlIGUgbWFp
bCANCj4gYW5kIGl0cyBjb250ZW50cyAod2l0aCBvciB3aXRob3V0IHJlZmVycmVkIGVycm9ycykg
c2hhbGwgdGhlcmVmb3JlIG5vdCANCj4gYXR0YWNoIGFueSBsaWFiaWxpdHkgb24gdGhlIG9yaWdp
bmF0b3Igb3IgSENMIG9yIGl0cyBhZmZpbGlhdGVzLg0KPiBWaWV3cyBvciBvcGluaW9ucywgaWYg
YW55LCBwcmVzZW50ZWQgaW4gdGhpcyBlbWFpbCBhcmUgc29sZWx5IHRob3NlIG9mIA0KPiB0aGUg
YXV0aG9yIGFuZCBtYXkgbm90IG5lY2Vzc2FyaWx5IHJlZmxlY3QgdGhlIHZpZXdzIG9yIG9waW5p
b25zIG9mIA0KPiBIQ0wgb3IgaXRzIGFmZmlsaWF0ZXMuIEFueSBmb3JtIG9mIHJlcHJvZHVjdGlv
biwgZGlzc2VtaW5hdGlvbiwgDQo+IGNvcHlpbmcsIGRpc2Nsb3N1cmUsIG1vZGlmaWNhdGlvbiwg
ZGlzdHJpYnV0aW9uIGFuZCAvIG9yIHB1YmxpY2F0aW9uIA0KPiBvZiB0aGlzIG1lc3NhZ2Ugd2l0
aG91dCB0aGUgcHJpb3Igd3JpdHRlbiBjb25zZW50IG9mIGF1dGhvcml6ZWQgDQo+IHJlcHJlc2Vu
dGF0aXZlIG9mIEhDTCBpcyBzdHJpY3RseSBwcm9oaWJpdGVkLiBJZiB5b3UgaGF2ZSByZWNlaXZl
ZCANCj4gdGhpcyBlbWFpbCBpbiBlcnJvciBwbGVhc2UgZGVsZXRlIGl0IGFuZCBub3RpZnkgdGhl
IHNlbmRlciANCj4gaW1tZWRpYXRlbHkuDQo+IEJlZm9yZSBvcGVuaW5nIGFueSBlbWFpbCBhbmQv
b3IgYXR0YWNobWVudHMsIHBsZWFzZSBjaGVjayB0aGVtIGZvciANCj4gdmlydXNlcyBhbmQgb3Ro
ZXIgZGVmZWN0cy4NCj4NCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IC0tLS0t
LS0tDQo+DQo+DQo+IC0tDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQo+IHlvY3RvIG1haWxpbmcgbGlzdA0KPiB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn
DQo+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bw0KPg0K

