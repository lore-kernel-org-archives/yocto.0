Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4FAEE00E0A; Tue,  6 Mar 2018 02:53:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F24FE00823
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 02:53:07 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Mar 2018 02:53:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,431,1515484800"; d="scan'208";a="22404198"
Received: from irsmsx154.ger.corp.intel.com ([163.33.192.96])
	by orsmga007.jf.intel.com with ESMTP; 06 Mar 2018 02:53:06 -0800
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.197]) by
	IRSMSX154.ger.corp.intel.com ([169.254.12.108]) with mapi id
	14.03.0319.002; Tue, 6 Mar 2018 10:53:04 +0000
From: "John, Maxin" <maxin.john@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>, "Reyna, David L (Wind River)"
	<david.reyna@windriver.com>
Thread-Topic: [yocto] Are Windows SDKs (mingw layer) supposed to work?
Thread-Index: AdO1CMCZFATDD4luQxutgHj7mOIsawALqSiAAAA2Y7A=
Date: Tue, 6 Mar 2018 10:53:03 +0000
Message-ID: <61C0517EAD808B429A1DE2DD9164D400326819B2@IRSMSX103.ger.corp.intel.com>
References: <5E53D14CE4667A45B9A06760DE5D13D0F11F2DA2@ALA-MBC.corp.ad.wrs.com>
	<CAJTo0La4LkRgwmNqs6p9tGEj+fWY=Tm6q-ATLtTOm6TLUz3tuQ@mail.gmail.com>
In-Reply-To: <CAJTo0La4LkRgwmNqs6p9tGEj+fWY=Tm6q-ATLtTOm6TLUz3tuQ@mail.gmail.com>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWU5MzdmM2QtODc5YS00ZDliLWI1ZTYtOGVhOWFhOThlNDEzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJOMDA1aitWam9aXC9cL0cyeTFXYnFyZVFuV2Y2TFVmK3VpaWtZK1k3ZlplVDNZR3IzVm5kOUdkSWFSWVlNNE1aV3IifQ==
x-ctpclassification: CTP_NT
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Are Windows SDKs (mingw layer) supposed to work?
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
X-List-Received-Date: Tue, 06 Mar 2018 10:53:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCj5Gcm9tOiB5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmcgW21haWx0bzp5b2N0
by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmddIE9uIEJlaGFsZiBPZiBCdXJ0b24sIFJvc3MNCj5T
ZW50OiBUdWVzZGF5LCBNYXJjaCA2LCAyMDE4IDEyOjM5IFBNDQo+VG86IFJleW5hLCBEYXZpZCBM
IChXaW5kIFJpdmVyKSA8ZGF2aWQucmV5bmFAd2luZHJpdmVyLmNvbT4NCj5DYzogWW9jdG8gPHlv
Y3RvQHlvY3RvcHJvamVjdC5vcmc+DQo+U3ViamVjdDogUmU6IFt5b2N0b10gQXJlIFdpbmRvd3Mg
U0RLcyAobWluZ3cgbGF5ZXIpIHN1cHBvc2VkIHRvIHdvcms/DQo+DQo+SGF2ZSB5b3UgdHJpZWQg
dXNpbmcgMi40IHRvIGlkZW50aWZ5IHdoZW4gaXQgYnJva2U/wqAgQ2xlYXJseSB3ZSBuZWVkIHRv
IGV4dGVuZCB0aGUgc2VsZnRlc3Qgc28gdGhlIG1pbmd3IFNESyBpcyBhY3R1YWxseSB0ZXN0ZWQu
Li4NCj4NCj5Sb3NzDQo+Pg0KPj5PbiA2IE1hcmNoIDIwMTggYXQgMDU6MzIsIFJleW5hLCBEYXZp
ZCA8ZGF2aWQucmV5bmFAd2luZHJpdmVyLmNvbT4gd3JvdGU6DQo+PkhpIGFsbCwNCj4+wqANCj4+
SSBhbSB0cnlpbmcgdG8gZW5hYmxlIGEgY3VzdG9tZXIgZm9yIHVzaW5nIFlQIFNES3Mgb24gV2lu
ZG93cy4gSXQgYXBwYXJlbnRseSBpcyBzdXBwb3NlZCB0byB3b3JrLCBidXQgSSBhbSB1bmFibGUg
dG8gZ2V0IHBhc3QgZmF0YWwgZXJyb3JzLg0KPj4NCj4+SSBoYXZlIGxvb2tlZCBmb3IgZG9jdW1l
bnRhdGlvbiBhdCB0aGUgWVAgc2l0ZSBhbmQgdGhlIG1ldGEtbWluZ3cgcmVwbywgYnV0IHRvIG5v
IGF2YWlsLg0KPj4NCj4+MSkgTXkgcHJvamVjdCBpcyBhIHNpbXBsZSBkZWZhdWx0IOKAnHFlbXV4
ODYtNjTigJ0gd2l0aCBZUC0yLjUgSEVBRCwgd2l0aCB0aGUgbGF0ZXN0IOKAnG1ldGEtbWluZ3fi
gJ0gbGF5ZXIgYWRkZWQgYW5kIDxTREtNQUNISU5FID89ICJpNjg2LW1pbmd3MzIiPi4NCj4+wqAN
Cj4+VGhlIFNESyBidWlsZHMgZmluZSBhbmQgSSBnZXQgdGhlIOKAnCoueHrigJ0gZ2VuZXJhdGVk
IGZpbGUuDQo+PsKgDQo+PjIpIEhvd2V2ZXIsIHdoZW4gSSB1c2UgN1pJUCB0byBleHRyYWN0IGl0
IG9uIG15IFdpbmRvd3MgaG9zdCAod2hpY2ggaXMgcmVjb21tZW5kZWQgZm9yIFhZIGZpbGVzKSwg
SSBnZXQgc2V2ZXJhbCBmYXRhbCBpc3N1ZXMuDQo+PsKgDQo+PsKgIChhKSBJIGdldCBtb3JlIHRo
YW4gYSBodW5kcmVkIGVycm9ycyDigJxDYW4gbm90IGNyZWF0ZSBzeW1ib2xpYyBsaW5rOiBBY2Nl
c3MgaXMgZGVuaWVk4oCdLiANCj4+wqANCj4+V2hpbGUgSSBkbyBub3QgY2FyZSBhYm91dCB0aGUg
b25lcyBmb3IgdGhlIGJpbiB0b29scyBpbiB0aGUgc3lzcm9vdCwgSSBkbyBjYXJlIHRoYXQgbW9z
dCBvZiB0aGUgY3Jvc3MgdG9vbGNoYWluIEVYRSBmaWxlcyBhcmUgdGh1c2x5IGJyb2tlbiwgcGx1
cyBtYW55IG9mIHRoZSBsaWJyYXJpZXMgYW5kIGhlYWRlciBmaWxlcyBpbiB0aGUgc3lzcm9vdC4N
Cj4+wqANCj4+QW0gSSBtaXNzaW5nIGEgc3RlcD8NCg0KU3ltYm9saWMgbGluayBlcnJvcnMgY291
bGQgYmUgcmVsYXRlZCB0byB0aGUgZmlsZXN5c3RlbSBhcyBGQVQgaGFzIG5vIHN1cHBvcnQgZm9y
IHN5bWJvbGljIGxpbmtzLiBIYXZlIHlvdSB0cmllZCBpdCBvbiBhbiBOVEZTIHBhcnRpdGlvbj8N
Cg0KQmVzdCBSZWdhcmRzLA0KTWF4aW4NCg0KIA0K

