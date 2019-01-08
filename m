Return-Path: <MANJUKUM@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A83F7E00C93; Tue,  8 Jan 2019 11:36:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.82.72 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 83481 seconds by postgrey-1.32 at yocto-www;
	Tue, 08 Jan 2019 11:36:04 PST
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-eopbgr820072.outbound.protection.outlook.com [40.107.82.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58ACCE00BC8
	for <yocto@yoctoproject.org>; Tue,  8 Jan 2019 11:36:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=9Xegab+zdkO3mV/GuqUQPJu7jyg4ZOU5A/1TOnW29hM=;
	b=q2UQcdopUZRBidtD3liDWlKVaGsU/5M7drckKuvODa2oa5ID06WbbKhMsoXBDceWxTRJl4wCEw0EMcbAnQ3pPRdtHMD8apKUqG9vDfo4gmGjXQKi34uk69eqqRNJyiXTqu6/XMW5Sq3Ead7+vt22gvL1ax7PcB0S3Yb3kuCYTog=
Received: from BYAPR02MB6005.namprd02.prod.outlook.com (20.179.89.140) by
	BYAPR02MB5640.namprd02.prod.outlook.com (20.177.230.142) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1495.6; Tue, 8 Jan 2019 18:03:19 +0000
Received: from BYAPR02MB6005.namprd02.prod.outlook.com
	([fe80::b921:e815:abd4:d3e8]) by
	BYAPR02MB6005.namprd02.prod.outlook.com
	([fe80::b921:e815:abd4:d3e8%5]) with mapi id 15.20.1495.011;
	Tue, 8 Jan 2019 18:03:19 +0000
From: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Notes: Yocto Project Technical Team Meeting @ Tue Jan 8, 
	2019 8am - 8:30am (PST)
Thread-Index: AdSnbuRPXrWuBB6JS4WWpovaQNFvQwADWnFg
Date: Tue, 8 Jan 2019 18:03:19 +0000
Message-ID: <BYAPR02MB6005BF6F7DE0C04A8A1F98D3B98A0@BYAPR02MB6005.namprd02.prod.outlook.com>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155EEA6CE2BC@fmsmsx123.amr.corp.intel.com>
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155EEA6CE2BC@fmsmsx123.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=MANJUKUM@xilinx.com; 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BYAPR02MB5640;
	6:yeeXzlLB/hEb6ffz/PuyWlXbMaOBo8IJ43OyBPESEDOC+h51jRMbXRBkRDNbw59FRLU1BAOC5+2P6eIA7SB4kxPYcnvIfOfzO4DR5I8e6iOUkLEGdgxJ7eov05IgNojYWmgdzQwgScOO2Y5oE18GE3yDSp0jBlPAOJU/uRN/G5kNT15SUdHSJ9zyZEul/K/IqDvUs2ZKYdB6FJAtHtfLJVkLJX1BOBnWduDmqi6QbQrzmR8ei44ZrdzOljy2qg6nvkW/F1VK5aMolp/Hm1xouSIeJUTW2Vyyy9RvkDAYi+KUpPZQ0xXY6PTdgdsFKiRfOM3CX4i5w1Tmi4qnp6dllxhBrwT9t5fGs96vyMrSvAL94m/DvK8qngL2mpQtAnx1SAyXkZiKPRyr50243ZnN/P3/eBIRcLEeZIRAMdL88Ge0d6KtfteCOtqiQmfNI3gCfZc6+Diz0kgC8B+oHtOxZg==;
	5:ANrj3lF8GivmR321FOhnYxcBC9mFj/c2unkDt9HcDrhdWP1lQofeArvPGFjIZYVQJa1q+3RlvCNNv8dX5dfPJQ72OqwRaabCqtgxrRDHq47RyUOGPBFudlZ4t14PVWGWqoIWNY2/9W3E0JmfR7PNKxfyHhDG/U7tiNUvjlhdFpNzxGrXECITai9eQhDfh1KzoIz2c2NDeklBAS0SWmJ2Ag==;
	7:rJFlwbCTvgAx3KQ0jlFfXwTJJyWHz9M9y8hc1dK3ZEFQpdnSg5P8cCvz6OjtzmnTpa2Aa2S0Ms+4Py4qa1MzMW48D6c362dkjFrInpNmuyIENieQBG57Nhnmf0NKVNfg7OPf+yVNCRq77127wDUlJA==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: afffc8e2-9b66-4080-b8f2-08d675939253
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(5600109)(711020)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:BYAPR02MB5640; 
x-ms-traffictypediagnostic: BYAPR02MB5640:
x-microsoft-antispam-prvs: <BYAPR02MB5640AE272EB1ABD4AF4CC0D4B98A0@BYAPR02MB5640.namprd02.prod.outlook.com>
x-forefront-prvs: 0911D5CE78
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(346002)(396003)(39860400002)(136003)(376002)(366004)(189003)(199004)(13464003)(256004)(33656002)(966005)(76176011)(7696005)(11346002)(486006)(71200400001)(86362001)(53936002)(446003)(305945005)(7736002)(6436002)(106356001)(9686003)(6306002)(55016002)(6246003)(74316002)(71190400001)(5660300001)(66066001)(478600001)(316002)(110136005)(8676002)(81156014)(6116002)(81166006)(3846002)(25786009)(97736004)(68736007)(8936002)(105586002)(6506007)(2906002)(53546011)(186003)(102836004)(2501003)(26005)(229853002)(476003)(14454004)(72206003)(99286004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5640;
	H:BYAPR02MB6005.namprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SgHiKnjgfLAV/0xKet96dC17J/0SGVOHqNI28hHWA/43zd2SUnVKpik8LaI4tcoWbdJwR1qJg+k9bZhkNGqFwlRfmO2oQzcCVnOzYcVAzBPR61cJGNH52vLqD44lQKKn2yHrQqH6FyNOHWjyQQiYBEpyTY8d724cg5xBZxjdVB+vgyw6AVLC2kq8udmLHnJgZQ44QsbDxYcBdMNoaPRBn4cFWUJFMxXWi3sVG4o8PKgnDcMLc2Zy8M7MQpE381FLclqiafe634sFr9BjGf9cAOAX1+zYbHHLIdtOaJ6tVBrjpbGVVZmLXJkFlcJyvFa4
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afffc8e2-9b66-4080-b8f2-08d675939253
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2019 18:03:19.3855 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5640
Subject: Re: Notes: Yocto Project Technical Team Meeting @ Tue Jan 8, 2019 8am - 8:30am (PST)
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
X-List-Received-Date: Tue, 08 Jan 2019 19:36:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgDQoNCg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IHlvY3RvLWJv
dW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyBbbWFpbHRvOnlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0
Lm9yZ10NCj4gT24gQmVoYWxmIE9mIEpvbGxleSwgU3RlcGhlbiBLDQo+IFNlbnQ6IFR1ZXNkYXks
IEphbnVhcnkgMDgsIDIwMTkgODoyOSBBTQ0KPiBUbzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0K
PiBTdWJqZWN0OiBbeW9jdG9dIE5vdGVzOiBZb2N0byBQcm9qZWN0IFRlY2huaWNhbCBUZWFtIE1l
ZXRpbmcgQCBUdWUgSmFuIDgsIDIwMTkNCj4gOGFtIC0gODozMGFtIChQU1QpDQo+IA0KPiBBdHRl
bmRlZXM6IFN0ZXBoZW4sIEFybWluLCBBbGV4LCBSaWNoYXJkIEcuLCBKb3NodWEgVy4sIFJpY2hh
cmQuIFAuLCBSYW5keSwgUm9zcywNCj4gVHJldm9yLCBKb24sIExld2lzLCBKZXNzZSwgVGltLCBN
YXR0LCBUcmFjZXksDQo+IA0KPiBZUCBTdGF0dXM6ICBTZWUgLSBodHRwczovL3dpa2kueW9jdG9w
cm9qZWN0Lm9yZy93aWtpL1dlZWtseV9TdGF0dXMNCj4gPGh0dHBzOi8vd2lraS55b2N0b3Byb2pl
Y3Qub3JnL3dpa2kvV2Vla2x5X1N0YXR1cz4NCj4gDQo+IA0KPiAqCVlQIDIuNyBNMSBpcyBvdXQg
b2YgUUEgYW5kIGJlaW5nIHByZXBhcmVkIGZvciByZWxlYXNlLg0KPiAqCVlQIDIuNS4yIHdhcyBy
ZWxlYXNlZCBvbiBKYW4uIDQsIDIwMTkuDQo+ICoJWVAgMi42LjEgc2hvdWxkIGJ1aWxkIHNvb24u
DQo+ICoJWVAgMi43IE0yIGlzIHRhcmdldGVkIGZvciBidWlsZCBKYW4uIDIxLCAyMDE5Lg0KPiAN
Cj4gDQo+IFJpY2hhcmQgYW5kIFN0ZXBoZW4gZGlzY3Vzc2VkIFFBIHN0YXR1cyBhbmQgcGxhbnMg
Zm9yIFlQIDIuNi4xLiAgV2Ugd2lsbCBzdGlsbCBkbw0KPiBzb21lIG1hbnVhbCBRQSB3b3JrIGlu
IFEx4oCZMTkgYnV0IHBsYW4gdG8gYXV0b21hdGUgUUEgYmVmb3JlIHRoZSBlbmQgb2YgUTHigJkx
OS4NCj4gDQo+IEpvc2h1YSBkaXNjdXNzZWQgdGhlIGhhc2ggd29yayBvbiBzc3RhdGUuICBJdCBo
YXMgbWVyZ2VkIGZvciBNMi4gRGlzY3Vzc2VkIGhvdw0KPiBidWlsZCBoaXN0b3J5IHVzZSBvZiBo
YXNoZXMgbmVlZHMgc29tZSB1cGRhdGVzIHRvIGltcHJvdmUgcmVwcm9kdWNpYmlsaXR5Lg0KPiAN
Cj4gVHJldm9yIGFza2VkIGFib3V0IHRoZSBXZWVrbHkgc3RhdHVzIHJlcG9ydCBtZWV0aW5ncy4g
VGhlc2UgYXJlIHdoZXJlIHRoZSB3ZWVrbHkNCj4gc3RhdHVzIHJlcG9ydCBpcyB3cml0dGVuIGFu
ZCB3aGlsZSBhbGwgYXJlIHdlbGNvbWUgdG8gYXR0ZW5kLCBubyBvbmUgYnV0IFN0ZXBoZW4gYW5k
DQo+IFJpY2hhcmQgYXJlIHJlcXVpcmVkLg0KPiANCj4gVHJldm9yIGRpc2N1c3NlZCB0aGF0IFlQ
IGlzIGRyb3BwaW5nIHN1cHBvcnQgZm9yIHNvbWUgb2xkICBBUk0gdGFyZ2V0cywgc2luY2UgdGhl
eQ0KPiBhcmUgYmVpbmcgZHJvcHBlZCBmcm9tIGdjYy4NCj4gDQo+IFJpY2hhcmQgYXNrZWQgYWJv
dXQgaW5jcmVtZW50YWwgaW1hZ2UgcGFja2FnaW5nLiAgUmFuZHkgY29tbWVudGVkIHRoYXQgV1JT
IGlzDQo+IHVzaW5nIHRoaXMgZmVhdHVyZSBmb3IgUlBNLg0KPiANCg0KVGhpcyBpcyBzb21ldGhp
bmcgdGhhdCB3ZSBhcmUgbG9va2luZyBmb3IsIGNhbiB5b3UgcHJvdmlkZSBtb3JlIGRldGFpbHMg
b24gdGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24/DQoNClRoYW5rcywNCk1hbmp1DQo=

