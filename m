Return-Path: <Edmund.Nadolski@microsoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8FAAE00CAE; Sat, 22 Dec 2018 10:53:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.70.108 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 86460 seconds by postgrey-1.32 at yocto-www;
	Sat, 22 Dec 2018 10:53:44 PST
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
	(mail-eopbgr700108.outbound.protection.outlook.com [40.107.70.108])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99987E00C28
	for <yocto@yoctoproject.org>; Sat, 22 Dec 2018 10:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=zRK2wm958/qg4Z30sIV0sx3T+DDJqgAD1JN2a6SuocI=;
	b=ZGyxYLbAq5a0MobutwHhxyWmS2MRCEdGbU9lylX14Fm7kaFVK+ObvEsVyTmAzFQc6TzdvUjagni+Ot8KTuZjctS6tDzjdrLm9L/aLGFrfGqyJHhUYJoxglOoplS0Jm36vBWK+TJ/jswuXFXTUQRap9vFmJNDgsoXP/UPWMWXUME=
Received: from MWHPR21MB0174.namprd21.prod.outlook.com (10.173.52.20) by
	MWHPR21MB0704.namprd21.prod.outlook.com (10.175.142.14) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1471.4; Fri, 21 Dec 2018 01:19:15 +0000
Received: from MWHPR21MB0174.namprd21.prod.outlook.com
	([fe80::5584:428c:333e:f6ea]) by
	MWHPR21MB0174.namprd21.prod.outlook.com
	([fe80::5584:428c:333e:f6ea%4]) with mapi id 15.20.1471.012;
	Fri, 21 Dec 2018 01:19:15 +0000
From: Edmund Nadolski <Edmund.Nadolski@microsoft.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Yocto staged builds?
Thread-Index: AdSTHP7f1/V2KVmkQy6ri6l6W3rscAD9fu6AAG3orVA=
Date: Fri, 21 Dec 2018 01:19:15 +0000
Message-ID: <MWHPR21MB0174308BE768E56D94B6A1F6E5B80@MWHPR21MB0174.namprd21.prod.outlook.com>
References: <MWHPR21MB086165B1FB4C98FC687D8924E5A00@MWHPR21MB0861.namprd21.prod.outlook.com>
	<CAJTo0LaEmMpeuMJ14ZB72LBzGO9yOjtQ6HpZ2ocfTbLDEmtYhA@mail.gmail.com>
In-Reply-To: <CAJTo0LaEmMpeuMJ14ZB72LBzGO9yOjtQ6HpZ2ocfTbLDEmtYhA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=ednadols@microsoft.com;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2018-12-21T01:19:14.4103156Z;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft
	Azure Information Protection;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic;
	Sensitivity=General
x-originating-ip: [50.46.223.142]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MWHPR21MB0704;
	6:A/17ZMveIdsnZJbMNqRe6hAuP9N2IRn0zOCnY8l+b9Pnl2w3cDVkyIqOSoFhd4yX2N6zotz0bc6S6sF/CJiLZ2apuBgT6VC3sgwV1zEAHGoSYq+XpWCNvsag3WEY2Sr0QMQyq2MRNYGPtGUV1yn6mBLnTIztfTis9Rh2tnwcQAOElenveTBc8HEbEmCzcBPWA9xs8NiL0tCpka49PB1E8/Cy+tJnGW1D+JhmJiEM4AqhgVX/pdWpixpywlegE8v6bTCTp03uhnVPuPtSaVPKDcEpQvcsff5KoUCkn8Cxf+cCkPU6GmMqb7POt3D4R8RePcZ75VBXBlGsoGkMnxt82bGyMeoWH5+bjx6PaT1bDSgxGK4o7S1WBj7sfb13aq35PU40o6iYRMrcXdToUOUXXoCyrwqXz/JfACKTd6hPDd/HxA24gUpaJITPUsQtN0s6ws5fHi58ow3EQD3DFYZF0A==;
	5:HBoda8dGL7V0XoJADVivBiRc6IrXelR0g0VWE1GxuGEHU11CJ9V5MVAbbO3O7tVDgGzGSSLmzI10o53Vo1eUVaSnpSyOePbsmQu4wlNrnlQETn5zVF93VMAK95zLITyffp/wOF3InORwchlDZ7vxP658RkhyuY2sXzGsoNN1Kc8=;
	7:9SChzFSmBHDYyL/tDbjpLLWIVeqxQ19kZXtTThHvze3UaIFM7mE0rIk50b6eG8nMFRmRNvmwpQlwAuY2tdhmSbK3TARqjf62bne4VGJ51JlyafuSn8me5O1OVtAG+wWGFzuT6ulSIaKhUNp6Hazaug==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: ef2d3c9c-0d47-40e2-8b9a-08d666e252e5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(4534185)(4627221)(201703031133081)(201702281549075)(5600082)(711020)(4618075)(2017052603328)(7193020);
	SRVR:MWHPR21MB0704; 
x-ms-traffictypediagnostic: MWHPR21MB0704:
x-ms-exchange-purlcount: -3
x-microsoft-antispam-prvs: <MWHPR21MB0704A429874270A53060BCC4E5B80@MWHPR21MB0704.namprd21.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(3230021)(999002)(5005026)(6040522)(8220043)(2401047)(8121501046)(10201501046)(3231475)(944501520)(2018427008)(93006095)(93001095)(3002001)(6055026)(149066)(150057)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123558120)(20161123562045)(20161123564045)(201708071742011)(7699051)(76991095);
	SRVR:MWHPR21MB0704; BCL:0; PCL:0; RULEID:; SRVR:MWHPR21MB0704; 
x-forefront-prvs: 0893636978
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39860400002)(136003)(366004)(396003)(346002)(376002)(189003)(199004)(13464003)(25786009)(478600001)(2906002)(97736004)(26005)(10290500003)(6436002)(10090500001)(14454004)(72206003)(6346003)(256004)(14444005)(53936002)(102836004)(33656002)(81156014)(81166006)(105586002)(6246003)(106356001)(99286004)(5660300001)(8676002)(186003)(66066001)(6116002)(3846002)(11346002)(8936002)(486006)(476003)(446003)(68736007)(71200400001)(86362001)(71190400001)(22452003)(55016002)(6916009)(6506007)(53546011)(7696005)(86612001)(316002)(229853002)(7736002)(76176011)(74316002)(9686003)(8990500004)(4326008)(305945005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR21MB0704;
	H:MWHPR21MB0174.namprd21.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Edmund.Nadolski@microsoft.com; 
x-microsoft-antispam-message-info: zdzJbLp5v9PuwEXHn+sKDh1SEd38XBuTr4UORqemj1QhFdfGjLUFThsHA7lyMYZA4aN12R9DiCUBHMBiqIyPXfwIAxXNTUt7w0Llc1WtgM/XkpkCp1tBh+SgV790agpQvoH6sObcnH6xsWEwhrOfc5Bm8Dd7jzhANz9R4gohfzloL9cSrNjQnPr6JiHM+ZZMuSzg0ChFz6/zvIoON9aEfF5fkWyrNwe0kDYSWQ4h0kmprBh1eWFxanQpUANWygrES1dXbWXG7U56OzySD9/rIepA7N33RqMd5YIvZxjDaRdpXtvA4m3paYdSART4HLIa
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef2d3c9c-0d47-40e2-8b9a-08d666e252e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2018 01:19:15.7760 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR21MB0704
X-Mailman-Approved-At: Thu, 03 Jan 2019 01:08:45 -0800
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Yocto staged builds?
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
X-List-Received-Date: Sat, 22 Dec 2018 18:53:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBCdXJ0b24sIFJvc3MgPHJvc3Mu
YnVydG9uQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgRGVjZW1iZXIgMTgsIDIwMTggMTI6
NDggUE0NCj4gVG86IEVkbXVuZCBOYWRvbHNraSA8RWRtdW5kLk5hZG9sc2tpQG1pY3Jvc29mdC5j
b20+DQo+IENjOiBZb2N0by1tYWlsaW5nLWxpc3QgPHlvY3RvQHlvY3RvcHJvamVjdC5vcmc+DQo+
IFN1YmplY3Q6IFJlOiBbeW9jdG9dIFlvY3RvIHN0YWdlZCBidWlsZHM/DQo+IA0KPiBPbiBUdWUs
IDE4IERlYyAyMDE4IGF0IDE2OjA3LCBFZG11bmQgTmFkb2xza2kNCj4gPEVkbXVuZC5OYWRvbHNr
aUBtaWNyb3NvZnQuY29tPiB3cm90ZToNCj4gPiBDcmVhdGUgYW5kIHNpZ24gYmluYXJ5IGZpbGVz
IChpZSBrZXJuZWwsIG1vZHVsZXMsIGR0Yiwg4oCmKS4NCj4gDQo+IEtlcm5lbCBtb2R1bGVzIGNh
biBiZSBzaWduZWQuICBObyBpZGVhIGFib3V0IERUQi4gIEFsc28gcGFja2FnZXMgY2FuIGJlDQo+
IHNpZ25lZC4NCj4gDQo+ID4gQ3JlYXRlIGZzIGltYWdlcyBmcm9tIGFib3ZlIGFuZCBzaWduIHRo
b3NlLg0KPiANCj4gRGVwZW5kcyBob3cgeW91IHdhbnQgdG8gc2lnbiB0aGUgaW1hZ2UsIG1vc3Qg
bGlrZWx5IG5vdCBoYXJkIHRvIGltcGxlbWVudC4NCj4gDQo+ID4gQ3JlYXRlIEZJVCBpbWFnZXMg
YW5kIHNpZ24uDQo+IA0KPiBQYXNzLg0KPiANCj4gWW9jdG8gaXMgZ2VuZXJhbGx5IGZsZXhpYmxl
IGVub3VnaCB0aGF0IGFueSBzaWduaW5nIHRoYXQgaXNuJ3QgY3VycmVudGx5IGRvZXNuJ3QNCj4g
d291bGRuJ3QgYmUgdG9vIGRpZmZpY3VsdCB0byBhZGQuDQo+IA0KPiBSb3NzDQoNClRoYW5rcyBS
b3NzLiAgU28gc291bmRzIGxpa2UgaXQgc2hvdWxkIGJlIGEgbWF0dGVyIG9mIGFwcGVuZGluZyBh
biBhZGR0YXNrIGF0IHRoZQ0KcmVsZXZhbnQgcGFydCBvZiBlYWNoIHJlY2lwZSAtLSBpcyBpdCB0
aGF0IHN0cmFpZ2h0Zm9yd2FyZCBvciBoYXZlIEkgb3Zlcmxvb2tlZA0KYW55dGhpbmcgaW1wb3J0
YW50Pw0KDQpFZA0K

