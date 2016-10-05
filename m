Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF3CDE00A85; Tue,  4 Oct 2016 22:31:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.142.91 listed in list.dnswl.org]
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from alln-iport-4.cisco.com (alln-iport-4.cisco.com [173.37.142.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96636E00A7B
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2016 22:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=2226; q=dns/txt; s=iport;
	t=1475645487; x=1476855087;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=7wbKMmMwQNqeRwP2+2H1O4pHjkFp4EYU1tCoU+ca5os=;
	b=PoxzBwhT2xXuAp4pwKxuVv2gl7Aeb7u+7wvmbKX5mui2r3TEJATccJrO
	/4cHeBEVH3AUE8ZM8zQ3OjB4/vV5IxuOjpQmPpqiDo3pi8TJ0/WEkVdaJ
	iDnM6SL740GiKUUUFuH8x1vCK5NDXamGrz3JEirEeKq6AuQlUWpg7vT08 c=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0B2AQBrj/RX/4gNJK1cGgEBAQECAQEBA?=
	=?us-ascii?q?QgBAQEBgz0BAQEBAR5XfAeNK5Z9khuCD4IJHoYCAhyBTjgUAQIBAQEBAQEBXie?=
	=?us-ascii?q?EYgEBBCMRRRACAQgOCgICJgICAjAVEAIEDgWITrEFjHQBAQEBAQEBAQEBAQEBA?=
	=?us-ascii?q?QEBAQEBAQEdgQeFNYF9gliEGREBgyArgi8FmXoBhiaJUIFuhGaJH4xzg30BHjZ?=
	=?us-ascii?q?LgyCBOXKFZoEggQABAQE?=
X-IronPort-AV: E=Sophos;i="5.31,447,1473120000"; d="scan'208";a="331039452"
Received: from alln-core-3.cisco.com ([173.36.13.136])
	by alln-iport-4.cisco.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	05 Oct 2016 05:31:26 +0000
Received: from XCH-RTP-004.cisco.com (xch-rtp-004.cisco.com [64.101.220.144])
	by alln-core-3.cisco.com (8.14.5/8.14.5) with ESMTP id u955VPPm028785
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Wed, 5 Oct 2016 05:31:26 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-004.cisco.com
	(64.101.220.144) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Wed, 5 Oct 2016 01:31:25 -0400
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Wed, 5 Oct 2016 01:31:25 -0400
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: Lennart Sorensen <lsorense@csclub.uwaterloo.ca>
Thread-Topic: [yocto] Question: xxxx listed in PACKAGES multiple times, this
	leads to packaging errors
Thread-Index: AQHSHll65OzpqDQ8KUqWgZf+kZeSr6CY76UA//+R1QCAAJjQAIAACjUA
Date: Wed, 5 Oct 2016 05:31:24 +0000
Message-ID: <87BA808B-E39B-40D7-805B-CB7D118C351D@cisco.com>
References: <D6696459-1F17-4F52-8D0A-4ED8C3FC35EE@cisco.com>
	<14908226.eNXmjE9kDk@peggleto-mobl.ger.corp.intel.com>
	<127A78F9-AB8A-467C-AC6B-02DBDDE09EE0@cisco.com>
	<20161004215505.GA2084@csclub.uwaterloo.ca>
In-Reply-To: <20161004215505.GA2084@csclub.uwaterloo.ca>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.24.33.250]
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question: xxxx listed in PACKAGES multiple times, this leads to packaging errors
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
X-List-Received-Date: Wed, 05 Oct 2016 05:31:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <93850D7D20113F45966962FBDA524D0F@emea.cisco.com>
Content-Transfer-Encoding: base64

VGhhbmsgeW91IExlbi4gDQoNCklmIEkgc3BlY2lmaWVkIFBBQ0tBR0VTID0g4oCcJHtQTn3igJ0g
YXMgbWVudGlvbmVkIGVhcmx5LCBpdCBvbmx5IGJ1aWx0IHRoZSBtYWluIHBhY2thZ2UuDQpBcyB5
b3Ugc3VnZ2VzdGVkLCBJIHJlbW92ZWQgdGhhdCBsaW5lIGZyb20gbXkgYy1tbGliLmJiLCBpdCB0
aGVuIGJ1aWx0IHRoZSBtYWluLCAtZGV2IGFuZCAtZGJnIHBhY2thZ2VzIGFzIHNwZWNpZmllZCBp
biB0aGUgYml0YmFrZS5jb25mIC0gdGhhbmtzIHlvdS4uLg0KDQpkaW5obkBycy1ibGRzcnY6L21l
ZGlhL3JhZ2h1cmFtL2RhdGEvZGluaG4vaW94RGV2TGF0ZXN0L2lveHNkay95cCQgZmluZCB0bXAv
ZGVwbG95IHwgZ3JlcCBjLW1saWINCnRtcC9kZXBsb3kvaXBrL2NvcmUyLTY0L2MtbWxpYi1kYmdf
MS4xLXIwX2NvcmUyLTY0Lmlwaw0KdG1wL2RlcGxveS9pcGsvY29yZTItNjQvYy1tbGliLWRldl8x
LjEtcjBfY29yZTItNjQuaXBrDQp0bXAvZGVwbG95L2lway9jb3JlMi02NC9jLW1saWJfMS4xLXIw
X2NvcmUyLTY0Lmlwaw0KdG1wL2RlcGxveS9saWNlbnNlcy9jLW1saWINCg0KDQoNCkJ1dCBydW5u
aW5nIGludG8gdGhlIG90aGVyIGlzc3VlLCB3aGljaCBJIHJlcGxpZWQgdG8gUGF1bOKAmXMgZW1h
aWwgZmV3IG1pbnV0ZXMgYWdvLiBQbGVhc2UgdGFrZSBhIGxvb2sgaWYgeW91IGhhdmUgdGltZS4g
VGh4DQoNClRoYW5rcyBhZ2FpbiBMZW4uDQogIOKAlERpbmgNCg0KDQoNCg0KT24gMTAvNC8xNiwg
Mjo1NSBQTSwgIkxlbm5hcnQgU29yZW5zZW4iIDxsc29yZW5zZUBjc2NsdWIudXdhdGVybG9vLmNh
PiB3cm90ZToNCg0KPk9uIFR1ZSwgT2N0IDA0LCAyMDE2IGF0IDA3OjQ3OjU4UE0gKzAwMDAsIERp
bmggTmd1eWVuIChkaW5obikgd3JvdGU6DQo+PiANCj4+IEhpIFBhdWwsIHRoYW5rcyBtdWNoIGZv
ciBwcm9tcHQgcmVzcG9uc2UuIA0KPj4gDQo+PiBUaGUgYy1tbGliLmJiIGJlbG93IGhhcyB0aGUg
cGFja2FnZXMgdmFyIGFzDQo+PiBQQUNLQUdFUyA9KyAiJHtQTn3igJ0gSSBhbHNvIHRyaWVkIFBB
Q0tBR0VTID0gIiR7UE594oCdIA0KPg0KPkRvbid0IGRvIHRoYXQuDQo+DQo+SW4gYml0YmFrZS5j
b25mIHlvdSBoYXZlOg0KPg0KPlBBQ0tBR0VTID0gIiR7UE59LWRiZyAke1BOfS1zdGF0aWNkZXYg
JHtQTn0tZGV2ICR7UE59LWRvYyAke1BOfS1sb2NhbGUgJHtQQUNLQUdFX0JFRk9SRV9QTn0gJHtQ
Tn0iDQo+DQo+U28gYWxsIHRob3NlIHBhY2thZ2UgbmFtZXMgYXJlIGltcGxpZWQgYW5kIGFsd2F5
cyBleGlzdC4gIERvbid0IHRyeSB0bw0KPmFkZCB0aGVtIHlvdXJzZWxmLg0KPg0KPk9ubHkgZG8g
YW55dGhpbmcgd2l0aCBQQUNLQUdFUyBpZiB5b3Ugd2FudCB0byBhZGQgYW55IG90aGVyIHBhY2th
Z2UNCj5uYW1lcyBvciB0b3RhbGx5IG92ZXJyaWRlIHRoZSBsaXN0IG9mIHBhY2thZ2VzIChpbiB3
aGljaCBjYXNlIHlvdSBoYXZlDQo+dG8gdXNlIFBBQ0tBR0VTID0gb2YgY291cnNlKQ0KPg0KPkZv
ciBleGFtcGxlIGJhc2UtZmlsZXMgZG9lcyBvdmVycmlkZSB0aGUgbGlzdCBjb21wbGV0ZWx5LCBh
cyBkb2VzIGdsaWJjDQo+YW5kIGEgZmV3IG90aGVyIG9uZXMsIGJ1dCBtb3N0IG9ubHkgYWRkIHRv
IGl0Lg0KPg0KPi0tIA0KPkxlbiBTb3JlbnNlbg0K

