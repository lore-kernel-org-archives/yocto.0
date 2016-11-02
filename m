Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E859E0070F; Wed,  2 Nov 2016 06:20:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.86.77 listed in list.dnswl.org]
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
Received: from rcdn-iport-6.cisco.com (rcdn-iport-6.cisco.com [173.37.86.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59379E0070F
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 06:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=5600; q=dns/txt; s=iport;
	t=1478092835; x=1479302435;
	h=from:to:cc:subject:date:message-id:mime-version;
	bh=xihqb3QOdck/Eet3ktW5Zft1ghWRaazr2bPbM9w+K7k=;
	b=dH+j9vMfvHljl4LrIFPkasmp8ObUMvd791bjPVGNFyP6askJ/2+oRCLe
	LRJ1/HcJUAFvBB1Z6sGJLPB+u9YsoBhy0j2UmebLyD9TbW6EtEZkrFvFt
	jtSv5dju9WzvhFNDltAgEjIRY/nsA7HCk7xHfixiZkjh7tS+EQLuH8sBL Q=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0CzAQCa5xlY/4kNJK1dGwEBAQMBAQEJA?=
	=?us-ascii?q?QEBgnM5AQEBAQEfgVuNMKYxVYRCggeGIhyCBT8UAQIBAQEBAQEBYh0LhGgjVhI?=
	=?us-ascii?q?BDD4CBDAnBA6IW6x+jQQBAQEBAQEBAQEBAQEBAQEBAQEBAQEchj2BfQiKGy2CL?=
	=?us-ascii?q?wWIQodLhDKFXgGJPAWGeJAJSZBSAR42Z4UXiEKBDAEBAQ?=
X-IronPort-AV: E=Sophos;i="5.31,583,1473120000"; 
	d="scan'208,217";a="166575301"
Received: from alln-core-4.cisco.com ([173.36.13.137])
	by rcdn-iport-6.cisco.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	02 Nov 2016 13:20:33 +0000
Received: from XCH-RTP-003.cisco.com (xch-rtp-003.cisco.com [64.101.220.143])
	by alln-core-4.cisco.com (8.14.5/8.14.5) with ESMTP id uA2DKWlF017080
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 2 Nov 2016 13:20:33 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-003.cisco.com
	(64.101.220.143) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Wed, 2 Nov 2016 09:20:29 -0400
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Wed, 2 Nov 2016 09:20:30 -0400
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: LXC container: opkg_install_cmd: Cannot install package cmocka
Thread-Index: AQHSNQvh7eWovFu9zEWEHeh86tz10Q==
Date: Wed, 2 Nov 2016 13:20:29 +0000
Message-ID: <AB4C7B81-F381-4728-876F-3B2A244F771E@cisco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.24.4.243]
MIME-Version: 1.0
Subject: LXC container: opkg_install_cmd: Cannot install package cmocka
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
X-List-Received-Date: Wed, 02 Nov 2016 13:20:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AB4C7B81F3814728876F3B2A244F771Eciscocom_"

--_000_AB4C7B81F3814728876F3B2A244F771Eciscocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpGb2xrcywNCg0KSSBhbSB0cnlpbmcgdG8gYnJpbmcgdGhlIGNtb2NrYSByZWNpcGUgb3VyIElP
WCBTREsgWW9jdG8uIENtb2NrYSBpcyBhIGZvcmsgZm9yIEdvb2dsZXMgY21vY2tlcnkgdW5pdCB0
ZXN0aW5nIGZyYW1ld29yayB0byBmaXggYnVncy4NCg0KSSBhbSBhYmxlIHRvIGNvbXBpbGUgYW5k
IGJ1aWxkIElQSyBwYWNrYWdlcyBmb3IgY21vY2thIHdpdGhvdXQgYW55IGlzc3VlLg0KQnV0IGR1
cmluZyBjcmVhdGluZyB0aGUgTFhDIGNvbnRhaW5lciB3aGljaCBpbmNsdWRpbmcgdGhlIGNtb2Nr
YSwgIG9wa2dfaW5zdGFsbF9jbWQgY2FuIGluc3RhbGwgYW5kIGNvbmZpZ3VyZSBvdGhlciByZWNp
cGVzICBidXQgY2Fu4oCZdCBpbnN0YWxsIHBhY2thZ2UgY21vY2thIGFzIHNob3duIGJlbG93IGlu
IHRoZSDigJxyZWTigJ0NCg0KVGhlcmUgaXMgbm8gZGV0YWlscyBpbmZvIG9uIHdoeSBpdCBjYW7i
gJl0IGluc3RhbGwgdGhlIHBhY2thZ2Ugb3Igd2hhdCBpcyB0aGUgcHJvYmxlbS4gSGF2ZSBhbnlv
bmUgZW5jb3VudGVyZWQgdGhpcyBpc3N1ZSBhbmQgaG93IHRvIHNvbHZlIGl0PyBNYW55IHRoYW5r
cyBpbiBhZHZhbmNlLg0K4oCmDQpDb25maWd1cmluZyBsaWJtb2RidXM1Lg0KQ29uZmlndXJpbmcg
aW5pdHNjcmlwdHMuDQpDb25maWd1cmluZyBsaWJib29zdC1ncmFwaDEuNTYuMC4NCkNvbmZpZ3Vy
aW5nIGJvb3N0LXNlcmlhbGl6YXRpb24uDQpDb25maWd1cmluZyBsaWJib29zdC1wcm9ncmFtLW9w
dGlvbnMxLjU2LjAuDQpDb25maWd1cmluZyBvcGtnLWNvbGxhdGVyYWwuDQpDb25maWd1cmluZyBi
b29zdC10ZXN0Lg0KQ29uZmlndXJpbmcgbGliemxvZzEuMi4NCkNvbmZpZ3VyaW5nIHBva3ktZmVl
ZC1jb25maWctb3BrZy4NCkNvbmZpZ3VyaW5nIGxpYmJvb3N0LWZpbGVzeXN0ZW0xLjU2LjAuDQpD
b25maWd1cmluZyBiYXNlLXBhc3N3ZC4NCkNvbmZpZ3VyaW5nIHBhY2thZ2Vncm91cC1jb3JlLWJv
b3QuDQpDb25maWd1cmluZyBsaWJib29zdC1zaWduYWxzMS41Ni4wLg0KQ29uZmlndXJpbmcgbGli
ejEuDQpDb25maWd1cmluZyBsaWJib29zdC1pb3N0cmVhbXMxLjU2LjAuDQpDb25maWd1cmluZyBi
b29zdC4NCkNvbmZpZ3VyaW5nIGxpYmphbnNzb240Lg0KQ29uZmlndXJpbmcgbGlidXYxLg0KQ29s
bGVjdGVkIGVycm9yczoNCiAqIG9wa2dfaW5zdGFsbF9jbWQ6IENhbm5vdCBpbnN0YWxsIHBhY2th
Z2UgY21vY2thLg0KDQpERUJVRzogUHl0aG9uIGZ1bmN0aW9uIGRvX3Jvb3RmcyBmaW5pc2hlZA0K
RVJST1I6IEZ1bmN0aW9uIGZhaWxlZDogZG9fcm9vdGZzDQoNCkJlc3QsDQogIOKAlERpbmgNCg==

--_000_AB4C7B81F3814728876F3B2A244F771Eciscocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <EE04373C9A9BAA479462D73BB501BCFD@emea.cisco.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IHN0eWxlPSJ3b3JkLXdy
YXA6IGJyZWFrLXdvcmQ7IC13ZWJraXQtbmJzcC1tb2RlOiBzcGFjZTsgLXdlYmtpdC1saW5lLWJy
ZWFrOiBhZnRlci13aGl0ZS1zcGFjZTsgY29sb3I6IHJnYigwLCAwLCAwKTsgZm9udC1zaXplOiAx
NHB4OyBmb250LWZhbWlseTogQ2FsaWJyaSwgc2Fucy1zZXJpZjsiPg0KPGRpdj4NCjxkaXY+DQo8
ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj4NCjxkaXY+Rm9sa3MsPC9kaXY+DQo8ZGl2Pjxicj4NCjwv
ZGl2Pg0KPGRpdj5JIGFtIHRyeWluZyB0byBicmluZyB0aGUgY21vY2thIHJlY2lwZSBvdXIgSU9Y
IFNESyBZb2N0by4gQ21vY2thIGlzIGEgZm9yayBmb3IgR29vZ2xlcyBjbW9ja2VyeSB1bml0IHRl
c3RpbmcgZnJhbWV3b3JrIHRvIGZpeCBidWdzLjwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxk
aXY+SSBhbSBhYmxlIHRvIGNvbXBpbGUgYW5kIGJ1aWxkIElQSyBwYWNrYWdlcyBmb3IgY21vY2th
IHdpdGhvdXQgYW55IGlzc3VlLjwvZGl2Pg0KPGRpdj5CdXQgZHVyaW5nIGNyZWF0aW5nIHRoZSBM
WEMgY29udGFpbmVyIHdoaWNoIGluY2x1ZGluZyB0aGUgY21vY2thLCAmbmJzcDtvcGtnXzxzcGFu
IHN0eWxlPSJmb250LXN0eWxlOiBpdGFsaWM7Ij5pbnN0YWxsPC9zcGFuPl9jbWQgY2FuIGluc3Rh
bGwgYW5kIGNvbmZpZ3VyZSBvdGhlciByZWNpcGVzICZuYnNwO2J1dCZuYnNwOzxmb250IGNvbG9y
PSIjZmYwMDAwIj5jYW7igJl0IGluc3RhbGwgcGFja2FnZSBjbW9ja2E8L2ZvbnQ+Jm5ic3A7YXMg
c2hvd24gYmVsb3cgaW4gdGhlIOKAnHJlZOKAnTwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxk
aXY+VGhlcmUgaXMgbm8gZGV0YWlscyBpbmZvIG9uIHdoeSBpdCBjYW7igJl0IGluc3RhbGwgdGhl
IHBhY2thZ2Ugb3Igd2hhdCBpcyB0aGUgcHJvYmxlbS4gSGF2ZSBhbnlvbmUgZW5jb3VudGVyZWQg
dGhpcyBpc3N1ZSBhbmQgaG93IHRvIHNvbHZlIGl0PyBNYW55IHRoYW5rcyBpbiBhZHZhbmNlLiZu
YnNwOzwvZGl2Pg0KPGRpdj7igKY8L2Rpdj4NCjxkaXY+DQo8ZGl2PkNvbmZpZ3VyaW5nIGxpYm1v
ZGJ1czUuPC9kaXY+DQo8ZGl2PkNvbmZpZ3VyaW5nIGluaXRzY3JpcHRzLjwvZGl2Pg0KPGRpdj5D
b25maWd1cmluZyBsaWJib29zdC1ncmFwaDEuNTYuMC48L2Rpdj4NCjxkaXY+Q29uZmlndXJpbmcg
Ym9vc3Qtc2VyaWFsaXphdGlvbi48L2Rpdj4NCjxkaXY+Q29uZmlndXJpbmcgbGliYm9vc3QtcHJv
Z3JhbS1vcHRpb25zMS41Ni4wLjwvZGl2Pg0KPGRpdj5Db25maWd1cmluZyBvcGtnLWNvbGxhdGVy
YWwuPC9kaXY+DQo8ZGl2PkNvbmZpZ3VyaW5nIGJvb3N0LXRlc3QuPC9kaXY+DQo8ZGl2PkNvbmZp
Z3VyaW5nIGxpYnpsb2cxLjIuPC9kaXY+DQo8ZGl2PkNvbmZpZ3VyaW5nIHBva3ktZmVlZC1jb25m
aWctb3BrZy48L2Rpdj4NCjxkaXY+Q29uZmlndXJpbmcgbGliYm9vc3QtZmlsZXN5c3RlbTEuNTYu
MC48L2Rpdj4NCjxkaXY+Q29uZmlndXJpbmcgYmFzZS1wYXNzd2QuPC9kaXY+DQo8ZGl2PkNvbmZp
Z3VyaW5nIHBhY2thZ2Vncm91cC1jb3JlLWJvb3QuPC9kaXY+DQo8ZGl2PkNvbmZpZ3VyaW5nIGxp
YmJvb3N0LXNpZ25hbHMxLjU2LjAuPC9kaXY+DQo8ZGl2PkNvbmZpZ3VyaW5nIGxpYnoxLjwvZGl2
Pg0KPGRpdj5Db25maWd1cmluZyBsaWJib29zdC1pb3N0cmVhbXMxLjU2LjAuPC9kaXY+DQo8ZGl2
PkNvbmZpZ3VyaW5nIGJvb3N0LjwvZGl2Pg0KPGRpdj5Db25maWd1cmluZyBsaWJqYW5zc29uNC48
L2Rpdj4NCjxkaXY+Q29uZmlndXJpbmcgbGlidXYxLjwvZGl2Pg0KPGRpdj48Zm9udCBjb2xvcj0i
I2ZmMDAwMCI+Q29sbGVjdGVkIGVycm9yczo8L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGNvbG9y
PSIjZmYwMDAwIj4mbmJzcDsqIG9wa2dfaW5zdGFsbF9jbWQ6IENhbm5vdCBpbnN0YWxsIHBhY2th
Z2UgY21vY2thLjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgY29sb3I9IiNmZjAwMDAiPjxicj4N
CjwvZm9udD48L2Rpdj4NCjxkaXY+PGZvbnQgY29sb3I9IiNmZjAwMDAiPkRFQlVHOiBQeXRob24g
ZnVuY3Rpb24gZG9fcm9vdGZzIGZpbmlzaGVkPC9mb250PjwvZGl2Pg0KPGRpdj48Zm9udCBjb2xv
cj0iI2ZmMDAwMCI+RVJST1I6IEZ1bmN0aW9uIGZhaWxlZDogZG9fcm9vdGZzPC9mb250PjwvZGl2
Pg0KPC9kaXY+DQo8ZGl2Pjxmb250IGNvbG9yPSIjZmYwMDAwIj48YnI+DQo8L2ZvbnQ+PC9kaXY+
DQo8ZGl2PkJlc3QsPC9kaXY+DQo8ZGl2IHN0eWxlPSJmb250LWZhbWlseTogQ2FsaWJyaTsiPjxm
b250IGZhY2U9IkNhbGlicmksc2Fucy1zZXJpZiI+Jm5ic3A7Jm5ic3A74oCURGluaCZuYnNwOzwv
Zm9udD48L2Rpdj4NCjwvZGl2Pg0KPGRpdj4NCjxkaXYgaWQ9Ik1BQ19PVVRMT09LX1NJR05BVFVS
RSI+PC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_AB4C7B81F3814728876F3B2A244F771Eciscocom_--
