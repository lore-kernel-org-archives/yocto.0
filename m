Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2EB0E01254
	for <yocto@yoctoproject.org>; Wed,  7 Sep 2011 17:17:23 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Sep 2011 17:17:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,348,1312182000"; d="scan'208";a="46590197"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by azsmga001.ch.intel.com with ESMTP; 07 Sep 2011 17:17:23 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 7 Sep 2011 17:17:23 -0700
Received: from orsmsx502.amr.corp.intel.com ([10.22.226.210]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Wed, 7 Sep 2011 17:17:23 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>
Date: Wed, 7 Sep 2011 17:17:19 -0700
Thread-Topic: [yocto] build fails if poky-extras added to bblayers.conf
Thread-Index: AcxttfW1SS+Po3EcQOe+OwngjOCaRAABpb/Q
Message-ID: <4BD43A85686FC34D819098DB1C3999D90188AF5BA0@orsmsx502.amr.corp.intel.com>
References: <4BD43A85686FC34D819098DB1C3999D90188AF5AF4@orsmsx502.amr.corp.intel.com>
	<1315438154.2367.2.camel@elmorro>
In-Reply-To: <1315438154.2367.2.camel@elmorro>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-puzzleid: {2AF56135-A1C3-484B-94A3-0F27078E8793}
x-cr-hashedpuzzle: BKiQ DDc+ DEZ4 FXDj F+I1 HFLm IiQD IngL I2+M JPOa JV5r
	KC/L KGuJ KIeQ KRNN
	KmF3; 1; eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {2AF56135-A1C3-484B-94A3-0F27078E8793};
	awBpAHMAaABvAHIAZQAuAGsALgBiAG8AZABrAGUAQABpAG4AdABlAGwALgBjAG8AbQA=;
	Thu, 08 Sep 2011 00:17:19 GMT;
	UgBFADoAIABbAHkAbwBjAHQAbwBdACAAYgB1AGkAbABkACAAZgBhAGkAbABzACAAaQBmACAAcABvAGsAeQAtAGUAeAB0AHIAYQBzACAAYQBkAGQAZQBkACAAdABvACAAYgBiAGwAYQB5AGUAcgBzAC4AYwBvAG4AZgA=
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build fails if poky-extras added to bblayers.conf
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
X-List-Received-Date: Thu, 08 Sep 2011 00:17:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVhaC4gQWZ0ZXIgcmVtb3ZpbmcgdGhlIGxpbnV4LWtvcmcuYmIgYnVpbGQgc3RhcnRlZCB3b3Jr
aW5nLg0KDQpUaGFua3MNCktpc2hvcmUuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpG
cm9tOiBaYW51c3NpLCBUb20gDQpTZW50OiBXZWRuZXNkYXksIFNlcHRlbWJlciAwNywgMjAxMSA0
OjI5IFBNDQpUbzogQm9ka2UsIEtpc2hvcmUgSw0KQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcN
ClN1YmplY3Q6IFJlOiBbeW9jdG9dIGJ1aWxkIGZhaWxzIGlmIHBva3ktZXh0cmFzIGFkZGVkIHRv
IGJibGF5ZXJzLmNvbmYNCg0KT24gV2VkLCAyMDExLTA5LTA3IGF0IDE2OjE5IC0wNzAwLCBCb2Rr
ZSwgS2lzaG9yZSBLIHdyb3RlOg0KPiBIaSBBbGwsDQo+IA0KPiAgDQo+IA0KPiBXZSBnZXQgYSBz
dHJhbmdlIGJ1aWxkIGVycm9yIGFsbCBvZiBzdWRkZW4gdG9kYXkuICBXZSBkaWQgbm90IGNoYW5n
ZQ0KPiBhbnkgZmlsZXMsIGp1c3Qgc3RhcnRlZCBhIGZyZXNoIGJ1aWxkIGFuZCBpdCBmYWlsZWQg
YXQgdGhlIHZlcnkNCj4gYmVnaW5uaW5nLiAgDQo+IA0KPiAgDQo+IA0KPiBJZiBJIHJlbW92ZSBw
b2t5LWV4dHJhcy9tZXRhLWtlcm5lbC1kZXYgdGhlIGJ1aWxkIHdvcmtzIGZpbmUgdGhvdWdoLg0K
PiANCj4gIA0KPiANCj4gQmVsb3cgaXMgdGhlIGVycm9yIG1lc3NhZ2UuICBDb3VsZCBhbnkgb25l
IGxldCBtZSBrbm93IHdoYXQgY291bGQgYmUNCj4gdGhlIGlzc3VlPw0KPiANCg0KVHJ5IHJlbW92
aW5nIG9yIHJlbmFtaW5nIGxpbnV4LWtvcmcuYmIgdG8gc29tZXRoaW5nIHdpdGhvdXQgLmJiIG9u
IHRoZQ0KZW5kLiAgTG9va3MgbGlrZSBpdCdzIHRpbWluZyBvdXQgdHJ5aW5nIHRvIHJlc29sdmUg
dGhlIGdpdC5rZXJuZWwub3JnDQphZGRyZXNzLg0KDQpUb20NCg0KPiAgDQo+IA0KPiBQc2V1ZG8g
aXMgbm90IHByZXNlbnQgYnV0IGlzIHJlcXVpcmVkLCBidWlsZGluZyB0aGlzIGZpcnN0IGJlZm9y
ZSB0aGUNCj4gbWFpbiBidWlsZA0KPiANCj4gRVJST1I6IEZhaWx1cmUgZXhwYW5kaW5nIHZhcmlh
YmxlIFNSQ1BWLCBleHByZXNzaW9uIHdhcw0KPiAke0BiYi5mZXRjaDIuZ2V0X3NyY3JldihkKX0g
d2hpY2ggdHJpZ2dlcmVkIGV4Y2VwdGlvbiBGZXRjaEVycm9yOg0KPiBGZXRjaGVyIGZhaWx1cmUg
Zm9yIFVSTDogJ05vbmUnLiBGZXRjaCBjb21tYW5kIGV4cG9ydA0KPiBIT01FPSIvaG9tZS9raXNo
b3JlIjsgZXhwb3J0IFNTSF9BR0VOVF9QSUQ9IjE2OTIiOyBleHBvcnQNCj4gU1NIX0FVVEhfU09D
Sz0iL3RtcC9rZXlyaW5nLUVRQVFUZi9zc2giOyBleHBvcnQNCj4gbm9fcHJveHk9ImxvY2FsaG9z
dCwxMjcuMC4wLjAvOCwqLmxvY2FsIjsgZXhwb3J0DQo+IGh0dHBzX3Byb3h5PSJodHRwczovL3By
b3h5LnNjLmludGVsLmNvbTo5MTEvIjsgZXhwb3J0DQo+IGZ0cF9wcm94eT0iaHR0cDovL3Byb3h5
LnNjLmludGVsLmNvbTo5MTEvIjsgZXhwb3J0DQo+IGh0dHBfcHJveHk9Imh0dHA6Ly9wcm94eS5z
Yy5pbnRlbC5jb206OTExLyI7IGV4cG9ydA0KPiBHSVRfQ09ORklHPSIvdXNyL2xvY2FsL3NyYy9j
cmYveW9jdG8vYnVpbGRjcmZydHFhdDQvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91c3IvZXRj
L2dpdGNvbmZpZyI7IGV4cG9ydCBHSVRfUFJPWFlfQ09NTUFORD0iL3Vzci9sb2NhbC9iaW4vZ2l0
LXByb3h5IjsgZXhwb3J0IFBBVEg9Ii91c3IvbG9jYWwvc3JjL2NyZi95b2N0by9idWlsZGNyZnJ0
cWF0NC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9iaW4veDg2XzY0LXBva3ktbGludXg6
L3Vzci9sb2NhbC9zcmMvY3JmL3lvY3RvL2J1aWxkY3JmcnRxYXQ0L3RtcC9zeXNyb290cy9jcnlz
dGFsZm9yZXN0L3Vzci9iaW4vY3Jvc3NzY3JpcHRzOi91c3IvbG9jYWwvc3JjL2NyZi95b2N0by9i
dWlsZGNyZnJ0cWF0NC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9zYmluOi91c3IvbG9j
YWwvc3JjL2NyZi95b2N0by9idWlsZGNyZnJ0cWF0NC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4
L3Vzci9iaW46L3Vzci9sb2NhbC9zcmMvY3JmL3lvY3RvL2J1aWxkY3JmcnRxYXQ0L3RtcC9zeXNy
b290cy94ODZfNjQtbGludXgvc2JpbjovdXNyL2xvY2FsL3NyYy9jcmYveW9jdG8vYnVpbGRjcmZy
dHFhdDQvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC8vYmluOi91c3IvbG9jYWwvc3JjL2NyZi95
b2N0by9iaXRiYWtlL2Jpbi86L3Vzci9sb2NhbC9zcmMvY3JmL3lvY3RvL3NjcmlwdHM6L3Vzci9s
b2NhbC9zcmMvY3JmL3lvY3RvL2JpdGJha2UvYmluLzovdXNyL2xvY2FsL3NyYy9jcmYveW9jdG8v
c2NyaXB0czovdXNyL2xvY2FsL3NyYy9jcmYveW9jdG8vYml0YmFrZS9iaW4vOi91c3IvbG9jYWwv
c2JpbjovdXNyL2xvY2FsL2JpbjovdXNyL3NiaW46L3Vzci9iaW46L3NiaW46L2JpbjovdXNyL2dh
bWVzOi91c3IvbG9jYWwvc3JjL2NyZi95b2N0by9zY3JpcHRzIjsgZ2l0IGxzLXJlbW90ZSBnaXQ6
Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXgt
Mi42LmdpdCBtYXN0ZXIgZmFpbGVkIHdpdGggc2lnbmFsIDEyOCwgb3V0cHV0Og0KPiANCj4gbmM6
IHJlYWQgZmFpbGVkICgwLzEwKTogQnJva2VuIHBpcGUNCj4gDQo+IGZhdGFsOiBUaGUgcmVtb3Rl
IGVuZCBodW5nIHVwIHVuZXhwZWN0ZWRseQ0KPiANCj4gIA0KPiANCj4gRVJST1I6IENvbW1hbmQg
ZXhlY3V0aW9uIGZhaWxlZDogRXhpdGVkIHdpdGggMQ0KPiANCj4gIA0KPiANCj4gVGhhbmtzDQo+
IA0KPiBLaXNob3JlLg0KPiANCj4gDQoNCg0K

