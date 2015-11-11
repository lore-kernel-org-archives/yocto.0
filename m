Return-Path: <Virgil.Smith@flir.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9059BE00B89; Wed, 11 Nov 2015 08:52:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.0.64.244 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 11 Nov 2015 08:52:03 PST
Received: from east-edge.flir.com (east-edge.flir.com [208.0.64.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72168E00B3D
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 08:52:03 -0800 (PST)
Received: from BOS-CH1.zone1.flir.net (10.128.150.52) by EAST-EDGE.flir.com
	(10.128.210.250) with Microsoft SMTP Server (TLS) id 14.3.235.1;
	Wed, 11 Nov 2015 11:57:18 -0500
Received: from BOS-DAG1.zone1.flir.net ([169.254.2.198]) by
	BOS-CH1.zone1.flir.net ([10.128.150.52]) with mapi id 14.03.0235.001;
	Wed, 11 Nov 2015 11:50:59 -0500
From: "Smith, Virgil" <Virgil.Smith@flir.com>
To: =?utf-8?B?RXlzdGVpbiBNw6Vsw7h5IFN0ZW5iZXJn?= <eystein@mender.io>
Thread-Topic: [yocto] Run-time discovery of machine for image compatibility
	check
Thread-Index: AQHRHCjCm0g23zFj/EqJhtlJckFgY56XBBMw
Date: Wed, 11 Nov 2015 16:50:58 +0000
Message-ID: <F14AEF751653024287138321000C846AFD6E92B7@BOS-DAG1.zone1.flir.net>
References: <560C54B1.20307@mender.io>
	<3CF90DC1-AE76-4429-A645-72BF8D4DDA21@gmail.com>
	<5642A7DF.6000604@mender.io>
In-Reply-To: <5642A7DF.6000604@mender.io>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.145.100.81]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Run-time discovery of machine for image compatibility check
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
X-List-Received-Date: Wed, 11 Nov 2015 16:52:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIHJlY29tbWVuZGF0aW9ucyBvbiB5b3VyIGJsb2cgc3VnZ2VzdCBtb2RpZnlpbmcgaW1hZ2Ut
YnVpbGRpbmZvLmJiY2xhc3MgdG8gY2hhbmdlIElNQUdFX0JVSUxESU5GT19WQVJTLg0KWW91IC9z
aG91bGQvIGJlIGFibGUgdG8gYXZvaWQgdGhpcyBieSBzaW1wbHkgYWRkaW5nIHNvbWV0aGluZyBs
aWtlDQoNCklNQUdFX0JVSUxESU5GT19WQVJTX2FwcGVuZCA9ICIgTUFDSElORSBERVZJQ0VfTU9E
RUwgREVWSUNFX1RZUEUiDQpvcg0KSU1BR0VfQlVJTERJTkZPX1ZBUlMgPSAiRElTVFJPIERJU1RS
T19WRVJTSU9OIE1BQ0hJTkUgREVWSUNFX01PREVMIERFVklDRV9UWVBFIg0KdG8gbG9jYWwuY29u
Zi4NCg0KVGhlIGZpcnN0IHZlcnNpb24gc2hvdWxkIGV4dGVuZCB0aGUgdmFsdWUgd2hlcmVhcyB0
aGUgc2Vjb25kIHNob3VsZCBjb21wbGV0ZWx5IHJlcGxhY2UgaXQuDQpUaGlzIHNob3VsZCB3b3Jr
IGJlY2F1c2UgaW1hZ2UtYnVpbGRpbmZvLmJiY2xhc3MgdXNlZCB0aGUgPz0gb3BlcmF0b3IgdG8g
c2V0IHRoZSB2YXJpYWJsZS4NCkZvciB0aGUgc2FtZSByZWFzb24geW91IHNob3VsZCBOT1QgdXNl
ICs9IHRvIGV4dGVuZCB0aGUgdmFyaWFibGUsIGJ1dCBzaG91bGQgdXNlIF9hcHBlbmQgaW5zdGVh
ZC4NCg0KVGhpcyBzaG91bGQgYmUgZWFzaWVyIHRvIG1haW50YWluIHdoZW4gdXBkYXRpbmcgeW91
ciAndmVyc2lvbiBvZiB5b2N0bycuDQoNCg0KTk9URTogSW4gL2V4dHJlbWUvIHN1bW1hcnkgdGhp
cyB3b3VsZCBtZWFuDQoNCkFkZCB0aGUgZm9sbG93aW5nIHRvICBsb2NhbC5jb25mDQogICBJTkhF
UklUICs9ICJpbWFnZS1idWlsZGluZm8iDQogICBERVZJQ0VfTU9ERUwgPSAic29tZS1leHRyYS1p
ZGVudGlmeWluZy1kZXRhaWxzIg0KICAgSU1BR0VfQlVJTERJTkZPX1ZBUlNfYXBwZW5kID0gIiBN
QUNISU5FIERFVklDRV9NT0RFTCINCg0KdG8gZ2V0IGEgL2V0Yy9idWlsZCBmaWxlIGluIHlvdXIg
cmVzdWx0aW5nIGltYWdlIHdpdGggaW5mb3JtYXRpb24gc2ltaWxhciB0byB0aGUgYnVpbGQgY29u
ZmlndXJhdGlvbiBzdW1tYXJ5IGJpdGJha2Ugb3V0cHV0cyBkdXJpbmcgYSBidWlsZC4NCg0KDQoN
Cj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogeW9jdG8tYm91bmNlc0B5b2N0
b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG8tDQo+IGJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZ10g
T24gQmVoYWxmIE9mIEV5c3RlaW4gTcOlbMO4eSBTdGVuYmVyZw0KPiBTZW50OiBUdWVzZGF5LCBO
b3ZlbWJlciAxMCwgMjAxNSA4OjI5IFBNDQo+IFRvOiBLaGVtIFJhag0KPiBDYzogeW9jdG9AeW9j
dG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBSdW4tdGltZSBkaXNjb3Zlcnkg
b2YgbWFjaGluZSBmb3IgaW1hZ2UgY29tcGF0aWJpbGl0eQ0KPiBjaGVjaw0KPg0KPiBUaGFua3Mg
dG8gZXZlcnlvbmUgb24gdGhlIGlucHV0IG9uIHRoaXMgaXNzdWUuIEkgZXZlbnR1YWxseSBzb2x2
ZWQgaXQgYnkgdXNpbmcgYW4NCj4gaW1hZ2UgZmVhdHVyZSBjYWxsZWQgImJ1aWxkaW5mbyIuDQo+
DQo+IEluIGNhc2Ugc29tZW9uZSBjb21lIGFjcm9zcyBhIHNpbWlsYXIgbmVlZCBpbiB0aGUgZnV0
dXJlIEkndmUgY3JlYXRlZCB0aGVzZSB0d28NCj4gYmxvZyBwb3N0IHRvIGFkdmVydGlzZSBidWls
ZGluZm8gaXQgYSBiaXQgbW9yZSBhbmQgc2hvdyBob3cgdG8gdXNlIGl0Og0KPg0KPiAqIGh0dHBz
Oi8vd3d3Lm1lbmRlci5pby9ibG9nL2J1aWxkLWluZm8teW9jdG8tMQ0KPiAqIGh0dHBzOi8vd3d3
Lm1lbmRlci5pby9ibG9nL2J1aWxkLWluZm8teW9jdG8tMg0KPg0KPiBPbiAzMC8wOS8xNSAxNzo0
NSwgS2hlbSBSYWogd3JvdGU6DQo+ID4NCj4gPj4gT24gU2VwIDMwLCAyMDE1LCBhdCAyOjMxIFBN
LCBFeXN0ZWluIE3DpWzDuHkgU3RlbmJlcmcgPGV5c3RlaW5AbWVuZGVyLmlvPg0KPiB3cm90ZToN
Cj4gPj4NCj4gPj4gSGksDQo+ID4+DQo+ID4+IEJlZm9yZSBzdGFydGluZyBhIGJpdGJha2UgYnVp
bGQsIHdlIGlucHV0IHRoZSBNQUNISU5FIHZhcmlhYmxlIGluDQo+ID4+IGxvY2FsLmNvbmYgKGUu
Zy4gTUFDSElORSA/PSBiZWFnbGVib25lKS4NCj4gPj4NCj4gPj4gSXMgdGhlcmUgYSB3YXkgdG8g
ZGV0ZWN0IHRoaXMgdmFyaWFibGUgYXQgcnVuLXRpbWU/IEkuZS4gaWYgSSBoYXZlDQo+ID4+IGJ1
aWx0IHRoZSBpbWFnZSwgd3JpdHRlbiBpdCB0byBhIGRldmljZSwgYW5kIEknbSBub3cgbG9nZ2Vk
IGluIHRvIGl0Lg0KPiA+DQo+ID4gVGhlcmUgaXMgbm8gc3RhbmRhcmQgYmlsbCBvZiBtYXRlcmlh
bHMgdGhhdCB5b3Ugd2lsbCBmaW5kIG9uIGltYWdlcy4NCj4gPiBFdmVyeW9uZSBwcm9kdWNlcyBp
dCBwZXIgb3duIG5lZWRzLiBUaGUgcmVhc29uIGlzIHRoYXQgd2UgZG8gbm90IGhhdmUNCj4gPiBh
IG9uZSBPVEEgbWVjaGFuaXNtIHJlY29tbWVuZGVkIG9yIHByZWZlcnJlZCBpbiBPcGVuRW1iZWRk
ZWQgb3INCj4gPiBtYWludGFpbmVkIGJ5IHlvY3RvIHByb2plY3QuIE1heSBiZSB0aGlzIGNvdWxk
IGJlIGEgdGhpbmcgdG8gY29uc2lkZXINCj4gPiBjb21lIGZ1dHVyZSByaWdodCBub3csIHRoZXJl
IHdlcmUgb3RoZXIgYmlnIGZpc2ggdG8gZnJ5IGFyb3VuZCB3b3JrZmxvdy4gT1RBDQo+IGZpcm13
YXJlIHVwZ3JhZGUsIGNvdWxkIGJlIGJpZyB0aGluZyBmb3IgbmV4dCByZWxlYXNlIG9yIHRoZXJl
IGFmdGVyLg0KPiA+DQo+ID4gSSBkb27igJl0IGhhdmUgYSBiZXR0ZXIgYW5zd2VyIGZvciB5b3Ug
YXQgdGhlIG1vbWVudC4gWW91IGhhdmUgdG8gd29yaw0KPiA+IHdpdGggZGV2aWNlIGZpcm13YXJl
IG1hbnVmYWN0dXJlciBhbmQgc2VlIGlmIHRoZXkgaGF2ZSBwdXQgc29tZSBpbWFnZSBpbmZvDQo+
IGludG8gdGhlIGltYWdlIGluIHNvbWUgZm9ybS4NCj4gPg0KPiA+Pg0KPiA+PiBUaGUgcmVhc29u
IEkgd2FudCB0aGlzIGlzIHRoYXQgSSdtIHdvcmtpbmcgb24gYSBwcm9qZWN0IHRvIGRlcGxveQ0K
PiA+PiBpbWFnZSB1cGRhdGVzIChyZW1vdGVseSksIGFuZCBJIG9ubHkgd2FudCB0byB3cml0ZSB0
aGUgaW1hZ2UgaWYgdGhlDQo+ID4+IGRldmljZSBpcyBjb21wYXRpYmxlIHdpdGggdGhlIGltYWdl
IGZpbGUuIFNvIEkgbmVlZCB0byBrbm93IGJvdGggdGhlDQo+ID4+IGhhcmR3YXJlL2JvYXJkIHR5
cGUgYW5kIHdoYXQgdGhlIGltYWdlIHRhcmdldCBpcyAoYXNzdW1pbmcgdGhpcyBpcw0KPiA+PiB0
aGUgTUFDSElORSB2YXJpYWJsZSBhbG9uZSkuIFRoZW4gSSB3aWxsIG9ubHkgd3JpdGUgdGhlIGlt
YWdlIGlmIHRoZXkNCj4gPj4gYXJlIHRoZSBzYW1lLg0KPiA+Pg0KPiA+PiBBbHNvLCBkbyB5b3Ug
dGhpbmsgdXNpbmcgdGhlIE1BQ0hJTkUgdmFyaWFibGUgaXMgdGhlIHJpZ2h0IGFwcHJvYWNoDQo+
ID4+IGZvciB0aGlzIHByb2JsZW0/IE1heWJlIHNvbWVvbmUgaGFzIGhhZCBhIHNpbWlsYXIgcHJv
YmxlbT8NCj4gPj4NCj4gPj4gSSdtIG5ldyB0byBZb2N0bywgc29ycnkgaWYgSSdtIGFza2luZyBz
b21ldGhpbmcgb2J2aW91cyAoYnV0IEkgY291bGQNCj4gPj4gbm90IGZpbmQgYW4gYW5zd2VyIGlu
IHRoZSBkb2NzKS4NCj4gPj4NCj4gPj4gVGhhbmtzIQ0KPiA+Pg0KPiA+PiAtLQ0KPiA+Pg0KPiA+
PiBFeXN0ZWluDQo+ID4+IC0tDQo+ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fDQo+ID4+IHlvY3RvIG1haWxpbmcgbGlzdA0KPiA+PiB5b2N0b0B5b2N0
b3Byb2plY3Qub3JnDQo+ID4+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5m
by95b2N0bw0KPiA+DQo+DQo+IC0tDQo+DQo+IEV5c3RlaW4NCj4gLS0NCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4geW9jdG8gbWFpbGluZyBsaXN0
DQo+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qu
b3JnL2xpc3RpbmZvL3lvY3RvDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQoN
Ck5vdGljZSB0byByZWNpcGllbnQ6IFRoaXMgZW1haWwgaXMgbWVhbnQgZm9yIG9ubHkgdGhlIGlu
dGVuZGVkIHJlY2lwaWVudCBvZiB0aGUgdHJhbnNtaXNzaW9uLCBhbmQgbWF5IGJlIGEgY29tbXVu
aWNhdGlvbiBwcml2aWxlZ2VkIGJ5IGxhdywgc3ViamVjdCB0byBleHBvcnQgY29udHJvbCByZXN0
cmljdGlvbnMgb3IgdGhhdCBvdGhlcndpc2UgY29udGFpbnMgcHJvcHJpZXRhcnkgaW5mb3JtYXRp
b24uIElmIHlvdSByZWNlaXZlIHRoaXMgZW1haWwgYnkgbWlzdGFrZSwgcGxlYXNlIG5vdGlmeSB1
cyBpbW1lZGlhdGVseSBieSByZXBseWluZyB0byB0aGlzIG1lc3NhZ2UgYW5kIHRoZW4gZGVzdHJv
eSBpdCBhbmQgZG8gbm90IHJldmlldywgZGlzY2xvc2UsIGNvcHkgb3IgZGlzdHJpYnV0ZSBpdC4g
VGhhbmsgeW91IGluIGFkdmFuY2UgZm9yIHlvdXIgY29vcGVyYXRpb24uDQo=

