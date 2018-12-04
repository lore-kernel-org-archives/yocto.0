Return-Path: <Georgi.Georgiev@woodward.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AEC6E00BB5; Tue,  4 Dec 2018 06:02:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from Mail1.woodward.com (mail1.woodward.com [216.17.208.201])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CF56E00566
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2018 06:02:44 -0800 (PST)
Received: from pps.filterd (CoCo-PMSGA1.woodward.com [127.0.0.1])
	by CoCo-PMSGA1.woodward.com (8.16.0.22/8.16.0.22) with SMTP id
	wB4E2KWw024145; Tue, 4 Dec 2018 08:02:37 -0600
Received: from coil-exmb3.woodward.com ([10.51.100.66])
	by CoCo-PMSGA1.woodward.com with ESMTP id 2p5bbbhppm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Tue, 04 Dec 2018 08:02:37 -0600
Received: from KempHC1.woodward.com (10.25.100.51) by COIL-ExMb3.woodward.com
	(10.51.100.66) with Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Tue, 4 Dec 2018 08:02:20 -0600
Received: from KempMail2.woodward.com ([169.254.2.232]) by
	KempHC1.woodward.com ([172.20.1.103]) with mapi;
	Tue, 4 Dec 2018 15:02:20 +0100
From: Georgi Georgiev <Georgi.Georgiev@woodward.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 4 Dec 2018 15:02:17 +0100
Thread-Topic: [EXTERNAL] Re: [yocto] Missing dependencies in recipe-sysroot
Thread-Index: AdSLumMzhZuV8cBIT1iw7CXXtLksHAAEn8dg
Message-ID: <B4ED84A4DCF0D84FB25CE972E5CF346A5D185E24E6@KEMPMAIL2.woodward.com>
References: <B4ED84A4DCF0D84FB25CE972E5CF346A5D1831B68E@KEMPMAIL2.woodward.com>
	<CAJTo0LagP7=zjiXYSU=eXpm6dfH049HDhpF2N8frrB1oha3PZw@mail.gmail.com>
In-Reply-To: <CAJTo0LagP7=zjiXYSU=eXpm6dfH049HDhpF2N8frrB1oha3PZw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	suspectscore=0 malwarescore=0
	phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
	adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.0.1-1810050000 definitions=main-1812040119
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [EXTERNAL] Re: Missing dependencies in recipe-sysroot
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
X-List-Received-Date: Tue, 04 Dec 2018 14:02:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmsgeW91IFJvc3MsDQpDb21waWxhdGlvbiBpc3N1ZXMgYXJlIGdvbmUuLi5Pbmx5IG9uZSBE
RVBFTkRTIGFwcGVhcmVkIHRvIGJlIGVub3VnaCA6LSkuIFRoYW5rIHlvdSBhZ2Fpbg0KQnV0IGNh
biBnaXZlIG1lIGEgaGFuZCB0byB0aGUgZm9sbG93aW5nIGJlY2F1c2Ugbm93IEkgaGF2ZSBRQSBp
c3N1ZXMgZHVyaW5nIG15ICJjb3JydXB0ZWQiIG1ha2VmaWxlLiBJcyB0aGVyZSBhbnkgd2F5IHRv
IHBhc3MgdGhpcyAtLXN5c3Jvb3Q9LzxmdWxsIHBhdGg+L3JlY2lwZS1zeXNyb290IGJlZm9yZSAt
TC91c3IvbGliLiBFZyBzb21laG93IHRoZSB3aG9sZSBwYXRoIHRvIGJlIGxpa2UgLUwvPGZ1bGwg
cGF0aD4vcmVjaXBlLXN5c3Jvb3QvdXNyL2xpYiBpbiBteSBtYWtlZmlsZS4gZ2NjIGFjdHVhbGx5
IGZvbGxvd3MgLS1zeXNyb290ICBhbmQgL3Vzci9pbmNsdWRlIGlzIHRvIHRhcmdldCBzeXNyb290
Li4uYnV0IG9uZSBhbm5veWluZyB3YXJuaW5nIGFwcGVhciBhbmQgbm93IHRoaXMgaXMgbXkgbGFz
dCBpc3N1ZS4NCmNjMTogd2FybmluZzogaW5jbHVkZSBsb2NhdGlvbiAiL3Vzci9pbmNsdWRlIiBp
cyB1bnNhZmUgZm9yIGNyb3NzLWNvbXBpbGF0aW9uIFstV3BvaXNvbi1zeXN0ZW0tZGlyZWN0b3Jp
ZXNdDQpRQSBzdGFnZSAoZG9fcGFja2FnZV9xYSkgZG9lcyBub3QgcGFzcy4gDQpIZXJlIGlzIG15
ICJjb3JydXB0ZWQiIG1ha2VmaWxlOg0KDQojIHdlIHdpbGwgdXNlIGVudiBmcm9tIHBva3kgQ0Mg
Oj0gYXJtLWxpbnV4LWdudWVhYmloZi1nY2MNCkNGTEFHUyA6PSAtZyAtV2FsbCAtZnBpYw0KUk0g
PSBybSAtZiAkKERFUERJUikvKi5kICQoT0JKRElSKS8qLm8gKn4gJChPVVRQVVQpDQpERVBESVIg
Oj0gZGVwDQpPQkpESVIgOj0gb2JqDQpPVVRQVVQgOj0gbGliYW55YnVzLW00MC5zby4wLjAuMQ0K
DQpMT0NBTF9TUkNfRElSUyA6PSAuDQpMT0NBTF9TUkNfRElSUyArPSBhYmNjX2FkYXB0DQpMT0NB
TF9TUkNfRElSUyArPSBhYmNjX2Rydi9zcmMNCkxPQ0FMX1NSQ19ESVJTICs9IGFiY2NfZHJ2L3Ny
Yy9wYXINCkxPQ0FMX1NSQ19ESVJTICs9IGFiY2NfZHJ2L3NyYy9wYXIzMA0KTE9DQUxfU1JDX0RJ
UlMgKz0gYWJjY19kcnYvc3JjL3NlcmlhbA0KTE9DQUxfU1JDX0RJUlMgKz0gYWJjY19kcnYvc3Jj
L3NwaQ0KDQpMT0NBTF9JTkNfRElSUyA6PSAuDQpMT0NBTF9JTkNfRElSUyArPSBhYmNjX2FicA0K
TE9DQUxfSU5DX0RJUlMgKz0gYWJjY19hZGFwdA0KTE9DQUxfSU5DX0RJUlMgKz0gYWJjY19kcnYv
aW5jDQpMT0NBTF9JTkNfRElSUyArPSBhYmNjX2Rydi9zcmMNCkxPQ0FMX0lOQ19ESVJTICs9IGFi
Y2NfZHJ2L3NyYy9wYXINCkxPQ0FMX0lOQ19ESVJTICs9IGFiY2NfZHJ2L3NyYy9wYXIzMA0KTE9D
QUxfSU5DX0RJUlMgKz0gYWJjY19kcnYvc3JjL3NlcmlhbA0KTE9DQUxfSU5DX0RJUlMgKz0gYWJj
Y19kcnYvc3JjL3NwaQ0KTE9DQUxfSU5DX0RJUlMgKz0gL3Vzci9pbmNsdWRlDQoNClNSQyA6PSAk
KGZvcmVhY2ggc2RpciwkKExPQ0FMX1NSQ19ESVJTKSwkKHdpbGRjYXJkICQoc2RpcikvKi5jKSkN
CklOQyA6PSAkKGZvcmVhY2ggaWRpciwkKExPQ0FMX0lOQ19ESVJTKSwtSSQoaWRpcikpDQpMSUIg
Oj0gLUwvdXNyL2xpYg0KTERGTEFHUyA6PSAtbGdwaW9kIC1zaGFyZWQgLWZQSUMgLVdsLC1zb25h
bWUsbGliYW55YnVzLW00MC5zby4wDQpPQkogOj0gJChhZGRwcmVmaXggJChPQkpESVIpLywkKG5v
dGRpciAkKFNSQzouYz0ubykpKQ0KREVQIDo9ICQoYWRkcHJlZml4ICQoREVQRElSKS8sJChub3Rk
aXIgJChPQko6Lm89LmQpKSkNCg0KVlBBVEggPSAkKExPQ0FMX1NSQ19ESVJTKQ0KDQppZm5lcSAi
JChmaW5kc3RyaW5nIGNsZWFuLCQoTUFLRUNNREdPQUxTKSkiICJjbGVhbiINCi1pbmNsdWRlICQo
REVQKQ0KZW5kaWYNCg0KLlBIT05ZOiBhbGwgY2xlYW4gZGlydHJlZQ0KLkRFRkFVTFRfR09BTCA6
PSBhbGwNCg0KYWxsOiAkKE9VVFBVVCkNCg0KJChPVVRQVVQpOiAkKE9CSikNCgkkKENDKSAkKExE
RkxBR1MpIC1vICRAICQoTElCKSAkXg0KDQokKERFUERJUikvJS5kOiAlLmMNCgkkKENDKSAkKExJ
QikgLU1NIC1NRiAkQCAtTVAgLU1UICIkKE9CSkRJUikvJCoubyAkQCIgJChDRkxBR1MpICQoSU5D
KSAkPCANCg0KDQokKE9CSkRJUikvJS5vOiAlLmMNCgkkKENDKSAkKExJQikgJChDRkxBR1MpICQo
SU5DKSAtYyAtbyAkQCAkPCANCg0KJChPQkopICQoREVQKTogfCBkaXJ0cmVlDQoNCmRpcnRyZWU6
DQoJbWtkaXIgLXAgJChERVBESVIpICQoT0JKRElSKQ0KDQpjbGVhbjoNCgkkKFJNKQ0KDQpDb3Jk
aWFsbHksDQpHZW9yZ2kNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBCdXJ0b24s
IFJvc3MgW21haWx0bzpyb3NzLmJ1cnRvbkBpbnRlbC5jb21dIA0KU2VudDogVHVlc2RheSwgRGVj
ZW1iZXIgMDQsIDIwMTggMTI6MTYgUE0NClRvOiBHZW9yZ2kgR2VvcmdpZXYgPEdlb3JnaS5HZW9y
Z2lldkB3b29kd2FyZC5jb20+DQpDYzogWW9jdG8tbWFpbGluZy1saXN0IDx5b2N0b0B5b2N0b3By
b2plY3Qub3JnPg0KU3ViamVjdDogW0VYVEVSTkFMXSBSZTogW3lvY3RvXSBNaXNzaW5nIGRlcGVu
ZGVuY2llcyBpbiByZWNpcGUtc3lzcm9vdA0KDQpXZSd2ZSBhbHJlYWR5IGdvbmUgdGhyb3VnaCB0
aGlzIG9uIFNPIGJ1dCBJJ2xsIGNvcHkvcGFzdGUgaGVyZS4NCg0KT24gVHVlLCA0IERlYyAyMDE4
IGF0IDA4OjMwLCBHZW9yZ2kgR2VvcmdpZXYgPEdlb3JnaS5HZW9yZ2lldkB3b29kd2FyZC5jb20+
IHdyb3RlOg0KPiAjIyMjI1RoZSBvbmx5IGRlcGVuZGVuY3kNCj4NCj4gUkRFUEVORFNfJHtQTn0g
PSAibGliZ3Bpb2QiDQo+DQo+IFJERVBFTkRTXyR7UE59LWRldiA9ICJsaWJncGlvZCINCj4NCj4g
UkRFUEVORFNfJHtQTn0tZGJnID0gImxpYmdwaW9kIg0KDQpERVBFTkRTID0gImxpYmdwaW9kIi4g
IFJERVBFTkRTIHdpbGwgYnVpbGQgbGliZ3Bpb2QgYXQgc29tZSBwb2ludCwgYnV0IGl0IHdvbid0
IGJlIGluIHRoZSBzeXNyb290IGZvciBjb21waWxhdGlvbi4gIEJlZm9yZSByZWNpcGUtc3BlY2lm
aWMtc3lzcm9vdHMgdGhpcyB3b3VsZCBtZWFuIGl0ICptaWdodCogYmUgcHJlc2VudCwgbm93IGl0
IHJlbGlhYmx5IHdvbid0Lg0KDQo+IFRoZW4gSSBub3RpY2VkIHRoYXQgdGhlIGNvbW1hbmQgbGlu
ZSBpczoNCj4NCj4gYXJtLXBva3ktbGludXgtZ251ZWFiaS1nY2MgIC1tYXJjaD1hcm12Ny1hIC1t
ZnB1PW5lb24gLW1mbG9hdC1hYmk9aGFyZCAtbWNwdT1jb3J0ZXgtYTkgLS1zeXNyb290PS88ZnVs
bCBwYXRoPi9yZWNpcGUtc3lzcm9vdCAtTC91c3IvbGliIC1nIC1XYWxsIC1mcGljIC4uLi4uDQoN
ClRoZSBwcm9ibGVtIGlzIHRoZSAtTC91c3IvbGliLCB3aGljaCBwcmVzdW1hYmx5IHNob3VsZCBi
ZSB3aGVyZSBsaWJncGlvZCBpcy4gIFRoZSBtYWtlZmlsZSBpcyBicm9rZW4sIG9yIHBvc3NpYmx5
IHNvbWUgdG9vbGluZyB0aGF0IHRoZSBtYWtlZmlsZSBpcyBjYWxsaW5nLiAgQXMgeW91IGhhdmVu
J3Qgc2hhcmVkIHRoZSBtYWtlZmlsZSB3ZSBjYW4ndCBoZWxwIGZ1cnRoZXIuDQoNClJvc3MNCg==

