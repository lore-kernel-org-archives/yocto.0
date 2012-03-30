Return-Path: <reinette.chatre@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15F6FE0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 11:02:29 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 30 Mar 2012 11:02:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="83606667"
Received: from orsmsx605.amr.corp.intel.com ([10.22.226.10])
	by AZSMGA002.ch.intel.com with ESMTP; 30 Mar 2012 11:02:28 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx605.amr.corp.intel.com (10.22.226.10) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 30 Mar 2012 11:02:28 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.106]) with mapi id
	14.01.0355.002; Fri, 30 Mar 2012 11:02:27 -0700
From: "Chatre, Reinette" <reinette.chatre@intel.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] care when using remove_packaging_data_files
Thread-Index: AQHNDc9R7ZpwM3ZgUkOu1hPq3POH55aC1nqAgACrXYCAAAyuAIAACa0A
Date: Fri, 30 Mar 2012 18:02:26 +0000
Message-ID: <1333130534.8318.97.camel@rchatre.jf.intel.com>
References: <1333041222.8318.46.camel@rchatre.jf.intel.com>
	<CAMKF1sqCu--JUWwj4ehApYSkfO5Farb6oQeYfJiOqcX9NzBUqg@mail.gmail.com>
	<1333125733.8318.79.camel@rchatre.jf.intel.com>
	<CAMKF1sp3LyDZrC0nHdxXYumiJbJVvr5pNKT8Ehhpk2qhWpnbrA@mail.gmail.com>
In-Reply-To: <CAMKF1sp3LyDZrC0nHdxXYumiJbJVvr5pNKT8Ehhpk2qhWpnbrA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.7.198.150]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: care when using remove_packaging_data_files
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 30 Mar 2012 18:02:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <55A3EB61A1414446A3C5E46618317AAA@intel.com>
Content-Transfer-Encoding: base64

T24gRnJpLCAyMDEyLTAzLTMwIGF0IDEwOjI3IC0wNzAwLCBLaGVtIFJhaiB3cm90ZToNCj4gT24g
RnJpLCBNYXIgMzAsIDIwMTIgYXQgOTo0MiBBTSwgQ2hhdHJlLCBSZWluZXR0ZQ0KPiA8cmVpbmV0
dGUuY2hhdHJlQGludGVsLmNvbT4gd3JvdGU6DQo+ID4gQWJzb2x1dGVseSwgYW4gb3B0aW9uIGlz
IGluZGVlZCB0byBsb29rIGlmIHJlY2lwZSBjYW4gZG8gZXZlcnl0aGluZyB3aGVuDQo+ID4gaW1h
Z2UgaXMgY3JlYXRlZC4gSSB3YXMganVzdCBzdXJwcmlzZWQgdG8gbGVhcm4gdGhhdCB0aGVzZSBt
aW5pbWFsDQo+ID4gaW1hZ2VzIGJ5IGRlZmF1bHQgcHJldmVudCBhbGwgZmlyc3QgYm9vdCBwb3N0
IGluc3RhbGwgc2NyaXB0cyBmcm9tDQo+ID4gcnVubmluZy4NCj4gDQo+IHJlbWVtYmVyIHRoZSBu
YW1lIGhhcyAibWluaW1hbCIgaW4gaXQuDQoNCkdvb2QgcG9pbnQsIGJ1dCB3aGF0IEkgd2FudGVk
IHRvIHBvaW50IG91dCBpcyB0aGF0IHRoZSBiZWhhdmlvciBhbW9uZw0KdGhlIGRpZmZlcmVudCBw
YWNrYWdlIG1hbmFnZW1lbnQgc3lzdGVtcyB3aGVuIGRlYWxpbmcgd2l0aCB0aGlzIGlzDQpkaWZm
ZXJlbnQuDQoNClJlaW5ldHRlDQo=

