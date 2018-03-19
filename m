Return-Path: <aravindhlalgss@embedur.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94232E00AF2; Mon, 19 Mar 2018 02:31:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.80 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0080.outbound.protection.outlook.com [104.47.34.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CA7FE007DA
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 02:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=embedur.onmicrosoft.com; s=selector1-embedur-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=+PBeZttTbBi0cSXiIEHle+1EIy6dNyLHPmbunxMGrhs=;
	b=fbSlKpdq64KNfwAE7rpklgLm0tgijEzO0vH3jgFO/QkraF0KaHDHIX6T/ErE3r1Mqq1OjlZdrQYkm+Fd+4rZuVjDitV6cYx3yyvWbdRe9cVAW2YUU5H0RN2xdXyNqNxBpe/YEdLdOaDl8YvssGloAPzMPWEE0aTsGmeh99ach0g=
Received: from CY4PR15MB1190.namprd15.prod.outlook.com (10.172.177.12) by
	CY4PR15MB1816.namprd15.prod.outlook.com (10.174.54.13) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.588.14; Mon, 19 Mar 2018 06:57:07 +0000
Received: from CY4PR15MB1190.namprd15.prod.outlook.com
	([fe80::98de:45a5:c7e1:5740]) by
	CY4PR15MB1190.namprd15.prod.outlook.com
	([fe80::98de:45a5:c7e1:5740%13]) with mapi id 15.20.0588.016;
	Mon, 19 Mar 2018 06:57:07 +0000
From: Aravindhlal G.S.S <aravindhlalgss@embedur.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] How to Skip recipes ?
Thread-Index: AdO9r5pVScPnJAddQO21gd0kxNjB5AAU5J+AAAHMhbA=
Date: Mon, 19 Mar 2018 06:57:06 +0000
Message-ID: <CY4PR15MB119067487F80A233216CFD43D0D40@CY4PR15MB1190.namprd15.prod.outlook.com>
References: <CY4PR15MB11909218C6330B8DCA81AC98D0D60@CY4PR15MB1190.namprd15.prod.outlook.com>
	<CAMKF1spuhiQnatoGx+CURFL0e-9_GqpFmmMOu-UfoNzpZEd_vQ@mail.gmail.com>
In-Reply-To: <CAMKF1spuhiQnatoGx+CURFL0e-9_GqpFmmMOu-UfoNzpZEd_vQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=aravindhlalgss@embedur.com; 
x-originating-ip: [61.16.140.206]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CY4PR15MB1816;
	7:MYCR81/OaSMgxbOXrcKV5guUEn8sYfSqReqW5lQFZNM0jTM6q1ch5iquJ69SkIUwX3xB3a9RXB3bh5uqxeIWOwskqtY1c6bCFezB96Mm0RbDTNoM4pflevqlNthE947xBjTFgnUxcQYKrP3DwjmfojjV5tT0hf84xl2+TjgOY6ClBNwjD/YSZqb9Rvkni5mW5kas7mq3/l9P0OpzG78PNsypsVbs4/PBRhtSvmBcIa4HHJMo9RZYwnQcfVT7jinl
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: e927cfb5-5a13-4ab4-a6a7-08d58d66a109
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4604075)(3008032)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:CY4PR15MB1816; 
x-ms-traffictypediagnostic: CY4PR15MB1816:
x-microsoft-antispam-prvs: <CY4PR15MB181612C3637CA4F7E392D49CD0D40@CY4PR15MB1816.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(85827821059158);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(3002001)(3231221)(944501300)(52105095)(93006095)(93001095)(6041310)(20161123558120)(20161123560045)(20161123562045)(2016111802025)(20161123564045)(6043046)(6072148)(201708071742011);
	SRVR:CY4PR15MB1816; BCL:0; PCL:0; RULEID:; SRVR:CY4PR15MB1816; 
x-forefront-prvs: 06167FAD59
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39830400003)(376002)(346002)(39380400002)(396003)(366004)(13464003)(189003)(199004)(53936002)(6246003)(186003)(6506007)(55016002)(53546011)(97736004)(2906002)(4326008)(106356001)(6306002)(9686003)(3660700001)(66066001)(7736002)(102836004)(39060400002)(81156014)(26005)(68736007)(81166006)(5250100002)(305945005)(6916009)(229853002)(25786009)(3846002)(76176011)(8676002)(5660300001)(7696005)(14454004)(316002)(6436002)(99286004)(478600001)(86362001)(6116002)(2900100001)(3280700002)(2950100002)(8936002)(105586002)(966005)(74316002)(33656002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR15MB1816;
	H:CY4PR15MB1190.namprd15.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: embedur.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: J1QuXE3wPnVUgZLXx4L33wr0K3PaNHz4ljnMkbZnvhVMbiqbbhtsPsjPQgatpmgm5X0d0K0iU/9ue0luVVnPmVZX6ePZqypN0hAi/f82LK1uYfogDpRkdQE1xaKHa7JhYJh3Q7gWenAjWP1oCZB+D1ScPeEhhbrCLqGv4adPctG28CkewacN7OGqp/rywUHrUOcYVvUyz4gj2ZTS8YbVMTVjggdGyn7rJ2NEwjOSVKLtlh+DcTtNopyI4Y8eg8zkzOIAGmxc3CwaxQ7JtVODNIgBLt49RK5P/HFyy9Q/kcKU6pTINJbwi3mWP32aqTpsiRhFqxH/Ib1adOvDM/TNXA==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: embedur.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e927cfb5-5a13-4ab4-a6a7-08d58d66a109
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2018 06:57:06.9956 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3e7c9d67-afab-4694-94e1-af28129ed65f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR15MB1816
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to Skip recipes ?
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
X-List-Received-Date: Mon, 19 Mar 2018 09:31:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIEtoZW0uIEdvdCBpdCB3b3JraW5nIG5vdyAhDQoNCi1BcmF2aW5kaA0KDQotLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogS2hlbSBSYWogPHJhai5raGVtQGdtYWlsLmNvbT4g
DQpTZW50OiBTYXR1cmRheSwgTWFyY2ggMTcsIDIwMTggODo0OCBQTQ0KVG86IEFyYXZpbmRobGFs
IEcuUy5TIDxhcmF2aW5kaGxhbGdzc0BlbWJlZHVyLmNvbT4NCkNjOiB5b2N0b0B5b2N0b3Byb2pl
Y3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBIb3cgdG8gU2tpcCByZWNpcGVzID8NCg0KT24g
RnJpLCBNYXIgMTYsIDIwMTggYXQgMTA6MjIgUE0sIEFyYXZpbmRobGFsIEcuUy5TIDxhcmF2aW5k
aGxhbGdzc0BlbWJlZHVyLmNvbT4gd3JvdGU6DQo+IFlvY3RvIEd1cnVzLA0KPg0KPg0KPg0KPiBJ
IGFtIHRyeWluZyB0byBTa2lwIHJ1bm5pbmcgYSByZWNpcGUgZm9yIGEgcGFydGljdWxhciBtYWNo
aW5lIA0KPiBjb25maWd1cmF0aW9uIGFuZCBJIGFtIHVzaW5nIHRoZSBiZWxvdyBzdGF0ZW1lbnQg
aW4gcmVjaXBlIHRvIA0KPiBhY2NvbXBsaXNoIGl0LCBob3dldmVyIEkgYW0gZ2V0dGluZyB0aGUg
YmVsb3cgZXJyb3JzLg0KPg0KPg0KPg0KPiBweXRob24gKCkgew0KPg0KPiAgICAgaWYgPGNvbmRp
dGlvbj46DQo+DQo+ICAgICAgICAgcmFpc2UgYmIucGFyc2UuU2tpcFJlY2lwZSgiTWVzc2FnZSIp
DQo+DQo+IH0NCj4NCg0KDQp0aGlzIHdpbGwgc2tpcCBpdCBob3dldmVyIHlvdSBoYXZlIHRvIGVu
c3VyZSB0aGF0IHRoZXJlIGFyZSBubyBvdGhlciByZWNpcGVzIG5lZWRpbmcgaXQgb3RoZXJ3aXNl
IHRoZXkgd2lsbCBicmVhaywgc2VlbXMgdGhhdCBpcyB3aGF0cyBoYXBwZW5pbmcNCg0KPg0KPg0K
PiBFcnJvcnM6DQo+DQo+IE5PVEU6IFJ1bnRpbWUgdGFyZ2V0ICdhcnJpcy1rbW9kLWhlYWRlcnMt
ZGV2JyBpcyB1bmJ1aWxkYWJsZSwgcmVtb3ZpbmcuLi4NCj4NCj4gTWlzc2luZyBvciB1bmJ1aWxk
YWJsZSBkZXBlbmRlbmN5IGNoYWluIHdhczogDQo+IFsnYXJyaXMta21vZC1oZWFkZXJzLWRldidd
DQo+DQo+IEVSUk9SOiBOb3RoaW5nIFJQUk9WSURFUyAnYXJyaXMta21vZC1oZWFkZXJzJyAoYnV0
IA0KPiAvZXhwb3J0L2FzYW50aGFyYW0vd3NfeGI2L3N5bmRpY2F0aW9uL2NveC9tZXRhLXJkay1v
ZW0tYXJyaXMtaW50ZWwtZ3ctDQo+IHhiNi9tZXRhLWFycmlzeGI2LWFybS9yZWNpcGVzLWFycmlz
L2FycmlzLWttb2QvYXJyaXMta21vZC1oZWFkZXJzLmJiDQo+IFJERVBFTkRTIG9uIG9yIG90aGVy
d2lzZSByZXF1aXJlcyBpdCkNCj4NCj4gRVJST1I6IE5vIGVsaWdpYmxlIFJQUk9WSURFUnMgZXhp
c3QgZm9yICdhcnJpcy1rbW9kLWhlYWRlcnMnDQo+DQo+IE5PVEU6IFJ1bnRpbWUgdGFyZ2V0ICdh
cnJpcy1rbW9kLWhlYWRlcnMnIGlzIHVuYnVpbGRhYmxlLCByZW1vdmluZy4uLg0KPg0KPiBNaXNz
aW5nIG9yIHVuYnVpbGRhYmxlIGRlcGVuZGVuY3kgY2hhaW4gd2FzOiBbJ2FycmlzLWttb2QtaGVh
ZGVycyddDQo+DQo+IEVSUk9SOiBOb3RoaW5nIFJQUk9WSURFUyAnbWlibGVhZi1kb2NzaXMnIChi
dXQgDQo+IC9leHBvcnQvYXNhbnRoYXJhbS93c194YjYvc3luZGljYXRpb24vY294L21ldGEtcmRr
LW9lbS1hcnJpcy1pbnRlbC1ndy0NCj4geGI2L21ldGEtYXJyaXN4YjYtYXJtL3JlY2lwZXMtZG9j
c2lzL2RvY3Npcy9taWJsZWFmLWRvY3Npcy5iYg0KPiBSREVQRU5EUyBvbiBvciBvdGhlcndpc2Ug
cmVxdWlyZXMgaXQpDQo+DQo+IEVSUk9SOiBObyBlbGlnaWJsZSBSUFJPVklERVJzIGV4aXN0IGZv
ciAnbWlibGVhZi1kb2NzaXMnDQo+DQo+IE5PVEU6IFJ1bnRpbWUgdGFyZ2V0ICdtaWJsZWFmLWRv
Y3NpcycgaXMgdW5idWlsZGFibGUsIHJlbW92aW5nLi4uDQo+DQo+IE1pc3Npbmcgb3IgdW5idWls
ZGFibGUgZGVwZW5kZW5jeSBjaGFpbiB3YXM6IFsnbWlibGVhZi1kb2NzaXMnXQ0KPg0KPiBFUlJP
UjogTm90aGluZyBSUFJPVklERVMgJ21pYmxlYWYtZG9jc2lzLWRldicgKGJ1dCANCj4gL2V4cG9y
dC9hc2FudGhhcmFtL3dzX3hiNi9zeW5kaWNhdGlvbi9jb3gvbWV0YS1yZGstb2VtLWFycmlzLWlu
dGVsLWd3LQ0KPiB4YjYvbWV0YS1hcnJpc3hiNi1hcm0vcmVjaXBlcy1kb2NzaXMvZG9jc2lzL21p
YmxlYWYtZG9jc2lzLmJiDQo+IFJERVBFTkRTIG9uIG9yIG90aGVyd2lzZSByZXF1aXJlcyBpdCkN
Cj4NCj4gRVJST1I6IE5vIGVsaWdpYmxlIFJQUk9WSURFUnMgZXhpc3QgZm9yICdtaWJsZWFmLWRv
Y3Npcy1kZXYnDQo+DQo+IE5PVEU6IFJ1bnRpbWUgdGFyZ2V0ICdtaWJsZWFmLWRvY3Npcy1kZXYn
IGlzIHVuYnVpbGRhYmxlLCByZW1vdmluZy4uLg0KPg0KPiBNaXNzaW5nIG9yIHVuYnVpbGRhYmxl
IGRlcGVuZGVuY3kgY2hhaW4gd2FzOiBbJ21pYmxlYWYtZG9jc2lzLWRldiddDQo+DQo+IEVSUk9S
OiBOb3RoaW5nIFJQUk9WSURFUyAnYXJyaXMtcGNhYmxlLWhlYWRlcnMtZGV2JyAoYnV0IA0KPiAv
ZXhwb3J0L2FzYW50aGFyYW0vd3NfeGI2L3N5bmRpY2F0aW9uL2NveC9tZXRhLXJkay1vZW0tYXJy
aXMtaW50ZWwtZ3ctDQo+IHhiNi9tZXRhLWFycmlzeGI2LWFybS9yZWNpcGVzLWJpbi92b2ljZS9h
cnJpcy1wY2FibGUtaGVhZGVycy5iYg0KPiBSREVQRU5EUyBvbiBvciBvdGhlcndpc2UgcmVxdWly
ZXMgaXQpDQo+DQo+IEVSUk9SOiBObyBlbGlnaWJsZSBSUFJPVklERVJzIGV4aXN0IGZvciAnYXJy
aXMtcGNhYmxlLWhlYWRlcnMtZGV2Jw0KPg0KPiBOT1RFOiBSdW50aW1lIHRhcmdldCAnYXJyaXMt
cGNhYmxlLWhlYWRlcnMtZGV2JyBpcyB1bmJ1aWxkYWJsZSwgcmVtb3ZpbmcuLi4NCj4NCj4gTWlz
c2luZyBvciB1bmJ1aWxkYWJsZSBkZXBlbmRlbmN5IGNoYWluIHdhczogDQo+IFsnYXJyaXMtcGNh
YmxlLWhlYWRlcnMtZGV2J10NCj4NCj4gRVJST1I6IE5vdGhpbmcgUlBST1ZJREVTICdhcnJpcy1w
Y2FibGUtaGVhZGVycycgKGJ1dCANCj4gL2V4cG9ydC9hc2FudGhhcmFtL3dzX3hiNi9zeW5kaWNh
dGlvbi9jb3gvbWV0YS1yZGstb2VtLWFycmlzLWludGVsLWd3LQ0KPiB4YjYvbWV0YS1hcnJpc3hi
Ni1hcm0vcmVjaXBlcy1iaW4vdm9pY2UvYXJyaXMtcGNhYmxlLWhlYWRlcnMuYmINCj4gUkRFUEVO
RFMgb24gb3Igb3RoZXJ3aXNlIHJlcXVpcmVzIGl0KQ0KPg0KPiBFUlJPUjogTm8gZWxpZ2libGUg
UlBST1ZJREVScyBleGlzdCBmb3IgJ2FycmlzLXBjYWJsZS1oZWFkZXJzJw0KPg0KPiBOT1RFOiBS
dW50aW1lIHRhcmdldCAnYXJyaXMtcGNhYmxlLWhlYWRlcnMnIGlzIHVuYnVpbGRhYmxlLCByZW1v
dmluZy4uLg0KPg0KPiBNaXNzaW5nIG9yIHVuYnVpbGRhYmxlIGRlcGVuZGVuY3kgY2hhaW4gd2Fz
OiBbJ2FycmlzLXBjYWJsZS1oZWFkZXJzJ10NCj4NCj4gRVJST1I6IE5vdGhpbmcgUlBST1ZJREVT
ICdsaWJhcnJpcy1yZi1kcy1jYWxpYnJhdGlvbi1oZWFkZXJzJyAoYnV0IA0KPiAvZXhwb3J0L2Fz
YW50aGFyYW0vd3NfeGI2L3N5bmRpY2F0aW9uL2NveC9tZXRhLXJkay1vZW0tYXJyaXMtaW50ZWwt
Z3ctDQo+IHhiNi9tZXRhLWFycmlzeGI2LWFybS9yZWNpcGVzLWFycmlzL2xpYmFycmlzLXJmLWRz
LWNhbGlicmF0aW9uL2xpYmFycmkNCj4gcy1yZi1kcy1jYWxpYnJhdGlvbi1oZWFkZXJzLmJiDQo+
IFJERVBFTkRTIG9uIG9yIG90aGVyd2lzZSByZXF1aXJlcyBpdCkNCj4NCj4gRVJST1I6IE5vIGVs
aWdpYmxlIFJQUk9WSURFUnMgZXhpc3QgZm9yICdsaWJhcnJpcy1yZi1kcy1jYWxpYnJhdGlvbi1o
ZWFkZXJzJw0KPg0KPiBOT1RFOiBSdW50aW1lIHRhcmdldCAnbGliYXJyaXMtcmYtZHMtY2FsaWJy
YXRpb24taGVhZGVycycgaXMgDQo+IHVuYnVpbGRhYmxlLCByZW1vdmluZy4uLg0KPg0KPiBNaXNz
aW5nIG9yIHVuYnVpbGRhYmxlIGRlcGVuZGVuY3kgY2hhaW4gd2FzOg0KPiBbJ2xpYmFycmlzLXJm
LWRzLWNhbGlicmF0aW9uLWhlYWRlcnMnXQ0KPg0KPiBFUlJPUjogTm90aGluZyBSUFJPVklERVMg
J2xpYmFycmlzLXJmLWRzLWNhbGlicmF0aW9uLWhlYWRlcnMtZGV2JyAoYnV0IA0KPiAvZXhwb3J0
L2FzYW50aGFyYW0vd3NfeGI2L3N5bmRpY2F0aW9uL2NveC9tZXRhLXJkay1vZW0tYXJyaXMtaW50
ZWwtZ3ctDQo+IHhiNi9tZXRhLWFycmlzeGI2LWFybS9yZWNpcGVzLWFycmlzL2xpYmFycmlzLXJm
LWRzLWNhbGlicmF0aW9uL2xpYmFycmkNCj4gcy1yZi1kcy1jYWxpYnJhdGlvbi1oZWFkZXJzLmJi
DQo+IFJERVBFTkRTIG9uIG9yIG90aGVyd2lzZSByZXF1aXJlcyBpdCkNCj4NCj4gRVJST1I6IE5v
IGVsaWdpYmxlIFJQUk9WSURFUnMgZXhpc3QgZm9yIA0KPiAnbGliYXJyaXMtcmYtZHMtY2FsaWJy
YXRpb24taGVhZGVycy1kZXYnDQo+DQo+IE5PVEU6IFJ1bnRpbWUgdGFyZ2V0ICdsaWJhcnJpcy1y
Zi1kcy1jYWxpYnJhdGlvbi1oZWFkZXJzLWRldicgaXMgDQo+IHVuYnVpbGRhYmxlLCByZW1vdmlu
Zy4uLg0KPg0KPiBNaXNzaW5nIG9yIHVuYnVpbGRhYmxlIGRlcGVuZGVuY3kgY2hhaW4gd2FzOg0K
PiBbJ2xpYmFycmlzLXJmLWRzLWNhbGlicmF0aW9uLWhlYWRlcnMtZGV2J10NCj4NCj4gRVJST1I6
IE5vdGhpbmcgUlBST1ZJREVTICdsaWJhcnJpcy1leHRzd3QnIChidXQgDQo+IC9leHBvcnQvYXNh
bnRoYXJhbS93c194YjYvc3luZGljYXRpb24vY294L21ldGEtcmRrLW9lbS1hcnJpcy1pbnRlbC1n
dy0NCj4geGI2L21ldGEtYXJyaXN4YjYtYXJtL3JlY2lwZXMtYXJyaXMvbGliYXJyaXMtZXh0c3d0
L2xpYmFycmlzLWV4dHN3dC5iYg0KPiBSREVQRU5EUyBvbiBvciBvdGhlcndpc2UgcmVxdWlyZXMg
aXQpDQo+DQo+IEVSUk9SOiBObyBlbGlnaWJsZSBSUFJPVklERVJzIGV4aXN0IGZvciAnbGliYXJy
aXMtZXh0c3d0Jw0KPg0KPiBOT1RFOiBSdW50aW1lIHRhcmdldCAnbGliYXJyaXMtZXh0c3d0JyBp
cyB1bmJ1aWxkYWJsZSwgcmVtb3ZpbmcuLi4NCj4NCj4gTWlzc2luZyBvciB1bmJ1aWxkYWJsZSBk
ZXBlbmRlbmN5IGNoYWluIHdhczogWydsaWJhcnJpcy1leHRzd3QnXQ0KPg0KPiBFUlJPUjogTm90
aGluZyBSUFJPVklERVMgJ2xpYmFycmlzLWV4dHN3dC1kZXYnIChidXQgDQo+IC9leHBvcnQvYXNh
bnRoYXJhbS93c194YjYvc3luZGljYXRpb24vY294L21ldGEtcmRrLW9lbS1hcnJpcy1pbnRlbC1n
dy0NCj4geGI2L21ldGEtYXJyaXN4YjYtYXJtL3JlY2lwZXMtYXJyaXMvbGliYXJyaXMtZXh0c3d0
L2xpYmFycmlzLWV4dHN3dC5iYg0KPiBSREVQRU5EUyBvbiBvciBvdGhlcndpc2UgcmVxdWlyZXMg
aXQpDQo+DQo+IEVSUk9SOiBObyBlbGlnaWJsZSBSUFJPVklERVJzIGV4aXN0IGZvciAnbGliYXJy
aXMtZXh0c3d0LWRldicNCj4NCj4gTk9URTogUnVudGltZSB0YXJnZXQgJ2xpYmFycmlzLWV4dHN3
dC1kZXYnIGlzIHVuYnVpbGRhYmxlLCByZW1vdmluZy4uLg0KPg0KPiBNaXNzaW5nIG9yIHVuYnVp
bGRhYmxlIGRlcGVuZGVuY3kgY2hhaW4gd2FzOiBbJ2xpYmFycmlzLWV4dHN3dC1kZXYnXQ0KPg0K
PiBFUlJPUjogTm90aGluZyBSUFJPVklERVMgJ2xpYmFycmlzLXJka2ItdmVuZG9yLWhlYWRlcnMt
ZGV2JyAoYnV0IA0KPiAvZXhwb3J0L2FzYW50aGFyYW0vd3NfeGI2L3N5bmRpY2F0aW9uL2NveC9t
ZXRhLXJkay1vZW0tYXJyaXMtaW50ZWwtZ3ctDQo+IHhiNi9tZXRhLWFycmlzeGI2LWFybS9yZWNp
cGVzLWFycmlzL2xpYmFycmlzLXJka2ItdmVuZG9yL2xpYmFycmlzLXJka2INCj4gLXZlbmRvci1o
ZWFkZXJzLmJiDQo+IFJERVBFTkRTIG9uIG9yIG90aGVyd2lzZSByZXF1aXJlcyBpdCkNCj4NCj4g
RVJST1I6IE5vIGVsaWdpYmxlIFJQUk9WSURFUnMgZXhpc3QgZm9yICdsaWJhcnJpcy1yZGtiLXZl
bmRvci1oZWFkZXJzLWRldicNCj4NCj4gTk9URTogUnVudGltZSB0YXJnZXQgJ2xpYmFycmlzLXJk
a2ItdmVuZG9yLWhlYWRlcnMtZGV2JyBpcyANCj4gdW5idWlsZGFibGUsIHJlbW92aW5nLi4uDQo+
DQo+IE1pc3Npbmcgb3IgdW5idWlsZGFibGUgZGVwZW5kZW5jeSBjaGFpbiB3YXM6DQo+IFsnbGli
YXJyaXMtcmRrYi12ZW5kb3ItaGVhZGVycy1kZXYnXQ0KPg0KPiBFUlJPUjogTm90aGluZyBSUFJP
VklERVMgJ2xpYmFycmlzLXJka2ItdmVuZG9yLWhlYWRlcnMnIChidXQgDQo+IC9leHBvcnQvYXNh
bnRoYXJhbS93c194YjYvc3luZGljYXRpb24vY294L21ldGEtcmRrLW9lbS1hcnJpcy1pbnRlbC1n
dy0NCj4geGI2L21ldGEtYXJyaXN4YjYtYXJtL3JlY2lwZXMtYXJyaXMvbGliYXJyaXMtcmRrYi12
ZW5kb3IvbGliYXJyaXMtcmRrYg0KPiAtdmVuZG9yLWhlYWRlcnMuYmINCj4gUkRFUEVORFMgb24g
b3Igb3RoZXJ3aXNlIHJlcXVpcmVzIGl0KQ0KPg0KPiBFUlJPUjogTm8gZWxpZ2libGUgUlBST1ZJ
REVScyBleGlzdCBmb3IgJ2xpYmFycmlzLXJka2ItdmVuZG9yLWhlYWRlcnMnDQo+DQo+IE5PVEU6
IFJ1bnRpbWUgdGFyZ2V0ICdsaWJhcnJpcy1yZGtiLXZlbmRvci1oZWFkZXJzJyBpcyB1bmJ1aWxk
YWJsZSwgDQo+IHJlbW92aW5nLi4uDQo+DQo+IE1pc3Npbmcgb3IgdW5idWlsZGFibGUgZGVwZW5k
ZW5jeSBjaGFpbiB3YXM6DQo+IFsnbGliYXJyaXMtcmRrYi12ZW5kb3ItaGVhZGVycyddDQo+DQo+
DQo+DQo+IEFtIEkgbWlzc2luZyBhbnl0aGluZyBlbHNlID8gb3IgaXMgdGhlcmUgYW55IGFsdGVy
bmF0ZSB3YXkgdG8gU2tpcCB0aGUgDQo+IHJlY2lwZXMgPw0KPg0KPg0KPg0KPiBDb3VsZCB5b3Ug
cGxlYXNlIGd1aWRlIG1lIG9uIHRoaXMgPw0KPg0KPg0KPg0KPiBUaGFua3MNCj4NCj4gLUFyYXZp
bmRoDQo+DQo+DQo+IC0tDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQo+IHlvY3RvIG1haWxpbmcgbGlzdA0KPiB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn
DQo+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bw0KPg0K

