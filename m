Return-Path: <john.s.summers@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C55FAE00744; Mon, 22 Sep 2014 12:19:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97A5DE00566
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 12:19:44 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by fmsmga101.fm.intel.com with ESMTP; 22 Sep 2014 12:19:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,573,1406617200"; d="scan'208";a="479249091"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
	by azsmga001.ch.intel.com with ESMTP; 22 Sep 2014 12:19:31 -0700
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
	FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Mon, 22 Sep 2014 12:19:31 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.6.135]) by
	fmsmsx111.amr.corp.intel.com ([169.254.12.120]) with mapi id
	14.03.0195.001; Mon, 22 Sep 2014 12:19:31 -0700
From: "Summers, John S" <john.s.summers@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Packages util-linux and gettext both showing undefined
	reference
Thread-Index: Ac/UZukDqRQi6fEkRgawA0lmIJuUTACUor0AAAz8fbD//6+0gIAAXyjw
Date: Mon, 22 Sep 2014 19:19:30 +0000
Message-ID: <AC825E12842FCA4C9E6DDED8AF00318F1FB7D767@FMSMSX106.amr.corp.intel.com>
References: <AC825E12842FCA4C9E6DDED8AF00318F1FB70C57@FMSMSX106.amr.corp.intel.com>
	<CAJTo0LaFn30Fxx2UeJbAdH94Kv1uLbDisiMXHNCHu49POoscwg@mail.gmail.com>
	<AC825E12842FCA4C9E6DDED8AF00318F1FB79231@FMSMSX106.amr.corp.intel.com>
	<CAJTo0LYt=tZxtDO0qmOT+aNNdZxMOEqfum=dXrQO1UumYkQLJA@mail.gmail.com>
In-Reply-To: <CAJTo0LYt=tZxtDO0qmOT+aNNdZxMOEqfum=dXrQO1UumYkQLJA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Packages util-linux and gettext both showing undefined reference
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
X-List-Received-Date: Mon, 22 Sep 2014 19:19:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgRGFycmVuLA0KDQpNYXliZSBJIHNob3VsZCBlbGFib3JhdGUgYSBiaXQgb24gd2hhdCBJIGFt
IHRyeWluZyB0byBkby4gIEJhc2ljYWxseSwgSSBhbSB0cnlpbmcgdG8gZGV2ZWxvcCBhbiBlbWJl
ZGRlZCBFRkktYm9vdGFibGUgaW1hZ2UgdXNpbmcgdGhlIHBva3ktdGlueSBkaXN0cm8uDQoNCkkg
d291bGQgbGlrZSB0byBiZSBhYmxlIHRvIGF1dG9tYXRlIHRoZSBpbWFnZSBnZW5lcmF0aW9uIHBy
b2Nlc3MsIHNvIEkndmUgYmVlbiB1c2luZyB0aGUgIndpYyIgdG9vbCB0byBnZW5lcmF0ZSB0aGUg
aW1hZ2UuICBXaWMgaGFzIGJlZW4gd29ya2luZyBncmVhdCAoYXQgbGVhc3QgaXQgd29ya3MgZmlu
ZSB3aXRoIG1hbnVhbCBwYXJhbWV0ZXJzLCB0aGUgLWUgYXJndW1lbnQgcmVzdWx0cyBpbiBhIGZh
aWx1cmUgYXMgZGVzY3JpYmVkIGF0IGh0dHBzOi8vYnVnemlsbGEueW9jdG9wcm9qZWN0Lm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9NjcwNCZsaXN0X2lkPWNvb2tpZSksIGJ1dCBpdCBhcHBlYXJzIHRoYXQg
dGhlIGluaXRyYW1mcyBpbWFnZSBpcyBub3QgYmVpbmcgZ2VuZXJhdGVkIHByb3Blcmx5LCByZXN1
bHRpbmcgaW4gYSBrZXJuZWwgUGFuaWMgd2hlbiBJIGxvYWQgdGhlIGltYWdlIHZpYSBVRUZJLg0K
DQpJIHNhdyB0aGF0IHBva3ktdGlueSBieSBkZWZhdWx0IHVzZXMgdGhlIGZvbGxvd2luZyBpbWFn
ZSB0eXBlczoNCklNQUdFX0ZTVFlQRVMgPSAiZXh0MiBjcGlvLmd6Ig0KDQpUaGlzIGlzIGluIG15
IGZvby1sYXllci9jb25mL2Rpc3Ryby9mb28tbGF5ZXIuY29uZiBmaWxlLiAgVGhlcmUncyBhbHNv
IGEgbm90ZSB0aGVyZSBzYXlpbmcgdGhhdCAiV2UgZG9uJ3QgYnVpbGQgbGl2ZSBhcyB0aGF0IHB1
bGxzIGluIGEgbG90IG9mIGRlcGVuZGVuY2llcyBmb3IgbGl2ZSBpbWFnZSBhbmQgdGhlIGluc3Rh
bGxlciwgbGlrZSB1ZGV2LCBncnViLCBldGMuICBUaGVzZSBwdWxsIGluIGdldHRleHQsIHdoaWNo
IGZhaWxzIHRvIGJ1aWxkIHdpdGggd2lkZSBjaGFyYWN0ZXIgc3VwcG9ydC4iDQoNCkRvZXMgdGhp
cyBtZWFuIHRoYXQgd2ljIGlzIG5vdCBzdXBwb3J0ZWQgd2l0aCBwb2t5LXRpbnk/ICBJZiBpdCBp
cyBzdXBwb3J0ZWQsIGFyZSB0aGVyZSBhbnkgYWRkaXRpb25hbCByZXF1aXJlbWVudHMgZm9yIGJ1
aWxkaW5nIGluaXRyYW1mcyBpbWFnZXMgaW50byB3aWMgZ2VuZXJhdGVkIGltYWdlcz8NCg0KQWxz
bywgSSBkb24ndCBzZWUgY29yZS1pbWFnZS1taW5pbWFsLWluaXRyYW1mcyBhZGRlZCBpbiBwb2t5
LXRpbnkgYXMgYSBQTkJMQUNLTElTVCBpbWFnZS4gIERvIHlvdSBrbm93IG9mIGFueSBhZGRpdGlv
bmFsIGNvbmZpZ3VyYXRpb24gSSBuZWVkIHRvIGdldCB0aGlzIGltYWdlIHRvIGJ1aWxkIHByb3Bl
cmx5IChlaXRoZXIgZGlyZWN0bHkgd2l0aCBiaXRiYWtlIG9yIGVtYmVkZGVkIGludG8gbXkgcmVj
aXBlKT8NCg0KVGhhbmtzIGluIGFkdmFuY2UsDQpTdHVhcnQNCg0KLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0NCkZyb206IEJ1cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNv
bV0gDQpTZW50OiBNb25kYXksIFNlcHRlbWJlciAyMiwgMjAxNCAxMDoyOCBBTQ0KVG86IFN1bW1l
cnMsIEpvaG4gUw0KQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmc7IERhcnJlbiBIYXJ0DQpTdWJq
ZWN0OiBSZTogW3lvY3RvXSBQYWNrYWdlcyB1dGlsLWxpbnV4IGFuZCBnZXR0ZXh0IGJvdGggc2hv
d2luZyB1bmRlZmluZWQgcmVmZXJlbmNlDQoNCk9uIDIyIFNlcHRlbWJlciAyMDE0IDE4OjA1LCBT
dW1tZXJzLCBKb2huIFMgPGpvaG4ucy5zdW1tZXJzQGludGVsLmNvbT4gd3JvdGU6DQo+IERJU1RS
TyAgICAgICAgICAgID0gInBva3ktdGlueSINCg0KSSBleHBlY3QgdGhpcyBpcyB3aGF0J3MgY2F1
c2luZyB0aGUgcHJvYmxlbS4gIHBva3ktdGlueSBpcyB2ZXJ5IGN1dC1kb3duLiAgQ0MnaW5nIERh
cnJlbiBmb3IgYSBtb3JlIGluZm9ybWVkIGNvbW1lbnQuDQoNClJvc3MNCg==

