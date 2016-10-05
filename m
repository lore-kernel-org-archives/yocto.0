Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D90C2E0049A; Wed,  5 Oct 2016 11:43:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.86.79 listed in list.dnswl.org]
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from rcdn-iport-8.cisco.com (rcdn-iport-8.cisco.com [173.37.86.79])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46E01E00444
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 11:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=9686; q=dns/txt; s=iport;
	t=1475693001; x=1476902601;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=fwADawvXfq14knkreSuxveJB8u88rhIHGX4f2E75EaM=;
	b=Er9AoN219rg4OnhjZzL0eUv5vEOhAbwfXWyjXEownpf8Ne8jOJ1JMp/b
	cGy0J2+6Txnau1NEwx79JzA5SZwde8rmBS9DjgRJUDvURSB7gh7V8u4Ic
	CK2u2goU2HEV80yPJR2R4Xv4rw1mVuR4qyyffFALuXz2Ghf0ncOlEnps7 Q=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0BBAQDOSPVX/4ENJK1dGQEBAQEBAQEBA?=
	=?us-ascii?q?QEBBwEBAQEBgz0BAQEBAR5XfAeNK5Z/h1iMUoIJGw2FeAIcgVg4FAECAQEBAQE?=
	=?us-ascii?q?BAV4nhGEBAQEDAQEBASAROgsQAgEIGAICJgICAh8GAQoVEAIEDgUJiCsDDwgOr?=
	=?us-ascii?q?WaJAQ2DWwEBAQEBAQEBAQEBAQEBAQEBAQEBAR2BB4U1gX0IglCCR4FSEAIBgx8?=
	=?us-ascii?q?rgi8FjjeLDjUBhiaFUniDBoFuToQYiR+IYIQTg30BHjZLgmscGYE5cgGHNYEAA?=
	=?us-ascii?q?QEB?=
X-IronPort-AV: E=Sophos;i="5.31,302,1473120000"; d="scan'208";a="154768614"
Received: from alln-core-9.cisco.com ([173.36.13.129])
	by rcdn-iport-8.cisco.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	05 Oct 2016 18:43:19 +0000
Received: from XCH-RTP-005.cisco.com (xch-rtp-005.cisco.com [64.101.220.145])
	by alln-core-9.cisco.com (8.14.5/8.14.5) with ESMTP id u95IhJFQ007088
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Wed, 5 Oct 2016 18:43:19 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-005.cisco.com
	(64.101.220.145) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Wed, 5 Oct 2016 14:43:18 -0400
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Wed, 5 Oct 2016 14:43:18 -0400
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Question: xxxx listed in PACKAGES multiple times, this
	leads to packaging errors
Thread-Index: AQHSHll65OzpqDQ8KUqWgZf+kZeSr6CY76UA//+R1QCAAHifgIAAJRiAgACR/ICAACS/AIAAe/YA//+o+ICAAHd4AP//j22A
Date: Wed, 5 Oct 2016 18:43:18 +0000
Message-ID: <1617F406-039C-42B2-8739-84169A7B0F3C@cisco.com>
References: <D6696459-1F17-4F52-8D0A-4ED8C3FC35EE@cisco.com>
	<15215572.tG9QIyjkit@peggleto-mobl.ger.corp.intel.com>
	<4EBFFDF8-32F2-48C0-A456-DB9A9A4D3841@cisco.com>
	<1722958.a5vgrEO2cN@peggleto-mobl.ger.corp.intel.com>
	<894BCA8B-9CE0-4B9E-9538-ED1B710627E8@cisco.com>
	<20161005163020.GC2084@csclub.uwaterloo.ca>
	<16724416-E2A7-4179-B927-1ABCEC8C4C41@cisco.com>
	<CA6374AA-A2F0-4FBF-85C0-3F37E3282626@gmail.com>
In-Reply-To: <CA6374AA-A2F0-4FBF-85C0-3F37E3282626@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.41.60.186]
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question: xxxx listed in PACKAGES multiple times, this leads to packaging errors
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
X-List-Received-Date: Wed, 05 Oct 2016 18:43:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <47905EC124559C43BF8EDEBA5E6D548C@emea.cisco.com>
Content-Transfer-Encoding: base64

DQoNCj4+IHRoZW4gaXQgaXMganVzdCBnb2luZyB0byByZXVzZSB0aGUgYnVpbGQgYXJ0aWZhY3Rz
IGZyb20gbGFzdCBidWlsZHMgYW5kIG5vdCBjaGVja291dCB0aGUgc291cmNlcyBldGMuDQo+PiBh
bGwgdGhvc2UgdGFza3Mgd2lsbCBiZSBza2lwcGVkLg0KDQo+PiB3aHkgYXJlIGxvb2tpbmcgZm9y
IHNvdXJjZXMgaW4gYSBidWlsZCB0cmVlID8NCg0KDQpOb3Qgb25seSBzb3VyY2UgdW5kZXIgDQou
LiB5cC90bXAvd29yay9jb3JlMi02NC1wb2t5LWxpbnV4L2MtbWxpYi8xLjEtcjAvZ2l0IA0KDQpC
dXQgb3RoZXIgZGF0YSBzdWNoIGFzIHN1Y2ggYXMgdGhlIHlwL3RtcC93b3JrL2NvcmUyLTY0LXBv
a3ktbGludXgvYy1tbGliLzEuMS1yMC9pbWFnZS8qIHdhcyBhbHNvIGdvbmUuIFRoZSBmb2xsb3dp
bmcgaW1hZ2UgdGhhdCBJIGhhdmUgaXQgaW4gdGhlIGZpcnN0IHBsYWNlLg0KDQoNCg0KZGluaG5A
cnMtYmxkc3J2Oi9tZWRpYS9yYWdodXJhbS9kYXRhL2RpbmhuL2lveERldkxhdGVzdC9pb3hzZGsv
eXAvdG1wL3dvcmsvY29yZTItNjQtcG9reS1saW51eC9jLW1saWIvMS4xLXIwL2ltYWdlL3Vzci9i
aW4kIGxzIC1sdHINCnRvdGFsIDE0MjQNCi1ydy1yLS1yLS0gMSBkaW5obiBkaW5obiAxNzE3MDEg
T2N0ICA1IDAxOjE3IGRhdGFtb2RlbF9jYWNoZQ0KLXJ3LXItLXItLSAxIGRpbmhuIGRpbmhuIDE4
NzQzNCBPY3QgIDUgMDE6MTcgaW52b2tlDQotcnctci0tci0tIDEgZGluaG4gZGluaG4gMTg0OTYx
IE9jdCAgNSAwMToxNyBpbnZva2VfYg0KLXJ3LXItLXItLSAxIGRpbmhuIGRpbmhuIDE3MTcwMSBP
Y3QgIDUgMDE6MTcgcHJvdG9jb2xfaW5mcmENCi1ydy1yLS1yLS0gMSBkaW5obiBkaW5obiAxOTEz
NjIgT2N0ICA1IDAxOjE3IHB1Ymxpc2hlcg0KLXJ3LXItLXItLSAxIGRpbmhuIGRpbmhuIDE4NzA4
NCBPY3QgIDUgMDE6MTcgcnBjLXJlZ2lzdGVyDQotcnctci0tci0tIDEgZGluaG4gZGluaG4gMTc5
NjQ4IE9jdCAgNSAwMToxNyBzZXJ2aWNlDQotcnctci0tci0tIDEgZGluaG4gZGluaG4gMTc0NTE4
IE9jdCAgNSAwMToxNyBzdWJzY3JpYmVyDQpkaW5obkBycy1ibGRzcnY6L21lZGlhL3JhZ2h1cmFt
L2RhdGEvZGluaG4vaW94RGV2TGF0ZXN0L2lveHNkay95cC90bXAvd29yay9jb3JlMi02NC1wb2t5
LWxpbnV4L2MtbWxpYi8xLjEtcjAvaW1hZ2UvdXNyL2JpbiQgY2QgLi4vbGliDQpkaW5obkBycy1i
bGRzcnY6L21lZGlhL3JhZ2h1cmFtL2RhdGEvZGluaG4vaW94RGV2TGF0ZXN0L2lveHNkay95cC90
bXAvd29yay9jb3JlMi02NC1wb2t5LWxpbnV4L2MtbWxpYi8xLjEtcjAvaW1hZ2UvdXNyL2xpYiQg
bHMgLWx0cg0KdG90YWwgODU2DQotcnctci0tci0tIDMgZGluaG4gZGluaG4gODcyNjU3IE9jdCAg
NSAwMToxNyBsaWJtbGliLnNvDQoNCg0KVGhhbmtzLA0KICDigJREaW5oIA0KDQpPbiAxMC81LzE2
LCAxMToyNiBBTSwgIktoZW0gUmFqIiA8cmFqLmtoZW1AZ21haWwuY29tPiB3cm90ZToNCg0KPg0K
Pj4gT24gT2N0IDUsIDIwMTYsIGF0IDExOjE4IEFNLCBEaW5oIE5ndXllbiAoZGluaG4pIDxkaW5o
bkBjaXNjby5jb20+IHdyb3RlOg0KPj4gDQo+Pj4+IEFyZSB0aGUgZmlsZXMgcHJlc2VudCBpbiB0
aGUgaW1hZ2UvcGFja2FnZXM/ICBNYXliZSBpdCBpcyBqdXN0IHRoZQ0KPj4+PiBiaXRiYWtlIGNh
Y2hlIHNraXBwaW5nIGRvaW5nIHdvcmsgaXQgYWxyZWFkeSBkaWQgbGFzdCB0aW1lLg0KPj4gDQo+
PiBJZiBJIGRvbuKAmXQgZG8gdGhlIGJpdGJha2UgY2xlYW4sIGFuZCBqdXN0IGRvIGJpdGJha2Ug
YWdhaW4sIHRoZW4geWVzLg0KPj4gDQo+PiANCj4+IEJ1dCBpZiBJIGRvIOKAnGJpdGJha2UgLWMg
Y2xlYW4gYy1tbGli4oCdIGFuZCBiaXRiYWtlIGFnYWluLCB0aGUgaXMgd2hlcmUgdGhlIHByb2Js
ZW0uDQo+DQo+DQo+d2VsbCBpdHMgdXNpbmcgc3N0YXRlIGNhY2hlIGhlcmUgc28gd2hlbiB5b3Ug
ZG8gY2xlYW4gYW5kIHJlYnVpbGQgYW5kIGl0IG5vdGljZXMgbm8gY2hhbmdlcyBmcm9tIHByZXZp
b3VzIGJ1aWxkcw0KPnRoZW4gaXQgaXMganVzdCBnb2luZyB0byByZXVzZSB0aGUgYnVpbGQgYXJ0
aWZhY3RzIGZyb20gbGFzdCBidWlsZHMgYW5kIG5vdCBjaGVja291dCB0aGUgc291cmNlcyBldGMu
DQo+YWxsIHRob3NlIHRhc2tzIHdpbGwgYmUgc2tpcHBlZC4NCj4NCj53aHkgYXJlIGxvb2tpbmcg
Zm9yIHNvdXJjZXMgaW4gYSBidWlsZCB0cmVlID8NCj5JIGFzayBiZWNhdXNlIGlmIHlvdSB3YW50
IHRvIGhhY2sgb24gaXQgdGhlbiBJIHdvdWxkIHJlY29tbWVuZCBmb2xsb3dpbmcgZGV2dG9vbCB3
b3JrZmxvdy4NCj5zZWUNCj5odHRwOi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvZG9jcy9sYXRlc3Qv
ZGV2LW1hbnVhbC9kZXYtbWFudWFsLmh0bWwjdXNpbmctZGV2dG9vbC1pbi15b3VyLXdvcmtmbG93
DQo+DQo+DQo+PiANCj4+IFRoYW5rcywNCj4+ICDigJREaW5oDQo+PiANCj4+IA0KPj4gDQo+PiAN
Cj4+IE9uIDEwLzUvMTYsIDk6MzAgQU0sICJMZW5uYXJ0IFNvcmVuc2VuIiA8bHNvcmVuc2VAY3Nj
bHViLnV3YXRlcmxvby5jYT4gd3JvdGU6DQo+PiANCj4+PiBPbiBXZWQsIE9jdCAwNSwgMjAxNiBh
dCAwNDowNjoyNVBNICswMDAwLCBEaW5oIE5ndXllbiAoZGluaG4pIHdyb3RlOg0KPj4+PiBNYW55
IHRoYW5rcyBQYXVsLiBZb3VyIGhlbHAgaXMgZ3JlYXRseSBhcHByZWNpYXRlZC4NCj4+Pj4gDQo+
Pj4+IDEuID4+PiBMaWtlIHRoZSBvdGhlciByZXNwb25kZXIgSSB3b3VsZCBzdWdnZXN0IHlvdSBu
b3Qgc2V0IFBBQ0tBR0VTDQo+Pj4+IA0KPj4+PiBZZXMsIEkgZGlkIG5vdCBzZXQgdGhlIFBBQ0tB
R0VTLCBzbyAtZGV2LCAtZGJnIGFuZCBtYWluIHBhY2thZ2VzIHdlcmUgYnVpbHQgYXMgc2hvd24g
YmVsb3c6DQo+Pj4+IA0KPj4+PiBkaW5obkBycy1ibGRzcnY6L21lZGlhL3JhZ2h1cmFtL2RhdGEv
ZGluaG4vaW94RGV2TGF0ZXN0L2lveHNkay95cCQgZmluZCB0bXAvZGVwbG95IHwgZ3JlcCBjLW1s
aWJ0bXAvZGVwbG95L2lway9jb3JlMi02NC9jLW1saWItZGJnXzEuMS1yMF9jb3JlMi02NC5pcGsN
Cj4+Pj4gdG1wL2RlcGxveS9pcGsvY29yZTItNjQvYy1tbGliLWRldl8xLjEtcjBfY29yZTItNjQu
aXBrDQo+Pj4+IHRtcC9kZXBsb3kvaXBrL2NvcmUyLTY0L2MtbWxpYl8xLjEtcjBfY29yZTItNjQu
aXBrDQo+Pj4+IHRtcC9kZXBsb3kvbGljZW5zZXMvYy1tbGliDQo+Pj4+IA0KPj4+PiAyLiA+Pj4g
RklMRVNfJHtQTn0tZGV2ID0gIiR7aW5jbHVkZWRpcn3igJ0NCj4+Pj4gDQo+Pj4+IEkgYWRkZWQg
dGhhdCB0byAuYmIgYXMgeW91IHN1Z2dlc3RlZCBzbyAuc28gZmlsZSBkb2Vzbid0IGVuZCB1cCBp
biB0aGUgJHtQTn0tZGV2DQo+Pj4+IFBhY2thZ2Ug4oCUIE5vIGxvbmdlciBzZWUgdGhlIGVycm9y
IG1lbnRpb25lZCBpbiBwcmV2aW91cyBtYWlsLiBUaHgNCj4+Pj4gDQo+Pj4+IDMuID4+PiBUaGlz
IGlzIHdoYXQgSSBzdXNwZWN0ZWQgd291bGQgaGFwcGVuIC0gdGhlc2UgZmlsZXMgd291bGQgbm9y
bWFsbHkgYmUgcGFydCBvZg0KPj4+PiB0aGUgJHtQTn0tZGJnIHBhY2thZ2UsIGJ1dCBzaW5jZSB5
b3UndmUgcmVtb3ZlZCB0aGF0IGZyb20gUEFDS0FHRVMsIHRoZXkgYXJlDQo+Pj4+IGVuZGluZyB1
cCB1bnBhY2thZ2VkIGFuZCB0aGF0IGlzIG5vdCBhbGxvd2VkLg0KPj4+PiANCj4+Pj4gRGlkIHlv
dSBtZWFuIHRoZSAiaW5zdGFsbCAtbSAwNjQ0IHh4eCB5eXnigJ0gdG8gcmVtb3ZlIHRob3NlIGZp
bGVzIGZyb20gdGhlIFBBQ0tBR0VTPyBIb3cgZG8gSSBjb3B5IC5zbyBhbmQgYmluYXJpZXMgZnJv
bSBteSB0YXJnZXQgdG8gdGhlIGxpYmRpciBvciBiaW5kaXI/DQo+Pj4+IA0KPj4+PiBBZnRlciBj
aGFuZ2luZyB0aGUgLmJiIHRvIHJlbW92ZSB0aGUgUEFDS0FHRVMgc2V0dGluZyBhbmQgRklMRVNf
JHtQTn0tZGV2ID0gIiR7aW5jbHVkZWRpcn3igJ0NCj4+Pj4gRm9yIHRoZSB2ZXJ5IGZpcnN0IHRp
bWUsIHBhY2thZ2VzIHdlcmUgYnVpbHQgZmluZCwgaW1hZ2Ugd2VyZSBjcmVhdGVkIHVuZGVyIGlt
YWdlIGRpcmVjdG9yeSBhbmQgYy1tbGliIHNvdXJjZSBpcyBzdGlsbCBpbiB0aGUgeXAgd29ya3Nw
YWNlIGFzIHNob3duIGJlbG93Og0KPj4+PiANCj4+Pj4gQS5QYWNrYWdlcyB3ZXJlIGJ1aWx0DQo+
Pj4+IGRpbmhuQHJzLWJsZHNydjovbWVkaWEvcmFnaHVyYW0vZGF0YS9kaW5obi9pb3hEZXZMYXRl
c3QvaW94c2RrL3lwJCBmaW5kIHRtcC9kZXBsb3kgfCBncmVwIGMtbWxpYg0KPj4+PiB0bXAvZGVw
bG95L2lway9jb3JlMi02NC9jLW1saWItZGJnXzEuMS1yMF9jb3JlMi02NC5pcGsNCj4+Pj4gdG1w
L2RlcGxveS9pcGsvY29yZTItNjQvYy1tbGliLWRldl8xLjEtcjBfY29yZTItNjQuaXBrDQo+Pj4+
IHRtcC9kZXBsb3kvaXBrL2NvcmUyLTY0L2MtbWxpYl8xLjEtcjBfY29yZTItNjQuaXBrDQo+Pj4+
IHRtcC9kZXBsb3kvbGljZW5zZXMvYy1tbGliDQo+Pj4+IA0KPj4+PiBCLiBTb3VyY2UgZmlsZXMg
YW5kIHRoZSBjLW1saWIgZ2l0IGRpcmVjdG9yeSBzdGlsbCBoYXZlIGFsbCB0aGUgc291cmNlcyAo
ZS5nIGp1c3QgZ3JlcCB0aGUgbWxpYl9hcGkuYykNCj4+Pj4gZGluaG5AcnMtYmxkc3J2Oi9tZWRp
YS9yYWdodXJhbS9kYXRhL2RpbmhuL2lveERldkxhdGVzdC9pb3hzZGsveXAkIGZpbmQgLiAtbmFt
ZSAibWxpYl9hcGkuYyINCj4+Pj4gLi90bXAvd29yay9jb3JlMi02NC1wb2t5LWxpbnV4L2MtbWxp
Yi8xLjEtcjAvZ2l0L3NyYy9tbGliX2FwaS5jDQo+Pj4+IC4vdG1wL3dvcmsvY29yZTItNjQtcG9r
eS1saW51eC9jLW1saWIvMS4xLXIwL3BhY2thZ2VzLXNwbGl0L2MtbWxpYi1kYmcvdXNyL3NyYy9k
ZWJ1Zy9jLW1saWIvMS4xLXIwL2dpdC9zcmMvbWxpYl9hcGkuYw0KPj4+PiAuL3RtcC93b3JrL2Nv
cmUyLTY0LXBva3ktbGludXgvYy1tbGliLzEuMS1yMC9wYWNrYWdlL3Vzci9zcmMvZGVidWcvYy1t
bGliLzEuMS1yMC9naXQvc3JjL21saWJfYXBpLmMNCj4+Pj4gZGluaG5AcnMtYmxkc3J2Oi9tZWRp
YS9yYWdodXJhbS9kYXRhL2RpbmhuL2lveERldkxhdGVzdC9pb3hzZGsveXAkDQo+Pj4+IA0KPj4+
PiBDLiBJbWFnZSB3YXMgYnVpbHQgYXMgd2VsbCBpbmNsdWRpbmcgYmluYXJpZXMgYW5kIGxpYm1s
aWIuc28NCj4+Pj4gZGluaG5AcnMtYmxkc3J2Oi9tZWRpYS9yYWdodXJhbS9kYXRhL2RpbmhuL2lv
eERldkxhdGVzdC9pb3hzZGsveXAvdG1wL3dvcmsvY29yZTItNjQtcG9reS1saW51eC9jLW1saWIv
MS4xLXIwL2ltYWdlL3Vzci9iaW4kIGxzIC1sdHINCj4+Pj4gdG90YWwgMTQyNA0KPj4+PiAtcnct
ci0tci0tIDEgZGluaG4gZGluaG4gMTcxNzAxIE9jdCAgNSAwMToxNyBkYXRhbW9kZWxfY2FjaGUN
Cj4+Pj4gLXJ3LXItLXItLSAxIGRpbmhuIGRpbmhuIDE4NzQzNCBPY3QgIDUgMDE6MTcgaW52b2tl
DQo+Pj4+IC1ydy1yLS1yLS0gMSBkaW5obiBkaW5obiAxODQ5NjEgT2N0ICA1IDAxOjE3IGludm9r
ZV9iDQo+Pj4+IC1ydy1yLS1yLS0gMSBkaW5obiBkaW5obiAxNzE3MDEgT2N0ICA1IDAxOjE3IHBy
b3RvY29sX2luZnJhDQo+Pj4+IC1ydy1yLS1yLS0gMSBkaW5obiBkaW5obiAxOTEzNjIgT2N0ICA1
IDAxOjE3IHB1Ymxpc2hlcg0KPj4+PiAtcnctci0tci0tIDEgZGluaG4gZGluaG4gMTg3MDg0IE9j
dCAgNSAwMToxNyBycGMtcmVnaXN0ZXINCj4+Pj4gLXJ3LXItLXItLSAxIGRpbmhuIGRpbmhuIDE3
OTY0OCBPY3QgIDUgMDE6MTcgc2VydmljZQ0KPj4+PiAtcnctci0tci0tIDEgZGluaG4gZGluaG4g
MTc0NTE4IE9jdCAgNSAwMToxNyBzdWJzY3JpYmVyDQo+Pj4+IA0KPj4+PiBkaW5obkBycy1ibGRz
cnY6L21lZGlhL3JhZ2h1cmFtL2RhdGEvZGluaG4vaW94RGV2TGF0ZXN0L2lveHNkay95cC90bXAv
d29yay9jb3JlMi02NC1wb2t5LWxpbnV4L2MtbWxpYi8xLjEtcjAvaW1hZ2UvdXNyL2JpbiQgY2Qg
Li4vbGliDQo+Pj4+IGRpbmhuQHJzLWJsZHNydjovbWVkaWEvcmFnaHVyYW0vZGF0YS9kaW5obi9p
b3hEZXZMYXRlc3QvaW94c2RrL3lwL3RtcC93b3JrL2NvcmUyLTY0LXBva3ktbGludXgvYy1tbGli
LzEuMS1yMC9pbWFnZS91c3IvbGliJCBscyAtbHRyDQo+Pj4+IHRvdGFsIDg1Ng0KPj4+PiAtcnct
ci0tci0tIDMgZGluaG4gZGluaG4gODcyNjU3IE9jdCAgNSAwMToxNyBsaWJtbGliLnNvDQo+Pj4+
IA0KPj4+PiBTbyBpdCBpcyBhbGwgZ29vZCBmb3IgdGhlIGZpcnN0IHRpbWUsIGJ1dCB0aGVyZWFm
dGVyIHRoYXQsIGlmIEkgZG8gY2xlYW4g4oCcYml0YmFrZSAtYyBjbGVhbiBjLW1saWLigJ0gYW5k
IOKAnGJpdGJha2UgYy1tbGli4oCdIGFnYWluLg0KPj4+PiBBbGwgcGFja2FnZXMgd2VyZSBidWls
ZCBzdWNjZXNzZnVsLCBidXQgYWxsIGRhdGEgdW5kZXIgYy1tbGliIGdvdCB3YXMgZ29uZS4gTm90
aGluZyB0aGVyZSBpbmNsdWRpbmcgLmMvaCBmaWxlcywgaW1hZ2UgZGlyZWN0b3J5IGV0Yy4uLg0K
Pj4+PiANCj4+Pj4gZGluaG5AcnMtYmxkc3J2Oi9tZWRpYS9yYWdodXJhbS9kYXRhL2RpbmhuL2lv
eERldkxhdGVzdC9pb3hzZGsveXAvdG1wL3dvcmsvY29yZTItNjQtcG9reS1saW51eC9jLW1saWIv
MS4xLXIwL2dpdCQgbHMgLWx0cg0KPj4+PiB0b3RhbCAwDQo+Pj4+IGRpbmhuQHJzLWJsZHNydjov
bWVkaWEvcmFnaHVyYW0vZGF0YS9kaW5obi9pb3hEZXZMYXRlc3QvaW94c2RrL3lwL3RtcC93b3Jr
L2NvcmUyLTY0LXBva3ktbGludXgvYy1tbGliLzEuMS1yMC9naXQkDQo+Pj4+IA0KPj4+PiBQbGVh
c2UgZ2l2ZSBtZSBhbiBpZGVhIHdoeSBob3cgdG8gc29sdmUgdGhpcz8gU29ycnkgZm9yIGEgbG9u
ZyBlbWFpbCA7LSkpDQo+Pj4gDQo+Pj4gQXJlIHRoZSBmaWxlcyBwcmVzZW50IGluIHRoZSBpbWFn
ZS9wYWNrYWdlcz8gIE1heWJlIGl0IGlzIGp1c3QgdGhlDQo+Pj4gYml0YmFrZSBjYWNoZSBza2lw
cGluZyBkb2luZyB3b3JrIGl0IGFscmVhZHkgZGlkIGxhc3QgdGltZS4NCj4+PiANCj4+PiAtLQ0K
Pj4+IExlbiBTb3JlbnNlbg0KPj4gLS0NCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQo+PiB5b2N0byBtYWlsaW5nIGxpc3QNCj4+IHlvY3RvQHlvY3Rv
cHJvamVjdC5vcmcNCj4+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95
b2N0bw0KPg0K

