Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 906EFE00CC4; Wed,  1 Nov 2017 16:06:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from remote.innerrange.com (122-143-132.dsl.connexus.net.au
	[203.122.143.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A5F2E00C44
	for <yocto@yoctoproject.org>; Wed,  1 Nov 2017 16:06:38 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%15]) with
	mapi; Thu, 2 Nov 2017 10:06:35 +1100
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 2 Nov 2017 10:06:33 +1100
Thread-Topic: [yocto] linux-firmware: build failure
Thread-Index: AdNSKoCYcjEf8ufrQWqfIIo+HiOj5gBO1tDA
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40295F094B916@IR-CENTRAL.corp.innerrange.com>
References: <5500469A22567C4BAF673A6E86AFA3A40295F094B8EC@IR-CENTRAL.corp.innerrange.com>
	<732a94f9-4219-b49d-0218-1e0d26b1c3de@linux.intel.com>
In-Reply-To: <732a94f9-4219-b49d-0218-1e0d26b1c3de@linux.intel.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1278-8.100.1062-23432.001
x-tm-as-result: No--12.176600-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Re: linux-firmware: build failure
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
X-List-Received-Date: Wed, 01 Nov 2017 23:06:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWxleGFuZGVyIEthbmF2aW4gd3JvdGU6DQo+IE9uIDEwLzMxLzIwMTcgMDk6MDQgQU0sIENyYWln
IE1jUXVlZW4gd3JvdGU6DQo+ID4gV291bGQgdGhlIGZvbGxvd2luZyBiZSBhIHN1aXRhYmxlIGZp
eD8gLS0NCj4gDQo+IFRoaXMgbmVlZHMgdG8gZ28gdG8gb2UtY29yZSBsaXN0LiBKdXN0IG9uZSBj
b21tZW50Li4uDQo+IA0KPiA+ICAgICAgICAgICMgUmVtb3ZlIHB5dGhvbiBzY3JpcHQgdXNlZCB0
byBjaGVjayB0aGUgV0hFTkNFIGZpbGUNCj4gPiAtICAgICAgIHJtICR7RH0ke25vbmFyY2hfYmFz
ZV9saWJkaXJ9L2Zpcm13YXJlL2NoZWNrX3doZW5jZS5weQ0KPiA+ICsgICAgICAgcm0gJHtEfSR7
bm9uYXJjaF9iYXNlX2xpYmRpcn0vZmlybXdhcmUvY2hlY2tfd2hlbmNlLnB5IC1yZg0KPiA+DQo+
IA0KPiBZb3UgbmVlZCB0byBlaXRoZXIgcmVtb3ZlIHRoZSBmaWxlLCBvciByZW1vdmUgdGhlIGxp
bmUgdGhhdCBkb2VzIHRoZQ0KPiByZW1vdmFsLiBEb24ndCBkbyBhICdyZW1vdmUgaWYgcHJlc2Vu
dCcsIGl0J3MgYmV0dGVyIHRvIGJlIGRldGVybWluaXN0aWMuDQoNClNvcnJ5LCBJIG1hZGUgYSBt
aXN0YWtlLiBJIGhhZCBhIGJiYXBwZW5kIGZvciBsaW51eC1maXJtd2FyZSBpbiBteSBsYXllciwg
d2hpY2ggcmV0cmlldmVkIGFuIG9sZGVyIHJldmlzaW9uIGZyb20gYSB5ZWFyIGFnbyAoYXQgdGhl
IHRpbWUgSSB3cm90ZSB0aGUgYmJhcHBlbmQsIGl0IHdhcyB0byByZXRyaWV2ZSBhIG5ld2VyIHZl
cnNpb24pLiBTbywgZmFsc2UgYWxhcm0gLS0gbXkgYXBvbG9naWVzLg0KDQotLSANCkNyYWlnIE1j
UXVlZW4NCg0K

