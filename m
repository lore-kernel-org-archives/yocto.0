Return-Path: <Shrawan.Kumar@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1547E00DF0; Tue, 16 Aug 2016 21:47:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.243.195 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E48FE00DE5
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 21:47:42 -0700 (PDT)
Received: from [216.82.242.131] by server-3.bemta-8.messagelabs.com id
	A9/82-13762-D6CE3B75; Wed, 17 Aug 2016 04:47:41 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPKsWRWlGSWpSXmKPExsXinSZ8TDf3zeZ
	wg48TRC1mHdrJZjHp5Ro2ByaPeScDPdpP9LEFMEWxZuYl5VcksGYcuXOVqWCdRcWzR0cZGxgv
	mHcxcnEICWxhlNj9/g07nLN26wdGCOcgo8SGdf9Yuxg5OdgEDCWu9NxlBLFFBFIlLj0/ygZiC
	wukSXz9uJAVIp4u8Wrld6AaDiDbSeLG4QyQMIuAqkTb9cdgJbwC7hItlzqYIebfZZQ407ULLM
	EpYCYx6+R0sJmMArISXxpXM4PYzALiEreezGcCsSUEBCSW7DnPDGGLSrx8DHGbhICBxNal+1g
	gbAWJld0NbCA3MAtoSqzfpQ8xRlFiSvdDdogbBCVOznwCVi4EdNuWhb9ZJjCKzUKybRZC9ywk
	3bOQdC9gZFnFqFGcWlSWWqRraK6XVJSZnlGSm5iZo2toYKGXm1pcnJiempOYVKyXnJ+7iREYW
	fUMDIw7GKfsdj/EKMnBpCTKO3PixnAhvqT8lMqMxOKM+KLSnNTiQ4waHBwCVw4emc0oxZKXn5
	eqJMF7+tXmcCHBotT01Iq0zBxg7MOUSnDwKInwXgNJ8xYXJOYWZ6ZDpE4xKkqJ874CSQiAJDJ
	K8+DaYOnmEqOslDAvIwMDgxBPQWpRbmYJqvwrRnEORiVh3hMgU3gy80rgpr8CWswEtFhfegPI
	4pJEhJRUA+OkU7vy5lcZK/zbbKpyQGtD+vnZ+ia1jEl9E2+VOcc3Pr924u3+276FLTPvq5vuq
	7u99vS6GZIrvujvzD5U97jfPqHyCU9igL5G2V7DixrHc29xls3a+1Pi3u7mF8zGcsZaeSuv//
	x1cOm8r8//RjyLeLSuyvJGfklwgbCCX2HL1aufF7GrypxTYinOSDTUYi4qTgQA7WWy+DIDAAA
	=
X-Env-Sender: Shrawan.Kumar@harman.com
X-Msg-Ref: server-6.tower-76.messagelabs.com!1471409260!68589961!1
X-Originating-IP: [75.102.19.198]
X-StarScan-Received: 
X-StarScan-Version: 8.84; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 19977 invoked from network); 17 Aug 2016 04:47:41 -0000
Received: from unknown.ord.scnet.net (HELO HICGWSEXHC03.ad.harman.com)
	(75.102.19.198)
	by server-6.tower-76.messagelabs.com with AES128-SHA encrypted SMTP;
	17 Aug 2016 04:47:41 -0000
Received: from HIBDWSMB03.ad.harman.com (10.99.236.93) by
	HICGWSEXHC03.ad.harman.com (10.10.23.93) with Microsoft SMTP Server
	(TLS) id 14.3.235.1; Tue, 16 Aug 2016 23:47:40 -0500
Received: from HIBDWSMB05.ad.harman.com (10.99.236.95) by
	HIBDWSMB03.ad.harman.com (10.99.236.93) with Microsoft SMTP Server
	(TLS) id 15.0.1130.7; Wed, 17 Aug 2016 10:17:15 +0530
Received: from HIBDWSMB05.ad.harman.com ([fe80::18d8:b6af:4383:8957]) by
	HIBDWSMB05.ad.harman.com ([fe80::18d8:b6af:4383:8957%16]) with mapi id
	15.00.1130.005; Wed, 17 Aug 2016 10:17:15 +0530
From: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
To: Joshua G Lock <joshua.g.lock@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Access Control List (ACL) permissions attributes not
	getting preserved in rootfs
Thread-Index: AQHR9KDlAw1Mgmic4E2ORVjDTkQ6JKBLdVBQgAA0kgCAAO9OMA==
Date: Wed, 17 Aug 2016 04:47:13 +0000
Message-ID: <294d0bec2b3444abbd143a3dd7b4ebf3@HIBDWSMB05.ad.harman.com>
References: <9eea2233da3d4fbd8722005093c1311d@HIBDWSMB02.ad.harman.com>
	<1471009925.19073.6.camel@linux.intel.com>
	<b80a230f7b11491b93bf0dfe9cc93a16@HIBDWSMB05.ad.harman.com>
	<1471377128.8414.7.camel@linux.intel.com>
In-Reply-To: <1471377128.8414.7.camel@linux.intel.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
MIME-Version: 1.0
Subject: Re: Access Control List (ACL) permissions attributes not getting preserved in rootfs
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
X-List-Received-Date: Wed, 17 Aug 2016 04:47:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gSm9zaHVhLA0KDQpXZSBkaWQgbm90IHdhbnQgYmlucyBsaWtlIHNldGZhY2wsc2V0Y2Fw
LGNoc21hY2sgIGV0Yy4uIHRvIGJlIGtlcHQgb24gdGFyZ2V0IC4NCg0KLSB3YW50ZWQgdG8gdW5k
ZXJzdGFuZCAiaG93IGRvZXMgdGhpcyBwb3N0c2NyaXB0IGdldHMgY29waWVkIHRvIHRhcmdldCBh
bmQgYXQgd2hpY2ggcGF0aCI/DQotICBJIHdpbGwgaGF2ZSBtdWx0aXBsZSByZWNpcGUgdGhhdCB3
aWxsIGhhdmUgdGhpcyBwb3N0c2NyaXB0IHRvIHNldCByZXNwZWN0aXZlIHBhY2thZ2VzIGJpbidz
ICJhY2wiIHBlcm1pc3Npb25zIGFuZCAic21hY2siIHJ1bGVzLiBJcyBpdCBwb3NzaWJsZSB0aGF0
IGFmdGVyIGV4ZWN1dGluZyBhbGwgdGhlIHBvc3Qgc2NyaXB0IGZyb20gICBhbGwgdGhlIHJlY2lw
ZXMgLCBJIHNoYWxsIGJlIGFibGUgdG8gdW5pbnN0YWxsIHRoZSBhY2wgYW5kIHNtYWNrIHJwbXMg
PyBTYW1lIGFwcGxpZXMgZm9yICJzZXRjYXAiIHJwbXMuDQoNCi0gRG8geW91IGhhdmUgbmVhciBw
bGFuIHRvIGZpeCB0aGVzZSA6KSA/DQoNCg0KDQpUaGFua3MgYW5kIFJlZ2FyZHMNClNocmF3YW4N
Cg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEpvc2h1YSBHIExvY2sgW21haWx0
bzpqb3NodWEuZy5sb2NrQGxpbnV4LmludGVsLmNvbV0gDQpTZW50OiBXZWRuZXNkYXksIEF1Z3Vz
dCAxNywgMjAxNiAxOjIyIEFNDQpUbzogS3VtYXIsIFNocmF3YW47IHlvY3RvQHlvY3RvcHJvamVj
dC5vcmcNClN1YmplY3Q6IFJlOiBbeW9jdG9dIEFjY2VzcyBDb250cm9sIExpc3QgKEFDTCkgcGVy
bWlzc2lvbnMgYXR0cmlidXRlcyBub3QgZ2V0dGluZyBwcmVzZXJ2ZWQgaW4gcm9vdGZzDQoNCk9u
IFR1ZSwgMjAxNi0wOC0xNiBhdCAxMTo1NSArMDAwMCwgS3VtYXIsIFNocmF3YW4gd3JvdGU6DQo+
IFRoYW5rcyBKb3NodWEsDQo+IA0KPiAicG9zdGluc3QiwqDCoHdvcmtzISHCoMKgSSBjb3VsZCBz
ZWUgdGhlIGF0dHJpYnV0ZXMgc2V0IHVuZGVyDQo+ICJwb2t5L2J1aWxkX3FlbXV4ODYvdG1wL3dv
cmsvcWVtdXg4Ni1wb2t5LWxpbnV4L2NvcmUtaW1hZ2UtDQo+IG1pbmltYWwvMS4wLXIwL3Jvb3Rm
cy8iLg0KPiANCj4gwqBIb3dldmVyLCBJIHN0aWxsIGNvdWxkIG5vdCBzZWUgdGhlIGF0dHJpYnV0
ZXMgYWZ0ZXIgYm9vdGluZyBxZW11LiBJdCANCj4gc2VlbXMgZHVyaW5nIHJvb3Rmcy5leHQ0ICht
a2ZzLmV4dDQgY29tbWFuZCApY3JlYXRpb24gd2hlbiANCj4gImNyZWF0ZV9pbWFnZV9leHQ0LnNo
IiBpcyBjYWxsZWQgLCBhZ2FpbiB0aGlzIGlzIGdldHRpbmfCoMKgwqBsb3N0Lg0KPiANCj4gQW55
IGlkZWEgb24gdGhpcyA/DQoNCg0KSSdtIG5vdCBzdXJlIHdoeSB0aGUgYXR0cmlidXRlIGlzbid0
IHByZXNlcnZlZCBpbiB0aGUgaW1hZ2UsIGl0IGNvdWxkIGJlIGEgYW5vdGhlciBtaXNzaW5nIHBp
ZWNlIGZvciBtZSB0byB0cmFjayBpbiB0aGUgcXVlc3QgdG8gYmV0dGVyIHN1cHBvcnQgeGF0dHIu
DQoNClRoZXJlIGlzIGEgd2F5IHRvIHdvcmsgYXJvdW5kIGl0LCB0aG91Z2gg4oCUIHlvdSBjYW4g
Zm9yY2UgdGhlIHBvc3RpbnN0IHRvIGJlIHJ1biBvbiB0aGUgdGFyZ2V0IGF0IGZpcnN0IGJvb3Qs
IGFzIGRvY3VtZW50ZWQgaW4gdGhhdCBzYW1lIG1hbnVhbCBzZWN0aW9uLiBGb3IgZXhhbXBsZSBJ
IGhhdmUgYSB0ZXN0IHJlY2lwZSB3aXRoOg0KDQo4PC0tLS1zbmlwLS0tLS0tLS0NCg0KcGtnX3Bv
c3RpbnN0XyR7UE59KCkgew0KwqAgwqAgY2hvd24gZm9vOmZvbyAkRCR7ZGF0YWRpcn0veGF0dHJ0
ZXN0L3hhdHRydGVzdA0KwqAgwqAgIyBGb3JjZSBzZXRmYWNsIHRvIHJ1biBvbiB0aGUgdGFyZ2V0
LCBub3QgYXQgaW1hZ2UgY3JlYXRpb24NCsKgwqDCoMKgaWYgWyB4IiREIiA9ICJ4IiBdOyB0aGVu
DQrCoMKgwqDCoMKgwqDCoMKgc2V0ZmFjbCAtbSB1OmJhcjpyLS0gJEQke2RhdGFkaXJ9L3hhdHRy
dGVzdC94YXR0cnRlc3QNCsKgwqDCoMKgZWxzZQ0KwqDCoMKgwqDCoMKgwqDCoGV4aXQgMQ0KwqDC
oMKgwqBmaQ0KfQ0KDQpVU0VSQUREX1BBQ0tBR0VTID0gIiR7UE59Ig0KVVNFUkFERF9QQVJBTV8k
e1BOfSA9ICItbSBmb287LW0gYmFyIg0KUkRFUEVORFNfJHtQTn0gKz0gImFjbCINCg0KODwtLS0t
c25pcC0tLS0tLS0tDQoNCndoaWNoIHJlc3VsdHMgaW46DQoNCiQgZ2V0ZmFjbCAvdXNyL3NoYXJl
L3hhdHRydGVzdC94YXR0cnRlc3QNCmdldGZhY2w6IFJlbW92aW5nIGxlYWRpbmcgJy8nIGZyb20g
YWJzb2x1dGUgcGF0aCBuYW1lcyAjIGZpbGUgL3Vzci9zaGFyZS94YXR0cnRlc3QveGF0dHJ0ZXN0
ICMgb3duZXI6IGZvbyAjIGdyb3VwOiBmb28NCnVzZXI6OnJ3LQ0KdXNlcjpiYXI6ci0tDQpncm91
cDo6ci0tDQptYXNrOjpyLS0NCm90aGVyOjpyLS0NCg0KVGhlIGRvd25zaWRlIGhlcmUgaXMgdGhh
dCB5b3VyIGltYWdlIGhhcyB0byBpbmNsdWRlIHBvc3RpbnN0IHN1cHBvcnQgYW5kIHRoZSBhY2wg
cGFja2FnZSAocGVyIHRoZSBSREVQRU5EU18ke1BOfSBsaW5lIGluIHRoZSBzbmlwcGV0IGFib3Zl
KS4NCg0KUmVnYXJkcywNCg0KSm9zaHVhDQoNCj4gDQo+IFJlZ2FyZHMNCj4gU2hyYXdhbg0KPiAN
Cj4gDQo+IA0KPiANCj4gDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEpv
c2h1YSBHIExvY2sgW21haWx0bzpqb3NodWEuZy5sb2NrQGxpbnV4LmludGVsLmNvbV0NCj4gU2Vu
dDogRnJpZGF5LCBBdWd1c3QgMTIsIDIwMTYgNzoyMiBQTQ0KPiBUbzogS3VtYXIsIFNocmF3YW47
IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFt5b2N0b10gQWNjZXNzIENv
bnRyb2wgTGlzdCAoQUNMKSBwZXJtaXNzaW9ucyBhdHRyaWJ1dGVzIA0KPiBub3QgZ2V0dGluZyBw
cmVzZXJ2ZWQgaW4gcm9vdGZzDQo+IA0KPiBPbiBGcmksIDIwMTYtMDgtMTIgYXQgMTI6MzMgKzAw
MDAsIEt1bWFyLCBTaHJhd2FuIHdyb3RlOg0KPiA+IA0KPiA+IEhlbGxvIEFsbCwNCj4gPiDCoA0K
PiA+IEkgYW0gwqB1c2luZyDCoHBva3kg4oCcIGpldGhyb+KAnSDCoCwgYW5kIMKgdGhvdWdoIMKg
b25lIG9mIG15IHJlY2lwZSwgSSBoYXZlIA0KPiA+IGNyZWF0ZWQgdXNlcjEgJiB1c2VyMiBhbmQg
dGhlbiB0cnlpbmcgdG8gc2V0IEFDTCBydWxlcyDCoG9uIA0KPiA+IOKAnGhlbGxvd29ybGTigJ0g
YmluIGFzIGJlbG93IDoNCj4gPiDCoA0KPiA+IMKgDQo+ID4gZG9faW5zdGFsbCgpIHsNCj4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIMKgwqDCoMKgIGluc3RhbGwgLWQgJHtEfSR7Ymlu
ZGlyfQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgwqDCoMKgwqAgaW5zdGFsbCAt
bSAwNzAwIGhlbGxvd29ybGQgJHtEfSR7YmluZGlyfQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgwqDCoMKgwqAgaW5zdGFsbCAtZCAke0R9L2xpYi9zeXN0ZW1kL3N5c3RlbQ0KPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgwqDCoMKgwqAgaW5zdGFsbCAtbSAwNzAwIGhl
bGxvLnNlcnZpY2UgDQo+ID4gJHtEfS9saWIvc3lzdGVtZC9zeXN0ZW0vDQo+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCDCoMKgwqDCoCBjaG93bsKgwqDCoCB1c2VyMTpncm91cDEgJHtE
fSR7YmluZGlyfS9oZWxsb3dvcmxkDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCDCoMKgwqDC
oMKgwqDCoHNldGZhY2wgLW0gdTp1c2VyMjpyLS0gJHtEfSR7YmluZGlyfS9oZWxsb3dvcmxkIH0N
Cj4gPiDCoA0KPiA+IMKgDQo+ID4gw6ggV2hlbiBJIHNlZcKgIMKgb24gdGhlIGRldnNoZWxsICgg
Yml0YmFrZSBIZWxsb1dvcmxkIOKAk2MgZGV2c2hlbGwpIMKgOg0KPiA+IHBva3kvYnVpbGRfcWVt
dXg4Ni90bXAvd29yay9xZW11eDg2LXBva3ktbGludXgvY29yZS1pbWFnZS0NCj4gPiBtaW5pbWFs
LzEuMC1yMC9yb290ZnMvdXNyL2JpbiMgZ2V0ZmFjbCBoZWxsb3dvcmxkwqDCoMKgICwgSSBjb3Vs
ZCBzZWUgDQo+ID4gdGhhdCBBQ0wgcGVybWlzc2lvbnMgYXJlIHNldCBjb3JyZWN0bHkgYXMgYmVs
b3cgOg0KPiA+IC3CoMKgwqDCoMKgwqDCoCAjIGZpbGU6IGhlbGxvd29ybGQNCj4gPiAtwqDCoMKg
wqDCoMKgwqAgIyBvd25lcjogdXNlcjENCj4gPiAtwqDCoMKgwqDCoMKgwqAgIyBncm91cDogZ3Jv
dXAxDQo+ID4gLcKgwqDCoMKgwqDCoMKgIHVzZXI6OnJ3eA0KPiA+IC3CoMKgwqDCoMKgwqDCoCB1
c2VyOnVzZXIyOnItLQ0KPiA+IC3CoMKgwqDCoMKgwqDCoCBncm91cDo6LS0tDQo+ID4gLcKgwqDC
oMKgwqDCoMKgIG1hc2s6OnItLQ0KPiA+IC3CoMKgwqDCoMKgwqDCoCBvdGhlcjo6LS0tDQo+ID4g
wqANCj4gPiBIb3dldmVyLCBJdCBkb2VzIG5vdCBzZWVtcyB0byBiZSBnZXR0aW5nIHByZXNlcnZl
ZCBpbiByb290ZnMuIDoNCj4gPiAvcG9reS9idWlsZF9xZW11eDg2L3RtcC93b3JrL3FlbXV4ODYt
cG9reS1saW51eC9jb3JlLWltYWdlLQ0KPiA+IG1pbmltYWwvMS4wLXIwL3Jvb3Rmcy91c3IvYmlu
IyBnZXRmYWNsIGhlbGxvd29ybGQgIyBmaWxlOg0KPiA+IGhlbGxvd29ybGQgIw0KPiA+IG93bmVy
OiB1c2VyMSAjIGdyb3VwOiBncm91cDEgdXNlcjo6cnd4DQo+ID4gZ3JvdXA6Oi0tLQ0KPiA+IG90
aGVyOjotLS0NCj4gPiDCoA0KPiA+IHF1aWNrIGhlbHAgwqBoZXJlIHdvdWxkIGJlIGhpZ2hseSBh
cHByZWNpYXRlZA0KPiANCj4gVGhpcyBpcyBkdWUgdG8gdGhlIGZhY3QgdGhhdCB3ZSBkb24ndCBj
dXJyZW50bHkgaGF2ZSBhIG1lY2hhbmlzbSB0byANCj4gcHJlc2VydmUgeGF0dHIgdGhyb3VnaCB0
byBpbWFnZSBjb25zdHJ1Y3Rpb25bMV0uDQo+IA0KPiBUaGUgbGFyZ2VzdCBiYXJyaWVyIGZvciBk
b2lnIHNvIGlzIHRoYXQgdGhlIHBhY2thZ2UgbWFuYWdlcnMgDQo+IChjZXJ0YWlubHkgZHBrZyBh
bmQgcnBtKSBkb24ndCBoYXZlIGFueSBzdXBwb3J0IGZvciB4YXR0cnMgaW4gcGFja2FnZXMgDQo+
IChhbiBpbWFnZSBpcyBwb3B1bGF0ZWQgdmlhIHRoZSBwYWNrYWdlIG1hbmFnZXIpLg0KPiANCj4g
VG8gdGhlIGJlc3Qgb2YgbXkga25vd2xlZGdlIHRoZSBvbmx5IG9wdGlvbiBmb3IgYWRkaW5nIHNv
bWUgeGF0dHIvQUNMIA0KPiBpcyB0byB1c2UgYSBwb3N0aW5zdFsyXSB0byBzZXQgdGhlIGF0dHJp
YnV0ZXMgYWZ0ZXIgdGhlIHBhY2thZ2UgaGFzIA0KPiBiZWVuIGluc3RhbGxlZC4NCj4gDQo+IFJl
Z2FyZHMsDQo+IA0KPiBKb3NodWENCj4gDQo+IDEuwqBodHRwczovL2J1Z3ppbGxhLnlvY3RvcHJv
amVjdC5vcmcvc2hvd19idWcuY2dpP2lkPTk4NTgNCj4gMi7CoGh0dHA6Ly93d3cueW9jdG9wcm9q
ZWN0Lm9yZy9kb2NzLzIuMS9kZXYtbWFudWFsL2Rldi1tYW51YWwuaHRtbCNuZQ0KPiB3LQ0KPiBy
ZWNpcGUtcG9zdC1pbnN0YWxsYXRpb24tc2NyaXB0cw0KPiANCg==

