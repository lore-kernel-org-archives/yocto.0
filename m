Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02E8EE0107C; Thu,  5 Jul 2018 03:09:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E585E009AC
	for <yocto@yoctoproject.org>; Thu,  5 Jul 2018 03:09:54 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Jul 2018 03:09:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,311,1526367600"; d="scan'208";a="52772066"
Received: from pgsmsx105.gar.corp.intel.com ([10.221.44.96])
	by fmsmga008.fm.intel.com with ESMTP; 05 Jul 2018 03:09:52 -0700
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.4]) by
	PGSMSX105.gar.corp.intel.com ([169.254.4.174]) with mapi id
	14.03.0319.002; Thu, 5 Jul 2018 18:09:38 +0800
From: "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH] [yocto-ab-helper] clobberdir: Fix Unicode data
	expansion with utils API
Thread-Index: AQHUFCHtA8V7I+oXbEmmP7MIZDk+s6R/3a+AgACIQXA=
Date: Thu, 5 Jul 2018 10:09:36 +0000
Message-ID: <AA9B40170ABA1047B45E714CB2B866B7068F66EE@PGSMSX103.gar.corp.intel.com>
References: <1530768887-9349-1-git-send-email-aaron.chun.yew.chan@intel.com>
	<386cff1e76b86bbd4f3569208fe224bd23b1cd96.camel@linuxfoundation.org>
In-Reply-To: <386cff1e76b86bbd4f3569208fe224bd23b1cd96.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNThmNjM4ZTYtYzRlZi00NjFjLTkwMGQtYTRlNzNmNWUxNTRkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiaUZ2WDdPdjQ5b2lrUTIxbW5jVzVhUzlqM1ZrZE9FclpkY2JQb0lOb1h6TVlPd3JFV0k0eFNiUjN5K0JHNm9ZVyJ9
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Subject: Re: [PATCH] [yocto-ab-helper] clobberdir: Fix Unicode data expansion with utils API
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
X-List-Received-Date: Thu, 05 Jul 2018 10:09:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TXkgYXBvbG9naXplcyB0byB0aGF0IGFzIG15IGxvY2FsIGNvcHkgY29udGFpbnMgdGhlIGZpeGVz
IGZyb20gdGhlIHByZXZpb3VzIGNvbW1pdHMuIFRoZXJlZm9yZSB0aGlzIGNvbW1pdCBidWlsdHMg
b24gdG9wIG9mIGl0IGFuZCBvbmx5IGNvbnRhaW5zIHRoZSBkZWx0YSBvbiB0aGUgY3VycmVudCBj
aGFuZ2VzLCB0aGlzIGlzIHRoZSByZWFzb24gd2h5IGl0cyBub3QgY29tcGxldGUuDQoNClRoYW5r
cyBhZ2FpbiBmb3IgdGhlIG1lcmdlLg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJv
bTogcmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZyBbbWFpbHRvOnJpY2hhcmQucHVy
ZGllQGxpbnV4Zm91bmRhdGlvbi5vcmddIA0KU2VudDogVGh1cnNkYXksIEp1bHkgNSwgMjAxOCA1
OjU0IFBNDQpUbzogQ2hhbiwgQWFyb24gQ2h1biBZZXcgPGFhcm9uLmNodW4ueWV3LmNoYW5AaW50
ZWwuY29tPjsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFtQQVRDSF0gW3lv
Y3RvLWFiLWhlbHBlcl0gY2xvYmJlcmRpcjogRml4IFVuaWNvZGUgZGF0YSBleHBhbnNpb24gd2l0
aCB1dGlscyBBUEkNCg0KT24gVGh1LCAyMDE4LTA3LTA1IGF0IDEzOjM0ICswODAwLCBBYXJvbiBD
aGFuIHdyb3RlOg0KPiBUaGlzIGZpeCBpcyB0byBtb3ZlIGNsb2JiZXJkaXIgZnJvbSBweXRob24y
IHRvIHB5dGhvbjMgdG8gcmVzb2x2ZSANCj4gdW5pY29kZSBkYXRhIGluIHB5dGhvbjIgYW5kIGNo
YW5nZSB0aGUgZGF0YSBleHRyYWN0aW9uIGV4cGFuc2lvbiBmcm9tIA0KPiBvdXJjb25maWdbIlRS
QVNIX0RJUiJdIHRvIHV0aWxzLmdldGNvbmZpZygiVFJBU0hfRElSIiwgb3VyY29uZmlnKSBvbiAN
Cj4gIkNsb2JiZXIgYnVpbGQgZGlyIg0KPiBCdWlsZFN0ZXANCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IEFhcm9uIENoYW4gPGFhcm9uLmNodW4ueWV3LmNoYW5AaW50ZWwuY29tPg0KPiAtLS0NCj4gIGph
bml0b3IvY2xvYmJlcmRpciB8IDIgKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2phbml0b3IvY2xvYmJlcmRpciBi
L2phbml0b3IvY2xvYmJlcmRpciBpbmRleCANCj4gNWUwNGVkNy4uYjA1YTg3NiAxMDA3NTUNCj4g
LS0tIGEvamFuaXRvci9jbG9iYmVyZGlyDQo+ICsrKyBiL2phbml0b3IvY2xvYmJlcmRpcg0KPiBA
QCAtMSw0ICsxLDQgQEANCj4gLSMhL3Vzci9iaW4vZW52IHB5dGhvbjINCj4gKyMhL3Vzci9iaW4v
ZW52IHB5dGhvbjMNCj4gICMNCj4gICMgRGVsZXRlIGEgZGlyZWN0b3J5IHVzaW5nIHRoZSBpb25p
Y2UgYmFja2dyb3VuZGVkIGNvbW1hbmQgICMNCg0KQXQgdGhpcyBwb2ludCBJIHRoaW5rIHdlJ3Jl
IGFsbCBnZXR0aW5nIGZydXN0cmF0ZWQgd2l0aCB0aGlzLiBQbGVhc2UgY2FuIHlvdSBnaXZlIHBh
dGNoZXMgYSBzYW5pdHkgY2hlY2sgd2hlbiB5b3UncmUgc2VuZGluZyB0aGVtLiBZb3UgbWVudGlv
biBpbiB0aGUgY29tbWl0IG1lc3NhZ2Ugd2hhdCB5b3UgbmVlZCB0byBkbyBidXQgdGhlIGdldGNv
bmZpZygpIGNoYW5nZSBpcyBtaXNzaW5nIGZyb20gdGhlIHBhdGNoIGl0c2VsZi4gVGhpcyBoYXMg
aGFwcGVuZWQgd2l0aCBzZXZlcmFsIHByZXZpb3VzIHBhdGNoZXMgdG9vIHdoZXJlIHRoZXJlIHdl
cmUgcGllY2VzIG1pc3NpbmcuIEkgZGVhbCB3aXRoIGEgbG90IG9mIHBhdGNoZXMgYW5kIEkgY2Fu
J3QgZml4IHVwIGVhY2ggb25lLg0KDQpUaGUgY29tbWl0IG1lc3NhZ2UgbWVudGlvbnMgaXRzIGZp
eGluZyBzb21ldGhpbmcgYnV0IG5vdCB3aGF0IChhIHJlZ3Jlc3Npb24gaW50cm9kdWNlZCBieSBh
IHByZXZpb3VzIGNoYW5nZSkuDQoNCkluIHRoZSBpbnRlcmVzdHMgb2YgcmVzb2x2aW5nIHRoaXMg
SSd2ZSBmaXhlZCB1cCB0aGlzIGNvbW1pdCBhbmQgbWVyZ2VkDQppdDoNCg0KaHR0cDovL2dpdC55
b2N0b3Byb2plY3Qub3JnL2NnaXQuY2dpL3lvY3RvLWF1dG9idWlsZGVyLWhlbHBlci9jb21taXQv
P2lkPTU0Zjg0ODM4MGZjNzdhOWI5NTIzYmQ4NWNkMWNkY2UwNzViZmI5NmUNCg0KQ2hlZXJzLA0K
DQpSaWNoYXJkDQo=

