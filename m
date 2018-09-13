Return-Path: <Krzysztof.Dudziak@gemalto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4C4CE00A16; Thu, 13 Sep 2018 14:41:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.51 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0051.outbound.protection.outlook.com [104.47.2.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05C14E006AF
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 14:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gemalto.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=zXsF98qD6IhSdJ854p05jFgJ9a5cfaYI6kPdxy0gSwg=;
	b=tzlSflkKVTi+8vWyeX9y5hIcq29L9Mb3RT4ejnm0XqqxXwg+1XyJoFV/ACdSlJ3FPJFbExzKTQzDzLeOpFCJetndZdE5rquB1u94uS0GloYL0zXBc0WKHRgndB1d7Y6RURDo11numOgOUKTEJR1d2k5RTYB29WPZ6DpvoUSVrwk=
Received: from VI1PR01MB1070.eurprd01.prod.exchangelabs.com (10.162.118.12) by
	VI1PR01MB1534.eurprd01.prod.exchangelabs.com (10.163.248.152) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1122.15; Thu, 13 Sep 2018 13:05:23 +0000
Received: from VI1PR01MB1070.eurprd01.prod.exchangelabs.com
	([fe80::2148:c879:482f:ab44]) by
	VI1PR01MB1070.eurprd01.prod.exchangelabs.com
	([fe80::2148:c879:482f:ab44%2]) with mapi id 15.20.1122.020;
	Thu, 13 Sep 2018 13:05:23 +0000
From: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] inheriting native.bbclass explicitly
Thread-Index: AdRLQbZvnia0h813R7Oy/Sn0LGVS8wAAemQAAAKfu6AAAYNyAAAAM0owAAEXEoAAAYGcgA==
Date: Thu, 13 Sep 2018 13:05:22 +0000
Message-ID: <VI1PR01MB10709CA8B94B64B914109AB4E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
References: <VI1PR01MB1070FFAC3C22FF063B0DCF36E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LYqqOyBV_W7d-eskBrwMgSF=ba+T8VtxVg_aVguDgh4Jw@mail.gmail.com>
	<VI1PR01MB1070D4F85BC847EF0C3F8651E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LYsU+D+SP3s4Fwg4DYrv++kMmugv1RiVGU4ZFx_aKO=4w@mail.gmail.com>
	<VI1PR01MB10704F587FD2BF06F1CAFEF1E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LaFQtREQuX9xVtD3uno8G-OcorBMfjmXYmw0nhkfAUKOg@mail.gmail.com>
In-Reply-To: <CAJTo0LaFQtREQuX9xVtD3uno8G-OcorBMfjmXYmw0nhkfAUKOg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Krzysztof.Dudziak@gemalto.com; 
x-originating-ip: [90.187.45.85]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1PR01MB1534;
	6:2gF3YjH37bcYaZRS2WvfdpoE2ku+l4jgDF2RfW7wZnapLH9g61wEd3COkvDr4bwiy+zoigbst/4LejNSco/Toxz+VvftAu/M1J5Viz706NScOGsVbuLNn36Kr907Bd9Bz9Rxvo1Iz3VrCDtxGkePDcK7o5arjkoOio6rZiGtlGpZU/dBmK7hTOosDDhnG5ox7KdGCL8V5nnsWtwGe0gDPyqAxi//1BSqNSr5+FnvuFsy44VCxhDFDN7oqTwO90QtrqzaJK6y2OONAf7ia9tPqnsAOFm1n30kpRf/YIcYi8lTCTsQqcDaZqj2qAZSKGqQ7VZtSYabLLgPI8YS9NG6jSd82FL8GRqHmBoxyAqvqR0SeJgoUdzWxR1J66uSNDXWS8S9DKkiT1VhJE5ynzWOJmZk4F6KsXCiI/GmCt4DWGqNm+kR+R787kVvgBzrTvxmk3XrN8NebTNr9TtP93mqog==;
	5:AXR8RlaW/xm519gmEG7j569bUrn7rL7mm88G716qhks3K4Kuttl+EnCJIofBxbFUXDlhfwY0c6f7sZPVWUKvTN6cUMkzYbQ3RipzQ31onSCQft/6naHR+MP+QMpBMYXXzFTFU/21eFtJl4Tiv1LLAmHS7SRTXiZtTmYSNvviXdI=;
	7:a5fokBK5Ypzs3GFR1fXkM5fgDkNvDko8xW7KEEjDl9eIzmKmlh2VZlo16hgWYV2dr0JeFtH9yRxKNuzTcq/D1AHBXFXOfCS8LbmD/jQEcodJ6RybvkTq61uXEXrQ941ZDDC1x2bAaOx8I54Tj9//MFIpMwU6uK8ksKOEURzyA2EdBPErTrHUrMTafFJys+917+byEAbcfFaVCHc9xkwanDn/Ptc249Xmn6u2HUhbGQtnVKvhQorW8VeSINtTyzQE
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: c462435d-1a87-4f4c-f6fe-08d6197990c4
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR01MB1534; 
x-ms-traffictypediagnostic: VI1PR01MB1534:
x-microsoft-antispam-prvs: <VI1PR01MB15340489B4D61D9013E46648E01A0@VI1PR01MB1534.eurprd01.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(103651359005742)(228905959029699);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(3231311)(944501410)(52105095)(3002001)(93006095)(93001095)(10201501046)(149027)(150027)(6041310)(20161123558120)(20161123562045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(201708071742011)(7699050);
	SRVR:VI1PR01MB1534; BCL:0; PCL:0; RULEID:; SRVR:VI1PR01MB1534; 
x-forefront-prvs: 07943272E1
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39860400002)(376002)(136003)(396003)(346002)(366004)(199004)(189003)(13464003)(55016002)(53936002)(2900100001)(8936002)(72206003)(68736007)(76176011)(478600001)(5250100002)(486006)(25786009)(4326008)(476003)(81166006)(53546011)(102836004)(3846002)(26005)(186003)(6246003)(11346002)(6116002)(81156014)(97736004)(93886005)(14454004)(446003)(6506007)(86362001)(7736002)(229853002)(74316002)(66066001)(316002)(305945005)(8676002)(5660300001)(5024004)(14444005)(7696005)(106356001)(6436002)(256004)(2906002)(9686003)(33656002)(99286004)(105586002)(6916009);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR01MB1534;
	H:VI1PR01MB1070.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gemalto.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: Bo25OuR/3Kd471vDBzuz1RAcrpM0B3ui5VPQpZ/vkTTcMRhfZlpt/2phVPQq/6YH+ofzq8bDByxHF5bMW1ESauzhiRiL91exHXjUfEdXSKaxt00jSLgah+GXdoKDwD3Sa47J7g1sgbsB5VHJjmfiA82cl8fF0rY5NJ0fbYz14uiZxEZZcA5FhT8hajbC77omrnr5Xhw5TUTgyD/6LulWqaVpH1rYxOfeGG6cD0z38fEajlc5NinVBFUhJ7ev9dEMZpIo0Zw/1AaJCrTn9Wpf8hCG3VXmk33dWV9uIdTdDCiywr53Sqz74JNGeVivbhwreBhIJn41IkLhDcxV1lRBw01EGFJmBH4T6w7wp7rwqUI=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: gemalto.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c462435d-1a87-4f4c-f6fe-08d6197990c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2018 13:05:22.8818 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 37d0a9db-7c46-4096-bfe3-1add5b495d6d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR01MB1534
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: inheriting native.bbclass explicitly
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
X-List-Received-Date: Thu, 13 Sep 2018 21:41:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q3VycmVudCByZWxlYXNlJ3MgcmVmZXJlbmNlIG1hbnVhbCBpc3N1ZXMgaW4gbmF0aXZlLmJiY2xh
c3MgY2hhcHRlciBhIHdhcm5pbmc6DQoiV2hlbiBjcmVhdGluZyBhIHJlY2lwZSwgeW91IG11c3Qg
Zm9sbG93IHRoaXMgbmFtaW5nIGNvbnZlbnRpb246ICAgICAgbmF0aXZlLW15cmVjaXBlLmJiDQpO
b3QgZG9pbmcgc28gY2FuIGxlYWQgdG8gc3VidGxlIHByb2JsZW1zIGJlY2F1c2UgY29kZSBleGlz
dHMgdGhhdCBkZXBlbmRzIG9uIHRoZSBuYW1pbmcgY29udmVudGlvbi4iDQoNCkpldGhybyByZWxl
YXNlIG1hbnVhbCBkb2VzIG5vdCBwb2ludCBpdCBvdXQuDQpJcyB0aGlzIHdhcm5pbmcgcmVhbGx5
IG91dCBvZiByZWxldmFuY2UgZm9yIGNlcnRhaW4gcGFzdCByZWxlYXNlcyBlLmcuIEpldGhybz8N
Cg0KQWJzdHJhY3RpbmcgZnJvbSBxdWVzdGlvbiByYWlzZWQgYWJvdmUgaG93IGZvbGxvd2luZyB0
d28gZml0IGFsbCB0b2dldGhlcjoNCiJXaGVuIGNyZWF0aW5nIGEgcmVjaXBlLCB5b3UgbXVzdCBm
b2xsb3cgdGhpcyBuYW1pbmcgY29udmVudGlvbjogICAgICBuYXRpdmUtbXlyZWNpcGUuYmIiDQph
bmQNCiIgVGhlIGFkdmFudGFnZSBvZiB0aGUgc2Vjb25kIG1ldGhvZCBpcyB0aGF0IHlvdSBkbyBu
b3QgbmVlZCB0byBoYXZlIHR3byBzZXBhcmF0ZSByZWNpcGVzICIgKDIuNS4xIFJlbGVhc2UgUmVm
ZXJlbmNlIE1hbnVhbCkNCg0Ka3J6eXNpZWsNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
CkZyb206IEJ1cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0NClNlbnQ6
IFRodXJzZGF5LCAxMy4gU2VwdGVtYmVyIDIwMTggMTQ6MDANClRvOiBEdWR6aWFrIEtyenlzenRv
ZiA8S3J6eXN6dG9mLkR1ZHppYWtAZ2VtYWx0by5jb20+DQpDYzogeW9jdG9AeW9jdG9wcm9qZWN0
Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gaW5oZXJpdGluZyBuYXRpdmUuYmJjbGFzcyBleHBs
aWNpdGx5DQoNCk9uIDEzIFNlcHRlbWJlciAyMDE4IGF0IDEyOjM5LCBEdWR6aWFrIEtyenlzenRv
Zg0KPEtyenlzenRvZi5EdWR6aWFrQGdlbWFsdG8uY29tPiB3cm90ZToNCj4gVGhhbmtzIGZvciBo
aW50cy4NCj4gSSBkb24ndCB3YW50IHRvIGhhdmUgdGhpcyBwYWNrYWdlIG9uIHRhcmdldCBzeXN0
ZW0uDQo+IFlvdSBzb3VuZCBsaWtlIGluaGVyaXRpbmcgZXhwbGljaXRseSBoYWQgc29tZSBtYWpv
ciBkcmF3YmFjayBvZiB3aWRlIHNjb3BlLg0KDQpJdCB3b24ndCBiZSBpbmNsdWRlZCBpbiB0aGUg
aW1hZ2UgdW5sZXNzIHlvdSBhZGQgaXQgdG8gdGhlIGltYWdlLg0KDQpSb3NzDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXw0KIFRoaXMgbWVzc2FnZSBhbmQgYW55IGF0dGFjaG1lbnRz
IGFyZSBpbnRlbmRlZCBzb2xlbHkgZm9yIHRoZSBhZGRyZXNzZWVzIGFuZCBtYXkgY29udGFpbiBj
b25maWRlbnRpYWwgaW5mb3JtYXRpb24uIEFueSB1bmF1dGhvcml6ZWQgdXNlIG9yIGRpc2Nsb3N1
cmUsIGVpdGhlciB3aG9sZSBvciBwYXJ0aWFsLCBpcyBwcm9oaWJpdGVkLg0KRS1tYWlscyBhcmUg
c3VzY2VwdGlibGUgdG8gYWx0ZXJhdGlvbi4gT3VyIGNvbXBhbnkgc2hhbGwgbm90IGJlIGxpYWJs
ZSBmb3IgdGhlIG1lc3NhZ2UgaWYgYWx0ZXJlZCwgY2hhbmdlZCBvciBmYWxzaWZpZWQuIElmIHlv
dSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQgb2YgdGhpcyBtZXNzYWdlLCBwbGVhc2Ug
ZGVsZXRlIGl0IGFuZCBub3RpZnkgdGhlIHNlbmRlci4NCkFsdGhvdWdoIGFsbCByZWFzb25hYmxl
IGVmZm9ydHMgaGF2ZSBiZWVuIG1hZGUgdG8ga2VlcCB0aGlzIHRyYW5zbWlzc2lvbiBmcmVlIGZy
b20gdmlydXNlcywgdGhlIHNlbmRlciB3aWxsIG5vdCBiZSBsaWFibGUgZm9yIGRhbWFnZXMgY2F1
c2VkIGJ5IGEgdHJhbnNtaXR0ZWQgdmlydXMuDQo=

