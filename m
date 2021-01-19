Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web12.11839.1611066281656408391
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Jan 2021 06:24:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=avs8cfpo;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1611066281; x=1768746281;
  h=from:to:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=oYzCHrQJr3y/kU4Q+CF3C571monJhWuvRsKiaLNZI8s=;
  b=avs8cfpoJXCFS+7jWup7E6mSaRRaRX99qQmAyfqBeroQFvf+rkwDpfyL
   hWYlob6ym47BQUmXzQL+4ZeK4q9wDAAuVZs162/yEwWtWpXHIKAvdHBxm
   Rg6LWnUvbXr4BqRGPnh2sedRpLjVHwQCaarxUV02PFVogmk6EfIG7EbNS
   o=;
IronPort-PHdr: =?us-ascii?q?9a23=3APXshpB38xgGrBEB6smDT+DRfVm0co7zxezQtwd8Z?=
 =?us-ascii?q?sesXK/vxwZ3uMQTl6Ol3ixeRBMOHsqMC0rKd7fuoGTRZp8rY7zZaKN0EfiRGoP?=
 =?us-ascii?q?1epxYnDs+BBB+zB9/RRAt+Iv5/UkR49WqwK0lfFZW2TVTTpnqv8WxaQU2nZkJ6?=
 =?us-ascii?q?KevvB4Hdkdm82fys9J3PeQVIgye2ba9vIBmsogjdq80bjZF/JqotxRfEo3VFcP?=
 =?us-ascii?q?lSyW90OF6fhRnx6tqy8ZJ57yhcp/ct/NNcXKvneKg1UaZWByk8PWAv483ruxjD?=
 =?us-ascii?q?TQ+R6XYZT24bjBlGDRXb4R/jRpv+vTf0ueR72CmBIM35Vqs0Vii476dqUxDnli?=
 =?us-ascii?q?EKPCMk/W7Ni8xwiKVboA+9pxF63oXZbp2ZOOZ4c6jAZt4RW3ZPUdhNWCxAGoO8?=
 =?us-ascii?q?bpUAD+wdPeZDsoLxo0ICoQaiCQWwAe/izCJDiH3r0q0gy+kvER/I0hE8H9wAs3?=
 =?us-ascii?q?rUotf6NKYOXu66w6bF1inDYOhU2Tvh9ITEbhIsrPeRVrxwa8rRzkwvGhvLgluX?=
 =?us-ascii?q?rozlOSiV2foTvGiA9+ZrSP+hi3I5pAFvvDevwNonh5fUjY4RxF/K6CB1zIgoLt?=
 =?us-ascii?q?C/U057fcCrEIVOuCGcLYd2R8QiQ2dzuCkk1LIGooW2czMQx5s53B7ea+eHc5SW?=
 =?us-ascii?q?7RLmT+adOyt3hHVgeL+mgRu57EevxPHmWMauzFZKsjRKksPKtn0V2BLe9siKR+?=
 =?us-ascii?q?Z880muxTuC1h3f5+JaLE46iafWK50szqAzm5cTrUnNHiH4lFjygaOLeUgp+fak?=
 =?us-ascii?q?5/jlb7j7opKRNYl5gRz9PKQ2gsGzHPg0PhIAUmWZ4+iwyqPv8E3jTLhLj/A6ir?=
 =?us-ascii?q?TVvIzAKckUqaO1GQBY3pw+5xu/CTqtzc4WkmMdLF1ffRKKl43pO1bTL//mFfq/?=
 =?us-ascii?q?mFGskCtzx/DBI73hHo3BLnjdn7flerZw81JTxxAozd9D4pJUEbUMLfbwV0Ptqt?=
 =?us-ascii?q?DUFBk5PBauz+n8EtpyyJgeWGKUAq+FLqzStESI6vgzLOmLYY8ZoDf9K/476P7y?=
 =?us-ascii?q?lXI1hEMRcbOn0JYVcny0AOpqLkWDbXftg9oNCWIKsRA/TOzuhl2CSzlTZ3OqUq?=
 =?us-ascii?q?In+jE0FpymApnFRoy3hbyB2yG7HoZIaW9YEVCBCmzneJ+aVPcXaCOSOdNhnSIB?=
 =?us-ascii?q?Vbi6UYMuyRautArix7p9MuXU4jEYtY7k1NVt5+zTkg099SBzD8mG12GNTnp0nn?=
 =?us-ascii?q?8TRzMs3KF/plByykuE0ahgmfxYEt5T6O1VXQcmL5LcyPZ6C9+hEj7GK+2IQ1av?=
 =?us-ascii?q?WNnuOSwrQtM8i4sUYk19Es+uyAjexSarDpcRlrqWFJIz76TQ1mTwIMA7zGzJgu?=
 =?us-ascii?q?1pxUghSddIHWmnnbJksRnUDJLOi1+elauhaeIbxiGHvDOSymGSu2lcURVsSuPU?=
 =?us-ascii?q?WnsDYVPMqtb07V+ESKWhX+cJKAxEnISnLa1RZ9DyyR19WPr9NdKWSCrxplzxT1?=
 =?us-ascii?q?7c3a+BcofsPWAa2j7QBVMsmQke5medKQU7HWGqpGeIX28mLk7mf065qbo2k3i8?=
 =?us-ascii?q?VEJhiljSN0A=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2A8AwDU6gZg/0LhJQpiHgEBCxIMQIFEC?=
 =?us-ascii?q?4RaCoQ1kVOVDoUzFIFoCwEBAQEBAQEBAQgBGBcEAQGESgIXgV0mNgcOAhABAQY?=
 =?us-ascii?q?BAQEBAQYEAYZdgjgpAYMRAQEBBAEiEVEEAgEIEQQBAQECAiYCAgImChUICAIEA?=
 =?us-ascii?q?RIItHp2gTKKTgkBgQQqhneGQIIDPoQqPoQJARIBgzqCYASDT4FDRIEVknSlKwc?=
 =?us-ascii?q?DgneUcoZtK6JqLZNunS6EIQIEAgQFAhaBXQeBE3BwgzlQFwINji0XjiZ0NwIGC?=
 =?us-ascii?q?gEBAwmLV4ERAQE?=
X-IPAS-Result: =?us-ascii?q?A2A8AwDU6gZg/0LhJQpiHgEBCxIMQIFEC4RaCoQ1kVOVDoU?=
 =?us-ascii?q?zFIFoCwEBAQEBAQEBAQgBGBcEAQGESgIXgV0mNgcOAhABAQYBAQEBAQYEAYZdg?=
 =?us-ascii?q?jgpAYMRAQEBBAEiEVEEAgEIEQQBAQECAiYCAgImChUICAIEARIItHp2gTKKTgk?=
 =?us-ascii?q?BgQQqhneGQIIDPoQqPoQJARIBgzqCYASDT4FDRIEVknSlKwcDgneUcoZtK6JqL?=
 =?us-ascii?q?ZNunS6EIQIEAgQFAhaBXQeBE3BwgzlQFwINji0XjiZ0NwIGCgEBAwmLV4ERAQE?=
X-IronPort-AV: E=Sophos;i="5.79,359,1602547200"; 
   d="scan'208";a="340649722"
X-IronPort-AV: E=Sophos;i="5.79,359,1602547200"; 
   d="scan'208";a="176834340"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #kernel BB_GENERATE_MIRROR_TARBALLS
Thread-Topic: [yocto] #yocto #kernel BB_GENERATE_MIRROR_TARBALLS
Thread-Index: AQHW7m0xv64mRxX0TTiT7tjgC5xrOqovAIyw
Date: Tue, 19 Jan 2021 14:24:32 +0000
In-Reply-To: <89f8ba43ed2f9a05d11d13268c03a00769fa30b3.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.165BA83FDBC0DF47.2886@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpGcm9tIHNoZWxsLi4uIEkganVzdCBjaGVja2VkIHRoZSBtZWdhLW1hbnVhbCwgd2lsbCByZXJ1
biBhcyBkZXNjcmliZWQuLi4NCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IFJp
Y2hhcmQgUHVyZGllIDxyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnPiANClNlbnQ6
IFR1ZXNkYXksIEphbnVhcnkgMTksIDIwMjEgOToxMyBBTQ0KVG86IE1vbnNlZXMsIFN0ZXZlbiBD
IChVUykgPHN0ZXZlbi5tb25zZWVzQGJhZXN5c3RlbXMuY29tPjsgeW9jdG9AbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gI3lvY3RvICNrZXJuZWwgQkJfR0VORVJB
VEVfTUlSUk9SX1RBUkJBTExTDQoNCioqKiBXQVJOSU5HICoqKg0KRVhURVJOQUwgRU1BSUwgLS0g
VGhpcyBtZXNzYWdlIG9yaWdpbmF0ZXMgZnJvbSBvdXRzaWRlIG91ciBvcmdhbml6YXRpb24uDQoN
Cg0KT24gVHVlLCAyMDIxLTAxLTE5IGF0IDE0OjA4ICswMDAwLCBNb25zZWVzLCBTdGV2ZW4gQyAo
VVMpIHdyb3RlOg0KPiBUaGF0IHdhcyBzZXQgOiBleHBvcnQgQkJfR0VORVJBVEVfTUlSUk9SX1RB
UkJBTExTPTENCg0KSnVzdCB0byBiZSBjbGVhciwgd2hlcmUgZGlkIHlvdSBzZXQgdGhhdD8gSW4g
YSAuY29uZiBmaWxlPyBJZiBzbywgeW91IGRvbid0IG5lZWQgdGhlIGV4cG9ydCBiaXQuIElmIGl0
IHdhcyBpbiBhIHNoZWxsIGl0IHByb2JhYmx5IHdvdWxkbid0IHdvcmsuDQoNCkFsc28sIHlvdSBk
aWRuJ3QgYW5zd2VyIG15IG90aGVyIHF1ZXN0aW9uLCBkaWQgeW91IHJlZmV0Y2ggZXZlcnl0aGlu
ZyB3aXRoIHRoYXQgc2V0Pw0KDQpDaGVlcnMsDQoNClJpY2hhcmQNCg0KDQoNCg==
