Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C33DE00CC8; Thu,  7 Sep 2017 10:09:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.150.235 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.150.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3EDEE00CAE
	for <yocto@yoctoproject.org>; Thu,  7 Sep 2017 10:09:34 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx29.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Thu, 07 Sep 2017 17:09:26 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Thu, 7 Sep 2017 10:09:22 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Thu, 7 Sep 2017 10:09:22 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Khem Raj <raj.khem@gmail.com>, Mark Hatle <mark.hatle@windriver.com>
Thread-Topic: [yocto] Working behind a Palo Alto firewall/proxy
Thread-Index: AdMnV80YgGzHXD1LRPmTpkR9+dAmmwAXESyAABB8aWkADtanAAAAt+EAAA4dthA=
Date: Thu, 7 Sep 2017 17:09:22 +0000
Message-ID: <4cf85fd479384561a7961f1fb7d2122c@sakuraus.com>
References: <afce79fad80649ff88295ca3d41499ef@sakuraus.com>
	<CAJ86T=Uce45W_Thtuqv_CORNx7X6c1TD-Bg8O_DRyu65NLS6wQ@mail.gmail.com>
	<70ce682e4c584761b8bb5fad63f7d737@sakuraus.com>
	<f8d14557-176c-f463-34cc-d93ef9cdb929@windriver.com>
	<CAMKF1sqgjD6e7YGjpAvON8YxrxbLHFdeQxKpPnztEEoTiEK1-Q@mail.gmail.com>
In-Reply-To: <CAMKF1sqgjD6e7YGjpAvON8YxrxbLHFdeQxKpPnztEEoTiEK1-Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.3]
MIME-Version: 1.0
X-BESS-ID: 1504804156-637139-3634-280278-2
X-BESS-VER: 2017.10-r1707252126
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.184778
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Working behind a Palo Alto firewall/proxy
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
X-List-Received-Date: Thu, 07 Sep 2017 17:09:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhdCBkaWQgdGhlIHRyaWNrLA0KVGhhbmtzLA0KR3JlZw0KDQo+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQo+IEZyb206IEtoZW0gUmFqIFttYWlsdG86cmFqLmtoZW1AZ21haWwuY29tXQ0K
PiBTZW50OiBUaHVyc2RheSwgU2VwdGVtYmVyIDA3LCAyMDE3IDk6NTIgQU0NCj4gVG86IE1hcmsg
SGF0bGUgPG1hcmsuaGF0bGVAd2luZHJpdmVyLmNvbT4NCj4gQ2M6IEdyZWcgV2lsc29uLUxpbmRi
ZXJnIDxHV2lsc29uQHNha3VyYXVzLmNvbT47IEFuZHJlIE1jQ3VyZHkNCj4gPGFybWNjdXJkeUBn
bWFpbC5jb20+OyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9d
IFdvcmtpbmcgYmVoaW5kIGEgUGFsbyBBbHRvIGZpcmV3YWxsL3Byb3h5DQo+IA0KPiB5b3UgY2Fu
IHRyeSBhZGRpbmcgZm9sbG93aW5nIHRvIH4vLmdpdGNvbmZpZw0KPiANCj4gW2h0dHBdDQo+ICAg
ICAgICAgc3NsdmVyaWZ5ID0gZmFsc2UNCj4gDQo+IE9uIFRodSwgU2VwIDcsIDIwMTcgYXQgOToz
MSBBTSwgTWFyayBIYXRsZSA8bWFyay5oYXRsZUB3aW5kcml2ZXIuY29tPg0KPiB3cm90ZToNCj4g
PiBJJ3ZlIGhhZCBhIGN1c3RvbWVyIHdpdGggYSBzaW1pbGFyIHByb2JsZW0uICBUaGUgd2F5IHRo
ZXkgcmVzb2x2ZWQgaXQNCj4gPiB3YXMgdG8gZG93bmxvYWQgdGhlIGNlcnRpZmljYXRpb24gZnJv
bSB0aGVpciBwcm94eSBhbmQgYWRkIGl0IHRvIHRoZWlyDQo+ID4gc3lzdGVtIGFzIGEga25vd24g
Y2VydGlmaWNhdGUuDQo+ID4NCj4gPiBTb3JyeSBJIGRvbid0IGhhdmUgYW55IG1vcmUgZGV0YWls
cyB0aGVuIHRoYXQsIGJ1dCBtYXliZSB0aGF0IGNhbg0KPiA+IHNwYXJrIHNvbWVvbmUgd2hvIGtu
b3dzIHRoZSBhY3R1YWwgc3RlcHMgdG8gYmUgYWJsZSB0byBjb21tZW50Lg0KPiA+DQo+ID4gLS1N
YXJrDQo+ID4NCj4gPiBPbiA5LzcvMTcgMTE6MjggQU0sIEdyZWcgV2lsc29uLUxpbmRiZXJnIHdy
b3RlOg0KPiA+PiBIaSBBbmRyZSwNCj4gPj4NCj4gPj4NCj4gPj4gSGVyZSBpcyB0aGUgY29tcGxl
dGUgZXJyb3Igb3V0cHV0Og0KPiA+Pg0KPiA+PiBFUlJPUjogcXRkZXZpY2V1dGlsaXRpZXMtNS45
LjErZ2l0QVVUT0lOQys0OGZiNzA0ZTY0LXIwIGRvX2ZldGNoOg0KPiA+PiBGZXRjaGVyDQo+ID4+
IGZhaWx1cmU6IEZldGNoIGNvbW1hbmQgZXhwb3J0DQo+ID4+IERCVVNfU0VTU0lPTl9CVVNfQURE
UkVTUz0idW5peDphYnN0cmFjdD0vdG1wL2RidXMtDQo+IDlSZVFXWFlFazEiOyBleHBvcnQNCj4g
Pj4gU1NIX0FVVEhfU09DSz0iL3J1bi91c2VyLzEwMDAva2V5cmluZy00UEdBQkIvc3NoIjsgZXhw
b3J0DQo+ID4+IFBBVEg9Ii9ob21lL2d3aWxzb24vUXQtNS45L1lvY3RvLWJ1aWxkLVJQaTMvYnVp
bGQtDQo+IHJhc3BiZXJyeXBpMy90bXAvc3kNCj4gPj4gc3Jvb3RzL3g4Nl82NC1saW51eC91c3Iv
YmluOi9ob21lL2d3aWxzb24vUXQtNS45L1lvY3RvLWJ1aWxkLVJQaTMvYnVpDQo+ID4+IGxkLXJh
c3BiZXJyeXBpMy90bXAvc3lzcm9vdHMtdW5pbmF0aXZlL3g4Nl82NC1saW51eC91c3IvYmluOi9o
b21lL2d3aQ0KPiA+PiBsc29uL1F0LTUuOS9Zb2N0by1idWlsZC1SUGkzL3NvdXJjZXMvcG9reS9z
Y3JpcHRzOi9ob21lL2d3aWxzb24vUXQtNS4NCj4gPj4gOS9Zb2N0by1idWlsZC1SUGkzL2J1aWxk
LXJhc3BiZXJyeXBpMy90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9iDQo+ID4+IGluL2Fy
bS1wb2t5LWxpbnV4LWdudWVhYmk6L2hvbWUvZ3dpbHNvbi9RdC01LjkvWW9jdG8tYnVpbGQtUlBp
My9idWlsZA0KPiA+PiAtcmFzcGJlcnJ5cGkzL3RtcC9zeXNyb290cy9yYXNwYmVycnlwaTMvdXNy
L2Jpbi9jcm9zc3NjcmlwdHM6L2hvbWUvZ3cNCj4gPj4gaWxzb24vUXQtNS45L1lvY3RvLWJ1aWxk
LVJQaTMvYnVpbGQtcmFzcGJlcnJ5cGkzL3RtcC9zeXNyb290cy94ODZfNjQtDQo+ID4+IGxpbnV4
L3Vzci9zYmluOi9ob21lL2d3aWxzb24vUXQtNS45L1lvY3RvLWJ1aWxkLVJQaTMvYnVpbGQtcmFz
cGJlcnJ5cA0KPiA+PiBpMy90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9iaW46L2hvbWUv
Z3dpbHNvbi9RdC01LjkvWW9jdG8tYnVpbGQNCj4gPj4gLVJQaTMvYnVpbGQtcmFzcGJlcnJ5cGkz
L3RtcC9zeXNyb290cy94ODZfNjQtbGludXgvc2JpbjovaG9tZS9nd2lsc29uDQo+ID4+IC9RdC01
LjkvWW9jdG8tYnVpbGQtUlBpMy9idWlsZC1yYXNwYmVycnlwaTMvdG1wL3N5c3Jvb3RzL3g4Nl82
NC1saW51eA0KPiA+PiAvYmluOi9ob21lL2d3aWxzb24vUXQtNS45L1lvY3RvLWJ1aWxkLQ0KPiBS
UGkzL3NvdXJjZXMvcG9reS9zY3JpcHRzOi9ob21lDQo+ID4+IC9nd2lsc29uL1F0LTUuOS9Zb2N0
by1idWlsZC1SUGkzL3NvdXJjZXMvcG9reS9iaXRiYWtlL2JpbjovaG9tZS9nd2lscw0KPiA+PiBv
bi9URUU6L2hvbWUvZ3dpbHNvbi9iaW46L3Vzci9sb2NhbC9zYmluOi91c3IvbG9jYWwvYmluOi91
c3Ivc2JpbjovdXMNCj4gPj4gci9iaW46L3NiaW46L2JpbjovdXNyL2dhbWVzOi91c3IvbG9jYWwv
Z2FtZXM6L29wdC9taWNyb2NoaXAveGMzMi92MS4zDQo+ID4+IDQvYmluOi9ob21lL2d3aWxzb24v
UlBpMy90b29scy9hcm0tYmNtMjcwOC9nY2MtbGluYXJvLWFybS1saW51eC0NCj4gZ251ZWENCj4g
Pj4gYmloZi1yYXNwYmlhbi14NjQvYmluIjsgZXhwb3J0IEhPTUU9Ii9ob21lL2d3aWxzb24iOyBM
QU5HPUMgZ2l0IC1jDQo+ID4+IGNvcmUuZnN5bmNvYmplY3RmaWxlcz0wIGNsb25lIC0tYmFyZSAt
LW1pcnJvcg0KPiA+PiBodHRwOi8vY29kZXJldmlldy5xdC1wcm9qZWN0Lm9yZy9xdC9xdGRldmlj
ZXV0aWxpdGllcw0KPiA+PiAvaG9tZS9nd2lsc29uL1F0LTUuOS9Zb2N0by1idWlsZC1SUGkzL2J1
aWxkLXJhc3BiZXJyeXBpMy8uLi9kb3dubG9hZHMNCj4gPj4gL2dpdDIvY29kZXJldmlldy5xdC1w
cm9qZWN0Lm9yZy5xdC5xdGRldmljZXV0aWxpdGllcw0KPiA+PiAtLXByb2dyZXNzIGZhaWxlZCB3
aXRoIGV4aXQgY29kZSAxMjgsIG91dHB1dDoNCj4gPj4gQ2xvbmluZyBpbnRvIGJhcmUgcmVwb3Np
dG9yeQ0KPiA+PiAnL2hvbWUvZ3dpbHNvbi9RdC01LjkvWW9jdG8tYnVpbGQtUlBpMy9idWlsZC0N
Cj4gcmFzcGJlcnJ5cGkzLy4uL2Rvd25sb2Fkcy9naXQyL2NvZGVyZXZpZXcucXQtDQo+IHByb2pl
Y3Qub3JnLnF0LnF0ZGV2aWNldXRpbGl0aWVzJy4uLg0KPiA+PiBmYXRhbDogdW5hYmxlIHRvIGFj
Y2Vzcw0KPiA+PiAnaHR0cHM6Ly9jb2RlcmV2aWV3LnF0LXByb2plY3Qub3JnL3F0L3F0ZGV2aWNl
dXRpbGl0aWVzLyc6IHNlcnZlcg0KPiA+PiBjZXJ0aWZpY2F0ZSB2ZXJpZmljYXRpb24gZmFpbGVk
LiBDQWZpbGU6DQo+ID4+IC91c3Ivc2hhcmUvY2EtY2VydGlmaWNhdGVzL2NlcnRfRGVjcnlwdGlv
bi1DZXJ0aWZpY2F0ZS5wZW0gQ1JMZmlsZToNCj4gPj4gbm9uZQ0KPiA+Pg0KPiA+PiBFUlJPUjog
cXRkZXZpY2V1dGlsaXRpZXMtNS45LjErZ2l0QVVUT0lOQys0OGZiNzA0ZTY0LXIwIGRvX2ZldGNo
Og0KPiA+PiBGZXRjaGVyIGZhaWx1cmUgZm9yIFVSTDoNCj4gPj4gJ2dpdDovL2NvZGVyZXZpZXcu
cXQtDQo+IHByb2plY3Qub3JnL3F0L3F0ZGV2aWNldXRpbGl0aWVzO25vYnJhbmNoPTE7cHJvdG9j
b2w9aHR0cCcuDQo+ID4+IFVuYWJsZSB0byBmZXRjaCBVUkwgZnJvbSBhbnkgc291cmNlLg0KPiA+
PiBFUlJPUjogcXRkZXZpY2V1dGlsaXRpZXMtNS45LjErZ2l0QVVUT0lOQys0OGZiNzA0ZTY0LXIw
IGRvX2ZldGNoOg0KPiA+PiBGdW5jdGlvbg0KPiA+PiBmYWlsZWQ6IGJhc2VfZG9fZmV0Y2gNCj4g
Pj4gRVJST1I6IExvZ2ZpbGUgb2YgZmFpbHVyZSBzdG9yZWQgaW46DQo+ID4+IC9ob21lL2d3aWxz
b24vUXQtNS45L1lvY3RvLWJ1aWxkLVJQaTMvYnVpbGQtDQo+IHJhc3BiZXJyeXBpMy90bXAvd29y
ay9jb3INCj4gPj4gdGV4YTdoZi1uZW9uLXZmcHY0LXBva3ktbGludXgtZ251ZWFiaS9xdGRldmlj
ZXV0aWxpdGllcy81LjkuMStnaXRBVVRPDQo+ID4+IElOQys0OGZiNzA0ZTY0LXIwL3RlbXAvbG9n
LmRvX2ZldGNoLjgxMjgNCj4gPj4gRVJST1I6IFRhc2sNCj4gPj4gKC9ob21lL2d3aWxzb24vUXQt
NS45L1lvY3RvLWJ1aWxkLVJQaTMvc291cmNlcy9tZXRhLWJvb3QycXQvcmVjaXBlcy0NCj4gcQ0K
PiA+PiB0L3F0NS9xdGRldmljZXV0aWxpdGllcy5iYjpkb19mZXRjaCkNCj4gPj4gZmFpbGVkIHdp
dGggZXhpdCBjb2RlICcxJw0KPiA+Pg0KPiA+PiBTbyBpdCBsb29rcyBsaWtlOg0KPiA+Pg0KPiA+
PiBxdGRldmljZXV0aWxpdGllcy01LjkuMStnaXRBVVRPSU5DKzQ4ZmI3MDRlNjQtcjAgZG9fZmV0
Y2gNCj4gPj4NCj4gPj4gaXMgd2hhdCdzIHJ1bm5pbmcuDQo+ID4+DQo+ID4+DQo+ID4+DQo+ID4+
IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQ0KPiA+PiAtLS0tLS0tLS0tLQ0KPiA+PiAqRnJvbToqIEFuZHJlIE1jQ3Vy
ZHkgPGFybWNjdXJkeUBnbWFpbC5jb20+DQo+ID4+ICpTZW50OiogV2VkbmVzZGF5LCBTZXB0ZW1i
ZXIgNiwgMjAxNyA2OjM0OjA3IFBNDQo+ID4+ICpUbzoqIEdyZWcgV2lsc29uLUxpbmRiZXJnDQo+
ID4+ICpDYzoqIHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gPj4gKlN1YmplY3Q6KiBSZTogW3lv
Y3RvXSBXb3JraW5nIGJlaGluZCBhIFBhbG8gQWx0byBmaXJld2FsbC9wcm94eQ0KPiA+Pg0KPiA+
PiBPbiBXZWQsIFNlcCA2LCAyMDE3IGF0IDI6NDIgUE0sIEdyZWcgV2lsc29uLUxpbmRiZXJnDQo+
ID4+IDxHV2lsc29uQHNha3VyYXVzLmNvbT4gd3JvdGU6DQo+ID4+PiBIaSBMaXN0LA0KPiA+Pj4N
Cj4gPj4+IERvZXMgYW55Ym9keSBoYXZlIGFueSBleHBlcmllbmNlIHRyeWluZyB0byBydW4gWW9j
dG8gYmVoaW5kIGEgUGFsbw0KPiA+Pj4gQWx0byBmaXJld2FsbC4gVGhlIFBhbG8gQWx0byBmaXJl
d2FsbCBiYXNpY2FsbHkgd29ya3MgYXMgYSBNYW4gaW4NCj4gPj4+IHRoZSBNaWRkbGUgc3lzdGVt
LCBpdCBoYW5kcyBvdXQgaXRzIG93biBjZXJ0aWZpY2F0ZSB0byBib3hlcyBiZWhpbmQNCj4gPj4+
IGl0IGFuZCB0aGVuIGRlY3J5cHRzIGFuZCByZS1lbmNyeXB0cyB0cmFmZmljIGdvaW5nIHRocm91
Z2ggaXQuIFRoZQ0KPiA+Pj4gUGFsbyBBbHRvIGJveCBpcyBzdXBwb3NlZCB0byBhY3QgYXMgYSB0
cmFuc3BhcmVudCBQcm94eS4NCj4gPj4+DQo+ID4+PiBJJ20gZ2V0dGluZyBhbiBlcnJvciB0aGF0
IHRoZSAnc2VydmVyIGNlcnRpZmljYXRlIHZlcmlmaWNhdGlvbg0KPiA+Pj4gZmFpbGVkJyBhYm91
dCBhbiBob3VyIGludG8gYSB5b2N0byBidWlsZC4gVGhlIGNlcnRpZmljYXRlIHRoYXQgdGhlDQo+
ID4+PiBQYWxvIEFsdG8gYm94IGlzIHNlbmRpbmcgdG8gbXkgc3lzdGVtIGlzIHNlbGYtc2lnbmVk
IHNvIHdpbGwgZmFpbCBpZg0KPiA+Pj4gY2hlY2tlZCBmb3IgYSB2YWxpZCByb290IENBLCBhbmQg
YWxzbyBpcyBub3QgZnJvbSB3aGF0ZXZlciBzaXRlIGlzIGJlaW5nDQo+IGRvd25sb2FkZWQgZnJv
bS4NCj4gPj4NCj4gPj4gV2hpY2ggc2l0ZSBpcyBiZWluZyBkb3dubG9hZGVkIGZyb20gYW5kIGF0
IHdoaWNoIHBvaW50IGluIHRoZSBidWlsZA0KPiA+PiAoaWUgd2hpY2ggcmVjaXBlIGFuZCB0YXNr
KSA/DQo+ID4+DQo+ID4+DQo+ID4NCj4gPiAtLQ0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4geW9jdG8gbWFpbGluZyBsaXN0DQo+ID4geW9j
dG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiA+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9s
aXN0aW5mby95b2N0bw0K

