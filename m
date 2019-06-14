Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5000E00E07; Thu, 13 Jun 2019 23:17:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AF10E00DB5
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 23:17:23 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Jun 2019 23:17:23 -0700
X-ExtLoop1: 1
Received: from kmsmsx155.gar.corp.intel.com ([172.21.73.106])
	by fmsmga006.fm.intel.com with ESMTP; 13 Jun 2019 23:17:21 -0700
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.97]) by
	KMSMSX155.gar.corp.intel.com ([169.254.15.231]) with mapi id
	14.03.0415.000; Fri, 14 Jun 2019 14:17:21 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"pokybuild@debian9-ty-1.yocto.io" <pokybuild@debian9-ty-1.yocto.io>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core-bounces@lists.openembedded.org"
	<openembedded-core-bounces@lists.openembedded.org>
Thread-Topic: QA notification for completed autobuilder build
	(yocto-2.8_M1.rc2)
Thread-Index: AQHVIDLHVpE/OxKP8kW2QigdnkDqC6aaniNQ
Date: Fri, 14 Jun 2019 06:17:20 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634E36E20@PGSMSX110.gar.corp.intel.com>
References: <20190611033223.498F7E00D73@yocto-www.yoctoproject.org>
	<b4ef68996131d5a09e26e597a5b9c76874a0b2a3.camel@linuxfoundation.org>
In-Reply-To: <b4ef68996131d5a09e26e597a5b9c76874a0b2a3.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiN2QxYmUyYzQtM2VhMy00MjQzLWJmN2QtNTYzYTRkMDk1MzA1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiQ0hzZElBZXk2OWxXVEFPODR5a2tMOXp0a1VcL3VnRUJHY1BjXC9qVmdPeHlRSWZIYkpaekh1bllnaktscmgrTHNjIn0=
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.8_M1.rc2)
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
X-List-Received-Date: Fri, 14 Jun 2019 06:17:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UUEgY3ljbGUgcmVwb3J0IGZvciAyLjggTTEgUkMyOg0KDQoJMS4gTm8gaGlnaCBtaWxlc3RvbmUg
ZGVmZWN0cy4gIA0KCTIuIFRlc3QgcmVzdWx0cyBhcmUgYXZhaWxhYmxlIGF0IGZvbGxvd2luZyBs
b2NhdGlvbjoNCiAJCeKAoiBGb3IgcmVzdWx0cyBvZiBhbGwgYXV0b21hdGVkIHRlc3RzLCBwbGVh
c2UgcmVmZXIgdG8gcmVzdWx0cyBhdCBwdWJsaWMgQUIgWzFdDQoJCeKAoiBGb3Igb3RoZXIgdGVz
dCByZXN1bHRzLCByZWZlciB0byBnaXQgcmVwbyAiIHlvY3RvLXRlc3RyZXN1bHRzLWNvbnRyaWIi
IFsyXQ0KCQnigKIgRm9yIHRlc3QgcmVwb3J0IGZvciB0ZXN0IGNhc2VzIHJ1biBieSBJbnRlbCBh
bmQgV1IgdGVhbSwgcmVmZXIgdG8gZ2l0IHJlcG8gIiB5b2N0by10ZXN0cmVzdWx0cy1jb250cmli
IiBbMl0NCiAgICAgICAgICAgIDMuIDMgbmV3IGRlZmVjdHMgYXJlIGZvdW5kIGluIHRoaXMgY3lj
bGUsIEJTUCBIVyAtIHBhcnNlbG9nIGlzc3VlIFszXSwgQlNQIEhXIC0gYXVkaW8gaXNzdWUgWzRd
LCBxZW11eDg2IG9lLXNlbGZ0ZXN0IGZhaWx1cmUgb24gQUIgWzVdIA0KICAgICAgICAgICAgNC4g
cHRlc3RzIGZhaWxpbmcgaW4gdGhpcyByZWxlYXNlIHdoaWNoIHdlcmUgcGFzc2luZyBpbiBwcmV2
aW91cyByZWxlYXNlIC0gYWNsIFs2XS4gMyB0aW1lb3V0IGlzc3VlcyBvYnNlcnZlZCBpbiBwdGVz
dHMgLSBhY2wgWzddLCBibHVlejUgWzhdICBhbmQgbWRhZG0gWzldLg0KCVJpY2hhcmQncyBjb21t
ZW50cyBvbiBwdGVzdCBmYWlsdXJlczogIFRoZXJlIGFyZSB0aHJlZSB0aW1lb3V0cyBpbiBwdGVz
dCwgYWNsLCBibHVlejUgKCMxMzM2NikgYW5kIG1kYWRtICgjMTMzNjgpLiBUaGVzZSBhcmUgYWxz
byBub3QgZ29pbmcgdG8gYmxvY2sgdGhlIG1pbGVzdG9uZSByZWxlYXNlLiBUaGUNCiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBibHVlejUgaXNzdWUgaXMgZ2NjOSByZWxhdGVkLCBtZGFkbSB3
YXMgZXhwb3NlZCBieSB3aWRlciB0ZXN0aW5nIGluIG1hc3Rlci4gVGhlIGFjbCBpc3N1ZSBuZWVk
cyBhIGJ1ZyBvcGVuaW5nIGFuZCBpbnZlc3RpZ2F0aW9uIGFzIHRoYXQgaXMgYSByZWdyZXNzaW9u
Lg0KIAlTdW1tYXJ5IG9mIHB0ZXN0IGluIHRoaXMgYnVpbGQ6IA0KCXFlbXVhcm02NC1wdGVzdDoN
CgkJVG90YWwgOiA0MzU1OTcNCgkJUGFzcyA6IDQzMzM0NA0KIAkJIEZhaWwgOiAgNjUNCgkJU2tp
cCA6IDIxODgNCgkJVGltZW91dCBpc3N1ZXMgaW4gYmx1ZXo1IGFuZCBtZGFkbQ0KICAgICAgICAg
ICAgcWVtdXg4Ni02NC1wdGVzdA0KICAgICAgICAgICAgCQlUb3RhbCA6IDQ1MzQ2DQogICAgICAg
ICAgICAJCVBhc3MgOiA0MzIzNQ0KICAgICAgICAgICAJCSBGYWlsIDogIDU2DQogICAgICAgICAg
ICAJCVNraXAgOiAyMDU1DQogICAgICAgICAgICAJCVRpbWVvdXQgaXNzdWVzIGluIGFjbCwgYmx1
ZXo1IGFuZCBtZGFkbQ0KDQogICAgICAgIDUuIFN1bW1hcnkgb2YgbHRwIHRlc3QgcnVuIGluIHRo
aXMgYnVpbGQ6DQoJcWVtdWFybTY0LWx0cA0KCQlUb3RhbCA6IDE4ODYNCgkJUGFzcyA6IDE3NTkN
CiAJCSBGYWlsIDogIDEyNw0KICAgICAgICAgICAgICBxZW11eDg2LTY0LWx0cA0KCQlUb3RhbCA6
IDE4NzkNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUGFzcyA6IDE4MjUNCiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgRmFpbCA6ICA1NA0KDQo9PT09PT09IExpbmtzID09PT09PT09
DQoNClsxXSAtIGh0dHBzOi8vYXV0b2J1aWxkZXIueW9jdG8uaW8vcHViL3JlbGVhc2VzL3lvY3Rv
LTIuOF9NMS5yYzIvdGVzdHJlc3VsdHMvDQoNClsyXSAtIGdpdCBjbG9uZSBnaXRAcHVzaC55b2N0
b3Byb2plY3Qub3JnOnlvY3RvLXRlc3RyZXN1bHRzLWNvbnRyaWIgLWIgemV1cw0KDQpbM10gLSBb
UUEgMi44IE0xIFJDMV1bQlNQIEhXXSBwYXJzZWxvZ3MuUGFyc2VMb2dzVGVzdC50ZXN0X3BhcnNl
bG9ncyBmYWlsdXJlIG9uIGNvZmZlZWxha2UNCmh0dHBzOi8vYnVnemlsbGEueW9jdG9wcm9qZWN0
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTMzOTYNCg0KWzRdIC0gW1FBIDIuOCBNMSBSQzFdW0JTUCBI
V10gYXVkaW8gaXMgbm90IHBsYXlpbmcgb24gY29mZmVlbGFrZSBhbmQgbnVjNw0KaHR0cHM6Ly9i
dWd6aWxsYS55b2N0b3Byb2plY3Qub3JnL3Nob3dfYnVnLmNnaT9pZD0xMzM5Nw0KDQpbNV0gLSBb
UUEgMi44IE0xIFJDMV0gdGVzdF9ib290X21hY2hpbmVfc2xpcnAgaXMgc2hvd2luZyBlcnJvciBm
b3IgcWVtdXg4Ng0KaHR0cHM6Ly9idWd6aWxsYS55b2N0b3Byb2plY3Qub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMzM5OQ0KDQpbNl0gLSBbUUEgMi44IE0xIFJDMV0gYWNsIHB0ZXN0IGZhaWx1cmUNCmh0
dHBzOi8vYnVnemlsbGEueW9jdG9wcm9qZWN0Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTMzOTUNCg0K
WzddIC0gYWNsIHB0ZXN0IHRpbWVvdXQgZHVlIHRvIHBlcmwgdXBkYXRlDQpodHRwczovL2J1Z3pp
bGxhLnlvY3RvcHJvamVjdC5vcmcvc2hvd19idWcuY2dpP2lkPTEzMzkxDQoNCls4XSAtIGJsdWV6
NSBwdGVzdCBoYW5ncyB3aXRoIGdjYyA5DQpodHRwczovL2J1Z3ppbGxhLnlvY3RvcHJvamVjdC5v
cmcvc2hvd19idWcuY2dpP2lkPTEzMzY2DQoNCls5XSAtIG1kYWRtIHB0ZXN0IHRpbWVzIG91dA0K
aHR0cHM6Ly9idWd6aWxsYS55b2N0b3Byb2plY3Qub3JnL3Nob3dfYnVnLmNnaT9pZD0xMzM2OA0K
DQoNClRoYW5rcyAmIFJlZ2FyZHMsDQpTYW5nZWV0YSBKYWluDQoNCg==

