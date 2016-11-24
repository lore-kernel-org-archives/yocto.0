Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44CF6E00CAE; Thu, 24 Nov 2016 04:37:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Thu, 24 Nov 2016 04:37:52 PST
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4237E00955
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 04:37:52 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2H8AACN3jZY/xUHmMZeGwEBAQMBAQEJA?=
	=?us-ascii?q?QEBgxQkAQEBAQEfWIECBwGNOJcblHSBRkIkhX0CGoFVPxQBAgEBAQEBAQEDXyi?=
	=?us-ascii?q?CWj0GBy8BAQEBAQEBAQEBAQEBHAIPQQEBGAEBAQECARIREToQBwQCAQgNBAQBA?=
	=?us-ascii?q?QMCBh0DAgICMBQBCAgBAQQBEggaiEMIAaMpimOCKSoCiysBAQEBAQEBAQEBAQE?=
	=?us-ascii?q?BAQEBAQEBAQEcgQuFNIRahEsVgm0tgjAFiFKHYIQ5hWkBhkeMf4ddhhSNcYQMH?=
	=?us-ascii?q?jcugQeFMHKHOgGBDAEBAQ?=
X-IPAS-Result: =?us-ascii?q?A2H8AACN3jZY/xUHmMZeGwEBAQMBAQEJAQEBgxQkAQEBAQE?=
	=?us-ascii?q?fWIECBwGNOJcblHSBRkIkhX0CGoFVPxQBAgEBAQEBAQEDXyiCWj0GBy8BAQEBA?=
	=?us-ascii?q?QEBAQEBAQEBHAIPQQEBGAEBAQECARIREToQBwQCAQgNBAQBAQMCBh0DAgICMBQ?=
	=?us-ascii?q?BCAgBAQQBEggaiEMIAaMpimOCKSoCiysBAQEBAQEBAQEBAQEBAQEBAQEBAQEcg?=
	=?us-ascii?q?QuFNIRahEsVgm0tgjAFiFKHYIQ5hWkBhkeMf4ddhhSNcYQMHjcugQeFMHKHOgG?=
	=?us-ascii?q?BDAEBAQ?=
X-IronPort-AV: E=Sophos;i="5.31,543,1473134400"; d="scan'208";a="181187086"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by de307622-de-outbound.net.avaya.com with ESMTP;
	24 Nov 2016 07:36:43 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC03.global.avaya.com) ([135.64.58.13])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	24 Nov 2016 07:36:43 -0500
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC03.global.avaya.com ([135.64.58.13]) with mapi id
	14.03.0319.002; Thu, 24 Nov 2016 07:36:40 -0500
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: Michel D'HOOGE <michel.dhooge@free.fr>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] How to add user with nologin shell
Thread-Index: AdJGOlndONxZfNkdSfSjctUlP6w3Yv//89YA///KKRA=
Date: Thu, 24 Nov 2016 12:36:40 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3E7F66E9@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3E7F65EC@AZ-FFEXMB01.global.avaya.com>
	<483062628.361987886.1479982946334.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <483062628.361987886.1479982946334.JavaMail.root@spooler3-g27.priv.proxad.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.47]
MIME-Version: 1.0
Subject: Re: How to add user with nologin shell
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
X-List-Received-Date: Thu, 24 Nov 2016 12:37:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNClN0aWxsIHNhbWUgZXJyb3IgZXZlbiBpZiBJIHVzZWQgLVUgb3B0aW9uLg0KDQpJIHRy
aWVkIGV2ZW4gZ3JvdXBhZGQgYnV0IHN0aWxsIEkgZ2V0IGJlbG93IGVycm9yLg0KDQpTbyBhbnkg
dGhvdWdodHMgdG8gZml4IGl0Lg0KDQpUaGFua3MsDQpBYmhpbmF2DQoNCi0tLS0tT3JpZ2luYWwg
TWVzc2FnZS0tLS0tDQpGcm9tOiB5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmcgW21haWx0
bzp5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmddIE9uIEJlaGFsZiBPZiBNaWNoZWwgRCdI
T09HRQ0KU2VudDogVGh1cnNkYXksIE5vdmVtYmVyIDI0LCAyMDE2IDE1OjUyDQpUbzogeW9jdG9A
eW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gSG93IHRvIGFkZCB1c2VyIHdp
dGggbm9sb2dpbiBzaGVsbA0KDQpIaSwgDQoNCj4gRnJvbTogIkFiaGluYXYgQmlwbmVzaCAoQWJo
aW5hdikiIDxhYmhpbmF2YmlwbmVzaEBhdmF5YS5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCAyNCBO
b3ZlbWJlciwgMjAxNiAxMTowNTo1OSBBTQ0KDQo+IEkgYW0gdHJ5aW5nIHRvIGFkZCBhbiB1c2Vy
IHRvIGltYWdlIHdpdGggL3NiaW4vbm9sb2dpbiBidXQgaXQgZmFpbHMgDQo+IHdpdGggYmVsb3cg
ZXJyb3INCg0KDQo+IEVSUk9SOiBGdW5jdGlvbiBmYWlsZWQ6IHNldF91c2VyX2dyb3VwIChsb2cg
ZmlsZSBpcyBsb2NhdGVkIGF0DQo+IC9ob21lL2FiaGluYXYvYml0YmFrZS/igKYvdGVzdC1pbWFn
ZS8xLjAtcjAvdGVtcC9sb2cuZG9fcm9vdGZzLjU0NzI1KQ0KDQpUaGUgcHJvYmxlbSBzZWVtcyB0
byBiZSB3aXRoIHRoZSBncm91cC4NCkFjY29yZGluZyB0byBteSBtYW4gcGFnZSwgdGhlIGdyb3Vw
IG11c3QgYWxyZWFkeSBleGlzdC4NCg0KPiBJIGFtIHVzaW5nIGJlbG93IHNlY3Rpb24gaW4gbXkg
cmVjaXBlIHRvIGFjaGlldmUgaXQgRVhUUkFfVVNFUlNfUEFSQU1TIA0KPiA9IOKAnHVzZXJhZGQg
LU0gLWcgdXNlcjEgdXNlcjEgLXIgLXMgL3NiaW4vbm9sb2dpbjvigJ0NCg0KV2h5IGRvbid0IHlv
dSB1c2UgdGhlIC1VIGZsYWc/DQoNCk1pY2hlbA0KLS0NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQp5b2N0byBtYWlsaW5nIGxpc3QNCnlvY3RvQHlvY3Rv
cHJvamVjdC5vcmcNCmh0dHBzOi8vdXJsZGVmZW5zZS5wcm9vZnBvaW50LmNvbS92Mi91cmw/dT1o
dHRwcy0zQV9fbGlzdHMueW9jdG9wcm9qZWN0Lm9yZ19saXN0aW5mb195b2N0byZkPURRSUdhUSZj
PUJGcFdRdzhic3VLcGwxU2dpWkg2NFEmcj1nZUoxd0I3eFJJTW10ZVlCMkZvOGVzTDMyQk9XdndQ
MUhtWTBZdUxFQjRFJm09c1I5UVRIQkxvTkMteXBFcm1JTl9OT2FqVUp5QlZlNWtXZndFMzJJNDNM
ayZzPVY2SzNLSTVwNG03MXZFZzVtYUZMTzJiUWM0VXltcmpfdDFvaDVINDY2RWcmZT0gDQo=

