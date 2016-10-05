Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09392E00AB4; Tue,  4 Oct 2016 22:12:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.142.93 listed in list.dnswl.org]
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from alln-iport-6.cisco.com (alln-iport-6.cisco.com [173.37.142.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ADC9E00955
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2016 22:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=4940; q=dns/txt; s=iport;
	t=1475644351; x=1476853951;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=bqh+rjBgS+bO8Iod0PqTleJE3YHhJS5JFDogyl44VEM=;
	b=jUtt4F9idlpAklXMEtc+VDXpaohbHY50sbdRgRnZo6yXoBkZiFjzBcN6
	S3RXjaJDs5XltAJRvJ13d94EsLs1rC6vpQMtADh3nB69yhpBeaRyceAjg
	LwwJNYkzOhS6FlE22jRMn4k8ZjkCb2hayEMLUJSWsQCuUr/6wIv0gN6Wr g=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0CRAQCBivRX/4ENJK1SChoBAQEBAgEBA?=
	=?us-ascii?q?QEIAQEBAYM9AQEBAQEeV3wHjSuWfZIZgg+CCB2GAgIcgUw4FAECAQEBAQEBAV4?=
	=?us-ascii?q?nhGIBAQQjEUUQAgEGAhgCAiYCAgIwFRACBA4FiE6TUZ0sjHMBAQEBAQEBAQEBA?=
	=?us-ascii?q?QEBAQEBAQEBAQEcgQeFNYF9gliEGQYLATOCbSuCLwWUIIVZAYYmiU+Bbk6EGIk?=
	=?us-ascii?q?ejHODfQEeNkuDIIE5cgGFZYEggQABAQE?=
X-IronPort-AV: E=Sophos;i="5.31,447,1473120000"; d="scan'208";a="331886353"
Received: from alln-core-9.cisco.com ([173.36.13.129])
	by alln-iport-6.cisco.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	05 Oct 2016 05:12:29 +0000
Received: from XCH-RTP-002.cisco.com (xch-rtp-002.cisco.com [64.101.220.142])
	by alln-core-9.cisco.com (8.14.5/8.14.5) with ESMTP id u955CStH010368
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Wed, 5 Oct 2016 05:12:29 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-002.cisco.com
	(64.101.220.142) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Wed, 5 Oct 2016 01:12:28 -0400
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Wed, 5 Oct 2016 01:12:28 -0400
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Question: xxxx listed in PACKAGES multiple times, this
	leads to packaging errors
Thread-Index: AQHSHll65OzpqDQ8KUqWgZf+kZeSr6CY76UA//+R1QCAAHifgIAAJRiA
Date: Wed, 5 Oct 2016 05:12:27 +0000
Message-ID: <4EBFFDF8-32F2-48C0-A456-DB9A9A4D3841@cisco.com>
References: <D6696459-1F17-4F52-8D0A-4ED8C3FC35EE@cisco.com>
	<14908226.eNXmjE9kDk@peggleto-mobl.ger.corp.intel.com>
	<127A78F9-AB8A-467C-AC6B-02DBDDE09EE0@cisco.com>
	<15215572.tG9QIyjkit@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <15215572.tG9QIyjkit@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.24.33.250]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 05 Oct 2016 05:12:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <9EFC57C3116B4047866C36BDD4392598@emea.cisco.com>
Content-Transfer-Encoding: base64

VGhhbmtzIG11Y2ggUGF1bC4NCg0KPj4+PiBQQUNLQUdFUyA9ICIke1BOfSIgc2hvdWxkIHdvcmsN
Cg0KSXQgc29sdmVkIHRoZSBlYXJseSBlcnJvciDigJwgYy1tbGliIGxpc3RlZCBpbiBQQUNLQUdF
UyBtdWx0aXBsZSB0aW1lcywgdGhpcyBsZWFkcyB0byBwYWNrYWdpbmcgZXJyb3Jz4oCdIOKAlCBU
aGFua3MgYWdhaW4uDQoNCg0KQnV0IHJ1bm5pbmcgaW50byBvdGhlciBpc3N1ZS4gQmVsb3cgaXMg
bXkgZG9faW5zdGFsbA0KDQpkb19pbnN0YWxsICgpIHsNCglvZV9ydW5tYWtlIGFsbA0KCWluc3Rh
bGwgLWQgJHtEfSR7bGliZGlyfQ0KCWluc3RhbGwgLWQgJHtEfSR7YmluZGlyfQ0KCWluc3RhbGwg
LW0gMDY0NCAke1N9L3RhcmdldC9saWJtbGliLnNvICR7RH0ke2xpYmRpcn0NCglpbnN0YWxsIC1t
IDA2NDQgJHtTfS90YXJnZXQvZGF0YW1vZGVsX2NhY2hlICR7RH0ke2JpbmRpcn0NCglpbnN0YWxs
IC1tIDA2NDQgJHtTfS90YXJnZXQvaW52b2tlICR7RH0ke2JpbmRpcn0NCglpbnN0YWxsIC1tIDA2
NDQgJHtTfS90YXJnZXQvaW52b2tlX2IgJHtEfSR7YmluZGlyfQ0KCWluc3RhbGwgLW0gMDY0NCAk
e1N9L3RhcmdldC9wcm90b2NvbF9pbmZyYSAke0R9JHtiaW5kaXJ9DQoJaW5zdGFsbCAtbSAwNjQ0
ICR7U30vdGFyZ2V0L3B1Ymxpc2hlciAke0R9JHtiaW5kaXJ9DQoJaW5zdGFsbCAtbSAwNjQ0ICR7
U30vdGFyZ2V0L3JwYy1yZWdpc3RlciAke0R9JHtiaW5kaXJ9DQoJaW5zdGFsbCAtbSAwNjQ0ICR7
U30vdGFyZ2V0L3NlcnZpY2UgJHtEfSR7YmluZGlyfQ0KCWluc3RhbGwgLW0gMDY0NCAke1N9L3Rh
cmdldC9zdWJzY3JpYmVyICR7RH0ke2JpbmRpcn0NCn0NCg0KUEFDS0FHRVMgPSAiJHtQTn0iDQpG
SUxFU18ke1BOfSA9ICIvdXNyL2Jpbi9kYXRhbW9kZWxfY2FjaGUgXA0KCQkvdXNyL2Jpbi9pbnZv
a2UgXA0KCQkvdXNyL2Jpbi9pbnZva2VfYiBcDQoJCS91c3IvbGliL2xpYm1saWIuc28gXA0KCQkv
dXNyL2Jpbi9wcm90b2NvbF9pbmZyYSBcDQoJCS91c3IvYmluL3B1Ymxpc2hlciBcDQoJCS91c3Iv
YmluL3JwYy1yZWdpc3RlciBcDQoJCS91c3IvYmluL3NlcnZpY2UgXA0KCQkvdXNyL2Jpbi9zdWJz
Y3JpYmVyIg0KDQoNCg0KQW5kIHVuZGVyICR7U30vdGFyZ2V0LCBpdCBoYXMgdGhlIGxpYm1saWIu
c28gYW5kIG90aGVyIGJpbmFyaWVzIGJ1aWx0LA0KQW5kIEkgaW50ZW5kZWQgdG8gY29weSB0aGUg
LnNvIHRvICR7RH0ke2xpYmRpcn0gYW5kIGJpbmFyaXJlcyB0byAke0R9JHtiaW5kaXJ9LiBJIGFt
IGFibGUgdG8gYnVpbGQgdGhlIGMtbWxpYiBwYWNrYWdlIGFzIHNob3duIGJlbG93Og0KDQpkaW5o
bkBycy1ibGRzcnY6L21lZGlhL3JhZ2h1cmFtL2RhdGEvZGluaG4vaW94RGV2TGF0ZXN0L2lveHNk
ay95cCQgZmluZCB0bXAvZGVwbG95IHwgZ3JlcCBjLW1saWINCnRtcC9kZXBsb3kvaXBrL2NvcmUy
LTY0L2MtbWxpYl8xLjEtcjBfY29yZTItNjQuaXBrDQoNCg0KVGhlIHByb2JsZW0gaXMgdGhhdCwg
YWZ0ZXIgImJpdGJha2UgYy1tbGli4oCdLCBpdCBtb3ZlZCBhbGwgc291cmNlcyB1bmRlciAke1N9
IHRvIC91c3Ivc3JjL2RlYnVnIGV0Yy4uIA0KSSBnb29nbGVkIGJ1dCB1bmFibGUgdG8gZmluZCB0
aGUgcm9vdCBjYXVzZS4gV291bGQgeW91IGFuZCBvdGhlciBjYW4gaGVscCB0byBpZGVudGlmeSB0
aGUgaXNzdWU/DQoNCk5PVEU6IEV4ZWN1dGluZyBSdW5RdWV1ZSBUYXNrcw0KRVJST1I6IFFBIElz
c3VlOiBjLW1saWI6IEZpbGVzL2RpcmVjdG9yaWVzIHdlcmUgaW5zdGFsbGVkIGJ1dCBub3Qgc2hp
cHBlZA0KICAvdXNyL3NyYw0KICAvdXNyL2xpYi8uZGVidWcNCiAgL3Vzci9saWIvLmRlYnVnL2xp
Ym1saWIuc28NCiAgL3Vzci9zcmMvZGVidWcNCiAgL3Vzci9zcmMvZGVidWcvYy1tbGliDQogIC91
c3Ivc3JjL2RlYnVnL2MtbWxpYi8xLjEtcjANCiAgL3Vzci9zcmMvZGVidWcvYy1tbGliLzEuMS1y
MC9naXQNCiAgL3Vzci9zcmMvZGVidWcvYy1tbGliLzEuMS1yMC9naXQvc3JjDQogIC91c3Ivc3Jj
L2RlYnVnL2MtbWxpYi8xLjEtcjAvZ2l0L2luY2x1ZGUNCiAgL3Vzci9zcmMvZGVidWcvYy1tbGli
LzEuMS1yMC9naXQvZGVwcw0KICAvdXNyL3NyYy9kZWJ1Zy9jLW1saWIvMS4xLXIwL2dpdC9zcmMv
bWxpYl9hcGkuYw0KICAvdXNyL3NyYy9kZWJ1Zy9jLW1saWIvMS4xLXIwL2dpdC9zcmMvbWxpYl9t
ZXRyaWNzLmMNCiAgL3Vzci9zcmMvZGVidWcvYy1tbGliLzEuMS1yMC9naXQvc3JjL21saWJfdXRp
bC5jDQogIC91c3Ivc3JjL2RlYnVnL2MtbWxpYi8xLjEtcjAvZ2l0L3NyYy9tbGliX2xvY2FsX21l
dHJpY3MuYw0KICAvdXNyL3NyYy9kZWJ1Zy9jLW1saWIvMS4xLXIwL2dpdC9zcmMvZHNsaW5rX2Jp
bmRpbmdzDQogIC91c3Ivc3JjL2RlYnVnL2MtbWxpYi8xLjEtcjAvZ2l0L3NyYy91dGlscw0KICAv
dXNyL3NyYy9kZWJ1Zy9jLW1saWIvMS4xLXIwL2dpdC9zcmMvc2VydmljZV9zZGsNCiAgL3Vzci9z
cmMvZGVidWcvYy1tbGliLzEuMS1yMC9naXQvc3JjL2RzbGlua19iaW5kaW5ncy9tbGliX3NlcnZp
Y2VfY2FjaGUuYw0KICAvdXNyL3NyYy9kZWJ1Zy9jLW1saWIvMS4xLXIwL2dpdC9zcmMvZHNsaW5r
X2JpbmRpbmdzL21saWJfd3JhcHBlci5jDQogIC91c3Ivc3JjL2RlYnVnL2MtbWxpYi8xLjEtcjAv
Z2l0L3NyYy9kc2xpbmtfYmluZGluZ3MvbWxpYl9kc2EuYw0KICAvdXNyL3NyYy9kZWJ1Zy9jLW1s
aWIvMS4xLXIwL2dpdC9zcmMvZHNsaW5rX2JpbmRpbmdzL2luY2x1ZGUNCuKApi4NCg0KDQpQbGVh
c2UgbGV0IG1lIGtub3cgd2hldGhlciBJIHNob3VsZCBzdGFydCB0aGUgbmV3IGVtYWlsIHRocmVh
ZCBpbnN0ZWFkPyBUaGFua3MNCiAg4oCURGluaA0KDQoNCg0KDQoNCg0KDQpPbiAxMC80LzE2LCAx
Mjo1OSBQTSwgIlBhdWwgRWdnbGV0b24iIDxwYXVsLmVnZ2xldG9uQGxpbnV4LmludGVsLmNvbT4g
d3JvdGU6DQoNCj5PbiBUdWUsIDA0IE9jdCAyMDE2IDE5OjQ3OjU4IERpbmggTmd1eWVuIHdyb3Rl
Og0KPj4gVGhlIGMtbWxpYi5iYiBiZWxvdyBoYXMgdGhlIHBhY2thZ2VzIHZhciBhcw0KPj4gUEFD
S0FHRVMgPSsgIiR7UE594oCdIEkgYWxzbyB0cmllZCBQQUNLQUdFUyA9ICIke1BOfeKAnSANCj4N
Cj5QQUNLQUdFUyA9ICIke1BOfSIgc2hvdWxkIHdvcmsgKG9yIHVzZSBiaXRiYWtlIC1lIHJlY2lw
ZW5hbWUgfCBsZXNzLCBzZWFyY2ggDQo+Zm9yIF5QQUNLQUdFUz0gKHdpdGggLykgYW5kIGxvb2sg
dGhyb3VnaCB0aGUgaGlzdG9yeSB0byBzZWUgd2h5IG5vdCkuDQo+DQo+SG93ZXZlciwgaWYgeW91
IGRvIG1ha2UgdGhhdCB3b3JrIEkgc3VzcGVjdCB5b3UnbGwgcHJvYmFibHkgaGl0IG90aGVyIA0K
Pndhcm5pbmdzL2Vycm9ycyBkdWUgdG8gdW5wYWNrYWdlZCBmaWxlcyBvciBvdGhlciBpc3N1ZXMu
IEkgZ3Vlc3MgeW91IGFyZSANCj50cnlpbmcgdG8gd29yayBhcm91bmQgdGhlIGZhY3QgdGhhdCB5
b3UgaGF2ZSBhIG5vbi1zeW1saW5rIC5zbyBmaWxlIHRoYXQgeW91IA0KPndhbnQgdG8gZ2V0IGlu
dG8gdGhlIG1haW4gJHtQTn0gcGFja2FnZSwgaXMgdGhhdCBjb3JyZWN0Pw0KPg0KPkNoZWVycywN
Cj5QYXVsIA0KPg0KPi0tIA0KPg0KPlBhdWwgRWdnbGV0b24NCj5JbnRlbCBPcGVuIFNvdXJjZSBU
ZWNobm9sb2d5IENlbnRyZQ0K

