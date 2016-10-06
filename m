Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A984E00AF2; Thu,  6 Oct 2016 11:39:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.86.75 listed in list.dnswl.org]
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from rcdn-iport-4.cisco.com (rcdn-iport-4.cisco.com [173.37.86.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6D09E00AC5
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 11:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=10686; q=dns/txt;
	s=iport; t=1475779157; x=1476988757;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=VwDCE8mLLpgts9Qkn9+zhINWfCdeKRnrDO8APXjtyNI=;
	b=dp1BkGTsHrp41pVU2HkGSqwEedxTdOQcKsPH5CRT3NCZDX4jAl419bNz
	HQsVrq3QElgvWlVqdG43OVmeynmQ82Hg80Ju8cOLT5HJxZtEc2wE2F8f5
	a3urJs6vLMyBqbupIV2eCyewHqldsSZblx3C6Qo63jwstZyBGYmkmC57u 8=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0BxAQDimfZX/4oNJK1cGgEBAQECAQEBA?=
	=?us-ascii?q?QgBAQEBgz0BAQEBAR5XfAeNK5cAh1iMVIILGw2FeAIcgVg4FAECAQEBAQEBAV4?=
	=?us-ascii?q?nhGEBAQEDAQEBASAROgsQAgEIGAICJgICAh8GAQoVEAIEDgUJiCsDDwgOsiCJB?=
	=?us-ascii?q?A2DXgEBAQEBAQEBAQEBAQEBAQEBAQEBAR2BB4U1gX0IglCCR4FSEAIBG4JMOCy?=
	=?us-ascii?q?CLwWOOosQNQGGJ4VTeIMIgW5OhBmJH4hjhBSDfgEeNkuCaxwZgTpyAYc/gQABA?=
	=?us-ascii?q?QE?=
X-IronPort-AV: E=Sophos;i="5.31,454,1473120000"; d="scan'208";a="157038327"
Received: from alln-core-5.cisco.com ([173.36.13.138])
	by rcdn-iport-4.cisco.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	06 Oct 2016 18:39:15 +0000
Received: from XCH-RTP-003.cisco.com (xch-rtp-003.cisco.com [64.101.220.143])
	by alln-core-5.cisco.com (8.14.5/8.14.5) with ESMTP id u96IdFgg021142
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 6 Oct 2016 18:39:15 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-003.cisco.com
	(64.101.220.143) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Thu, 6 Oct 2016 14:39:14 -0400
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Thu, 6 Oct 2016 14:39:14 -0400
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Question: xxxx listed in PACKAGES multiple times, this
	leads to packaging errors
Thread-Index: AQHSHll65OzpqDQ8KUqWgZf+kZeSr6CY76UA//+R1QCAAHifgIAAJRiAgACR/ICAACS/AIAAe/YA//+o+ICAAHd4AP//j22AABDxK4AAITWPAA==
Date: Thu, 6 Oct 2016 18:39:14 +0000
Message-ID: <1BE378D0-8233-4131-ABED-9925DF516F44@cisco.com>
References: <D6696459-1F17-4F52-8D0A-4ED8C3FC35EE@cisco.com>
	<15215572.tG9QIyjkit@peggleto-mobl.ger.corp.intel.com>
	<4EBFFDF8-32F2-48C0-A456-DB9A9A4D3841@cisco.com>
	<1722958.a5vgrEO2cN@peggleto-mobl.ger.corp.intel.com>
	<894BCA8B-9CE0-4B9E-9538-ED1B710627E8@cisco.com>
	<20161005163020.GC2084@csclub.uwaterloo.ca>
	<16724416-E2A7-4179-B927-1ABCEC8C4C41@cisco.com>
	<CA6374AA-A2F0-4FBF-85C0-3F37E3282626@gmail.com>
	<1617F406-039C-42B2-8739-84169A7B0F3C@cisco.com>
	<41EB2D7C-888A-4E8F-8170-5777B3EE942E@gmail.com>
In-Reply-To: <41EB2D7C-888A-4E8F-8170-5777B3EE942E@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.41.60.192]
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
X-List-Received-Date: Thu, 06 Oct 2016 18:39:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <1AFE13F2C16C7B4583C95BB77E687F0F@emea.cisco.com>
Content-Transfer-Encoding: base64

DQo+PiB5ZXMgdGhhdHMgbm9ybWFsIHdoZW4gcGFja2FnZSBpcyByZS11c2VkIGZyb20gc3N0YXRl
LWNhY2hlDQoNCk1hbnkgdGhhbmtzIEtoZW0uIEdvdCBpdCwgc28gdGhlIElQSyBwYWNrYWdlcyB3
ZXJlIGJ1aWx0IGVhcmx5IGlzIE9LLiANCkkgZGlkIGEgY2xlYW4gYWxsIGFuZCByZWRvIHRoZSBi
aXRiYWtlLCBhbGwgcGFja2FnZXMsIGltYWdlcyB3ZXJlIHJlYnVpbHQuDQoNClRoYW5rcyBhZ2Fp
biwNCiAg4oCURGluaCANCg0KDQo+DQo+PiBPbiBPY3QgNSwgMjAxNiwgYXQgMTE6NDMgQU0sIERp
bmggTmd1eWVuIChkaW5obikgPGRpbmhuQGNpc2NvLmNvbT4gd3JvdGU6DQo+PiANCj4+IA0KPj4g
DQo+Pj4+IHRoZW4gaXQgaXMganVzdCBnb2luZyB0byByZXVzZSB0aGUgYnVpbGQgYXJ0aWZhY3Rz
IGZyb20gbGFzdCBidWlsZHMgYW5kIG5vdCBjaGVja291dCB0aGUgc291cmNlcyBldGMuDQo+Pj4+
IGFsbCB0aG9zZSB0YXNrcyB3aWxsIGJlIHNraXBwZWQuDQo+PiANCj4+Pj4gd2h5IGFyZSBsb29r
aW5nIGZvciBzb3VyY2VzIGluIGEgYnVpbGQgdHJlZSA/DQo+PiANCj4+IA0KPj4gTm90IG9ubHkg
c291cmNlIHVuZGVyDQo+PiAuLiB5cC90bXAvd29yay9jb3JlMi02NC1wb2t5LWxpbnV4L2MtbWxp
Yi8xLjEtcjAvZ2l0DQo+PiANCj4+IEJ1dCBvdGhlciBkYXRhIHN1Y2ggYXMgc3VjaCBhcyB0aGUg
eXAvdG1wL3dvcmsvY29yZTItNjQtcG9reS1saW51eC9jLW1saWIvMS4xLXIwL2ltYWdlLyogd2Fz
IGFsc28gZ29uZS4gVGhlIGZvbGxvd2luZyBpbWFnZSB0aGF0IEkgaGF2ZSBpdCBpbiB0aGUgZmly
c3QgcGxhY2UuDQo+DQo+eWVzIHRoYXRzIG5vcm1hbCB3aGVuIHBhY2thZ2UgaXMgcmUtdXNlZCBm
cm9tIHNzdGF0ZS1jYWNoZQ0KPj4gDQo+PiANCj4+IA0KPj4gZGluaG5AcnMtYmxkc3J2Oi9tZWRp
YS9yYWdodXJhbS9kYXRhL2RpbmhuL2lveERldkxhdGVzdC9pb3hzZGsveXAvdG1wL3dvcmsvY29y
ZTItNjQtcG9reS1saW51eC9jLW1saWIvMS4xLXIwL2ltYWdlL3Vzci9iaW4kIGxzIC1sdHINCj4+
IHRvdGFsIDE0MjQNCj4+IC1ydy1yLS1yLS0gMSBkaW5obiBkaW5obiAxNzE3MDEgT2N0ICA1IDAx
OjE3IGRhdGFtb2RlbF9jYWNoZQ0KPj4gLXJ3LXItLXItLSAxIGRpbmhuIGRpbmhuIDE4NzQzNCBP
Y3QgIDUgMDE6MTcgaW52b2tlDQo+PiAtcnctci0tci0tIDEgZGluaG4gZGluaG4gMTg0OTYxIE9j
dCAgNSAwMToxNyBpbnZva2VfYg0KPj4gLXJ3LXItLXItLSAxIGRpbmhuIGRpbmhuIDE3MTcwMSBP
Y3QgIDUgMDE6MTcgcHJvdG9jb2xfaW5mcmENCj4+IC1ydy1yLS1yLS0gMSBkaW5obiBkaW5obiAx
OTEzNjIgT2N0ICA1IDAxOjE3IHB1Ymxpc2hlcg0KPj4gLXJ3LXItLXItLSAxIGRpbmhuIGRpbmhu
IDE4NzA4NCBPY3QgIDUgMDE6MTcgcnBjLXJlZ2lzdGVyDQo+PiAtcnctci0tci0tIDEgZGluaG4g
ZGluaG4gMTc5NjQ4IE9jdCAgNSAwMToxNyBzZXJ2aWNlDQo+PiAtcnctci0tci0tIDEgZGluaG4g
ZGluaG4gMTc0NTE4IE9jdCAgNSAwMToxNyBzdWJzY3JpYmVyDQo+PiBkaW5obkBycy1ibGRzcnY6
L21lZGlhL3JhZ2h1cmFtL2RhdGEvZGluaG4vaW94RGV2TGF0ZXN0L2lveHNkay95cC90bXAvd29y
ay9jb3JlMi02NC1wb2t5LWxpbnV4L2MtbWxpYi8xLjEtcjAvaW1hZ2UvdXNyL2JpbiQgY2QgLi4v
bGliDQo+PiBkaW5obkBycy1ibGRzcnY6L21lZGlhL3JhZ2h1cmFtL2RhdGEvZGluaG4vaW94RGV2
TGF0ZXN0L2lveHNkay95cC90bXAvd29yay9jb3JlMi02NC1wb2t5LWxpbnV4L2MtbWxpYi8xLjEt
cjAvaW1hZ2UvdXNyL2xpYiQgbHMgLWx0cg0KPj4gdG90YWwgODU2DQo+PiAtcnctci0tci0tIDMg
ZGluaG4gZGluaG4gODcyNjU3IE9jdCAgNSAwMToxNyBsaWJtbGliLnNvDQo+PiANCj4+IA0KPj4g
VGhhbmtzLA0KPj4gIOKAlERpbmgNCj4+IA0KPj4gT24gMTAvNS8xNiwgMTE6MjYgQU0sICJLaGVt
IFJhaiIgPHJhai5raGVtQGdtYWlsLmNvbT4gd3JvdGU6DQo+PiANCj4+PiANCj4+Pj4gT24gT2N0
IDUsIDIwMTYsIGF0IDExOjE4IEFNLCBEaW5oIE5ndXllbiAoZGluaG4pIDxkaW5obkBjaXNjby5j
b20+IHdyb3RlOg0KPj4+PiANCj4+Pj4+PiBBcmUgdGhlIGZpbGVzIHByZXNlbnQgaW4gdGhlIGlt
YWdlL3BhY2thZ2VzPyAgTWF5YmUgaXQgaXMganVzdCB0aGUNCj4+Pj4+PiBiaXRiYWtlIGNhY2hl
IHNraXBwaW5nIGRvaW5nIHdvcmsgaXQgYWxyZWFkeSBkaWQgbGFzdCB0aW1lLg0KPj4+PiANCj4+
Pj4gSWYgSSBkb27igJl0IGRvIHRoZSBiaXRiYWtlIGNsZWFuLCBhbmQganVzdCBkbyBiaXRiYWtl
IGFnYWluLCB0aGVuIHllcy4NCj4+Pj4gDQo+Pj4+IA0KPj4+PiBCdXQgaWYgSSBkbyDigJxiaXRi
YWtlIC1jIGNsZWFuIGMtbWxpYuKAnSBhbmQgYml0YmFrZSBhZ2FpbiwgdGhlIGlzIHdoZXJlIHRo
ZSBwcm9ibGVtLg0KPj4+IA0KPj4+IA0KPj4+IHdlbGwgaXRzIHVzaW5nIHNzdGF0ZSBjYWNoZSBo
ZXJlIHNvIHdoZW4geW91IGRvIGNsZWFuIGFuZCByZWJ1aWxkIGFuZCBpdCBub3RpY2VzIG5vIGNo
YW5nZXMgZnJvbSBwcmV2aW91cyBidWlsZHMNCj4+PiB0aGVuIGl0IGlzIGp1c3QgZ29pbmcgdG8g
cmV1c2UgdGhlIGJ1aWxkIGFydGlmYWN0cyBmcm9tIGxhc3QgYnVpbGRzIGFuZCBub3QgY2hlY2tv
dXQgdGhlIHNvdXJjZXMgZXRjLg0KPj4+IGFsbCB0aG9zZSB0YXNrcyB3aWxsIGJlIHNraXBwZWQu
DQo+Pj4gDQo+Pj4gd2h5IGFyZSBsb29raW5nIGZvciBzb3VyY2VzIGluIGEgYnVpbGQgdHJlZSA/
DQo+Pj4gSSBhc2sgYmVjYXVzZSBpZiB5b3Ugd2FudCB0byBoYWNrIG9uIGl0IHRoZW4gSSB3b3Vs
ZCByZWNvbW1lbmQgZm9sbG93aW5nIGRldnRvb2wgd29ya2Zsb3cuDQo+Pj4gc2VlDQo+Pj4gaHR0
cDovL3d3dy55b2N0b3Byb2plY3Qub3JnL2RvY3MvbGF0ZXN0L2Rldi1tYW51YWwvZGV2LW1hbnVh
bC5odG1sI3VzaW5nLWRldnRvb2wtaW4teW91ci13b3JrZmxvdw0KPj4+IA0KPj4+IA0KPj4+PiAN
Cj4+Pj4gVGhhbmtzLA0KPj4+PiDigJREaW5oDQo+Pj4+IA0KPj4+PiANCj4+Pj4gDQo+Pj4+IA0K
Pj4+PiBPbiAxMC81LzE2LCA5OjMwIEFNLCAiTGVubmFydCBTb3JlbnNlbiIgPGxzb3JlbnNlQGNz
Y2x1Yi51d2F0ZXJsb28uY2E+IHdyb3RlOg0KPj4+PiANCj4+Pj4+IE9uIFdlZCwgT2N0IDA1LCAy
MDE2IGF0IDA0OjA2OjI1UE0gKzAwMDAsIERpbmggTmd1eWVuIChkaW5obikgd3JvdGU6DQo+Pj4+
Pj4gTWFueSB0aGFua3MgUGF1bC4gWW91ciBoZWxwIGlzIGdyZWF0bHkgYXBwcmVjaWF0ZWQuDQo+
Pj4+Pj4gDQo+Pj4+Pj4gMS4gPj4+IExpa2UgdGhlIG90aGVyIHJlc3BvbmRlciBJIHdvdWxkIHN1
Z2dlc3QgeW91IG5vdCBzZXQgUEFDS0FHRVMNCj4+Pj4+PiANCj4+Pj4+PiBZZXMsIEkgZGlkIG5v
dCBzZXQgdGhlIFBBQ0tBR0VTLCBzbyAtZGV2LCAtZGJnIGFuZCBtYWluIHBhY2thZ2VzIHdlcmUg
YnVpbHQgYXMgc2hvd24gYmVsb3c6DQo+Pj4+Pj4gDQo+Pj4+Pj4gZGluaG5AcnMtYmxkc3J2Oi9t
ZWRpYS9yYWdodXJhbS9kYXRhL2RpbmhuL2lveERldkxhdGVzdC9pb3hzZGsveXAkIGZpbmQgdG1w
L2RlcGxveSB8IGdyZXAgYy1tbGlidG1wL2RlcGxveS9pcGsvY29yZTItNjQvYy1tbGliLWRiZ18x
LjEtcjBfY29yZTItNjQuaXBrDQo+Pj4+Pj4gdG1wL2RlcGxveS9pcGsvY29yZTItNjQvYy1tbGli
LWRldl8xLjEtcjBfY29yZTItNjQuaXBrDQo+Pj4+Pj4gdG1wL2RlcGxveS9pcGsvY29yZTItNjQv
Yy1tbGliXzEuMS1yMF9jb3JlMi02NC5pcGsNCj4+Pj4+PiB0bXAvZGVwbG95L2xpY2Vuc2VzL2Mt
bWxpYg0KPj4+Pj4+IA0KPj4+Pj4+IDIuID4+PiBGSUxFU18ke1BOfS1kZXYgPSAiJHtpbmNsdWRl
ZGlyfeKAnQ0KPj4+Pj4+IA0KPj4+Pj4+IEkgYWRkZWQgdGhhdCB0byAuYmIgYXMgeW91IHN1Z2dl
c3RlZCBzbyAuc28gZmlsZSBkb2Vzbid0IGVuZCB1cCBpbiB0aGUgJHtQTn0tZGV2DQo+Pj4+Pj4g
UGFja2FnZSDigJQgTm8gbG9uZ2VyIHNlZSB0aGUgZXJyb3IgbWVudGlvbmVkIGluIHByZXZpb3Vz
IG1haWwuIFRoeA0KPj4+Pj4+IA0KPj4+Pj4+IDMuID4+PiBUaGlzIGlzIHdoYXQgSSBzdXNwZWN0
ZWQgd291bGQgaGFwcGVuIC0gdGhlc2UgZmlsZXMgd291bGQgbm9ybWFsbHkgYmUgcGFydCBvZg0K
Pj4+Pj4+IHRoZSAke1BOfS1kYmcgcGFja2FnZSwgYnV0IHNpbmNlIHlvdSd2ZSByZW1vdmVkIHRo
YXQgZnJvbSBQQUNLQUdFUywgdGhleSBhcmUNCj4+Pj4+PiBlbmRpbmcgdXAgdW5wYWNrYWdlZCBh
bmQgdGhhdCBpcyBub3QgYWxsb3dlZC4NCj4+Pj4+PiANCj4+Pj4+PiBEaWQgeW91IG1lYW4gdGhl
ICJpbnN0YWxsIC1tIDA2NDQgeHh4IHl5eeKAnSB0byByZW1vdmUgdGhvc2UgZmlsZXMgZnJvbSB0
aGUgUEFDS0FHRVM/IEhvdyBkbyBJIGNvcHkgLnNvIGFuZCBiaW5hcmllcyBmcm9tIG15IHRhcmdl
dCB0byB0aGUgbGliZGlyIG9yIGJpbmRpcj8NCj4+Pj4+PiANCj4+Pj4+PiBBZnRlciBjaGFuZ2lu
ZyB0aGUgLmJiIHRvIHJlbW92ZSB0aGUgUEFDS0FHRVMgc2V0dGluZyBhbmQgRklMRVNfJHtQTn0t
ZGV2ID0gIiR7aW5jbHVkZWRpcn3igJ0NCj4+Pj4+PiBGb3IgdGhlIHZlcnkgZmlyc3QgdGltZSwg
cGFja2FnZXMgd2VyZSBidWlsdCBmaW5kLCBpbWFnZSB3ZXJlIGNyZWF0ZWQgdW5kZXIgaW1hZ2Ug
ZGlyZWN0b3J5IGFuZCBjLW1saWIgc291cmNlIGlzIHN0aWxsIGluIHRoZSB5cCB3b3Jrc3BhY2Ug
YXMgc2hvd24gYmVsb3c6DQo+Pj4+Pj4gDQo+Pj4+Pj4gQS5QYWNrYWdlcyB3ZXJlIGJ1aWx0DQo+
Pj4+Pj4gZGluaG5AcnMtYmxkc3J2Oi9tZWRpYS9yYWdodXJhbS9kYXRhL2RpbmhuL2lveERldkxh
dGVzdC9pb3hzZGsveXAkIGZpbmQgdG1wL2RlcGxveSB8IGdyZXAgYy1tbGliDQo+Pj4+Pj4gdG1w
L2RlcGxveS9pcGsvY29yZTItNjQvYy1tbGliLWRiZ18xLjEtcjBfY29yZTItNjQuaXBrDQo+Pj4+
Pj4gdG1wL2RlcGxveS9pcGsvY29yZTItNjQvYy1tbGliLWRldl8xLjEtcjBfY29yZTItNjQuaXBr
DQo+Pj4+Pj4gdG1wL2RlcGxveS9pcGsvY29yZTItNjQvYy1tbGliXzEuMS1yMF9jb3JlMi02NC5p
cGsNCj4+Pj4+PiB0bXAvZGVwbG95L2xpY2Vuc2VzL2MtbWxpYg0KPj4+Pj4+IA0KPj4+Pj4+IEIu
IFNvdXJjZSBmaWxlcyBhbmQgdGhlIGMtbWxpYiBnaXQgZGlyZWN0b3J5IHN0aWxsIGhhdmUgYWxs
IHRoZSBzb3VyY2VzIChlLmcganVzdCBncmVwIHRoZSBtbGliX2FwaS5jKQ0KPj4+Pj4+IGRpbmhu
QHJzLWJsZHNydjovbWVkaWEvcmFnaHVyYW0vZGF0YS9kaW5obi9pb3hEZXZMYXRlc3QvaW94c2Rr
L3lwJCBmaW5kIC4gLW5hbWUgIm1saWJfYXBpLmMiDQo+Pj4+Pj4gLi90bXAvd29yay9jb3JlMi02
NC1wb2t5LWxpbnV4L2MtbWxpYi8xLjEtcjAvZ2l0L3NyYy9tbGliX2FwaS5jDQo+Pj4+Pj4gLi90
bXAvd29yay9jb3JlMi02NC1wb2t5LWxpbnV4L2MtbWxpYi8xLjEtcjAvcGFja2FnZXMtc3BsaXQv
Yy1tbGliLWRiZy91c3Ivc3JjL2RlYnVnL2MtbWxpYi8xLjEtcjAvZ2l0L3NyYy9tbGliX2FwaS5j
DQo+Pj4+Pj4gLi90bXAvd29yay9jb3JlMi02NC1wb2t5LWxpbnV4L2MtbWxpYi8xLjEtcjAvcGFj
a2FnZS91c3Ivc3JjL2RlYnVnL2MtbWxpYi8xLjEtcjAvZ2l0L3NyYy9tbGliX2FwaS5jDQo+Pj4+
Pj4gZGluaG5AcnMtYmxkc3J2Oi9tZWRpYS9yYWdodXJhbS9kYXRhL2RpbmhuL2lveERldkxhdGVz
dC9pb3hzZGsveXAkDQo+Pj4+Pj4gDQo+Pj4+Pj4gQy4gSW1hZ2Ugd2FzIGJ1aWx0IGFzIHdlbGwg
aW5jbHVkaW5nIGJpbmFyaWVzIGFuZCBsaWJtbGliLnNvDQo+Pj4+Pj4gZGluaG5AcnMtYmxkc3J2
Oi9tZWRpYS9yYWdodXJhbS9kYXRhL2RpbmhuL2lveERldkxhdGVzdC9pb3hzZGsveXAvdG1wL3dv
cmsvY29yZTItNjQtcG9reS1saW51eC9jLW1saWIvMS4xLXIwL2ltYWdlL3Vzci9iaW4kIGxzIC1s
dHINCj4+Pj4+PiB0b3RhbCAxNDI0DQo+Pj4+Pj4gLXJ3LXItLXItLSAxIGRpbmhuIGRpbmhuIDE3
MTcwMSBPY3QgIDUgMDE6MTcgZGF0YW1vZGVsX2NhY2hlDQo+Pj4+Pj4gLXJ3LXItLXItLSAxIGRp
bmhuIGRpbmhuIDE4NzQzNCBPY3QgIDUgMDE6MTcgaW52b2tlDQo+Pj4+Pj4gLXJ3LXItLXItLSAx
IGRpbmhuIGRpbmhuIDE4NDk2MSBPY3QgIDUgMDE6MTcgaW52b2tlX2INCj4+Pj4+PiAtcnctci0t
ci0tIDEgZGluaG4gZGluaG4gMTcxNzAxIE9jdCAgNSAwMToxNyBwcm90b2NvbF9pbmZyYQ0KPj4+
Pj4+IC1ydy1yLS1yLS0gMSBkaW5obiBkaW5obiAxOTEzNjIgT2N0ICA1IDAxOjE3IHB1Ymxpc2hl
cg0KPj4+Pj4+IC1ydy1yLS1yLS0gMSBkaW5obiBkaW5obiAxODcwODQgT2N0ICA1IDAxOjE3IHJw
Yy1yZWdpc3Rlcg0KPj4+Pj4+IC1ydy1yLS1yLS0gMSBkaW5obiBkaW5obiAxNzk2NDggT2N0ICA1
IDAxOjE3IHNlcnZpY2UNCj4+Pj4+PiAtcnctci0tci0tIDEgZGluaG4gZGluaG4gMTc0NTE4IE9j
dCAgNSAwMToxNyBzdWJzY3JpYmVyDQo+Pj4+Pj4gDQo+Pj4+Pj4gZGluaG5AcnMtYmxkc3J2Oi9t
ZWRpYS9yYWdodXJhbS9kYXRhL2RpbmhuL2lveERldkxhdGVzdC9pb3hzZGsveXAvdG1wL3dvcmsv
Y29yZTItNjQtcG9reS1saW51eC9jLW1saWIvMS4xLXIwL2ltYWdlL3Vzci9iaW4kIGNkIC4uL2xp
Yg0KPj4+Pj4+IGRpbmhuQHJzLWJsZHNydjovbWVkaWEvcmFnaHVyYW0vZGF0YS9kaW5obi9pb3hE
ZXZMYXRlc3QvaW94c2RrL3lwL3RtcC93b3JrL2NvcmUyLTY0LXBva3ktbGludXgvYy1tbGliLzEu
MS1yMC9pbWFnZS91c3IvbGliJCBscyAtbHRyDQo+Pj4+Pj4gdG90YWwgODU2DQo+Pj4+Pj4gLXJ3
LXItLXItLSAzIGRpbmhuIGRpbmhuIDg3MjY1NyBPY3QgIDUgMDE6MTcgbGlibWxpYi5zbw0KPj4+
Pj4+IA0KPj4+Pj4+IFNvIGl0IGlzIGFsbCBnb29kIGZvciB0aGUgZmlyc3QgdGltZSwgYnV0IHRo
ZXJlYWZ0ZXIgdGhhdCwgaWYgSSBkbyBjbGVhbiDigJxiaXRiYWtlIC1jIGNsZWFuIGMtbWxpYuKA
nSBhbmQg4oCcYml0YmFrZSBjLW1saWLigJ0gYWdhaW4uDQo+Pj4+Pj4gQWxsIHBhY2thZ2VzIHdl
cmUgYnVpbGQgc3VjY2Vzc2Z1bCwgYnV0IGFsbCBkYXRhIHVuZGVyIGMtbWxpYiBnb3Qgd2FzIGdv
bmUuIE5vdGhpbmcgdGhlcmUgaW5jbHVkaW5nIC5jL2ggZmlsZXMsIGltYWdlIGRpcmVjdG9yeSBl
dGMuLi4NCj4+Pj4+PiANCj4+Pj4+PiBkaW5obkBycy1ibGRzcnY6L21lZGlhL3JhZ2h1cmFtL2Rh
dGEvZGluaG4vaW94RGV2TGF0ZXN0L2lveHNkay95cC90bXAvd29yay9jb3JlMi02NC1wb2t5LWxp
bnV4L2MtbWxpYi8xLjEtcjAvZ2l0JCBscyAtbHRyDQo+Pj4+Pj4gdG90YWwgMA0KPj4+Pj4+IGRp
bmhuQHJzLWJsZHNydjovbWVkaWEvcmFnaHVyYW0vZGF0YS9kaW5obi9pb3hEZXZMYXRlc3QvaW94
c2RrL3lwL3RtcC93b3JrL2NvcmUyLTY0LXBva3ktbGludXgvYy1tbGliLzEuMS1yMC9naXQkDQo+
Pj4+Pj4gDQo+Pj4+Pj4gUGxlYXNlIGdpdmUgbWUgYW4gaWRlYSB3aHkgaG93IHRvIHNvbHZlIHRo
aXM/IFNvcnJ5IGZvciBhIGxvbmcgZW1haWwgOy0pKQ0KPj4+Pj4gDQo+Pj4+PiBBcmUgdGhlIGZp
bGVzIHByZXNlbnQgaW4gdGhlIGltYWdlL3BhY2thZ2VzPyAgTWF5YmUgaXQgaXMganVzdCB0aGUN
Cj4+Pj4+IGJpdGJha2UgY2FjaGUgc2tpcHBpbmcgZG9pbmcgd29yayBpdCBhbHJlYWR5IGRpZCBs
YXN0IHRpbWUuDQo+Pj4+PiANCj4+Pj4+IC0tDQo+Pj4+PiBMZW4gU29yZW5zZW4NCj4+Pj4gLS0N
Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4+
Pj4geW9jdG8gbWFpbGluZyBsaXN0DQo+Pj4+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4+Pj4g
aHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvDQo+Pj4gDQo+DQo=

