Return-Path: <contact@jgueytat.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53883E0080D; Fri, 14 Oct 2016 06:42:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,MISSING_MID,
	RCVD_IN_DNSWL_LOW,RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.178.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [217.70.183.194 listed in dnsbl.sorbs.net]
	*  0.5 MISSING_MID Missing Message-Id: header
X-Greylist: delayed 1946 seconds by postgrey-1.32 at yocto-www;
	Fri, 14 Oct 2016 06:42:27 PDT
Received: from slow1-d.mail.gandi.net (slow1-d.mail.gandi.net [217.70.178.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBCDBE0073D
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 06:42:27 -0700 (PDT)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id B2D38535550
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 14:53:44 +0200 (CEST)
Received: from mfilter24-d.gandi.net (mfilter24-d.gandi.net [217.70.178.152])
	by relay2-d.mail.gandi.net (Postfix) with ESMTP id D9CCDC5A6A;
	Fri, 14 Oct 2016 14:53:42 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mfilter24-d.gandi.net
Received: from relay2-d.mail.gandi.net ([IPv6:::ffff:217.70.183.194])
	by mfilter24-d.gandi.net (mfilter24-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id 57JOF8LEFVu7; Fri, 14 Oct 2016 14:53:40 +0200 (CEST)
X-Originating-IP: 77.154.204.147
Received: from [10.23.112.141] (147.204.154.77.rev.sfr.net [77.154.204.147])
	(Authenticated sender: contact@jgueytat.fr)
	by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 9C52BC5A77;
	Fri, 14 Oct 2016 14:53:39 +0200 (CEST)
Date: Fri, 14 Oct 2016 14:53:38 +0200
From: Julien Gueytat <contact@jgueytat.fr>
To: Andrei Gherzan <andrei@gherzan.ro>
MIME-Version: 1.0
Message-Id: <20161014134232.53883E0080D@yocto-www.yoctoproject.org>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: failed to copy the final ***rootfs.rpi-sdimg image file
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
X-List-Received-Date: Fri, 14 Oct 2016 13:42:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

R3JlYXQhIFRoYW5rcyEKClNlbnQgZnJvbSBteSBXSUtPIFJBSU5CT1cgTElURSA0R0xlIDE0IG9j
dC4gMjAxNiAxNDo0MSwgQW5kcmVpIEdoZXJ6YW4gPGFuZHJlaUBnaGVyemFuLnJvPiBhIMOpY3Jp
dCA6Cj4KPiBPbiBTYXQsIE9jdCAwMSwgMjAxNiBhdCAwMTo1ODo0OVBNICswMDAwLCBLYXJpbSBB
VElLSSB3cm90ZTogCj4gPiBoaSwgCj4gPiAKPiA+IAo+ID4gSSdtIGJ1aWxkaW5nIGEgY3VzdG9t
IGNvcmUtaW1hZ2UteDExIGZvciBteSByYXNwYmVycnlwaTMgYm9hcmQsIHdpdGggcG9reSBrcm9n
b3RoLiAKPiA+IAo+ID4gSW4gdGhlIHZlcnkgbGFzdCBzdGVwczogCj4gPiAKPiA+IAo+ID4gRVJS
T1I6IGNvcmUtaW1hZ2UteDExLTEuMC1yMCBkb19pbWFnZV9ycGlfc2RpbWc6IEZ1bmN0aW9uIGZh
aWxlZDogZG9faW1hZ2VfcnBpX3NkaW1nIChsb2cgZmlsZSBpcyBsb2NhdGVkIGF0IC9ob21lL2th
aS95b2N0by9idWlsZC1ycGkzL3RtcC93b3JrL3Jhc3BiZXJyeXBpMy1wb2t5LWxpbnV4LWdudWVh
YmkvY29yZS1pbWFnZS14MTEvMS4wLXIwL3RlbXAvbG9nLmRvX2ltYWdlX3JwaV9zZGltZy4xNjEx
MCkgCj4gPiAKPiA+IEVSUk9SOiBMb2dmaWxlIG9mIGZhaWx1cmUgc3RvcmVkIGluOiAvaG9tZS9r
YWkveW9jdG8vYnVpbGQtcnBpMy90bXAvd29yay9yYXNwYmVycnlwaTMtcG9reS1saW51eC1nbnVl
YWJpL2NvcmUtaW1hZ2UteDExLzEuMC1yMC90ZW1wL2xvZy5kb19pbWFnZV9ycGlfc2RpbWcuMTYx
MTAgCj4gPiAKPiA+IExvZyBkYXRhIGZvbGxvd3M6IAo+ID4gfCBERUJVRzogRXhlY3V0aW5nIHB5
dGhvbiBmdW5jdGlvbiBzZXRfaW1hZ2Vfc2l6ZSAKPiA+IHwgREVCVUc6IFB5dGhvbiBmdW5jdGlv
biBzZXRfaW1hZ2Vfc2l6ZSBmaW5pc2hlZCAKPiA+IHwgREVCVUc6IEV4ZWN1dGluZyBzaGVsbCBm
dW5jdGlvbiBkb19pbWFnZV9ycGlfc2RpbWcgCj4gPiB8IENyZWF0aW5nIGZpbGVzeXN0ZW0gd2l0
aCBCb290IHBhcnRpdGlvbiA0MDk2MCBLaUIgYW5kIFJvb3RGUyA0MzAwODAgS2lCIAo+ID4gCj4g
PiB8IGRkOiBmYWlsZWQgdG8gb3BlbiAnL2NvcmUtaW1hZ2UteDExLXJhc3BiZXJyeXBpMy0yMDE2
MTAwMTE5NDcyOC5yb290ZnMucnBpLXNkaW1nJzogUGVybWlzc2lvbiBkZW5pZWQgCj4gPiAKPiA+
IHwgV0FSTklORzogZXhpdCBjb2RlIDEgZnJvbSBhIHNoZWxsIGNvbW1hbmQuIAo+ID4gfCBFUlJP
UjogRnVuY3Rpb24gZmFpbGVkOiBkb19pbWFnZV9ycGlfc2RpbWcgKGxvZyBmaWxlIGlzIGxvY2F0
ZWQgYXQgL2hvbWUva2FpL3lvY3RvL2J1aWxkLXJwaTMvdG1wL3dvcmsvcmFzcGJlcnJ5cGkzLXBv
a3ktbGludXgtZ251ZWFiaS9jb3JlLWltYWdlLXgxMS8xLjAtcjAvdGVtcC9sb2cuZG9faW1hZ2Vf
cnBpX3NkaW1nLjE2MTEwKSAKPiA+IEVSUk9SOiBUYXNrIDE2ICgvaG9tZS9rYWkveW9jdG8vcG9r
eS1rcm9nb3RoL21ldGEvcmVjaXBlcy1ncmFwaGljcy9pbWFnZXMvY29yZS1pbWFnZS14MTEuYmIs
IGRvX2ltYWdlX3JwaV9zZGltZykgZmFpbGVkIHdpdGggZXhpdCBjb2RlICcxJyAKPiA+IE5PVEU6
IFRhc2tzIFN1bW1hcnk6IEF0dGVtcHRlZCA0NzcxIHRhc2tzIG9mIHdoaWNoIDQ3NzAgZGlkbid0
IG5lZWQgdG8gYmUgcmVydW4gYW5kIDEgZmFpbGVkLiAKPiA+IE5vIGN1cnJlbnRseSBydW5uaW5n
IHRhc2tzICg0MzY3IG9mIDQ3NzMpIAo+ID4gCj4gPiAKPiA+IAo+ID4gSXQgbG9va3MgbGlrZSBp
dCB0cmllcyB0byBjcmVhdGUgdGhlIGltYWdlIGluIHRoZSBwYXRoOsKgwqDCoMKgIC9jb3JlLWlt
YWdlLXgxMS1yYXNwYmVycnlwaTMtMjAxNjEwMDExOTQ3Mjgucm9vdGZzLnJwaS1zZGltZyc6IFBl
cm1pc3Npb24gZGVuaWVkIAo+ID4gCj4gPiAKPiA+IEkgbG9va2VkIGludG8gdGhlIGJiY2xhc3Ms
IGFuZCBhdCBmaXJzdCBnbGFuY2UgSSdkIHNheSB0aGF0IHRoZSByZXNwZWN0aXZlIHBhdGggaXMg
IiR7SU1HREVQTE9ZRElSfS8ke0lNQUdFX05BTUV9LnJvb3Rmcy5ycGktc2RpbWciIAo+ID4gCj4g
PiAKPiA+IFNvICR7SU1HREVQTE9ZRElSfSBzZWVtcyB0byBiZSBlbXB0eS4gCj4gPiAKPiA+IAo+
ID4gSSBoYXZlbid0IGZvdW5kIGFueSByZWZlcmVuY2UgdG8gSU1HREVQTE9ZRElSIGVsc2V3aGVy
ZS4gCj4gPiAKPiA+IAo+ID4gV2VpcmQuIAo+ID4gCj4gPiAKPiA+IEthcmltIAo+ID4gCj4gPiAK
Pgo+ID4gLS0gCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXyAKPiA+IHlvY3RvIG1haWxpbmcgbGlzdCAKPiA+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcg
Cj4gPiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8gCj4KPiBU
aGlzIHNob3VsZCBiZSBmaXhlZCBub3cgYnkgdXNpbmcga3JvZ290aCBtZXRhLXJwaSBicmFuY2gg
d2l0aCB0aGUgcG9reSAKPiBrcm9nb3RoIGJyYW5jaC4gT3RoZXJ3aXNlIGp1c3QgdXNlIGJvdGgg
bWFzdGVycyBhbmQgaXQgc2hvdWxkIHdvcmsgYXMgCj4gd2VsbC4gCj4KPiAtLSAKPiBBbmRyZWkg
R2hlcnphbgo+Cj4gLS0gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18gCj4geW9jdG8gbWFpbGluZyBsaXN0IAo+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcg
Cj4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvIAo=


