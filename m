Return-Path: <prvs=2130de8fb=Samuel.Jiang@quantatw.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2976DE00E12; Wed, 13 Nov 2019 01:05:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [220.128.79.91 listed in list.dnswl.org]
X-Greylist: delayed 66 seconds by postgrey-1.32 at yocto-www;
	Wed, 13 Nov 2019 01:05:11 PST
Received: from mx02.quantatw.com (mx02.quantatw.com [220.128.79.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5955E00D86
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 01:05:11 -0800 (PST)
IronPort-SDR: 0dnCJUpCX9pCaxFSogCZOcYUp8moAWLnRflOAxlbpyVgNqxhGTKtunB4U7SUY2zP0Hh+qJfkJZ
	YseGVlvxfWcw==
Received: from unknown (HELO mailbx06.quanta.corp) ([10.243.91.101])
	by mx02.quantatw.com with ESMTP; 13 Nov 2019 17:04:02 +0800
Received: from mailbx10.quanta.corp (10.243.91.107) by mailbx06.quanta.corp
	(10.243.91.101) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5;
	Wed, 13 Nov 2019 17:02:14 +0800
Received: from mailbx10.quanta.corp ([fe80::acb0:61f4:dd7b:1a88]) by
	mailbx10.quanta.corp ([fe80::acb0:61f4:dd7b:1a88%4]) with mapi id
	15.01.1713.009; Wed, 13 Nov 2019 17:02:14 +0800
From: =?utf-8?B?U2FtdWVsIEppYW5nICjmsZ/pqI/lhYgp?= <Samuel.Jiang@quantatw.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] bitbake SRC_URI fetch Azure DevOps repository Azure
	DevOps Services Basic
Thread-Index: AQHVkrrru2MWLmnC/EK0fXK52KdRead8MDmAgAxBbGD//9ZZAIAAkFwg
Date: Wed, 13 Nov 2019 09:02:14 +0000
Message-ID: <e5a5b73ee91c491086f8ec17fa764507@quantatw.com>
References: <489934f9-1420-40b0-a74a-54b71633bbed@SINGMEHUB07.gme.gbl>
	<KL1P15301MB03443E265CCD3E6492C091CF80630@KL1P15301MB0344.APCP153.PROD.OUTLOOK.COM>
	<a1ef7037a6a94e518fcef16502c67585@quantatw.com>
	<SG2P153MB0349D0EFB059BC372C86528880630@SG2P153MB0349.APCP153.PROD.OUTLOOK.COM>
	<9e5ccabd-03be-410b-bd43-1f7ba45dff31@Spark>
	<a2982b3de70f74fd787b45b06711437afd2ae98e.camel@linuxfoundation.org>
	<a066f24b71df426db88ce23b46331a36@quantatw.com>
	<85cc536d4ce5de2606d48aba4b813fa96be1f6f9.camel@linuxfoundation.org>
In-Reply-To: <85cc536d4ce5de2606d48aba4b813fa96be1f6f9.camel@linuxfoundation.org>
Accept-Language: zh-TW, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.243.91.252]
x-tm-as-product-ver: SMEX-14.0.0.1158-8.5.1020-25040.005
x-tm-as-result: No-10--19.115400-5.000000
x-tmase-matchedrid: cnNFLnOjrwrUL3YCMmnG4hvgzEPRJaDEWw/S0HB7eoMTiSW9r3PknDmy
	vi/pk1f1XPPS+VLHu1hN76Ow9byuXIX1GrR5BFjUZj7E6vHnuNarKImBnIKgpu9FCyScBaYazJi
	ZlemvkXQuEZqYraiEgCHV/rBcGA4bP31U66/78OPQeUylZ/mLlz/AwgScsQyZv5ndmnZN3USKt9
	qcdlBNtF4XGHx+KGm1o4O9ML8TPpqa7cBfFFOFpVyuZHgmvm5o+KgiyLtJrSAMR2L8iw5VqrTML
	GnLhsRpx6nxYL9elhzSyvRokhr9K2l4Bykl/FQelVHM/F6YkvQ8gBeDW40JC+TWTJAOkSPwN3WM
	GPxAjOFXqlxxNMwu91TMbAcKg9UCwyUD2qW77gK5xbPXEl8dZkUj/7D85/VH9fB+4MvepQyjxYy
	RBa/qJaEwgORH8p/AjaPj0W1qn0TiRhduhvElsqX8y2tPBLhQtIOQ8ZkisACgmQY9dHJP9dBix4
	sfa+eHe1E8jiStwn1Oll8Awlduig==
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--19.115400-5.000000
x-tmase-version: SMEX-14.0.0.1158-8.5.1020-25040.005
x-tm-snts-smtp: 7B6311824C44E94BDFF07A0E5B683F0E031025FB5CD19D9AA76DB45D02E6934C2000:B
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
X-List-Received-Date: Wed, 13 Nov 2019 09:05:14 -0000
Content-Language: zh-TW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBnb3QgYmVsb3cgZXJyb3IgbWVzc2FnZToNCmNyYXNoZHVtcC1naXQtcjAgZG9fZmV0Y2g6IEZl
dGNoZXIgZmFpbHVyZTogRmV0Y2ggY29tbWFuZCBleHBvcnQgUFNFVURPX0RJU0FCTEVEPTE7IHVu
c2V0IF9QWVRIT05fU1lTQ09ORklHREFUQV9OQU1FOyBleHBvcnQgREJVU19TRVNTSU9OX0JVU19B
RERSRVNTPSJ1bml4OnBhdGg9L3J1bi91c2VyLzEwMDAvYnVzIjsgZXhwb3J0IFNTSF9BR0VOVF9Q
SUQ9IjIyNTUiOyBleHBvcnQgU1NIX0FVVEhfU09DSz0iL3J1bi91c2VyLzEwMDAva2V5cmluZy9z
c2giOyBleHBvcnQgUEFUSD0iW3ByaXZhdGVfZGF0YV0iOyBleHBvcnQgSE9NRT0iL2hvbWUvc2Ft
dWVsamlhbmciOw0KZ2l0IC1jIGNvcmUuZnN5bmNvYmplY3RmaWxlcz0wIGxzLXJlbW90ZSBnaXQ6
Ly9xdWFudGEwMS52aXN1YWxzdHVkaW8uY29tL09wZW5CTUMvX2dpdC9jcmFzaGR1bXAgIGZhaWxl
ZCB3aXRoIGV4aXQgY29kZSAxMjgsIG91dHB1dDoNCmZhdGFsOiB1bmFibGUgdG8gY29ubmVjdCB0
byBxdWFudGEwMS52aXN1YWxzdHVkaW8uY29tOg0KcXVhbnRhMDEudmlzdWFsc3R1ZGlvLmNvbVsw
OiAyNjIwOjFlYzoyMTo6MThdOiBlcnJubz1OZXR3b3JrIGlzIHVucmVhY2hhYmxlDQpxdWFudGEw
MS52aXN1YWxzdHVkaW8uY29tWzE6IDEzLjEwNy40Mi4xOF06IGVycm5vPUNvbm5lY3Rpb24gdGlt
ZWQgb3V0DQoNClNlZW1zIHRoaXMgdXJsIHdpdGggZ2l0Oi8vIHByZWZpeCBjb3VsZCBub3QgY29u
bmVjdCBpbiBBenVyZSBEZXZPcHMgDQoNCkRvY3VtZW50W2h0dHBzOi8vZG9jcy5taWNyb3NvZnQu
Y29tL2VuLXVzL2F6dXJlL2Rldm9wcy9yZXBvcy9naXQvdXNlLXNzaC1rZXlzLXRvLWF1dGhlbnRp
Y2F0ZT92aWV3PWF6dXJlLWRldm9wc10uDQoNClRoYW5rcywNClNhbXVlbCBKaWFuZw0KDQoNCi0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBSaWNoYXJkIFB1cmRpZSA8cmljaGFyZC5w
dXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZz4gDQpTZW50OiBXZWRuZXNkYXksIE5vdmVtYmVyIDEz
LCAyMDE5IDQ6MTAgUE0NClRvOiBTYW11ZWwgSmlhbmcgKOaxn+moj+WFiCkgPFNhbXVlbC5KaWFu
Z0BxdWFudGF0dy5jb20+OyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpDYzogQWxleCBDaG9uZyA8
di1jaHVjaG9AbWljcm9zb2Z0LmNvbT4NClN1YmplY3Q6IFJlOiBbeW9jdG9dIGJpdGJha2UgU1JD
X1VSSSBmZXRjaCBBenVyZSBEZXZPcHMgcmVwb3NpdG9yeSBBenVyZSBEZXZPcHMgU2VydmljZXMg
QmFzaWMNCg0KT24gV2VkLCAyMDE5LTExLTEzIGF0IDAzOjA2ICswMDAwLCBTYW11ZWwgSmlhbmcg
KOaxn+moj+WFiCkgd3JvdGU6DQo+IEkgdHJ5IHVzZQ0KPiBTUkNfVVJJID0gImdpdDovL3F1YW50
YTAxQHZzLQ0KPiBzc2gudmlzdWFsc3R1ZGlvLmNvbS92My9xdWFudGEwMS9PcGVuQk1DL2NyYXNo
ZHVtcDtwcm90b2NvbD1zc2g7bm9icmENCj4gbmNoPTEiDQo+IA0KPiB0aGUgYml0YmFrZSByZXNw
b25zZSBiZWxvdyBlcnJvciBtZXNzYWdlOg0KPiAgZ2l0IC1jIGNvcmUuZnN5bmNvYmplY3RmaWxl
cz0wIGxzLXJlbW90ZSANCj4gc3NoOi8vcXVhbnRhMDFAdnMtc3NoLnZpc3VhbHN0dWRpby5jb206
djMvcXVhbnRhMDEvT3BlbkJNQy9jcmFzaGR1bXANCj4gICBmYWlsZWQgd2l0aCBleGl0IGNvZGUg
MTI4LCBvdXRwdXQ6DQo+IA0KPiBzc2g6IENvdWxkIG5vdCByZXNvbHZlIGhvc3RuYW1lIHZzLXNz
aC52aXN1YWxzdHVkaW8uY29tOnYzOiBOYW1lIG9yICANCj4gc2VydmljZSBub3Qga25vd24NCj4g
ZmF0YWw6IENvdWxkIG5vdCByZWFkIGZyb20gcmVtb3RlIHJlcG9zaXRvcnkuDQo+IA0KPiBJIGRp
c2N1c3NlZCB3aXRoIE1pY3Jvc29mdCBzdXBwb3J0IHRlYW0sIHRoZSBBenVyZSBEZXZPcHMgc3Vw
cG9ydCBTU0ggDQo+IHVybCBjbG9uZSB3aXRob3V0IFsgc3NoOi8vIF0gcHJlZml4LCBsaWtlIGJl
bG93Og0KPiBnaXQgLWMgY29yZS5mc3luY29iamVjdGZpbGVzPTAgbHMtcmVtb3RlIA0KPiBxdWFu
dGEwMUB2cy1zc2gudmlzdWFsc3R1ZGlvLmNvbTp2My9xdWFudGEwMS9PcGVuQk1DL2NyYXNoZHVt
cA0KPiANCj4gRG9lcyBiaXRiYWtlIHN1cHBvcnQgZ2l0IFNSQ19VUkkgd2l0aG91dCBhbnkgcHJl
Zml4IG9yIG5lZWQgZXh0cmEgd2l0aCANCj4gQXp1cmUgU1NIIHByb3RvY29sIHN1cHBvcnQgaXQ/
DQoNCkhhdmUgeW91IHRyaWVkOg0KDQpTUkNfVVJJID0gImdpdDovL3F1YW50YTAxQHZzLXNzaC52
aXN1YWxzdHVkaW8uY29tL3YzL3F1YW50YTAxL09wZW5CTUMvY3Jhc2hkdW1wO3Byb3RvY29sPWdp
dDtub2JyYW5jaD0xIg0KDQooY2hhbmdpbmcgcHJvdG9jb2wgdG8gZ2l0KQ0KPw0KDQpDaGVlcnMs
DQoNClJpY2hhcmQNCg0K

