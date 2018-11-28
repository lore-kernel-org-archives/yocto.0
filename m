Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCB90E00C74; Tue, 27 Nov 2018 23:12:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B990E00C70
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2018 23:12:38 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Nov 2018 23:12:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.56,289,1539673200"; d="scan'208";a="112816160"
Received: from kmsmsx153.gar.corp.intel.com ([172.21.73.88])
	by orsmga001.jf.intel.com with ESMTP; 27 Nov 2018 23:12:36 -0800
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.219]) by
	KMSMSX153.gar.corp.intel.com ([169.254.5.169]) with mapi id
	14.03.0415.000; Wed, 28 Nov 2018 15:07:18 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"Jolley, Stephen K" <stephen.k.jolley@intel.com>, "Eggleton, Paul"
	<paul.eggleton@intel.com>, "Graydon, Tracy" <tracy.graydon@intel.com>, 
	"Erway, Tracey M" <tracey.m.erway@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: QA cycle report for 2.4.4 RC1
Thread-Index: AdSC29L4uuuUDBxeT+i5N9NtPzn21AAJ8DuAAPi9zKA=
Date: Wed, 28 Nov 2018 07:07:18 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634CF2AD2@PGSMSX110.gar.corp.intel.com>
References: <015AB11D45F2C442929CB2765DAE738634CEF595@PGSMSX110.gar.corp.intel.com>
	<5a3e9c82256c75c451d6a406fe5b16db394ff9d7.camel@linuxfoundation.org>
In-Reply-To: <5a3e9c82256c75c451d6a406fe5b16db394ff9d7.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjhmMGZmMzctN2YzNy00ZWZjLTliNWEtNmEwMDIyMDI1NmQyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoidEE1TU5QXC9RNUdiRVBlcENsdDhrb0VYWGpKcTVlM1Y0ZDhZdFVIWmxleHg2RU5lcnBwSk4zKzNOWkgxU1U3Q28ifQ==
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
Subject: Re: QA cycle report for 2.4.4 RC1
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
X-List-Received-Date: Wed, 28 Nov 2018 07:12:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIHRlc3QgY2FzZXMgcnVuIGZvciAyLjQuNCBSQzEgYXJlIHNhbWUgYXMgcnVuIGZvciAyLjQg
cmVsZWFzZS4gDQoNCg0KPi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogcmljaGFy
ZC5wdXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZyA8cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0
aW9uLm9yZz4NCj5TZW50OiBTYXR1cmRheSwgMjQgTm92ZW1iZXIsIDIwMTggMTI6MDcgQU0NCj5U
bzogSmFpbiwgU2FuZ2VldGEgPHNhbmdlZXRhLmphaW5AaW50ZWwuY29tPjsgSm9sbGV5LCBTdGVw
aGVuIEsNCj48c3RlcGhlbi5rLmpvbGxleUBpbnRlbC5jb20+OyBFZ2dsZXRvbiwgUGF1bCA8cGF1
bC5lZ2dsZXRvbkBpbnRlbC5jb20+Ow0KPkdyYXlkb24sIFRyYWN5IDx0cmFjeS5ncmF5ZG9uQGlu
dGVsLmNvbT47IEVyd2F5LCBUcmFjZXkgTQ0KPjx0cmFjZXkubS5lcndheUBpbnRlbC5jb20+OyB5
b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+Q2M6IFNhbmdhbCwgQXBvb3J2IDxhcG9vcnYuc2FuZ2Fs
QGludGVsLmNvbT47IEtpcmtpcmlzLCBOZWN0YXINCj48bmVjdGFyLmtpcmtpcmlzQGludGVsLmNv
bT4NCj5TdWJqZWN0OiBSZTogUUEgY3ljbGUgcmVwb3J0IGZvciAyLjQuNCBSQzENCj4NCj5PbiBG
cmksIDIwMTgtMTEtMjMgYXQgMDM6MjMgKzAwMDAsIEphaW4sIFNhbmdlZXRhIHdyb3RlOg0KPj4N
Cj4+IEhlbGxvIEFsbCwNCj4+DQo+PiBUaGlzIGlzIHRoZSBmdWxsIHJlcG9ydCBmb3IgMi40LjQg
UkMxOg0KPj4NCj5odHRwczovL3dpa2kueW9jdG9wcm9qZWN0Lm9yZy93aWtpL1dXNDZfLV8yMDE4
LTExLTE0Xy0NCj5fRnVsbF9UZXN0X0N5Y2xlXzIuNC40X1JDMQ0KPj4NCj4+DQo+PiBTdW1tYXJ5
DQo+Pg0KPj4gQWxsIHBsYW5uZWQgdGVzdHMgd2VyZSBleGVjdXRlZC4NCj4+DQo+PiBUb3RhbCBU
ZXN0IEV4ZWN1dGVkIOKAkyAzMzMwDQo+PiBQYXNzZWQgVGVzdCDigJMgMzMxOA0KPj4gRmFpbGVk
IFRlc3Qg4oCTIDgNCj4+IEJsb2NrZWQgVGVzdCAtIDQNCj4+DQo+PiBUaGVyZSB3ZXJlIHplcm8g
aGlnaCBwcmlvcml0eSBkZWZlY3QuICBUZWFtIGhhZCBmb3VuZCAyIG5ldyBkZWZlY3RzLg0KPj4N
Cj4+IE5ldyBCdWdzDQo+Pg0KPj4gWzFdIEJ1ZyAxMzAzMyAtICBbMi40LjRSQzFdIFtCaXRiYWtl
XSBbQ2FzZSAxNDJdIFBSIG51bWJlciBpcyBub3QNCj4+IGdldHRpbmcgaW5jcmVhc2VkIHdpdGgg
cmVtb3RlIHNlcnZlci9sb2NhbCBjbGllbnQgbW9kZQ0KPj4gaHR0cHM6Ly9idWd6aWxsYS55b2N0
b3Byb2plY3Qub3JnL3Nob3dfYnVnLmNnaT9pZD0xMzAzMw0KPj4NCj4+ICBbMl1CdWcgMTMwMzgg
LSBbMi40LjRSQzFdW1BhY2thZ2UgTWFuYWdlbWVudF1bR2V0dGluZyBFcnJvciBNZXNzYWdlDQo+
PiAiRmFpbGVkIHRvIHN5bmNocm9uaXplIGNhY2hlIGZvciByZXBvICdyZXBvc2l0b3J5JyJdDQo+
PiBodHRwczovL2J1Z3ppbGxhLnlvY3RvcHJvamVjdC5vcmcvc2hvd19idWcuY2dpP2lkPTEzMDM4
DQo+DQo+VGhhbmtzIGZvciBydW5uaW5nIHRoZSBRQSBmb3IgdGhpcy4gSSBkbyBoYXZlIHNvbWUg
cXVlc3Rpb25zL29ic2VydmF0aW9ucy4NCj4NCj5GaXJzdGx5LCB0aGlzIHJlcG9ydCBpcyBhIGxp
dHRsZSBtaXNsZWFkaW5nIGFzIHRoZXJlIGFyZSBvbmx5IHR3byBidWdzIG1lbnRpb25lZCBidXQg
OA0KPmZhaWx1cmVzLiBUaGUgZnVsbCByZXBvcnQgc2hvd3Mgb3RoZXIgYnVncyB3aGljaCB3ZXJl
IGZvciBleGFtcGxlIHJlb3BlbmVkIG9yDQo+YWxyZWFkeSBvcGVuLg0KSW4gcmVwb3J0LCBvbmx5
IG5ldyBidWdzIGFyZSBtZW50aW9uZWQuIEFsbCB0aGUgYnVncyB3aGljaCBhcmUgcmVvcGVuZWQv
YWxyZWFkeSBleGlzdGluZyBhcmUgbm90IGxpc3RlZCBpbiByZXBvcnQgbWFpbCBidXQgY2FuIGJl
IHNlZW4gaW4gZnVsbCByZXBvcnQuDQpIb3dldmVyLCBpZiBpdHMgY3JlYXRpbmcgYW55IGNvbmZ1
c2lvbi9pbmNvbnZlbmllbmNlLCBnb2luZyBmb3J3YXJkIEkgY2FuIG1lbnRpb24gYWxsIHRoZSBm
YWlsaW5nIGJ1Z3MgaW4gcmVwb3J0Lg0KDQo+DQo+VGFraW5nIHRoZSBhYm92ZSBidWdzIGZpcnN0
LCBJIGJlbGlldmUgdGhleSdyZSBib3RoIG1hbnVhbCB2ZXJzaW9ucyBvZiB0ZXN0cyB3aGljaA0K
PmFyZSBhbHJlYWR5IGF1dG9tYXRlZC4gSSBiZWxpZXZlIHRoZSBhdXRvbWF0ZWQgdGVzdHMgaGF2
ZSBwYXNzZWQgYW5kIHRoZXJlDQo+YXBwZWFycyB0byBiZSBzb21lIGtpbmQgb2YgcHJvYmxlbSB3
aXRoIHRoZSBtYW51YWwgZXhlY3V0aW9uIHN1Y2ggYXMgdGhlDQo+d3JvbmcgcHJvY2VzcyBiZWlu
ZyBkb2N1bWVudGVkLiBJJ20gbm90IHF1aXRlIHN1cmUgd2h5IHRoZXNlIGFyZSBiZWluZyBydW4N
Cj5tYW51YWxseT8gV2FzIHRoZSBsaXN0IG9mIG1hbnVhbCB0ZXN0cyB3ZSByZWNlaXZlZCBmcm9t
IEludGVsIGluY29ycmVjdD8NClRoZSBsaXN0IG1hbnVhbCB0ZXN0IHdlIHJ1biBmb3IgMi40LjQg
aXMgc2FtZSBhcyB3ZSBydW4gZm9yIDIuNCByZWxlYXNlLiBUaGlzIHRlc3QgY2FzZSBpcyBhdXRv
bWF0ZWQgbGF0ZXIgdGhhbiAyLjQgcmVsZWFzZSBhbmQgaXMgc3RpbGwgbWFudWFsIGFzIHBlciAy
LjQgdGVzdCBwbGFuIGluIFRlc3RvcGlhLiBJdCdzIGFuIGlyb255IHRoYXQgaW4gWW9jdG8gUHJv
amVjdCB3ZSBkb24ndCBoYXZlIGFueSB0cmFja2luZyBvZiBhIHRlc3QgY2FzZSBjb252ZXJ0aW5n
IGludG8gYXV0b21hdGVkIGluIHdoaWNoIHJlbGVhc2UsIGFuZCBubyBzeXN0ZW0gdGhhdCB3ZSBj
YW4gdXBkYXRlIHRlc3QgY2FzZXMgaW4gRG90IHJlbGVhc2VzLiBJIGFtIHRyeWluZyB0byBzdHJl
YW1saW5lIHRoZSB0cmFja2luZyBvZiB0ZXN0IGNhc2UgZXZvbHV0aW9uLCBzbyBhcyB0byBhdm9p
ZCBzdWNoIHNjZW5hcmlvcyBpbiBmdXR1cmUuDQoNCg0KPg0KPkxvb2tpbmcgYXQgb3RoZXIgYnVn
cyBpbiB0aGUgUUEgcmVwb3J0Og0KPg0KPmh0dHBzOi8vYnVnemlsbGEueW9jdG9wcm9qZWN0Lm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTI2NzANCj4NCj5JdCB3YXMgcmVvcGVuZWQgYXMgaXQgaGFkIGJl
ZW4gZml4ZWQgaW4gc3VtbyBvbndhcmRzIGJ1dCBub3Qgcm9ja28uDQo+SSd2ZSBiYWNrcG9ydGVk
IHRoZSBmaXggdG8gdGhlIHJvY2tvIGJyYW5jaC4gSSBkb24ndCBiZWxpZXZlIGl0cyBhIHJlbGVh
c2UgYmxvY2tlci4NCj4NCj5odHRwczovL2J1Z3ppbGxhLnlvY3RvcHJvamVjdC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEyOTkxDQo+DQo+VGhpcyBpcyB3ZWJraXRndGsgZmFpbGluZyB0byBidWlsZCBp
biB0aGUgYnVpbGQtYXBwbGlhbmNlIGFuZCBsb29rcyBlbnRpcmVseSByZWxhdGVkDQo+dG8gcmVz
b3VyY2VzIGluIHRoZSBWTS4gSG93IHRoaXMgY291bGQgaGF2ZSB3b3JrZWQgaW4gdGhlIHBhc3Qg
eWV0IGZhaWwgbm93DQo+bWFrZXMgbWUgd29uZGVyIGFib3V0IHdoZXRoZXIgaXQgd2FzIGluIGZh
Y3QgdGVzdGVkIHByZXZpb3VzbHksIHdoZXRoZXIgdGhlDQo+Vk0gY29uZmlndXJhdGlvbiBjaGFu
Z2VkIG9yIHF1aXRlIHdoYXQgaGFwcGVuZWQuIEkgZG9uJ3QgYmVsaWV2ZSBpdHMgYSBibG9ja2lu
Zw0KPmJ1ZyBhcyBpdCBkb2VzIHNlZW0gdG8gYmUgYSBWTSByZXNvdXJjZSBwcm9ibGVtLCBub3Qg
YSByZWFsIGZhaWx1cmUgb3IgcHJvYmxlbQ0KPndpdGggYnVpbGQtYXBwbGlhbmNlLg0KPkl0cyBo
YXJkIHRvIHRlbGwgZm9yIHN1cmUgd2l0aCB0aGUgbGltaXRlZCBkYXRhIHdlIGhhdmUgdGhvdWdo
Lg0KPg0KPmh0dHBzOi8vYnVnemlsbGEueW9jdG9wcm9qZWN0Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTIyNDANCj4NCj5BIHJlb3BlbmVkIGxzYiB0ZXN0aW5nIGJ1ZyBidXQgaXRzIG5vdCByZWFsbHkg
c2hvd2luZyBwcm9ibGVtcyB3aXRoIHRoZSBhY3R1YWwNCj5pbWFnZSwganVzdCB0ZXN0aW5nIGRp
ZmZpY3VsdGllcy4NCj4NCj4NCj5CYXNlZCBvbiB0aGlzLCBJIHRoaW5rIDIuNC40IGlzIGdvb2Qg
dG8gYmUgcmVsZWFzZWQsIEkgZG9uJ3Qgc2VlIGFueSBibG9ja2luZyBpc3N1ZXMuDQo+SSB3b3Vs
ZCBsaWtlIHRvIHVuZGVyc3RhbmQgd2hhdCB0ZXN0cyBhcmUgYWN0dWFsbHkgYmVpbmcgcnVuIGFu
ZCB3aHkgdGhvdWdoLg0KPg0KPkNoZWVycywNCj4NCj5SaWNoYXJkDQo+DQpUaGFua3MgJiBSZWdh
cmRzLA0KU2FuZ2VldGEgSmFpbg0KDQo=

