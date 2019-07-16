Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EDA6E00D53; Mon, 15 Jul 2019 23:54:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C99B6E00D4D
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 23:54:22 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Jul 2019 23:54:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,496,1557212400"; d="scan'208";a="366565926"
Received: from kmsmsx153.gar.corp.intel.com ([172.21.73.88])
	by fmsmga006.fm.intel.com with ESMTP; 15 Jul 2019 23:54:21 -0700
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.22]) by
	KMSMSX153.gar.corp.intel.com ([169.254.5.152]) with mapi id
	14.03.0439.000; Tue, 16 Jul 2019 14:54:20 +0800
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "marek.belisko@gmail.com" <marek.belisko@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] wic: error when using --rootfs-dir=${IMAGE_ROOTFS}/data
Thread-Index: AQHVO6EsvmpD8tuOWkaeXHOTwQg5w6bMSTaA
Date: Tue, 16 Jul 2019 06:54:20 +0000
Message-ID: <08c031fbe9971a0190cda3aa098d8641a7ffbeab.camel@intel.com>
References: <CAAfyv37LBSDh6JR19KdLwb0EJCc5OpRQYBvj5UFtp=Y6Y-_dGw@mail.gmail.com>
In-Reply-To: <CAAfyv37LBSDh6JR19KdLwb0EJCc5OpRQYBvj5UFtp=Y6Y-_dGw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.186.215]
MIME-Version: 1.0
Subject: Re: wic: error when using --rootfs-dir=${IMAGE_ROOTFS}/data
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
X-List-Received-Date: Tue, 16 Jul 2019 06:54:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <3CA6D4CE7D23D94ABCCD2C24FCAED177@intel.com>
Content-Transfer-Encoding: base64

T24gVHVlLCAyMDE5LTA3LTE2IGF0IDA4OjM4ICswMjAwLCBCZWxpc2tvIE1hcmVrIHdyb3RlOg0K
PiBJIGhhdmUgd2tzIGZpbGUgd2l0aCBmb2xsb3dpbmcgY29udGVudDoNCj4gDQo+IHBhcnQgdWJv
b3RlbnYgLS1vbmRpc2s9bW1jYmxrIC0tbm8tdGFibGUgLS1zaXplIDEyDQo+IHBhcnQgL2Jvb3Qg
LS1zb3VyY2UgYm9vdGltZy1wYXJ0aXRpb24gLS1vbmRpc2sgbW1jYmxrIC0tZnN0eXBlPXZmYXQN
Cj4gLS1sYWJlbCBib290IC0tYWN0aXZlIC0tYWxpZ24gMTAyNCAtLXNpemUgMTYNCj4gcGFydCAv
cm9vdCAtLXNvdXJjZSByb290ZnMgLS1vbmRpc2sgbW1jYmxrIC0tZnN0eXBlPWV4dDQgLS1sYWJl
bA0KPiByb290QQ0KPiAtLWFsaWduIDEwMjQgLS1maXhlZC1zaXplIDMwMCAtLWV4Y2x1ZGUtcGF0
aCBkYXRhLw0KPiBwYXJ0IC9kYXRhIC0tc291cmNlIHJvb3RmcyAtLXJvb3Rmcy1kaXI9JHtJTUFH
RV9ST09URlN9L2RhdGEgLS1vbmRpc2sNCj4gIm1tY2JsayIgLS1mc3R5cGU9ZXh0NCAtLWxhYmVs
IGRhdGEgLS1hbGlnbiAxMDI0IC0tZml4ZWQtc2l6ZSAyMDANCj4gDQo+IEJhc2ljYWxseSBJIHdh
bnQgdG8gY3JlYXRlIGV4dHJhIGRhdGEgcGFydGl0aW9uIHdpdGggY29udGVudCBmcm9tDQo+IHJv
b3RmcyAvZGF0YSBkaXJlY3RvcnkuIFdoZW4gd2ljIGltYWdlIGlzIGNyZWF0ZWQgSSdtIGdldHRp
bmcgc3RyYW5nZQ0KPiBlcnJvcnMgbGlrZToNCj4gDQo+IENvdWxkbid0IGdldCBiaXRiYWtlIHZh
cmlhYmxlIGZyb20NCj4gL2hvbWUvbWFyZWtiZWxpc2tvLy5idWlsZC90bXAvc3lzcm9vdHMvcmFz
cGJlcnJ5cGkwLQ0KPiB3aWZpL2ltZ2RhdGEvJHtJTUFHRV9ST09URlN9L2RhdGEuZW52Lg0KPiAg
fCBGaWxlIC9ob21lL21hcmVrYmVsaXNrby8uYnVpbGQvdG1wL3N5c3Jvb3RzL3Jhc3BiZXJyeXBp
MC0NCj4gd2lmaS9pbWdkYXRhLyR7SU1BR0VfUk9PVEZTfS9kYXRhLmVudg0KPiBkb2Vzbid0IGV4
aXN0Lg0KDQpJZiB5b3UgaGF2ZW4ndCB0cmllZCB0aGlzIGFscmVhZHksIHJlbmFtaW5nIC53a3Mg
dG8gLndrcy5pbiBtaWdodCBoZWxwLg0KDQpUaGFua3MsDQpBbnVqDQo=

