Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10AA8E00CAC; Thu, 29 Sep 2016 02:20:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.181.38 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1234 seconds by postgrey-1.32 at yocto-www;
	Thu, 29 Sep 2016 02:20:04 PDT
Received: from smtp-out11.electric.net (smtp-out11.electric.net
	[185.38.181.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B467BE0097C
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2016 02:20:04 -0700 (PDT)
Received: from 1bpXBg-0002oY-T4 by out11c.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>)
	id 1bpXBg-0002pJ-Uv; Thu, 29 Sep 2016 01:59:28 -0700
Received: by emcmailer; Thu, 29 Sep 2016 01:59:28 -0700
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out11c.electric.net with esmtps (TLSv1:AES128-SHA:128) (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>)
	id 1bpXBg-0002oY-T4; Thu, 29 Sep 2016 01:59:28 -0700
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0294.000; Thu, 29 Sep 2016 10:59:27 +0200
From: Adrian Dudau <Adrian.Dudau@enea.com>
To: "wangxin2015.fnst@cn.fujitsu.com" <wangxin2015.fnst@cn.fujitsu.com>
Thread-Topic: [yocto] [meta-cgl][PATCH] resource-agents: 3.9.6 -> 3.9.7
Thread-Index: AQHSBAjfk4vAHqyycUmLu8S0WRhusaCEvFYAgAt5pAA=
Date: Thu, 29 Sep 2016 08:59:26 +0000
Message-ID: <1475139570.9137.2.camel@sestows129.enea.se>
References: <1472703837-1344-1-git-send-email-wangxin2015.fnst@cn.fujitsu.com>
	<C43D7C6FFC265C429F44FEB1C68F1B25633E1799@G08CNEXMBPEKD03.g08.fujitsu.local>
In-Reply-To: <C43D7C6FFC265C429F44FEB1C68F1B25633E1799@G08CNEXMBPEKD03.g08.fujitsu.local>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.140.45]
MIME-Version: 1.0
X-Outbound-IP: 192.36.1.72
X-Env-From: Adrian.Dudau@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:AES128-SHA:128
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-cgl][PATCH] resource-agents: 3.9.6 -> 3.9.7
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
X-List-Received-Date: Thu, 29 Sep 2016 09:20:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <166EE456B887BD49865F0B441F0F12D8@local>
Content-Transfer-Encoding: base64

T24gdG9yLCAyMDE2LTA5LTIyIGF0IDAxOjQ1ICswMDAwLCBXYW5nLCBYaW4gd3JvdGU6DQo+IHBp
bmcNCj4gDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFdhbmcsIFhpbi/n
josg6ZGrIA0KPiBTZW50OiBUaHVyc2RheSwgU2VwdGVtYmVyIDAxLCAyMDE2IDEyOjI0IFBNDQo+
IFRvOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+IENjOiBXYW5nLCBYaW4v546LIOmRqw0KPiBT
dWJqZWN0OiBbeW9jdG9dW21ldGEtY2dsXVtQQVRDSF0gcmVzb3VyY2UtYWdlbnRzOiAzLjkuNiAt
PiAzLjkuNw0KPiANCj4gVXBncmFkZSByZXNvdXJjZS1hZ2VudHMgZnJvbSAzLjkuNiB0byAzLjku
Ny4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFdhbmcgWGluIDx3YW5neGluMjAxNS5mbnN0QGNuLmZ1
aml0c3UuY29tPg0KPiAtLS0NCj4gIC4uLi97cmVzb3VyY2UtYWdlbnRzXzMuOS42LmJiID0+IHJl
c291cmNlLWFnZW50c18zLjkuNy5iYn0gICAgICAgICAgICB8IDQgKystLQ0KPiAgMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkgIHJlbmFtZSBtZXRhLWNnbC1j
b21tb24vcmVjaXBlcy1jZ2wvY2x1c3Rlci1yZXNvdXJjZS1hZ2VudHMve3Jlc291cmNlLWFnZW50
c18zLjkuNi5iYiA9PiByZXNvdXJjZS1hZ2VudHNfMy45LjcuYmJ9ICg5NSUpDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtY2dsL2NsdXN0ZXItcmVzb3VyY2UtYWdl
bnRzL3Jlc291cmNlLWFnZW50c18zLjkuNi5iYiBiL21ldGEtY2dsLWNvbW1vbi9yZWNpcGVzLWNn
bC9jbHVzdGVyLXJlc291cmNlLWFnZW50cy9yZXNvdXJjZS1hZ2VudHNfMy45LjcuYmINCj4gc2lt
aWxhcml0eSBpbmRleCA5NSUNCj4gcmVuYW1lIGZyb20gbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMt
Y2dsL2NsdXN0ZXItcmVzb3VyY2UtYWdlbnRzL3Jlc291cmNlLWFnZW50c18zLjkuNi5iYg0KPiBy
ZW5hbWUgdG8gbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtY2dsL2NsdXN0ZXItcmVzb3VyY2UtYWdl
bnRzL3Jlc291cmNlLWFnZW50c18zLjkuNy5iYg0KPiBpbmRleCAxOGVmMWU4Li5hMGQ0ZTFmIDEw
MDY0NA0KPiAtLS0gYS9tZXRhLWNnbC1jb21tb24vcmVjaXBlcy1jZ2wvY2x1c3Rlci1yZXNvdXJj
ZS1hZ2VudHMvcmVzb3VyY2UtYWdlbnRzXzMuOS42LmJiDQo+ICsrKyBiL21ldGEtY2dsLWNvbW1v
bi9yZWNpcGVzLWNnbC9jbHVzdGVyLXJlc291cmNlLWFnZW50cy9yZXNvdXJjZS1hZ2VudA0KPiAr
Kysgc18zLjkuNy5iYg0KPiBAQCAtMjAsOCArMjAsOCBAQCBTUkNfVVJJID0gImh0dHBzOi8vY29k
ZWxvYWQuZ2l0aHViLmNvbS9DbHVzdGVyTGFicy9yZXNvdXJjZS1hZ2VudHMvdGFyLmd6L3Yke1BW
fQ0KPiAgICAgICAgICAgICBmaWxlOi8vMDMtZml4LWhlYWRlci1kZWZzLWxvb2t1cC5wYXRjaCBc
DQo+ICAgICAgICAgICAgIg0KPiAgDQo+IC1TUkNfVVJJW21kNXN1bV0gPSAiNjg3M2Q1YTIxN2Fl
ZTMwMjYxOTNmYjg1YmZhMThhNGEiDQo+IC1TUkNfVVJJW3NoYTI1NnN1bV0gPSAiMzk3MjJjZGVl
NjhmZjk2ZDA2Nzg4ZjA1ZjMyNWJkMjFlYzJmYzU5YzU5ZDg0N2U1ZTRiMjNjNmRmMjNiZjY3OCIN
Cj4gK1NSQ19VUklbbWQ1c3VtXSA9ICJjNTkwOTZiMWJhY2M3MDRlOGE1YTI4NWYxNTcyOTEwOSIN
Cj4gK1NSQ19VUklbc2hhMjU2c3VtXSA9ICJlNWJkNjI2NThmYmMyMzZhY2I4M2I3MDlmNjRiMmNk
OWZhZTUyYWE0YTQyMGE0NGZlZDVlYjY2N2U5MjhiMTUyIg0KPiAgDQo+ICBMSUNfRklMRVNfQ0hL
U1VNID0gImZpbGU6Ly9DT1BZSU5HO21kNT03NTE0MTkyNjBhYTk1NDQ5OWY3YWJhYWJhYTg4MmJi
ZSBcDQo+ICAgICAgICAgICAgICAgICAgICAgIGZpbGU6Ly9DT1BZSU5HLkxHUEw7bWQ1PTRmYmQ2
NTM4MGNkZDI1NTk1MTA3OTAwOGIzNjQ1MTZjIFwNCj4gLS0NCj4gMi43LjQNCj4gDQo+IA0KPiAN
Cg0KSGkgV2FuZw0KDQpUaGlzIHBhdGNoIGhhcyBhbHJlYWR5IGJlZW4gbWVyZ2VkIHRvIG1hc3Rl
cg0KKGh0dHA6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9jZ2l0L2NnaXQuY2dpL21ldGEtY2dsL2Nv
bW1pdC8/aWQ9N2IwY2Q4NzZlYjIxNTMzNWE5ZmE2YmZkZmQwZjBjZmQxNGZiZjJiOSkgYXMgd2Vs
bCBhcyB0aGUgb3RoZXIgdHdvLg0KDQpDaGVlcnMsDQotLUFkcmlhbg0KDQoNCg0K

