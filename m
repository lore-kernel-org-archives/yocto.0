Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B115E00AAA; Wed, 14 Oct 2015 22:16:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from remote.innerrange.com (122-143-146.dsl.connexus.net.au
	[203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C8ECE007D1
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 22:16:13 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%15]) with
	mapi; Thu, 15 Oct 2015 16:16:13 +1100
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 15 Oct 2015 16:16:11 +1100
Thread-Topic: [yocto] Making /etc/os-release loadable by shell script
Thread-Index: AdC0rhOMVDYeupKXRXO+39s0II5zghSWjRrA
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40227CB77509E@IR-CENTRAL.corp.innerrange.com>
References: <5500469A22567C4BAF673A6E86AFA3A40227C1CB9D50@IR-CENTRAL.corp.innerrange.com>
	<CAJTo0LY_EZhTefsh7UO6aO0NAMwrnktv5sh1dBydaYgOc7XfzQ@mail.gmail.com>
In-Reply-To: <CAJTo0LY_EZhTefsh7UO6aO0NAMwrnktv5sh1dBydaYgOc7XfzQ@mail.gmail.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1239-8.000.1202-21878.005
x-tm-as-result: No--48.396300-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Making /etc/os-release loadable by shell script
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
X-List-Received-Date: Thu, 15 Oct 2015 05:16:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Um9zcyBCdXJ0b24gd3JvdGU6DQoNCj4gT24gMiBKdWx5IDIwMTUgYXQgMDk6MDAsIENyYWlnIE1j
UXVlZW4gPGNyYWlnLm1jcXVlZW5AaW5uZXJyYW5nZS5jb20+IHdyb3RlOg0KPiA+IEl0IHdvdWxk
IGJlIGdvb2QgaWYgdGhlIC9ldGMvb3MtcmVsZWFzZSBmaWxlIChjcmVhdGVkIGJ5IHRoZSBjb3Jl
IG9zLXJlbGVhc2UgcGFja2FnZSkgY291bGQgYmUgbG9hZGFibGUgYnkgYSBzaGVsbCBzY3JpcHQu
IFRoYXQgaXMsIGEgc2hlbGwgc2NyaXB0IGNhbiBkbzoNCj4gPg0KPiA+wqAgwqAgc291cmNlIC9l
dGMvb3MtcmVsZWFzZQ0KPiA+IG9yDQo+ID7CoCDCoCAuIC9ldGMvb3MtcmVsZWFzZQ0KPiA+DQo+
ID4gQnV0IGl0J3MgY3VycmVudGx5IG5vdCBwb3NzaWJsZSwgYmVjYXVzZSB0aGUgZmlsZSBsYWNr
cyBkb3VibGUtcXVvdGVzIGFyb3VuZCB2YWx1ZXMgdGhhdCB3b3VsZCBtYWtlIGl0IHZhbGlkIHNo
ZWxsIGFzc2lnbm1lbnQgc3ludGF4Lg0KPg0KPiBDb3VsZCB5b3UgdHJhbnNmb3JtIHlvdSBiYmFw
cGVuZCB0byBhIHBhdGNoIGFnYWluc3Qgb2UtY29yZSBhbmQgc3VibWl0IGl0Pw0KDQpTdXJlLCBk
b25lLiAoSXQgdG9vayBtZSBhIGxvbmcgdGltZSB0byBnZXQgYXJvdW5kIHRvIHNldHRpbmcgdXAg
Z2l0IGZvciBzZW5kLWVtYWlsIGZ1bmN0aW9uYWxpdHkuKQ0KDQpJIGRpZCB0aGUgcGF0Y2ggZm9y
IG1hc3RlciwgYWx0aG91Z2ggSSdtIHN0aWxsIHVzaW5nIGRpenp5IG15c2VsZi4NCg0KLS0gDQpD
cmFpZyBNY1F1ZWVuDQoNCg==

