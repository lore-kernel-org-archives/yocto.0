Return-Path: <jan.lindaker@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77E99E00ACE; Fri, 26 Aug 2016 02:29:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bes.se.axis.com (bes.se.axis.com [195.60.68.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B017DE008F3
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2016 02:29:16 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bes.se.axis.com (Postfix) with ESMTP id 3FAFA2E486
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2016 11:29:14 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bes.se.axis.com
Received: from bes.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bes.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id HrK4U1KpFqZH for <yocto@yoctoproject.org>;
	Fri, 26 Aug 2016 11:29:12 +0200 (CEST)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by bes.se.axis.com (Postfix) with ESMTP id C45602E47B
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2016 11:29:12 +0200 (CEST)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id B43021CF3
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2016 11:29:12 +0200 (CEST)
Received: from thoth.se.axis.com (thoth.se.axis.com [10.0.2.173])
	by boulder.se.axis.com (Postfix) with ESMTP id A95F71C0C
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2016 11:29:12 +0200 (CEST)
Received: from XBOX04.axis.com (xbox04.axis.com [10.0.5.18])
	by thoth.se.axis.com (Postfix) with ESMTP id A7954394
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2016 11:29:12 +0200 (CEST)
Received: from XBOX01.axis.com (10.0.5.15) by XBOX04.axis.com (10.0.5.18) with
	Microsoft SMTP Server (TLS) id 15.0.1156.6;
	Fri, 26 Aug 2016 11:29:12 +0200
Received: from XBOX01.axis.com ([fe80::29b8:9a78:62b3:f680]) by
	XBOX01.axis.com ([fe80::29b8:9a78:62b3:f680%22]) with mapi id
	15.00.1156.000; Fri, 26 Aug 2016 11:29:12 +0200
From: =?utf-8?B?SmFuIExpbmTDpWtlcg==?= <jan.lindaker@axis.com>
To: =?utf-8?B?SmFuIExpbmTDpWtlcg==?= <janl@axis.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Re(vival?): [yocto] Missing files in rootfs when adding links
	/bin ->/usr/bin and /lib -> /usr/lib in recipe base-files
Thread-Index: AQHR/3xOpEHVU095+Uusc3f4f40FBQ==
Date: Fri, 26 Aug 2016 09:29:12 +0000
Message-ID: <1472203752064.16874@axis.com>
References: <1469607951109.50216@axis.com>
In-Reply-To: <1469607951109.50216@axis.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Subject: Re(vival?): Missing files in rootfs when adding links /bin ->/usr/bin and /lib -> /usr/lib in recipe base-files
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
X-List-Received-Date: Fri, 26 Aug 2016 09:29:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBXaGVuIGNoYW5naW5nIHBhY2thZ2UgYmFzZS1maWxlcywgc28gdGhhdCB0aGUgL2JpbiBkaXJl
Y3RvcnkgaXMgc29mdCBsaW5rZWQgdG8gL3Vzci9iaW4gYW5kIHRoZSAvbGliIGRpcmVjdG9yeSBp
cyBzb2Z0IGxpbmtlZCB0byAvdXNyL2xpYiwgdGhlID4gcmVzdWx0aW5nIGltYWdlL3Jvb3RmcyBk
aXJlY3Rvcnkgc3RydWN0dXJlIGlzIG1pc3NpbmcgYSBsb3Qgb2YgZmlsZXMsIG1vc3Qgb2Ygd2hp
Y2ggYXJlIHVucmVsYXRlZCB0byBhbnkgb2YgdGhlICBkaXJlY3RvcmllcyBtZW50aW9uZWQKPiBh
Ym92ZS4gRS5nLiBmaWxlOi8vZXRjL2ZzdGFiIGlzIG1pc3NpbmcuIFdoZW4gaW5zcGVjdGluZyB0
aGUgYmFzZS1maWxlcyAucnBtIGl0IGNvbnRhaW5zIHRoZSBmaWxlIHN0cnVjdHVyZeKAiyB0aGF0
IGlzIGV4cGVjdGVkLiBGb3Igc29tZQo+IHJlYXNvbiB0aGUgcGFja2FnZSBpbnN0YWxsIG9yZGVy
IGNoYW5nZXMgd2hlbiBidWlsZGluZyByb290ZnMgd2hlbiB0aGUgbGlua3MgZnJvbSAvbGliIGFu
ZCAvdXNyIGFyZSBwcmVzZW50Lgo+Cj4gSSBrbm93IHRvbyBsaXR0bGUgYWJvdXQgWW9jdG8va2Vy
bmVsIGltYWdlIGJ1aWxkaW5nIHRvIGJlIGFibGUgdG8gZGVidWcgdGhpcyBlZmZlY3RpdmVseSwg
c2luY2UgdGhlcmUgaXMgbm8gZXJyb3JzIHJlcG9ydGVkIGFuZCB0aGUgYnVpbGQKPiBwcm9jZXNz
IGlzIHF1aXRlIGNvbXBsZXguIEFueSBzb2x1dGlvbnMgb3IgaGVscCB3aXRoIHdoZXJlIHRvIGNv
bnRpbnVlIG15IGludmVzdGlnYXRpb25zIHdvdWxkIGJlIGhpZ2hseSBhcHByZWNpYXRlZC4KPgo+
IEFjdGlvbnMgdG8gcmVwcm9kdWNlOgo+IEkgZmlyc3QgZGV0ZWN0ZWQgdGhlIHByb2JsZW0gaW4g
YW4gYWRhcHRhdGlvbiBvZiBZb2N0bywgYnV0IEkgaGF2ZSByZXByb2R1Y2VkIGl0IGluIHRoZSBw
cm9qZWN0IGRlc2NyaWJlZCBpbiB0aGUgcXVpY2sgc3RhcnQ6Cj4gaHR0cDovL3d3dy55b2N0b3By
b2plY3Qub3JnL2RvY3MvMS44L3lvY3RvLXByb2plY3QtcXMveW9jdG8tcHJvamVjdC1xcy5odG1s
Cj4KPiAxLiBTZXQgdXAgYSBuZXcgWW9jdG8gcHJvamVjdCBhcyBkZXNjcmliZWQgaW4gdGhlIGxp
bmsgYWJvdmUKPiAyLiBTZXQgdXAgYSBuZXcgbGF5ZXIgd2l0aCBhIC5iYmFwcGVuZGZpbGUgYXMg
Zm9sbG93cwo+IAo+IC0tIC4uL3JlY2VwaWVzLWxpbmtkaXIvYmFzZS1maWxlcy9iYXNlLWZpbGVz
XyUuYmJhcHBlbmQgLS0tLS0tLS0tLS0tLS0tLS0tLQo+IGRpcnM3NTVfcmVtb3ZlID0gIi9iaW4g
L2xpYiIKPiAKPiBkb19pbnN0YWxsX2V4dHJhX2xpbmtzKCkgewo+ICAgIGxuIC1zcnZmICR7RH0v
dXNyL2JpbiAke0R9L2Jpbgo+ICAgIGxuIC1zcnZmICR7RH0vdXNyL2xpYiAke0R9L2xpYgo+fQo+
Cj4gYWRkdGFzayBpbnN0YWxsX2V4dHJhX2xpbmtzIGFmdGVyIGRvX2luc3RhbGwgYmVmb3JlIGRv
X3BvcHVsYXRlX3N5c3Jvb3QgZG9fcGFja2FnCj4KPiAtLSAuLi9tZXRhLWxpbmtkaXIvY29uZi9s
YXllci5jb25mIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAjIFdl
IGhhdmUgYSBjb25mIGFuZCBjbGFzc2VzIGRpcmVjdG9yeSwgYWRkIHRvIEJCUEFUSAo+IEJCUEFU
SCA9LiAiJHtMQVlFUkRJUn06IsKgCj4gIyBXZSBoYXZlIGEgcGFja2FnZXMgZGlyZWN0b3J5LCBh
ZGQgdG8gQkJGSUxFUwo+IEJCRklMRVMgKz0gIiR7TEFZRVJESVJ9L3JlY2lwZXMtKi8qLyouYmIg
XAo+ICAgICAgICAgICAgJHtMQVlFUkRJUn0vcmVjaXBlcy0qLyovKi5iYmFwcGVuZCIKPgo+IEJC
RklMRV9DT0xMRUNUSU9OUyArPSAibGlua2RpciLCoAo+IEJCRklMRV9QQVRURVJOX2xpbmtkaXIg
Oj0gIl4ke0xBWUVSRElSfS8iwqAKPiBCQkZJTEVfUFJJT1JJVFlfbGlua2RpciA6PSAiNiIKPgo+
IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQo+Cj4gMy4gQnVpbGQgdGhlIHNvZnR3YXJlCj4gJCBiaXRiYWtl
IGNvcmUtaW1hZ2Utc2F0bwo+IAo+IDQuIEluc3BlY3QgdGhlIC5ycG0KPiBycG0gLWx2cHEgLi90
bXAvd29yay9xZW11eDg2LXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L2RlcGxveS1y
cG1zL3FlbXV4ODYvYmFzZS1maWxlcy1kZXYtMy4wLjE0LXI4OS5xZW11eDg2LnJwbQo+IE5vdGUg
dGhhdDogL2JpbiAtPiAvdXNyL2JpbiwgL2xpYiAtPiAvdXNlci9saWIgYW5kIHRoYXQgL2V0Yy9m
c3RhYiBpcyBwcmVzZW50Cj4KPiA1LiBTYXZlIHRoZSBnZW5lcmF0ZWQgZmlsZS1zdHJ1Y3V0cmUK
PiAkIHB1c2hkIC4vdG1wL3dvcmsvcWVtdXg4Ni1wb2t5LWxpbnV4L2NvcmUtaW1hZ2Utc2F0by8x
LjAtcjAvcm9vdGZzCj4gJCBMQ19BTEw9QyBmaW5kIC4gLWV4ZWMgInN0YXQgLWMgJyVOJyB7fSBc
OyIgPiAvdG1wL3lvY3RvX2xpbmtfZnMudHh0Cj4gJCBwb3BkCj4KPiA2LiBTYXZlIHRoZSBidWls
ZCBsb2cgZnJvbSByb290ZnMgYnVpbGQKPiAkIGNwIC50bXAvd29yay9xZW11eDg2LXBva3ktbGlu
dXgvY29yZS1pbWFnZS1zYXRvLzEuMC1yMC90ZW1wL2xvZy5kb19yb290ZnMgL3RtcC9sb2cuZG9f
cm9vdGZzLmxpbmsKPgo+IDcuIFRvIGJlIGFibGUgdG8gY29tcGFyZSB3aXRoIHRoZSBvcmlnaW5h
bCBmaWxlc3lzdGVtLCBkaXNhYmxlIHRoZSBjaGFuZ2VzIGluIHRoZSAuYmItYXBwZW5kIGZpbGUs
IGkuZS4gZWRpdCBpdCB0byBsb29rIGxpa2UgdGhpczoKPiAtLSAuLi9yZWNlcGllcy1saW5rZGly
L2Jhc2UtZmlsZXMvYmFzZS1maWxlc18lLmJiYXBwZW5kIC0tLS0tLS0tLS0tLS0tLS0tLS0KPiAj
IGRpcnM3NTVfcmVtb3ZlID0gIi9iaW4gL2xpYiIKPgo+IGRvX2luc3RhbGxfZXh0cmFfbGlua3Mo
KSB7Cj4gICAgbG4gLXNydmYgJHtEfS91c3IvYmluICR7RH0vYmluCj4gICAgbG4gLXNydmYgJHtE
fS91c3IvbGliICR7RH0vbGliCj4gfQo+Cj4gIyBhZGR0YXNrIGluc3RhbGxfZXh0cmFfbGlua3Mg
YWZ0ZXIgZG9faW5zdGFsbCBiZWZvcmUgZG9fcG9wdWxhdGVfc3lzcm9vdCBkb19wYWNrYWcKPgo+
IDguIFJlYnVpbGQgdGhlIHByb2plY3QKPiAkIGJpdGJha2UgLWMgY2xlYW5hbGwgYmFzZS1maWxl
cwo+ICQgYml0YmFrZSBjb3JlLWltYWdlLXNhdG8KPgo+IDkuIEluc3BlY3QgdGhlIC5ycG0KPiBy
cG0gLWx2cHEgLi90bXAvd29yay9xZW11eDg2LXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQt
cjg5L2RlcGxveS1ycG1zL3FlbXV4ODYvYmFzZS1maWxlcy1kZXYtMy4wLjE0LXI4OS5xZW11eDg2
LnJwbQo+IE5vdGUgdGhhdDogL2JpbiBhbmQgL2xpYiBhcmUgbm9ybWFsIGRpcmVjdG9yaWVzIGFu
ZCB0aGF0IC9ldGMvZnN0YWIgaXMgcHJlc2VudAo+Cj4gMTAuIFNhdmUgdGhlIGdlbmVyYXRlZCBm
aWxlLXN0cnVjdXRyZQo+ICQgcHVzaGQgLi90bXAvd29yay9xZW11eDg2LXBva3ktbGludXgvY29y
ZS1pbWFnZS1zYXRvLzEuMC1yMC9yb290ZnMKPiAkIExDX0FMTD1DIGZpbmQgLiAtZXhlYyAic3Rh
dCAtYyAnJU4nIHt9IFw7IiA+IC90bXAveW9jdG9fb3JpZ19mcy50eHQKPiAkIHBvcGQKPgo+IDEx
LiBTYXZlIHRoZSBidWlsZCBsb2cgZnJvbSByb290ZnMgYnVpbGQKPiAkIGNwIC50bXAvd29yay9x
ZW11eDg2LXBva3ktbGludXgvY29yZS1pbWFnZS1zYXRvLzEuMC1yMC90ZW1wL2xvZy5kb19yb290
ZnMgL3RtcC9sb2cuZG9fcm9vdGZzLm9yaWcKPgo+IDEyLiBDb21wYXJlIHRoZSBkaWZmZXJlbmNl
IGFuZCBub3RlIHRoYXQgZmlsZXMgYXJlIGV4Y2x1c2l2ZWx5IG1pc3NpbmcgZnJvbSB0aGUgYnVp
bGQgd2hlcmUgdGhlIHNvZnQtbGlua3Mgd2hlcmUgYWRkZWQuCj4gJCAgZGlmZiAvdG1wL3lvY3Rv
X29yaWdfZnMudHh0IC90bXAveW9jdG9fbGlua3NfZnMudHh0Cj4gMmQxCj4gPCAnLi9wcm9jJwo+
IDE2ZDE0Cj4gPCAnLi91c3Ivc2hhcmUvaW5mbycKPiAzNjQzZDM2NDAKPiA8ICcuL3Vzci9zaGFy
ZS9kaWN0Jwo+IDUwNjgsNTA3MGQ1MDY0Cj4gPCAnLi91c3Ivc2hhcmUvZGJ1cy0xL2ludGVyZmFj
ZXMvb3JnLmZyZWVkZXNrdG9wLkNvbnNvbGVLaXQuU2VhdC54bWwnCj4gPCAnLi91c3Ivc2hhcmUv
ZGJ1cy0xL2ludGVyZmFjZXMvb3JnLmZyZWVkZXNrdG9wLkNvbnNvbGVLaXQuU2Vzc2lvbi54bWwn
Cj4gPCAnLi91c3Ivc2hhcmUvZGJ1cy0xL2ludGVyZmFjZXMvb3JnLmZyZWVkZXNrdG9wLkNvbnNv
bGVLaXQuTWFuYWdlci54bWwnCj4gNTA3NWQ1MDY4Cj4gPCAnLi91c3Ivc2hhcmUvZGJ1cy0xL3N5
c3RlbS1zZXJ2aWNlcy9vcmcuZnJlZWRlc2t0b3AuQ29uc29sZUtpdC5zZXJ2aWNlJwo+IDUzODJk
NTM3NAo+IDwgJy4vdXNyL3NoYXJlL21hbicKPiA1Mzg2ZDUzNzcKPiA8ICcuL3Vzci9zcmMnCj4g
NTQ4OGQ1NDc4Cj4gPCAnLi91c3IvYmluL2NrLWxhdW5jaC1zZXNzaW9uJwo+IDU2MDNkNTU5Mgo+
IDwgJy4vdXNyL2Jpbi9jay1saXN0LXNlc3Npb25zJwo+IDU2NzRkNTY2Mgo+IDwgJy4vdXNyL2Jp
bi9jay1oaXN0b3J5Jwo+IDU3MDhkNTY5NQo+IDwgJy4vdXNyL3NiaW4vY2stbG9nLXN5c3RlbS1y
ZXN0YXJ0Jwo+IDU3MTBkNTY5Ngo+IDwgJy4vdXNyL3NiaW4vY2stbG9nLXN5c3RlbS1zdG9wJwo+
IDU3NThkNTc0Mwo+IDwgJy4vdXNyL3NiaW4vY2stbG9nLXN5c3RlbS1zdGFydCcKPiA1NzcxZDU3
NTUKPiA8ICcuL3Vzci9zYmluL2NvbnNvbGUta2l0LWRhZW1vbicKPiA2MTE5ZDYxMDIKPiA8ICcu
L3Vzci9saWIvbGliY2stY29ubmVjdG9yLnNvLjAuMC4wJwo+IDYyODdkNjI2OQo+IDwgJy4vdXNy
L2xpYi9saWJjay1jb25uZWN0b3Iuc28uMCcgLT4gJ2xpYmNrLWNvbm5lY3Rvci5zby4wLjAuMCcK
PiA3NTcwLDc1NzFkNzU1MQo+IDwgJy4vdXNyL2xpYi9Db25zb2xlS2l0L3NjcmlwdHMvY2stc3lz
dGVtLXN0b3AnCj4gPCAnLi91c3IvbGliL0NvbnNvbGVLaXQvc2NyaXB0cy9jay1zeXN0ZW0tcmVz
dGFydCcKPiA3NTk3LDc1OTlkNzU3Ngo+IDwgJy4vdXNyL2xpYi9jb25zb2xla2l0L2NrLWdldC14
MTEtZGlzcGxheS1kZXZpY2UnCj4gPCAnLi91c3IvbGliL2NvbnNvbGVraXQvY2stZ2V0LXgxMS1z
ZXJ2ZXItcGlkJwo+IDwgJy4vdXNyL2xpYi9jb25zb2xla2l0L2NrLWNvbGxlY3Qtc2Vzc2lvbi1p
bmZvJwo+IDc3MzksNzc0MGQ3NzE1Cj4gPCAnLi9kZXYnCj4gPCAnLi9ydW4nCj4gNzgxMiw3ODEz
ZDc3ODYKPiA8ICcuL2hvbWUnCj4gPCAnLi9ob21lL3Jvb3QnCj4gNzgxOGQ3NzkwCj4gPCAnLi9l
dGMvbnNzd2l0Y2guY29uZicKPiA3ODIzZDc3OTQKPiA8ICcuL2V0Yy9kZWZhdWx0L3VzYmQnCj4g
NzkxMGQ3ODgwCj4gPCAnLi9ldGMvZnN0YWInCj4gNzkzNmQ3OTA1Cj4gPCAnLi9ldGMvaG9zdG5h
bWUnCj4gNzk4M2Q3OTUxCj4gPCAnLi9ldGMvbW90ZCcKPiA4MDIwZDc5ODcKPiA8ICcuL2V0Yy9w
cm9maWxlJwo+IDgwODZkODA1Mgo+IDwgJy4vZXRjL210YWInIC0+ICcvcHJvYy9tb3VudHMnCj4g
ODA5OGQ4MDYzCj4gPCAnLi9ldGMvZmlsZXN5c3RlbXMnCj4gODEzOGQ4MTAyCj4gPCAnLi9ldGMv
aXNzdWUubmV0Jwo+IDgxNjNkODEyNgo+IDwgJy4vZXRjL2hvc3QuY29uZicKPiA4MjI3ZDgxODkK
PiA8ICcuL2V0Yy9kYnVzLTEvc3lzdGVtLmQvQ29uc29sZUtpdC5jb25mJwo+IDg0MzRkODM5NQo+
IDwgJy4vZXRjL2lzc3VlJwo+IDg0NDZkODQwNgo+IDwgJy4vZXRjL0NvbnNvbGVLaXQvc2VhdHMu
ZC8wMC1wcmltYXJ5LnNlYXQnCj4gODQ2MCw4NDY1ZDg0MTkKPiA8ICcuL2V0Yy9pbnB1dHJjJwo+
IDwgJy4vZXRjL3NrZWwnCj4gPCAnLi9ldGMvc2tlbC8uYmFzaHJjJwo+IDwgJy4vZXRjL3NrZWwv
LnByb2ZpbGUnCj4gPCAnLi90bXAnCj4gPCAnLi9zeXMnCj4gODUzM2Q4NDg2Cj4gPCAnLi9tZWRp
YScKPiA4NTM1ZDg0ODcKPiA8ICcuL3Zhci9sb2NrJyAtPiAnLi4vcnVuL2xvY2snCj4gODU0NCw4
NTQ5Yzg0OTYKPiA8ICcuL3Zhci92b2xhdGlsZScKPiA8ICcuL3Zhci9ydW4nIC0+ICcuLi9ydW4n
Cj4gPCAnLi92YXIvdG1wJyAtPiAndm9sYXRpbGUvdG1wJwo+IDwgJy4vdmFyL2JhY2t1cHMnCj4g
PCAnLi92YXIvbG9jYWwnCj4gPCAnLi92YXIvbG9nJyAtPiAndm9sYXRpbGUvbG9nJwo+IC0tLQo+
ID4gJy4vdmFyL2xvZycKPiA4NTYyZDg1MDgKPiA8ICcuL3Zhci9saWIvbWlzYycKPiAKPiAxMy4g
Tm90ZSB0aGF0IHRoZSBwYWNrYWdlIGluc3RhbGwgb3JkZXIgKGZvciBzb21lIHN0cmFuZ2UgcmVh
c29uKSBoYXMgY2hhbmdlZCBieSBjb21wYXJpbmcgdGhlIHJvb3Rmcy1sb2dzCj4gZGlmZiAvdG1w
L2xvZy5kb19yb290ZnMKPiAudG1wL3dvcmsvcTE3NzUtcG9reS1saW51eC9heGlzLWltYWdlLWN2
cC8xLjAtcjAvdGVtcC9sb2cuZG9fcm9vdGZzCj4gCj4gCj4gQ29uY2x1c2lvbi9FeHBlY3RlZCBy
ZXN1bHRzCj4gPT09PT09PT09PQo+IAo+IFRoZSByZXN1bHRpbmcgZmlsZS1zeXN0ZW0gaXMgbm90
IHRoZSBpbnRlbmRlZCB3aXRoIG1hbnkgbWlzc2luZyBmaWxlcyAocmVnYXJkbGVzcyBvZiBpZiB0
aGVyZSBhcmUgYnVncyBpbiBZb2N0bywgdGhlIHBhY2thZ2VzLCBvciB0aGF0IAo+IHRoZSBjaGFu
Z2UgbWFkZSBpcyBub3QgcG9zc2libGUgdG8gZG8gZm9yIHRlY2huaWNhbCByZWFzb25zKS4gUmVn
YXJkbGVzcyBvZiB0aGUgcm9vdCBjYXVzZSBvZiB0aGUgYmFkIGZpbGUtc3lzdGVtLCBubyAgZXJy
b3IKPiBtZXNzYWdlcyBhcmUgcHJlc2VudGVkIGJ5IFlvY3RvIG9yIHRoZSBwYWNrYWdlIGluc3Rh
bGxhdGlvbiBwcm9jZXNzLiBJdCBpcyB1bmNsZWFyIGZvciBtZSB3aGV0aGVyIHRoZSBsYXR0ZXIg
ZGVwZW5kcyBvbiBidWdzIGluIHRoZSAKPiBycG0gcGFja2FnaW5nIHN5c3RlbSwgdGhlIHBhY2th
Z2VzIG9yIHRoYXQgWW9jdG8gZWF0cyB0aGUgZXJyb3IgcmVwb3J0aW5nIGZyb20gcnBtLgo+IAo+
IC9CZXN0IHJlZ2FyZHMgSmFuCj4gCj4gCj4gCgpIaSwgdGhpcyBxdWVzdGlvbiBoYXMgYmVlbiBs
YXlpbmcgaGVyZSBmb3IgcXVpdGUgc29tZSB0aW1lIGxpa2UgYSBkZWFkIGZpc2guIEkgd291bGQg
YXQgbGVhc3QgZXhwZWN0IGZlZWRiYWNrIGFsb25nIHRoZSBmb2xsb3dpbmcgbGluZXM6CiogV2Ug
bmVlZCBtb3JlIGluZm8gKGEsIGIsIGMsIC4uLikgdG8gcmVwcm9kdWNlCiogVGhpcyBpcyBjdXJy
ZW50bHkgaW1wb3NzaWJsZSB0byBkbyBpbiBZb2N0byBmb3IgcmVhc29uICh4LCB5LCB6LCAuLi4p
CiogWW91ciBhcHByb2FjaC9kZXNpcmUgZG9lcyBub3QgbWFrZSBzZW5zIGF0IGFsbC4KCi9KYW4=

