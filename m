Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6E78E00547; Wed, 30 Jul 2014 23:42:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A65E8E0043F
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 23:42:01 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 30 Jul 2014 23:42:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,770,1400050800"; d="scan'208";a="569813645"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga001.fm.intel.com with ESMTP; 30 Jul 2014 23:42:01 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.229]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.87]) with mapi id
	14.03.0123.003; Wed, 30 Jul 2014 23:42:00 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] why does dev manual, "Supported Board Support
	Packages", mention only meta-intel?
Thread-Index: AQHPrCwHb2LafF1iukKlhgEW+Tsou5u5rHMwgACDxoD//4ww8A==
Date: Thu, 31 Jul 2014 06:42:00 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FD15F5@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1407301522260.30037@localhost>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FD15B5@ORSMSX101.amr.corp.intel.com>
	<CAMKF1sqyPbb1-oe23zZ0Rpm31Oxn9pz+yPDDsD_j10h4h2K1FA@mail.gmail.com>
In-Reply-To: <CAMKF1sqyPbb1-oe23zZ0Rpm31Oxn9pz+yPDDsD_j10h4h2K1FA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: why does dev manual, "Supported Board Support Packages", mention only meta-intel?
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
X-List-Received-Date: Thu, 31 Jul 2014 06:42:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVzIC0gdGhhdCBpcyB3aGF0IEkgbWVhbnQgYnkgZml4aW5nIGl0IHVwIHRvIGJlIGxlc3MtcmVz
dHJpY3RpdmUuICBJIG5lZWQgdG8gZmluZCBvdXQgc29tZSBzdHVmZiBvbiBCU1BzIGluIGdlbmVy
YWwgYW5kIHRoZW4gSSB3aWxsIGdldCB0byBpdC4NCg0KPi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQo+RnJvbTogS2hlbSBSYWogW21haWx0bzpyYWoua2hlbUBnbWFpbC5jb21dDQo+U2VudDog
V2VkbmVzZGF5LCBKdWx5IDMwLCAyMDE0IDExOjM1IFBNDQo+VG86IFJpZmVuYmFyaywgU2NvdHQg
TQ0KPkNjOiBSb2JlcnQgUC4gSi4gRGF5OyBZb2N0byBkaXNjdXNzaW9uIGxpc3QNCj5TdWJqZWN0
OiBSZTogW3lvY3RvXSB3aHkgZG9lcyBkZXYgbWFudWFsLCAiU3VwcG9ydGVkIEJvYXJkIFN1cHBv
cnQgUGFja2FnZXMiLA0KPm1lbnRpb24gb25seSBtZXRhLWludGVsPw0KPg0KPk9uIFdlZCwgSnVs
IDMwLCAyMDE0IGF0IDEwOjUwIFBNLCBSaWZlbmJhcmssIFNjb3R0IE0NCj48c2NvdHQubS5yaWZl
bmJhcmtAaW50ZWwuY29tPiB3cm90ZToNCj4+IFRoZSBwb2ludCBvZiB0aGUgc2VjdGlvbiBpcyB0
byBzaG93IGhvdyB0byBzZXQgdXAgdGhlIG1ldGEtaW50ZWwNCj4+IHJlcG9zaXRvcnkNCj4NCj5J
IHRoaW5rIGl0IHNob3VsZCBjb3ZlciB0aGUgZ2VuZXJhbCBjYXNlLg0K

