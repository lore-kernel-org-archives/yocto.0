Return-Path: <tpradeep@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B951E00823; Thu, 26 Apr 2018 11:37:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_HI, SPF_HELO_PASS,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.86.76 listed in list.dnswl.org]
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
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Thu, 26 Apr 2018 11:37:19 PDT
Received: from rcdn-iport-5.cisco.com (rcdn-iport-5.cisco.com [173.37.86.76])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A195E005A9
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 11:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=2148; q=dns/txt; s=iport;
	t=1524767839; x=1525977439;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=6RuAHKk1hXlPcUq/ZR4fokymcRzhAwfZiZz8vxsCI2c=;
	b=I5ARSxTK5mBnyU5lzPfYcke4qCYtK1z4ufeAGtFhh4llj1VWyGIRr9Cj
	ClBnhygxlasN1v674mB2Q/qMBsuXgItoSbUsO1RishsKCfXiMSxNs/2Zz
	cjVhIvnNNrWbCYziZQSLdhJvJ/M7s1X3Vn3TBhUgDq63XZL5kth1+rIeM M=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0ATAQCbG+Ja/5JdJa1bGQEBAQEBAQE?=
	=?us-ascii?q?BAQEBAQcBAQEBAYNDYXooCoNhiAKMeYFTIYEPhnKMIYF4CxuEUQIagi4hNBg?=
	=?us-ascii?q?BAgEBAQEBAQJsHAyFIwEFIxFFEAIBCBgCAiYCAgIfERUQAgQOBYR3AxWoPII?=
	=?us-ascii?q?chFiCNw2BK4JFgQmHCIITgTIMgic1gk+CJBeCaTCCJAKMDYtQLAgChWGFaIJ?=
	=?us-ascii?q?9gXGKZIoChhICERMBgSQBHDiBUnAVZQGCGAmMZINhb5AcgRgBAQ?=
X-IronPort-AV: E=Sophos;i="5.49,331,1520899200"; d="scan'208";a="169164837"
Received: from rcdn-core-10.cisco.com ([173.37.93.146])
	by rcdn-iport-5.cisco.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Apr 2018 18:36:16 +0000
Received: from XCH-ALN-014.cisco.com (xch-aln-014.cisco.com [173.36.7.24])
	by rcdn-core-10.cisco.com (8.14.5/8.14.5) with ESMTP id w3QIaGuO024464
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 26 Apr 2018 18:36:16 GMT
Received: from xch-rcd-011.cisco.com (173.37.102.21) by XCH-ALN-014.cisco.com
	(173.36.7.24) with Microsoft SMTP Server (TLS) id 15.0.1320.4;
	Thu, 26 Apr 2018 13:36:16 -0500
Received: from xch-rcd-011.cisco.com ([173.37.102.21]) by
	xch-rcd-011.cisco.com ([173.37.102.21]) with mapi id 15.00.1320.000;
	Thu, 26 Apr 2018 13:36:16 -0500
From: "Shakthi Pradeep (tpradeep)" <tpradeep@cisco.com>
To: Andre McCurdy <armccurdy@gmail.com>
Thread-Topic: [yocto] New Recipe Integration Issue
Thread-Index: AQHT3YjXcillAMD4LEqyWuaxceZwUaQTseqAgAABwIA=
Date: Thu, 26 Apr 2018 18:36:15 +0000
Message-ID: <B007846B-3D1C-4320-A089-E0B1E1C1B8A9@cisco.com>
References: <3292C1BE-5786-4639-8EF8-9376A0FF00B2@cisco.com>
	<CAJ86T=X1naDA79_0qBAnfttnLea956FBvgKYJzTesPze6KULTw@mail.gmail.com>
In-Reply-To: <CAJ86T=X1naDA79_0qBAnfttnLea956FBvgKYJzTesPze6KULTw@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.65.58.197]
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
X-List-Received-Date: Thu, 26 Apr 2018 18:37:20 -0000
Content-Language: en-GB
Content-Type: text/plain; charset="utf-8"
Content-ID: <3FB5AEB687866147B0F8D8D0C1241ABB@emea.cisco.com>
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciB0aGUgaW5mbyBBbmRyZS4gV2hhdCB5b3UgYXJlIHN1Z2dlc3RpbmcgaXQgdG8g
YmUgZG9uZSB3aGlsZSBidWlsZGluZyBhbiBhcHBsaWNhdGlvbiBvdmVyIHRoZXNlIGxpYnJhcmll
cyByaWdodD8NCg0KQW55IGlkZWEgd2h5IHRoZSBwYWNrYWdpbmcgaXMgZmFpbGluZz8NCg0KUmVn
YXJkcywNClNoYWt0aGkNCg0KT24gMjcvMDQvMTgsIDEyOjAwIEFNLCAiQW5kcmUgTWNDdXJkeSIg
PGFybWNjdXJkeUBnbWFpbC5jb20+IHdyb3RlOg0KDQogICAgT24gVGh1LCBBcHIgMjYsIDIwMTgg
YXQgMTE6MDMgQU0sIFNoYWt0aGkgUHJhZGVlcCAodHByYWRlZXApDQogICAgPHRwcmFkZWVwQGNp
c2NvLmNvbT4gd3JvdGU6DQogICAgPiBIZWxsbyBGb2xrcywNCiAgICA+DQogICAgPiBJIGFtIHRy
eWluZyB0byBpbnRlZ3JhdGUgYW4gU0RLIHdoaWNoIGlzIHZlcnkgc2ltcGxlIGFuZCBzbWFsbC4g
QnVpbGRpbmcgdGhlDQogICAgPiBTREsgZ2VuZXJhdGVzIGFuIGV4ZWN1dGFibGUgYW5kIGZldyAu
c28gbGlicmFyaWVzLg0KICAgID4NCiAgICA+IOKAnGJpdGJha2Ugc2Rr4oCdIGNvbW1hbmQgZ29l
cyB0aHJvdWdoIGZpbmUgYnV0IHdoZW4gSSBydW4g4oCcYml0YmFrZQ0KICAgID4gd3JsaW51eC1p
bWFnZS1nbGliYy1zdGTigJ0gdG8gZ2VuZXJhdGUgYW4gSVNPIHdpdGggU0RLIHBhY2thZ2VzIEkg
YW0gZ2V0DQogICAgPiBmb2xsb3dpbmcgZXJyb3INCiAgICA+DQogICAgPiAuLi4NCiAgICA+DQog
ICAgPiAgICAgICAgICAgICAgICAgaW5zdGFsbCAtbSAwNzU1ICR7U30vbGliL2xpYm12dWRydi5z
bw0KICAgID4gJHtEfS8ke2xpYmRpcn0vbGlibXZ1ZHJ2LnNvLjEuMC4xDQogICAgPg0KICAgID4g
ICAgIGxuIC1zZiBsaWJtdnVkcnYuc28uMS4wLjEgJHtEfS8ke2xpYmRpcn0vbGlibXZ1ZHJ2LnNv
DQogICAgDQogICAgVW5mb3J0dW5hdGVseSwgY3JlYXRpbmcgdmVyc2lvbmVkIGxpYnJhcmllcyBy
ZXF1aXJlcyBtb3JlIHRoYW4ganVzdA0KICAgIHJlbmFtaW5nIGFuZCBjcmVhdGluZyBhIHN5bWxp
bmsuDQogICAgDQogICAgSWYgdGhlIGxpYnJhcnkgaXMgZ29pbmcgdG8gYmUgcmVuYW1lZCBkdXJp
bmcgaW5zdGFsbGF0aW9uLCB0aGVuIHRoZQ0KICAgIHNvbmFtZSAod2hpY2ggaXMgc2V0IHdpdGhp
biB0aGUgbGlicmFyeSB3aGVuIHRoZSBsaWJyYXJ5IGlzIGxpbmtlZCkNCiAgICBuZWVkcyB0byBt
YXRjaCBhIG5hbWUgd2hpY2ggd2lsbCBleGlzdCBpbiB0aGUgdGFyZ2V0IHJvb3RmcyBhdA0KICAg
IHJ1bnRpbWUuDQogICAgDQogICAgSW4gdGhpcyBjYXNlLCBzaW5jZSAibGlibXZ1ZHJ2LnNvLjEu
MC4xIiBpcyB0aGUgbmFtZSB3aGljaCB3aWxsIGJlDQogICAgcHJlc2VudCBhdCBydW50aW1lLCB3
aGVuIHRoZSBidWlsZCBjcmVhdGVzIGxpYm12dWRydi5zbywgaXQgbmVlZHMgdG8NCiAgICBzZXQg
dGhlIHNvbmFtZSB0byAibGlibXZ1ZHJ2LnNvLjEuMC4xIi4gaWUgYWRkIHRoZSBmb2xsb3dpbmcg
dG8gdGhlDQogICAgbGlua2VyIGNvbW1hbmRsaW5lOg0KICAgIA0KICAgICAgLVdsLC1zb25hbWUs
bGlibXZ1ZHJ2LnNvLjEuMC4xDQogICAgDQoNCg==

