Return-Path: <Virgil.Smith@flir.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A03EE0091A; Thu, 16 Apr 2015 08:32:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.0.64.244 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from east-edge.flir.com (east-edge.flir.com [208.0.64.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6D38E00306
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 08:32:56 -0700 (PDT)
Received: from BOS-CH1.zone1.flir.net (10.128.150.52) by EAST-EDGE.flir.com
	(10.128.210.250) with Microsoft SMTP Server (TLS) id 14.3.195.1;
	Thu, 16 Apr 2015 11:37:37 -0400
Received: from BOS-DAG1.zone1.flir.net ([169.254.2.246]) by
	BOS-CH1.zone1.flir.net ([10.128.150.52]) with mapi id 14.03.0224.002;
	Thu, 16 Apr 2015 11:31:41 -0400
From: "Smith, Virgil" <Virgil.Smith@flir.com>
To: Laurent Eschenauer <laurent@eschenauer.be>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] A simpler way to apply custom config files to an image ?
Thread-Index: AQHQeFADnDKHftKm8UGYpkSmFs62QJ1PwbHg
Date: Thu, 16 Apr 2015 15:31:41 +0000
Message-ID: <F14AEF751653024287138321000C846AF4814FF5@BOS-DAG1.zone1.flir.net>
References: <552FAFAF.30005@eschenauer.be>
In-Reply-To: <552FAFAF.30005@eschenauer.be>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.145.10.29]
MIME-Version: 1.0
Subject: Re: A simpler way to apply custom config files to an image ?
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
X-List-Received-Date: Thu, 16 Apr 2015 15:32:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBJIHdhbnQgdG8gY3VzdG9taXplIHZhcmlvdXMgY29uZmlnIGZpbGUgb2YgYW4gaW1hZ2UgSSdt
IGJ1aWxkaW5nIChlLmcuDQo+IG5ldHdvcmsgaW50ZXJmYWNlcywgc3NoZCBiYW5uZXIsIGhvc3Rh
cGQsIGV0Yy4uKS4NCg0KUGF1bCBFZ2dsZXRvbiBqdXN0IGdhdmUgYSByZXNwb25zZSB0byBhIHNp
bWlsYXIgcXVlc3Rpb24gIkZvcmNlIGluc3RhbGwgcGFja2FnZSBsYXN0Ig0KaHR0cHM6Ly9saXN0
cy55b2N0b3Byb2plY3Qub3JnL3BpcGVybWFpbC95b2N0by8yMDE1LUFwcmlsLzAyNDU0OC5odG1s
DQoNCj4gLSBJZiBub3QgcG9zc2libGUgYW5kIEkgaGF2ZSB0byBzdGljayB3aXRoIGJiYXBwZW5k
IHRvIGV2ZXJ5IHJlY2lwZSBjb25jZXJuZWQsDQo+IHRoZW4gaG93IGNvdWxkIEkgZG8gaXQgaW4g
dGhlIGNhc2Ugb2YgYSBjb25maWcgZmlsZSBjb21pbmcgZnJvbSB0aGUgc291cmNlDQo+IHBhY2th
Z2UgaW5zdGVhZCBvZiB0aGUgcmVjaXBlID8NCg0KSWYgSSB1bmRlcnN0YW5kIHlvdSBjb3JyZWN0
bHksIHRoYXQgd291bGQgYmUgYSBwYXRjaC4gIEZvciAidW5jaGVja2VkIiB3aG9sZSByZXBsYWNl
bWVudCBvZiBmaWxlcywgSSd2ZSBzZWVuIGJiYXBwZW5kcyB3aXRoIGEgZG9fcGF0Y2hfYXBwZW5k
IGZ1bmN0aW9uIHRvIGNvcHkgZmlsZXMgKHNwZWNpZmllZCBpbmRpdmlkdWFsbHkgaW4gU1JDX1VS
SSBsaWtlIHBhdGNoIGZpbGVzKSBmcm9tIHRoZSBiYXNlIG9mIHRoZSB3b3JrIGRpciB0byB0aGUg
Y29ycmVjdCBwYXRoIHVuZGVyIHRoZSBzb3VyY2UgZGlyZWN0b3J5Lg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXw0KDQpOb3RpY2UgdG8gcmVjaXBpZW50OiBUaGlzIGVtYWlsIGlz
IG1lYW50IGZvciBvbmx5IHRoZSBpbnRlbmRlZCByZWNpcGllbnQgb2YgdGhlIHRyYW5zbWlzc2lv
biwgYW5kIG1heSBiZSBhIGNvbW11bmljYXRpb24gcHJpdmlsZWdlZCBieSBsYXcsIHN1YmplY3Qg
dG8gZXhwb3J0IGNvbnRyb2wgcmVzdHJpY3Rpb25zIG9yIHRoYXQgb3RoZXJ3aXNlIGNvbnRhaW5z
IHByb3ByaWV0YXJ5IGluZm9ybWF0aW9uLiBJZiB5b3UgcmVjZWl2ZSB0aGlzIGVtYWlsIGJ5IG1p
c3Rha2UsIHBsZWFzZSBub3RpZnkgdXMgaW1tZWRpYXRlbHkgYnkgcmVwbHlpbmcgdG8gdGhpcyBt
ZXNzYWdlIGFuZCB0aGVuIGRlc3Ryb3kgaXQgYW5kIGRvIG5vdCByZXZpZXcsIGRpc2Nsb3NlLCBj
b3B5IG9yIGRpc3RyaWJ1dGUgaXQuIFRoYW5rIHlvdSBpbiBhZHZhbmNlIGZvciB5b3VyIGNvb3Bl
cmF0aW9uLg0K

