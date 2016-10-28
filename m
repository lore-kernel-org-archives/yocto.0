Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18FADE00DD0; Thu, 27 Oct 2016 20:19:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.142.90 listed in list.dnswl.org]
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from alln-iport-3.cisco.com (alln-iport-3.cisco.com [173.37.142.90])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDDDCE00BFF
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 20:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=3118; q=dns/txt; s=iport;
	t=1477624787; x=1478834387;
	h=from:to:cc:subject:date:message-id:mime-version;
	bh=KajUzrfa3QJQiOIKhQUHHWd6+M7PlR1yHMN0W2ZVUjM=;
	b=PVkrg5JpvbElO2hA4kKTfRjSO7UxjR5e2H5TIyB2VpaS8PHMc1LmVw58
	iFZNZXwIYwY3/FU6B/3t8URXZOrDk2eUOZxYF0ccr2zIWfzt9+1Tnjgd8
	GSNAxqS5C4S8J5U0Fai1W/8uRd1hGub8xTjhsZmTDLlgj4k8Fq5aAoGVp M=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AUAgAawxJY/5pdJa1dHAEBBAEBCgEBg?=
	=?us-ascii?q?nM3AQEBAQEdWH0HjS+mJoUWggcghgMcgWY/FAECAQEBAQEBAWIdC4RpI1YSAQw?=
	=?us-ascii?q?BPQIEMCcEDohZsVSMdwEBAQEBAQEBAQEBAQEBAQEBAQEBARyGPYF9h12CRiyCL?=
	=?us-ascii?q?wWaFgGGLIl2gjyNSJELAR42X4UJcocRgQkBAQE?=
X-IronPort-AV: E=Sophos;i="5.31,407,1473120000"; 
	d="scan'208,217";a="340579396"
Received: from rcdn-core-3.cisco.com ([173.37.93.154])
	by alln-iport-3.cisco.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Oct 2016 03:19:43 +0000
Received: from XCH-RTP-005.cisco.com (xch-rtp-005.cisco.com [64.101.220.145])
	by rcdn-core-3.cisco.com (8.14.5/8.14.5) with ESMTP id u9S3JhkQ017682
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2016 03:19:43 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-005.cisco.com
	(64.101.220.145) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Thu, 27 Oct 2016 23:19:42 -0400
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Thu, 27 Oct 2016 23:19:42 -0400
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: qlibc lib for Yocto Dizzy question
Thread-Index: AQHSMMogOysuOqk8TkeqdD+oRCIiMA==
Date: Fri, 28 Oct 2016 03:19:42 +0000
Message-ID: <108EEEE7-FA01-47F4-BFC9-F03C15F37184@cisco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.24.68.239]
MIME-Version: 1.0
Subject: qlibc lib for Yocto Dizzy question
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
X-List-Received-Date: Fri, 28 Oct 2016 03:19:51 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_108EEEE7FA0147F4BFC9F03C15F37184ciscocom_"

--_000_108EEEE7FA0147F4BFC9F03C15F37184ciscocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpIaSBZb2N0byBndXJ1cywNCg0KSSBhbSB0cnlpbmcgdG8gYWRkIHRoZSBxbGliYyBsaWIgdG8g
b3VyIFlvY3RvIDEuNy4yIHZlcnNpb24uDQpBYmxlIHRvIGNvbXBpbGUgYW5kIGJ1aWxkIElQSyBw
YWNrYWdlcyB3aXRoIG91dCBhbnkgaXNzdWUgYXMgc2hvd24gYmVsb3c6DQoNCmRpbmhuQHJzLWJs
ZHNydjovbWVkaWEvcmFnaHVyYW0vZGF0YS9kaW5obi9pb3hEZXZMYXRlc3QvaW94c2RrL3lwX3Bw
YyQgZmluZCB0bXAvZGVwbG95IHwgZ3JlcCBxbGliYw0KdG1wL2RlcGxveS9pcGsvcHBjZTUwMHYy
L3FsaWJjLWRiZ18xLjAtcjBfcHBjZTUwMHYyLmlwaw0KdG1wL2RlcGxveS9pcGsvcHBjZTUwMHYy
L3FsaWJjLWRldl8xLjAtcjBfcHBjZTUwMHYyLmlwaw0KdG1wL2RlcGxveS9saWNlbnNlcy9xbGli
Yw0KdG1wL2RlcGxveS9saWNlbnNlcy9xbGliYy9nZW5lcmljX0JTRC0yLUNsYXVzZQ0KdG1wL2Rl
cGxveS9saWNlbnNlcy9xbGliYy9MSUNFTlNFDQoNCkhvd2V2ZXIsIGl0IGlzIG5vdCBpbmNsdWRl
ZCBpbiB0aGUgcm9vdGZzLm1hbmlmZXN0IGZvciBidWlsZGluZyBhIExYQyBjb250YWluZXIuDQpJ
IHdvbmRlciB3aGV0aGVyIEkgYW0gbWlzc2luZyBpbiBteSByZWNpcGUgcWxpYmMuYmIgb3IgaG93
IHRvIHNvbHZlIHRoaXMgaXNzdWU/DQoNCk1hbnkgdGhhbmtzLA0KICDigJREaW5oDQoNCg0K

--_000_108EEEE7FA0147F4BFC9F03C15F37184ciscocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <DD613E165D352247BC85A2732806B776@emea.cisco.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IHN0eWxlPSJ3b3JkLXdy
YXA6IGJyZWFrLXdvcmQ7IC13ZWJraXQtbmJzcC1tb2RlOiBzcGFjZTsgLXdlYmtpdC1saW5lLWJy
ZWFrOiBhZnRlci13aGl0ZS1zcGFjZTsgY29sb3I6IHJnYigwLCAwLCAwKTsgZm9udC1zaXplOiAx
NHB4OyBmb250LWZhbWlseTogQ2FsaWJyaSwgc2Fucy1zZXJpZjsiPg0KPGRpdj48YnI+DQo8L2Rp
dj4NCjxkaXY+SGkgWW9jdG8gZ3VydXMsPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5J
IGFtIHRyeWluZyB0byBhZGQgdGhlIHFsaWJjIGxpYiB0byBvdXIgWW9jdG8gMS43LjIgdmVyc2lv
bi48L2Rpdj4NCjxkaXY+QWJsZSB0byBjb21waWxlIGFuZCBidWlsZCBJUEsgcGFja2FnZXMgd2l0
aCBvdXQgYW55IGlzc3VlIGFzIHNob3duIGJlbG93OjwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4N
CjxkaXY+DQo8ZGl2PmRpbmhuQHJzLWJsZHNydjovbWVkaWEvcmFnaHVyYW0vZGF0YS9kaW5obi9p
b3hEZXZMYXRlc3QvaW94c2RrL3lwX3BwYyQgZmluZCB0bXAvZGVwbG95IHwgZ3JlcCBxbGliYzwv
ZGl2Pg0KPGRpdj50bXAvZGVwbG95L2lway9wcGNlNTAwdjIvcWxpYmMtZGJnXzEuMC1yMF9wcGNl
NTAwdjIuaXBrPC9kaXY+DQo8ZGl2PnRtcC9kZXBsb3kvaXBrL3BwY2U1MDB2Mi9xbGliYy1kZXZf
MS4wLXIwX3BwY2U1MDB2Mi5pcGs8L2Rpdj4NCjxkaXY+dG1wL2RlcGxveS9saWNlbnNlcy9xbGli
YzwvZGl2Pg0KPGRpdj50bXAvZGVwbG95L2xpY2Vuc2VzL3FsaWJjL2dlbmVyaWNfQlNELTItQ2xh
dXNlPC9kaXY+DQo8ZGl2PnRtcC9kZXBsb3kvbGljZW5zZXMvcWxpYmMvTElDRU5TRTwvZGl2Pg0K
PC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5Ib3dldmVyLCBpdCBpcyBub3QgaW5jbHVk
ZWQgaW4gdGhlJm5ic3A7cm9vdGZzLm1hbmlmZXN0IGZvciBidWlsZGluZyBhIExYQyBjb250YWlu
ZXIuICZuYnNwOzwvZGl2Pg0KPGRpdj5JIHdvbmRlciB3aGV0aGVyIEkgYW0gbWlzc2luZyBpbiBt
eSByZWNpcGUgcWxpYmMuYmIgb3IgaG93IHRvIHNvbHZlIHRoaXMgaXNzdWU/PC9kaXY+DQo8ZGl2
Pjxicj4NCjwvZGl2Pg0KPGRpdj5NYW55IHRoYW5rcyw8L2Rpdj4NCjxkaXY+Jm5ic3A7IOKAlERp
bmg8L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj4NCjxk
aXYgaWQ9Ik1BQ19PVVRMT09LX1NJR05BVFVSRSI+PC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4NCjwv
aHRtbD4NCg==

--_000_108EEEE7FA0147F4BFC9F03C15F37184ciscocom_--
