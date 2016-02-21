Return-Path: <sebastian.rohde@tu-dortmund.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84549E00928; Sun, 21 Feb 2016 16:16:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [129.217.128.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0050]
X-Greylist: delayed 3275 seconds by postgrey-1.32 at yocto-www;
	Sun, 21 Feb 2016 16:16:07 PST
Received: from unimail.uni-dortmund.de (mx1.HRZ.tu-dortmund.de
	[129.217.128.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0553DE00852
	for <yocto@yoctoproject.org>; Sun, 21 Feb 2016 16:16:07 -0800 (PST)
Received: from ex2010cas1.tu-dortmund.de (ex2010cas1.tu-dortmund.de
	[129.217.131.97])
	by unimail.uni-dortmund.de (8.15.2/8.15.2) with ESMTPS id
	u1LNLQUm001616
	(version=TLSv1.2 cipher=AES128-SHA256 bits=128 verify=NOT)
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 00:21:26 +0100 (CET)
Received: from EX2010MBX1.tu-dortmund.de ([fe80::8c91:9758:7488:1737]) by
	ex2010cas1.tu-dortmund.de ([2002:81d9:8361::81d9:8361]) with mapi id
	14.03.0266.001; Mon, 22 Feb 2016 00:21:26 +0100
From: "sebastian.rohde@tu-dortmund.de" <sebastian.rohde@tu-dortmund.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Package Level Dependencies
Thread-Index: AdFs+06tfG/HmVMDS/ikrQeiIoYdfw==
Date: Sun, 21 Feb 2016 23:21:25 +0000
Message-ID: <829E1DFECFCA904FBE9BB9228564C2B301412FAA3F@ex2010mbx1.tu-dortmund.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [129.217.131.107]
MIME-Version: 1.0
Subject: Package Level Dependencies
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
X-List-Received-Date: Mon, 22 Feb 2016 00:16:12 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCkkgaGF2ZSBhIHJlY2lwZSAoc2F5OiAidGVzdDEyMyIpIHRoYXQgcHJvdmlkZXMgYSBj
b21wbGV4IHBpZWNlIG9mIHNvZnR3YXJlIChjbWFrZS1iYXNlZCkuIFRoZSBzb2Z0d2FyZSBuZWVk
cyBzb21lIGNvbmZpZ3VyYXRpb24gZmlsZSAoc2F5ICJ0ZXN0MTIzLmNvbmYiKS4gVGhlcmUgYXJl
IG11bHRpcGxlIHZhcmlhbnRzIG9mIHRoZSBjb25maWd1cmF0aW9uIGZpbGUsIHNoYXJpbmcgdGhl
IHNhbWUgbmFtZSwgaS5lLiAidGVzdDEyMy5jb25mIiBleGlzdHMgaW4gZGlmZmVyZW50IHZhcmlh
bnRzIGZvciBtdWx0aXBsZSBoYXJkd2FyZSBjb25maWd1cmF0aW9ucy4NCg0KTXkgYWltIHdvdWxk
IGJlIHRvIGhhdmUgbXVsdGlwbGUgcGFja2FnZXMgbGlrZSAidGVzdDEyMy1jb25maWctWFhYIiBh
bmQgInRlc3QxMjMtY29uZmlnLVlZWSIsIHRoYXQgY2Fubm90IGJlIGluc3RhbGxlZCBhdCB0aGUg
c2FtZSB0aW1lLCB3aGlsZSBoYXZpbmcgb25lIG9mIHRoZSBwYWNrYWdlcyBpcyBhIGRlcGVuZGVu
Y3kgZm9yIHRoZSBtYWluIHBhY2thZ2UgInRlc3QxMjMiLg0KDQpJcyB0aGVyZSBhIHdheSB0byBh
Y2hpZXZlIHRoaXM/IEZyb20gbXkgY3VycmVudCB1bmRlcnN0YW5kaW5nLCBkZXBlbmRlbmNpZXMg
YXJlICJwZXItcmVjaXBlIiBhbmQgbm90ICJwZXItcGFja2FnZSIuIElzIHRoZXJlIGFueSB3YXkg
dG8gYWNoaWV2ZSBwYWNrYWdlIGxldmVsIGRlcGVuZGVuY2llcz8gSSB3b3VsZCBsaWtlIHRvIGF2
b2lkIGhhdmluZyBtdWx0aXBsZSByZWNpcGVzIGFzIHRoZXJlIGFyZSBtYW55IGNvbmZpZ3VyYXRp
b24gZmlsZSBvcHRpb25zIHdoaWNoIGFyZSBjdXJyZW50bHkgbG9jYXRlZCBpbiB0aGUgc2FtZSBs
YXJnZSBzb3VyY2UgcmVwb3NpdG9yeSBhcyB0aGUgbWFpbiBzb2Z0d2FyZS4NCg0KSGVscCBpc3Qg
c3Ryb25nbHkgYXBwcmVjaWF0ZWQuDQoNClJlZ2FyZHMsDQpTZWJhc3RpYW4gUm9oZGUNCldpY2h0
aWdlciBIaW53ZWlzOiBEaWUgSW5mb3JtYXRpb24gaW4gZGllc2VyIEUtTWFpbCBpc3QgdmVydHJh
dWxpY2guIFNpZSBpc3QgYXVzc2NobGllw59saWNoIGbDvHIgZGVuIEFkcmVzc2F0ZW4gYmVzdGlt
bXQuIFNvbGx0ZW4gU2llIG5pY2h0IGRlciBmw7xyIGRpZXNlIEUtTWFpbCBiZXN0aW1tdGUgQWRy
ZXNzYXQgc2VpbiwgdW50ZXJyaWNodGVuIFNpZSBiaXR0ZSBkZW4gQWJzZW5kZXIgdW5kIHZlcm5p
Y2h0ZW4gU2llIGRpZXNlIE1haWwuIFZpZWxlbiBEYW5rLg0KVW5iZXNjaGFkZXQgZGVyIEtvcnJl
c3BvbmRlbnogcGVyIEUtTWFpbCwgc2luZCB1bnNlcmUgRXJrbMOkcnVuZ2VuIGF1c3NjaGxpZcOf
bGljaCBmaW5hbCByZWNodHN2ZXJiaW5kbGljaCwgd2VubiBzaWUgaW4gaGVya8O2bW1saWNoZXIg
U2NocmlmdGZvcm0gKG1pdCBlaWdlbmjDpG5kaWdlciBVbnRlcnNjaHJpZnQpIG9kZXIgZHVyY2gg
w5xiZXJtaXR0bHVuZyBlaW5lcyBzb2xjaGVuIFNjaHJpZnRzdMO8Y2tzIHBlciBUZWxlZmF4IGVy
Zm9sZ2VuLg0KDQpJbXBvcnRhbnQgbm90ZTogVGhlIGluZm9ybWF0aW9uIGluY2x1ZGVkIGluIHRo
aXMgZS1tYWlsIGlzIGNvbmZpZGVudGlhbC4gSXQgaXMgc29sZWx5IGludGVuZGVkIGZvciB0aGUg
cmVjaXBpZW50LiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50IG9mIHRoaXMg
ZS1tYWlsIHBsZWFzZSBjb250YWN0IHRoZSBzZW5kZXIgYW5kIGRlbGV0ZSB0aGlzIG1lc3NhZ2Uu
IFRoYW5rIHlvdS4gV2l0aG91dCBwcmVqdWRpY2Ugb2YgZS1tYWlsIGNvcnJlc3BvbmRlbmNlLCBv
dXIgc3RhdGVtZW50cyBhcmUgb25seSBsZWdhbGx5IGJpbmRpbmcgd2hlbiB0aGV5IGFyZSBtYWRl
IGluIHRoZSBjb252ZW50aW9uYWwgd3JpdHRlbiBmb3JtICh3aXRoIHBlcnNvbmFsIHNpZ25hdHVy
ZSkgb3Igd2hlbiBzdWNoIGRvY3VtZW50cyBhcmUgc2VudCBieSBmYXguDQo=

