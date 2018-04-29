Return-Path: <tpradeep@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6882E00AAF; Sun, 29 Apr 2018 03:28:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_HI, SPF_HELO_PASS,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.142.95 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from alln-iport-8.cisco.com (alln-iport-8.cisco.com [173.37.142.95])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F16F4E00935
	for <yocto@yoctoproject.org>; Sun, 29 Apr 2018 03:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=3014; q=dns/txt; s=iport;
	t=1524997686; x=1526207286;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=wu5alsglp4qipK2QGdkfH+vYcY4tkJOxnDeuJ0jMZDo=;
	b=LQCGySNeEmf3gwVJvDwPU6ap0z39YHE3zyF322fuVSNK8sYggFV4sWLa
	vfmxzbk/QoRQVKBwjOFSIZX7SUOBqAnlQ8kAcFHnCBM5DNfMD+601xlIa
	pum9mMMy5LwzW3a1/S+z2Q80b8j2vrUXJbXGYbV0HIgGTx2GbQhqa4WiX I=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0BNAgAIneVa/5xdJa1cGQEBAQEBAQE?=
	=?us-ascii?q?BAQEBAQcBAQEBAYNDYXooCoNilHuBUyGBD4ZyjCKBeAsbhFECGoI0ITUXAQI?=
	=?us-ascii?q?BAQEBAQECbBwMhSgBAQEBAgEjEUUQAgEIGAICJgICAh8RFRACBA4FhHcDDQi?=
	=?us-ascii?q?naoIchFiCLA2BK4JHgQmHDYITgTIMgic1gk+CO4JpMIIkAowQi1YsCAKFYoV?=
	=?us-ascii?q?qgn2BcYpmigKGEwIREwGBJAEeAzOBUnAVZQGCGAmMZINhb48ogRgBAQ?=
X-IronPort-AV: E=Sophos;i="5.49,342,1520899200"; d="scan'208";a="106196374"
Received: from rcdn-core-5.cisco.com ([173.37.93.156])
	by alln-iport-8.cisco.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 Apr 2018 10:28:04 +0000
Received: from XCH-RCD-014.cisco.com (xch-rcd-014.cisco.com [173.37.102.24])
	by rcdn-core-5.cisco.com (8.14.5/8.14.5) with ESMTP id w3TAS4ju016150
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Sun, 29 Apr 2018 10:28:04 GMT
Received: from xch-rcd-011.cisco.com (173.37.102.21) by XCH-RCD-014.cisco.com
	(173.37.102.24) with Microsoft SMTP Server (TLS) id 15.0.1320.4;
	Sun, 29 Apr 2018 05:28:03 -0500
Received: from xch-rcd-011.cisco.com ([173.37.102.21]) by
	xch-rcd-011.cisco.com ([173.37.102.21]) with mapi id 15.00.1320.000;
	Sun, 29 Apr 2018 05:28:03 -0500
From: "Shakthi Pradeep (tpradeep)" <tpradeep@cisco.com>
To: Andre McCurdy <armccurdy@gmail.com>
Thread-Topic: [yocto] New Recipe Integration Issue
Thread-Index: AQHT3YjXcillAMD4LEqyWuaxceZwUaQTseqAgAABwICAAAo5AIAEJF+A
Date: Sun, 29 Apr 2018 10:28:03 +0000
Message-ID: <2D35CA2C-4208-416E-92D4-EDC71671FA0A@cisco.com>
References: <3292C1BE-5786-4639-8EF8-9376A0FF00B2@cisco.com>
	<CAJ86T=X1naDA79_0qBAnfttnLea956FBvgKYJzTesPze6KULTw@mail.gmail.com>
	<B007846B-3D1C-4320-A089-E0B1E1C1B8A9@cisco.com>
	<CAJ86T=W5rNGyS4_T3aB4spR-wRsfR+vxA_=OWJXKBGFJ7t1g7Q@mail.gmail.com>
In-Reply-To: <CAJ86T=W5rNGyS4_T3aB4spR-wRsfR+vxA_=OWJXKBGFJ7t1g7Q@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.65.79.209]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: New Recipe Integration Issue
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
X-List-Received-Date: Sun, 29 Apr 2018 10:28:06 -0000
Content-Language: en-GB
Content-Type: text/plain; charset="utf-8"
Content-ID: <E51FFEE05107DD46B7280212B75AB3DE@emea.cisco.com>
Content-Transfer-Encoding: base64

VGhhbmtzIEFuZHJlLiBJbmNsdXNpb24gb2YgLVdsLC1zb25hbWUsbGlibXZ1ZHJ2LnNvLjEuMC4x
IGluIE1ha2VmaWxlIHNvbHZlZCB0aGUgcHJvYmxlbQ0KDQpSZWdhcmRzLA0KU2hha3RoaSANCg0K
T24gMjcvMDQvMTgsIDEyOjQyIEFNLCAiQW5kcmUgTWNDdXJkeSIgPGFybWNjdXJkeUBnbWFpbC5j
b20+IHdyb3RlOg0KDQogICAgT24gVGh1LCBBcHIgMjYsIDIwMTggYXQgMTE6MzYgQU0sIFNoYWt0
aGkgUHJhZGVlcCAodHByYWRlZXApDQogICAgPHRwcmFkZWVwQGNpc2NvLmNvbT4gd3JvdGU6DQog
ICAgPiBUaGFua3MgZm9yIHRoZSBpbmZvIEFuZHJlLiBXaGF0IHlvdSBhcmUgc3VnZ2VzdGluZyBp
dCB0byBiZSBkb25lIHdoaWxlIGJ1aWxkaW5nIGFuIGFwcGxpY2F0aW9uIG92ZXIgdGhlc2UgbGli
cmFyaWVzIHJpZ2h0Pw0KICAgIA0KICAgIE5vLiBUaGUgc29uYW1lIG5lZWRzIHRvIGJlIHNldCB3
aGVuIHRoZSBsaWJyYXJ5IGlzIGxpbmtlZC4NCiAgICANCiAgICA+IEFueSBpZGVhIHdoeSB0aGUg
cGFja2FnaW5nIGlzIGZhaWxpbmc/DQogICAgDQogICAgSSBkb24ndCB0aGluayBwYWNrYWdpbmcg
aXMgZmFpbGluZy4NCiAgICANCiAgICA+IFJlZ2FyZHMsDQogICAgPiBTaGFrdGhpDQogICAgPg0K
ICAgID4gT24gMjcvMDQvMTgsIDEyOjAwIEFNLCAiQW5kcmUgTWNDdXJkeSIgPGFybWNjdXJkeUBn
bWFpbC5jb20+IHdyb3RlOg0KICAgID4NCiAgICA+ICAgICBPbiBUaHUsIEFwciAyNiwgMjAxOCBh
dCAxMTowMyBBTSwgU2hha3RoaSBQcmFkZWVwICh0cHJhZGVlcCkNCiAgICA+ICAgICA8dHByYWRl
ZXBAY2lzY28uY29tPiB3cm90ZToNCiAgICA+ICAgICA+IEhlbGxvIEZvbGtzLA0KICAgID4gICAg
ID4NCiAgICA+ICAgICA+IEkgYW0gdHJ5aW5nIHRvIGludGVncmF0ZSBhbiBTREsgd2hpY2ggaXMg
dmVyeSBzaW1wbGUgYW5kIHNtYWxsLiBCdWlsZGluZyB0aGUNCiAgICA+ICAgICA+IFNESyBnZW5l
cmF0ZXMgYW4gZXhlY3V0YWJsZSBhbmQgZmV3IC5zbyBsaWJyYXJpZXMuDQogICAgPiAgICAgPg0K
ICAgID4gICAgID4g4oCcYml0YmFrZSBzZGvigJ0gY29tbWFuZCBnb2VzIHRocm91Z2ggZmluZSBi
dXQgd2hlbiBJIHJ1biDigJxiaXRiYWtlDQogICAgPiAgICAgPiB3cmxpbnV4LWltYWdlLWdsaWJj
LXN0ZOKAnSB0byBnZW5lcmF0ZSBhbiBJU08gd2l0aCBTREsgcGFja2FnZXMgSSBhbSBnZXQNCiAg
ICA+ICAgICA+IGZvbGxvd2luZyBlcnJvcg0KICAgID4gICAgID4NCiAgICA+ICAgICA+IC4uLg0K
ICAgID4gICAgID4NCiAgICA+ICAgICA+ICAgICAgICAgICAgICAgICBpbnN0YWxsIC1tIDA3NTUg
JHtTfS9saWIvbGlibXZ1ZHJ2LnNvDQogICAgPiAgICAgPiAke0R9LyR7bGliZGlyfS9saWJtdnVk
cnYuc28uMS4wLjENCiAgICA+ICAgICA+DQogICAgPiAgICAgPiAgICAgbG4gLXNmIGxpYm12dWRy
di5zby4xLjAuMSAke0R9LyR7bGliZGlyfS9saWJtdnVkcnYuc28NCiAgICA+DQogICAgPiAgICAg
VW5mb3J0dW5hdGVseSwgY3JlYXRpbmcgdmVyc2lvbmVkIGxpYnJhcmllcyByZXF1aXJlcyBtb3Jl
IHRoYW4ganVzdA0KICAgID4gICAgIHJlbmFtaW5nIGFuZCBjcmVhdGluZyBhIHN5bWxpbmsuDQog
ICAgPg0KICAgID4gICAgIElmIHRoZSBsaWJyYXJ5IGlzIGdvaW5nIHRvIGJlIHJlbmFtZWQgZHVy
aW5nIGluc3RhbGxhdGlvbiwgdGhlbiB0aGUNCiAgICA+ICAgICBzb25hbWUgKHdoaWNoIGlzIHNl
dCB3aXRoaW4gdGhlIGxpYnJhcnkgd2hlbiB0aGUgbGlicmFyeSBpcyBsaW5rZWQpDQogICAgPiAg
ICAgbmVlZHMgdG8gbWF0Y2ggYSBuYW1lIHdoaWNoIHdpbGwgZXhpc3QgaW4gdGhlIHRhcmdldCBy
b290ZnMgYXQNCiAgICA+ICAgICBydW50aW1lLg0KICAgID4NCiAgICA+ICAgICBJbiB0aGlzIGNh
c2UsIHNpbmNlICJsaWJtdnVkcnYuc28uMS4wLjEiIGlzIHRoZSBuYW1lIHdoaWNoIHdpbGwgYmUN
CiAgICA+ICAgICBwcmVzZW50IGF0IHJ1bnRpbWUsIHdoZW4gdGhlIGJ1aWxkIGNyZWF0ZXMgbGli
bXZ1ZHJ2LnNvLCBpdCBuZWVkcyB0bw0KICAgID4gICAgIHNldCB0aGUgc29uYW1lIHRvICJsaWJt
dnVkcnYuc28uMS4wLjEiLiBpZSBhZGQgdGhlIGZvbGxvd2luZyB0byB0aGUNCiAgICA+ICAgICBs
aW5rZXIgY29tbWFuZGxpbmU6DQogICAgPg0KICAgID4gICAgICAgLVdsLC1zb25hbWUsbGlibXZ1
ZHJ2LnNvLjEuMC4xDQogICAgPg0KICAgID4NCiAgICANCg0K

