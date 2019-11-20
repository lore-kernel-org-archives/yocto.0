Return-Path: <prvs=22006f152=Samuel.Jiang@quantatw.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02A80E00E24; Wed, 20 Nov 2019 00:23:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [219.87.191.90 listed in list.dnswl.org]
Received: from mx01.quantatw.com (mx01.quantatw.com [219.87.191.90])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A88C1E00E0F
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 00:23:52 -0800 (PST)
IronPort-SDR: qOONBvcObM0YFVugxVZuiNHrd1FpNTP6jDZ/DQ5sp/xnGdutpIG5ZU3AOaQnRG2YAwWgjllX7B
	2dQiN0Ay7t5w==
Received: from unknown (HELO mailbx10.quanta.corp) ([10.243.91.107])
	by mx01.quantatw.com with ESMTP; 20 Nov 2019 16:23:44 +0800
Received: from mailbx10.quanta.corp (10.243.91.107) by mailbx10.quanta.corp
	(10.243.91.107) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5;
	Wed, 20 Nov 2019 16:23:43 +0800
Received: from mailbx10.quanta.corp ([fe80::acb0:61f4:dd7b:1a88]) by
	mailbx10.quanta.corp ([fe80::acb0:61f4:dd7b:1a88%4]) with mapi id
	15.01.1713.009; Wed, 20 Nov 2019 16:23:43 +0800
From: =?utf-8?B?U2FtdWVsIEppYW5nICjmsZ/pqI/lhYgp?= <Samuel.Jiang@quantatw.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] bitbake SRC_URI fetch Azure DevOps repository Azure
	DevOps Services Basic
Thread-Index: AQHVkrrru2MWLmnC/EK0fXK52KdRead8MDmAgAxBbGD//9ZZAIAAkFwggAAi9wCACtMcsA==
Date: Wed, 20 Nov 2019 08:23:43 +0000
Message-ID: <302f00923ac947bc9e2652af171ba6ff@quantatw.com>
References: <489934f9-1420-40b0-a74a-54b71633bbed@SINGMEHUB07.gme.gbl>
	<KL1P15301MB03443E265CCD3E6492C091CF80630@KL1P15301MB0344.APCP153.PROD.OUTLOOK.COM>
	<a1ef7037a6a94e518fcef16502c67585@quantatw.com>
	<SG2P153MB0349D0EFB059BC372C86528880630@SG2P153MB0349.APCP153.PROD.OUTLOOK.COM>
	<9e5ccabd-03be-410b-bd43-1f7ba45dff31@Spark>
	<a2982b3de70f74fd787b45b06711437afd2ae98e.camel@linuxfoundation.org>
	<a066f24b71df426db88ce23b46331a36@quantatw.com>
	<85cc536d4ce5de2606d48aba4b813fa96be1f6f9.camel@linuxfoundation.org>
	<e5a5b73ee91c491086f8ec17fa764507@quantatw.com>
	<fddb0eb4c0392f0ae427f458cc9684b02444e403.camel@linuxfoundation.org>
In-Reply-To: <fddb0eb4c0392f0ae427f458cc9684b02444e403.camel@linuxfoundation.org>
Accept-Language: zh-TW, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.243.91.252]
x-tm-as-product-ver: SMEX-14.0.0.1158-8.5.1020-25054.005
x-tm-as-result: No-10--14.546100-8.000000
x-tmase-matchedrid: nQsCAlAhJHbUL3YCMmnG4hvgzEPRJaDEWw/S0HB7eoMTiSW9r3PknBkX
	+si55c+x3Npp3tE5IPyrgjPLP/zT4SxLHUodmiaUUPktDdOX0ftFI/+w/Of1R1hs8uimgHNC2PV
	rCHJ8Lha+QQckZhqEtIEt1Y3OPabJ1ZDH5YvfI8TM1jffIgQXhgPQogCre6qltXl9IxEPXOr7gz
	EV569/VVHHus/GMFcjj1sd/ENaiJvUBIEM4OQ6eOW9J5hJgRQsXccelkX/ubAJeMOJX8c9nMxME
	TggaWmOp3JdzbLS8D6ZfEN7umxXLklULkR1azUxnbsTm40gJw/UIkoTEP0J+aZwleT7xjO5w4ta
	gPXRRxx/nABKXXyzk3snn8zaMbd9XSJ4c3nT+QegEgF6J/LtvCPnqu8VWAnsT7zqZowzdpJg5ss
	gEkrsQbXaGfEBiYuQhSunsgDtnFamvOBKunrA81LFinzH90WnS1zwNuiBtITfUZT83lbkEN5lt3
	6I4VFVEpdUY3UMnwhXt0iLVmIq+tFFXM3YFqKT30hTQ/6t5tg5iooXtStiHvXwfuDL3qUMo8WMk
	QWv6iVJeFvFlVDkf/cUt5lc1lLgOMB0shqXhHo5kikXtTsuYY/DMmTwNkzUkBIk1yJ1E6OBN6uL
	nwknsTeEP7lQk7l6
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--14.546100-8.000000
x-tmase-version: SMEX-14.0.0.1158-8.5.1020-25054.005
x-tm-snts-smtp: A3F6F8D551B35C439A63D271116DB62A491A63C8BF9BC0C027D733F4A4028AFA2000:B
MIME-Version: 1.0
Cc: Alex Chong <v-chucho@microsoft.com>
Subject: Re: bitbake SRC_URI fetch Azure DevOps repository Azure DevOps Services Basic
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
X-List-Received-Date: Wed, 20 Nov 2019 08:23:54 -0000
Content-Language: zh-TW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmljaGFyZCwNClRoYW5rcyBmb3IgeW91ciBwYXRjaCB3aGljaCBjb3VsZCB3b3JrIGZvciB1
cy4NCkkgc3R1ZHkgZ2l0LWNsb25lIGRvY3VtZW50IGFuZCBmb3VuZCB0aGUgZ2l0IHVybHMgc3Vw
cG9ydCBhbHRlcm5hdGl2ZSBzY3AtbGlrZSBzeW50YXggbGlrZSBiZWxvdzoNCg0KW3VzZXJAXWhv
c3QueHo6cGF0aC90by9yZXBvLmdpdC8NCg0KSXQgc2VlbXMgbGlrZSBBenVyZSBEZXZPcHMgcHJv
dmlkZXMgU1NIIHVybC4NCldpbGwgeW9jdG8gc3VwcG9ydCB0aGlzIGFsdGVybmF0aXZlIHVybD8N
Cg0KVGhhbmtzLCANClNhbXVlbCBKaWFuZw0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0K
RnJvbTogUmljaGFyZCBQdXJkaWUgPHJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmc+
IA0KU2VudDogVGh1cnNkYXksIE5vdmVtYmVyIDE0LCAyMDE5IDI6NTIgQU0NClRvOiBTYW11ZWwg
SmlhbmcgKOaxn+moj+WFiCkgPFNhbXVlbC5KaWFuZ0BxdWFudGF0dy5jb20+OyB5b2N0b0B5b2N0
b3Byb2plY3Qub3JnDQpDYzogQWxleCBDaG9uZyA8di1jaHVjaG9AbWljcm9zb2Z0LmNvbT4NClN1
YmplY3Q6IFJlOiBbeW9jdG9dIGJpdGJha2UgU1JDX1VSSSBmZXRjaCBBenVyZSBEZXZPcHMgcmVw
b3NpdG9yeSBBenVyZSBEZXZPcHMgU2VydmljZXMgQmFzaWMNCg0KT24gV2VkLCAyMDE5LTExLTEz
IGF0IDA5OjAyICswMDAwLCBTYW11ZWwgSmlhbmcgKOaxn+moj+WFiCkgd3JvdGU6DQo+IEkgZ290
IGJlbG93IGVycm9yIG1lc3NhZ2U6DQo+IGNyYXNoZHVtcC1naXQtcjAgZG9fZmV0Y2g6IEZldGNo
ZXIgZmFpbHVyZTogRmV0Y2ggY29tbWFuZCBleHBvcnQgDQo+IFBTRVVET19ESVNBQkxFRD0xOyB1
bnNldCBfUFlUSE9OX1NZU0NPTkZJR0RBVEFfTkFNRTsgZXhwb3J0IERCVVNfU0VTU0lPTl9CVVNf
QUREUkVTUz0idW5peDpwYXRoPS9ydW4vdXNlci8xMDAwL2J1cyI7IGV4cG9ydCBTU0hfQUdFTlRf
UElEPSIyMjU1IjsgZXhwb3J0IFNTSF9BVVRIX1NPQ0s9Ii9ydW4vdXNlci8xMDAwL2tleXJpbmcv
c3NoIjsgZXhwb3J0IFBBVEg9Iltwcml2YXRlX2RhdGFdIjsgZXhwb3J0IEhPTUU9Ii9ob21lL3Nh
bXVlbGppYW5nIjsgZ2l0IC1jIGNvcmUuZnN5bmNvYmplY3RmaWxlcz0wIGxzLXJlbW90ZSBnaXQ6
Ly9xdWFudGEwMS52aXN1YWxzdHVkaW8uY29tL09wZW5CTUMvX2dpdC9jcmFzaGR1bXAgIGZhaWxl
ZCB3aXRoIGV4aXQgY29kZSAxMjgsIG91dHB1dDoNCj4gZmF0YWw6IHVuYWJsZSB0byBjb25uZWN0
IHRvIHF1YW50YTAxLnZpc3VhbHN0dWRpby5jb206DQo+IHF1YW50YTAxLnZpc3VhbHN0dWRpby5j
b21bMDogMjYyMDoxZWM6MjE6OjE4XTogZXJybm89TmV0d29yayBpcyANCj4gdW5yZWFjaGFibGUN
Cj4gcXVhbnRhMDEudmlzdWFsc3R1ZGlvLmNvbVsxOiAxMy4xMDcuNDIuMThdOiBlcnJubz1Db25u
ZWN0aW9uIHRpbWVkIG91dA0KPiANCj4gU2VlbXMgdGhpcyB1cmwgd2l0aCBnaXQ6Ly8gcHJlZml4
IGNvdWxkIG5vdCBjb25uZWN0IGluIEF6dXJlIERldk9wcw0KPiANCj4gRG9jdW1lbnRbaHR0cHM6
Ly9kb2NzLm1pY3Jvc29mdC5jb20vZW4tdXMvYXp1cmUvZGV2b3BzL3JlcG9zL2dpdC91c2Utc3No
LWtleXMtdG8tYXV0aGVudGljYXRlP3ZpZXc9YXp1cmUtZGV2b3BzXS4NCg0KSSBub3cgcmVhbGlz
ZSB3aGF0IHRoZSBwcm9ibGVtIGlzLiBXaGF0ZXZlciB0aGlzIGdpdCBzZXJ2ZXIgeW91J3JlIHRh
bGtpbmcgdG8gaXMsIGl0IGRvZXMgbm90IHdvcmsgdGhlIHNhbWUgYXMgaXMgZG9jdW1lbnRlZCBm
b3IgdGhlICJnaXQgY2xvbmUiIG1hbnBhZ2UuDQoNClRoZXJlIGlzIG5vIG9wdGlvbiB0byBmb3Jj
ZSBiaXRiYWtlIHRvIHVzZSB0aGUgc3ludGF4IHlvdSdyZSBhc2tpbmcgZm9yIHNpbmNlIHRoZSBt
YW5wYWdlIHNheXMgdGhlIHN5bmF4IGl0cyB1c2luZyBpcyB2YWxpZC4gWW91IGNvdWxkIHBhdGNo
IGJpdGJha2UgdG8gZm9yY2UgaXQgdG8gdXNlIHRoYXQgc3ludGF4IHdpdGggYSBwYXRjaCBsaWtl
Og0KDQpkaWZmIC0tZ2l0IGEvYml0YmFrZS9saWIvYmIvZmV0Y2gyL2dpdC5weSBiL2JpdGJha2Uv
bGliL2JiL2ZldGNoMi9naXQucHkgaW5kZXggZmE0MWIwNzhmMTIuLmYyMGMxZjM2YjgyIDEwMDY0
NA0KLS0tIGEvYml0YmFrZS9saWIvYmIvZmV0Y2gyL2dpdC5weQ0KKysrIGIvYml0YmFrZS9saWIv
YmIvZmV0Y2gyL2dpdC5weQ0KQEAgLTU4OCw2ICs1ODgsOCBAQCBjbGFzcyBHaXQoRmV0Y2hNZXRo
b2QpOg0KICAgICAgICAgICAgIHVzZXJuYW1lID0gdWQudXNlciArICdAJw0KICAgICAgICAgZWxz
ZToNCiAgICAgICAgICAgICB1c2VybmFtZSA9ICIiDQorICAgICAgICBpZiB1ZC5wcm90byA9PSAi
c3NoIjoNCisgICAgICAgICAgICByZXR1cm4gIiVzJXM6JXMiICUgKHVzZXJuYW1lLCB1ZC5ob3N0
LCB1ZC5wYXRoWzE6XSkNCiAgICAgICAgIHJldHVybiAiJXM6Ly8lcyVzJXMiICUgKHVkLnByb3Rv
LCB1c2VybmFtZSwgdWQuaG9zdCwgdWQucGF0aCkNCiANCiAgICAgZGVmIF9yZXZpc2lvbl9rZXko
c2VsZiwgdWQsIGQsIG5hbWUpOg0KDQoNCndoaWNoIGluIG15IGxvY2FsIHRlc3RzIGFwcGVhcmVk
IHRvIGdpdmUgdGhlIHJlc3VsdCB5b3UncmUgYXNraW5nIGZvciBidXQgdGhhdCBzaG91bGRuJ3Qg
YmUgcmVxdWlyZWQgd2l0aCBhIHNlcnZlciB0aGF0IGFkaGVyZXMgdG8gd2hhdCB0aGUgZ2l0IG1h
bnVhbCBzYXlzIGlzIHN1cHBvcnRlZC4NCg0KQ2hlZXJzLA0KDQpSaWNoYXJkDQoNCg==

