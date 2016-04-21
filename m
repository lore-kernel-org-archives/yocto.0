Return-Path: <contact@jgueytat.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C420EE00CEA; Thu, 21 Apr 2016 10:55:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,MISSING_MID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.198 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 MISSING_MID Missing Message-Id: header
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
	[217.70.183.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61325E00948
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:55:36 -0700 (PDT)
Received: from mfilter14-d.gandi.net (mfilter14-d.gandi.net [217.70.178.142])
	by relay6-d.mail.gandi.net (Postfix) with ESMTP id F13DBFB8A9;
	Thu, 21 Apr 2016 19:55:35 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mfilter14-d.gandi.net
Received: from relay6-d.mail.gandi.net ([IPv6:::ffff:217.70.183.198])
	by mfilter14-d.gandi.net (mfilter14-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id AJ__1qyLy_S7; Thu, 21 Apr 2016 19:55:33 +0200 (CEST)
X-Originating-IP: 80.215.202.149
Received: from [100.80.65.96] (unknown [80.215.202.149])
	(Authenticated sender: contact@jgueytat.fr)
	by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 8CE86FB886;
	Thu, 21 Apr 2016 19:55:31 +0200 (CEST)
Date: Thu, 21 Apr 2016 19:55:27 +0200
From: Julien Gueytat <contact@jgueytat.fr>
To: Andrei Gherzan <andrei@gherzan.ro>
MIME-Version: 1.0
Message-Id: <20160421175538.C420EE00CEA@yocto-www.yoctoproject.org>
Cc: yocto@yoctoproject.org, otavio@ossystems.com.br
Subject: Re: [meta-qt5][meta-raspberrypi]: Qt5 with EGL support for the Raspberry through linux-oe-g++
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
X-List-Received-Date: Thu, 21 Apr 2016 17:55:38 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciB0aGUgbGluay4KSSBhbHJlYWR5IGhhdmUgZm91bmQgbXkgaGFjayBwYXRjaC4g
OykKSSdsbCB0YWtlIHNvbWUgdGltZSB0byBjaGVjayB0aGUgRUdMIHRlc3QgZGVkaWNhdGVkIHRv
IHRoZSBSYXNwYmVycnkgaW4gUXQuIEkgZGlkIG5vdCBjaGVjayB0aGlzIG9uZSB5ZXQuCgpSZWdh
cmRzLAoKU2VudCBmcm9tIG15IFdJS08gUkFJTkJPVyBMSVRFIDRHTGUgMjEgYXZyLiAyMDE2IDc6
MTAgUE0sIEFuZHJlaSBHaGVyemFuIGEgw6ljcml0IDogPiA+IEhpIEp1bGllbiwgPiA+IE9uIFRo
dSwgQXByIDIxLCAyMDE2IGF0IDEwOjE1OjIzQU0gKzAyMDAsIEp1bGllbiBHdWV5dGF0IHdyb3Rl
OiA+ID4gSnVzdCB0byBrZWVwIHlvdSBpbmZvcm1lZCB0aGF0IGEgYnVnIHJlcG9ydCBoYXMgYmVl
biBvcGVuZWQgdG8gUXQ6ID4gPiBodHRwczovL2J1Z3JlcG9ydHMucXQuaW8vYnJvd3NlL1FUQlVH
LTUyNzM5ID4gPiA+ID4gV2UgbWlnaHQgc2F2ZSBzb21lIHBhdGNoZXMgaW4gbGF5ZXJzIGJ5IHNv
bHZpbmcgdGhpcywgPiA+IFRoYW5rcyBmb3IgaGVscGluZywgPiA+ID4gPiBHcmVhdCBKdWxpZW4u
IEhlcmUgaXMgYSBoaW50IC0gd291bGQgdGhpcyBoZWxwIHlvdXIgcHJvYmxlbT8gPiBodHRwczov
L2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvcGlwZXJtYWlsL3lvY3RvLzIwMTYtRmVicnVhcnkvMDI4
Mjc3Lmh0bWwgPiA+ID4gTGUgMjAvMDQvMjAxNiAwMTo0NiwgSnVsaWVuIEd1ZXl0YXQgYSDDqWNy
aXQgOiA+ID4gPiBIaSBhZ2FpbiBndXlzLCA+ID4gPiA+ID4gPiBhZnRlciBtb3JlIGludmVzdGln
YXRpb25zOiA+ID4gPiA+ID4gPiBJIGZvdW5kIG91dCB0aGF0IHRoZSBkZWZhdWx0IHZhbHVlIC1s
RUdMIGNvbWVzIGZyb20gPiA+ID4gLi9ta3NwZWNzL2NvbW1vbi9saW51eC5jb25mIHdoaWNoIGlz
IGluY2x1ZGVkIGluID4gPiA+IC4vbWtzcGVjcy9saW51eC1vZS1nKysvcW1ha2UuY29uZiA+ID4g
PiA+ID4gPiBsaW51eC1vZS1nKysgYmVpbmcgdGhlIG9ubHkgZ2VuZXJpYyBta3NwZWNzIHRoYXQg
c2hvdWxkIGJlIHVzZWQgaW4gWW9jdG8gPiA+ID4gPiA+ID4gU28hIEF0IHRoZSB0aW1lIHRoZSBj
b25maWd1cmF0aW9uIGVudGVycyBlZ2wucHJvIHRoZSBjb250ZW50IG9mIHRoZSA+ID4gPiB2YXJp
YWJsZXMgTElCUyBhbmQgUU1BS0VfRUdMX0xJQlMgYXJlIHN0aWxsIGEgYml0IHdlaXJkIGZvciBt
ZSA6ID4gPiA+ID4gPiA+IDEtIExJQlMgYWxyZWFkeSBoYXMgdGhlIGNvbnRlbnQgb2YgdGhlIFFN
QUtFX0VHTF9MSUJTIGNvbnRlbnQgZnJvbSB0aGUgPiA+ID4gcmVzdWx0IG9mIHRoZSBwa2ctY29u
ZmlnIGNvbW1hbmQuID4gPiA+IDItIFFNQUtFX0VHTF9MSUJTIGhhcyB0aGUgY29udGVudCBvZiB0
aGUgZGVmYXVsdCB2YWx1ZSBmb3VuZCBpbiA+ID4gPiAuL21rc3BlY3MvY29tbW9uL2xpbnV4LmNv
bmYgPiA+ID4gPiA+ID4gVGhlcmUgYXJlIHR3byBvcHRpb25zIHRvIGhhdmUgaXQgcHJvcGVybHkg
d29ya2luZzogPiA+ID4gLSBGaXJzdCBhbmQgZWFzeSBvcHRpb24gOiByZW1vdmUgdGhlIFFNQUtF
X0VHTF9MSUJTIGRlZmF1bHQgdmFyaWFibGUgaW4gPiA+ID4gLi9ta3NwZWNzL2xpbnV4LW9lLWcr
Ky9xbWFrZS5jb25mIHNpbmNlIHRoZSBnb29kIGxpYnMgc2VlbXMgdG8gYWxyZWFkeSA+ID4gPiBi
ZWVuIHByZXNlbnQgaW4gdGhlIExJQlMgdmFyaWFibGUuID4gPiA+IC0gU2Vjb25kIG9wdGlvbiA6
IHVuZGVyc3RhbmQgd2h5IHRoZSBMSUJTIHZhcmlhYmxlIGlzIGFscmVhZHkgcHJvcGVybHkgPiA+
ID4gc2V0IGFuZCB3aHkgdGhlIFFNQUtFX0VHTF9MSUJTIHByb3Blcmx5IGNvbXB1dGVkIGluIHRo
ZSBjb25maWd1cmUgYW5kID4gPiA+IHByZXNlbnQgLnFtYWtlLnZhcnMgaXMgbm90IHVzZWQuIChJ
IHdvdWxkIHNheSB0aGF0IHRoZSBkZXZpY2Ugc3BlYyA+ID4gPiBvdmVycmlkZXMgdGhlIG9uZSBm
cm9tIHFtYWtlIHNwZWMuLi4gSSBkaWQgbm90IGRpZyBmdXJ0aGVyIHlldC4pID4gPiA+ID4gPiA+
IEFueXdheSBJJ20gcHJldHR5IHN1cmUgdGhlIHRyb3VibGUgY29tZXMgZnJvbSBtZXRhLXF0NSBz
aWRlIG5vdy4gSSdtID4gPiA+IHByZXR0eSBzdXJlIG1ldGEtcmFzcGJlcnJ5cGkgbWFpbnRhaW5l
cnMgY2FuIGNvbmZpcm0gdGhhdCB0aGVpciBtYXN0ZXIgPiA+ID4gYnJhbmNoIGhhbmRsZXMgcGtn
LWNvbmZpZyBzdHVmZiBub3cuID4gPiA+ID4gPiA+IFRoYW5rcyBhZHZhbmNlIGZvciBoYXZpbmcg
YSBsb29rIG9uIHRoaXMgZ3V5cywgPiA+ID4gQmVzdCBSZWdhcmRzID4gPiA+ID4gPiA+ID4gPiA+
IExlIDE5LzA0LzIwMTYgMTA6NDYsIEp1bGllbiBHdWV5dGF0IGEgw6ljcml0IDogPiA+ID4gPiBI
aSwgPiA+ID4gPiA+ID4gPiA+IEkgc3RpbGwgY2FuJ3QgZmlndXJlIG91dCB0aGUgcGF0Y2ggdG8g
YXBwbHkgaW4gbWV0YS1xdDUgdG8gZ2V0IEVHTCA+ID4gPiA+IHN1cHBvcnQgd2l0aCB0aGUgUmFz
cGJlcnJ5LiA+ID4gPiA+ID4gPiA+ID4gVGhlIHRlc3QgdG8gY2hlY2sgRUdMIGRvZXMgbm90IHBh
c3MgYW5kIGZhaWxzIHdpdGggdGhlIGZvbGxvd2luZyBjb21tYW5kOiA+ID4gPiA+ID4gPiA+ID4g
YXJtLXBva3ktbGludXgtZ251ZWFiaS1nKyvCoCAtbWFyY2g9YXJtdjctYSAtbWFybSAtbXRodW1i
LWludGVyd29yayA+ID4gPiA+IC1tZmxvYXQtYWJpPWhhcmQgLW1mcHU9bmVvbi12ZnB2NCAtbXR1
bmU9Y29ydGV4LWE3IC0tc3lzcm9vdD0vaG9tZS9qZ3VleXRhdC9wcm9qZWN0cy9MaWdodFBpeGVs
cy9wb2t5L2J1aWxkL3RtcC9zeXNyb290cy9saWdodHBpeGVscyA+ID4gPiA+IC1XbCwtTzEgLVds
LC0taGFzaC1zdHlsZT1nbnUgLVdsLC0tYXMtbmVlZGVkIC1XbCwtTzEgLW8gZWdsIGVnbC5vID4g
PiA+ID4gLWxHTEVTdjIgLWxiY21faG9zdCAtbHZjaG9zdGlmIC1sdmNvcyAtbHZjaGlxX2FybSAt
cHRocmVhZCAtbEVHTCA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBIZXJlIGlzIHRoZSBjb250ZW50
IG9mIHRoZSBmaWxlIGVnbC5wcm86ID4gPiA+ID4gPiA+ID4gPiAkIGNhdCBlZ2wucHJvID4gPiA+
ID4gU09VUkNFUyA9IGVnbC5jcHAgPiA+ID4gPiA+ID4gPiA+IGZvcihwLCBRTUFLRV9MSUJESVJf
RUdMKSB7ID4gPiA+ID7CoMKgwqDCoCBleGlzdHMoJCRwKTpMSUJTICs9IC1MJCRwID4gPiA+ID4g
fSA+ID4gPiA+ID4gPiA+ID4gbWVzc2FnZSgiSW4gZWdsLnBybyAtIDE6IFFNQUtFX0xJQlNfRUdM
ID0gJCRRTUFLRV9MSUJTX0VHTCIpID4gPiA+ID4gbWVzc2FnZSgiSW4gZWdsLnBybyAtIDE6IExJ
QlMgPSAkJExJQlMiKSA+ID4gPiA+ID4gPiA+ID4gIWlzRW1wdHkoUU1BS0VfSU5DRElSX0VHTCk6
IElOQ0xVREVQQVRIICs9ICQkUU1BS0VfSU5DRElSX0VHTCA+ID4gPiA+ICFpc0VtcHR5KFFNQUtF
X0xJQlNfRUdMKTogTElCUyArPSAkJFFNQUtFX0xJQlNfRUdMID4gPiA+ID4gPiA+ID4gPiBtZXNz
YWdlKCJJbiBlZ2wucHJvIC0gMjogUU1BS0VfTElCU19FR0wgPSAkJFFNQUtFX0xJQlNfRUdMIikg
PiA+ID4gPiBtZXNzYWdlKCJJbiBlZ2wucHJvIC0gMjogTElCUyA9ICQkTElCUyIpID4gPiA+ID4g
PiA+ID4gPiBDT05GSUcgLT0gcXQgPiA+ID4gPiA+ID4gPiA+IEluIHRoZSBtYWluIC4vY29uZmln
dXJlIGZpbGUgb2YgcXRiYXNlOiA+ID4gPiA+ID4gPiA+ID4gfCBJbiBjb25maWd1cmUgIzE6IFFN
QUtFX0xJQlNfRUdMID0gPiA+ID4gPiB8IEluIGNvbmZpZ3VyZSAjMjogUU1BS0VfTElCU19FR0wg
PSAtbEVHTCAtbEdMRVN2MiAtbGJjbV9ob3N0ID4gPiA+ID4gLWx2Y2hvc3RpZiAtbGJjbV9ob3N0
IC1sdmNvcyAtbHZjaGlxX2FybSAtcHRocmVhZCA+ID4gPiA+ID4gPiA+ID4gVGhlIHZhcmlhYmxl
IFFNQUtFX0xJQlNfRUdMIGlzIHNldCBwcm9wZXJseS4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4g
SW4gdGhlIC4vY29uZmlnLnRlc3RzL3FwYS9lZ2wvZWdsLnBybyBmaWxlOiA+ID4gPiA+ID4gPiA+
ID4gfCBQcm9qZWN0IE1FU1NBR0U6IEluIGVnbC5wcm8gLSAxOiBRTUFLRV9MSUJTX0VHTCA9IC1s
RUdMID4gPiA+ID4gfCBQcm9qZWN0IE1FU1NBR0U6IEluIGVnbC5wcm8gLSAxOiBMSUJTID0gLWxF
R0wgLWxHTEVTdjIgLWxiY21faG9zdCA+ID4gPiA+IC1sdmNob3N0aWYgLWx2Y29zIC1sdmNoaXFf
YXJtIC1wdGhyZWFkID4gPiA+ID4gfCBQcm9qZWN0IE1FU1NBR0U6IEluIGVnbC5wcm8gLSAyOiBR
TUFLRV9MSUJTX0VHTCA9IC1sRUdMID4gPiA+ID4gfCBQcm9qZWN0IE1FU1NBR0U6IEluIGVnbC5w
cm8gLSAyOiBMSUJTID0gLWxFR0wgLWxHTEVTdjIgLWxiY21faG9zdCA+ID4gPiA+IC1sdmNob3N0
aWYgLWx2Y29zIC1sdmNoaXFfYXJtIC1wdGhyZWFkIC1sRUdMID4gPiA+ID4gPiA+ID4gPiA+ID4g
PiA+ICpXaGF0IEkgc2VlIGlzIHRoYXQ6KiA+ID4gPiA+IEluIHRoZSBjb25maWd1cmUgZmlsZSB0
aGUgdmFyaWFibGUgUU1BS0VfTElCU19FR0wgaXMgcHJvcGVybHkgc2V0ID4gPiA+ID4gdGhyb3Vn
aCBwa2ctY29uZmlnLiA+ID4gPiA+IEluIHRoZSBlZ2wucHJvIGZpbGUuLi4gVGhlIHZhcmlhYmxl
IExJQlMgZ2V0cyB0aGUgY29udGVudCBvZiA+ID4gPiA+IFFNQUtFX0xJQlNfRUdMIGFuZCB0aGUg
dmFyaWFibGUgUU1BS0VfTElCU19FR0wgZ2V0cyBiYWNrIHRvIGl0cyA+ID4gPiA+IGRlZmF1bHQg
LWxFR0wuID4gPiA+ID4gPiA+ID4gPiBJbiB0aGUgZW5kIHdpdGggaGF2ZSAtbEdMRVN2MiBiZWZv
cmUgLWxFR0wgYW5kIHRoaXMgZG9lcyBub3QgbGluay4gPiA+ID4gPiA+ID4gPiA+IEkgY2hlY2tl
ZCBhbHNvIHRoZSBjb250ZW50IG9mIC5xbWFrZS52YXJzOiA+ID4gPiA+IGdyZXAgUU1BS0VfTElC
U19FR0wgLnFtYWtlLnZhcnMgPiA+ID4gPiBRTUFLRV9MSUJTX0VHTCA9IC1sRUdMIC1sR0xFU3Yy
IC1sYmNtX2hvc3QgLWx2Y2hvc3RpZiAtbGJjbV9ob3N0ID4gPiA+ID4gLWx2Y29zIC1sdmNoaXFf
YXJtIC1wdGhyZWFkID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IFRoZSBjb21tYW5kIFFNYWtlVmFy
IHNldCBRTUFLRV9MSUJTX0VHTCAiJFFNQUtFX0xJQlNfRUdMIiBzZWVtcyB0byA+ID4gPiA+IGhh
dmUgaGlzIGpvYiBkb25lIHRvbyBsYXRlLi4uID4gPiA+ID4gPiA+ID4gPiBJZiBzb21lb25lIGhh
cyBhbiBpZGVhIHRvIGdldCB0aGUgcHJvcGVyIGNvcnJlY3Rpb24gZG9uZS4uLiA+ID4gPiA+ID4g
PiA+ID4gQmVzdCBSZWdhcmRzLCA+ID4gPiA+IEp1bGllbiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gLS0gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fID4gPiB5b2N0byBtYWlsaW5nIGxpc3QgPiA+IHlvY3RvQHlvY3RvcHJv
amVjdC5vcmcgPiA+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0
byA+ID4gPiAtLSA+IEFuZHJlaSBHaGVyemFu


