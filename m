Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13694E00D17; Mon, 10 Oct 2016 22:18:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -7.5 USER_IN_DEF_DKIM_WL From: address is in the default
	DKIM white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [173.37.86.77 listed in list.dnswl.org]
Received: from rcdn-iport-6.cisco.com (rcdn-iport-6.cisco.com [173.37.86.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0E8CE00CA3
	for <yocto@yoctoproject.org>; Mon, 10 Oct 2016 22:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=6098; q=dns/txt; s=iport;
	t=1476163098; x=1477372698;
	h=from:to:cc:subject:date:message-id:mime-version;
	bh=k53S0uVsjikZNkY0ECt75M7zaHoWiML3qyh78s6wbeI=;
	b=j6Y0+Tdv19hhDpB2dqysIsAwQYkR0upKx+9WzrGZOd0MdDvWUt/NCPBK
	FSr+U8dmugXp+Ffxw6yK0Zq8GxlQ4/ExxuppSbW3KMjydWRzyCtqmDYpT
	RawiPYw26ZDmOMW+TiG6npeS+tzdGjJ9uOtQyWpaAEbV/T2ggG4FNF1fm g=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0DEAQC5dfxX/5FdJa1cGwEBAQMBAQEJA?=
	=?us-ascii?q?QEBgwc1AQEBAQEdV3wHjSymIYUUggsehgIcgVM4FAECAQEBAQEBAV4cC4RoI1Y?=
	=?us-ascii?q?SAQwOMAIEMBcQBA6IVbUEjQsBAQEBAQEBAQEBAQEBAQEBAQEBAR6GPYF9h12CR?=
	=?us-ascii?q?iyCLwWINYdBigoBgTmEbYlWgW6EZ4kgkHcBHjZMgnAcGYE6cocigQABAQE?=
X-IronPort-AV: E=Sophos;i="5.31,476,1473120000"; 
	d="scan'208,217";a="158390675"
Received: from rcdn-core-9.cisco.com ([173.37.93.145])
	by rcdn-iport-6.cisco.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Oct 2016 05:18:17 +0000
Received: from XCH-RTP-003.cisco.com (xch-rtp-003.cisco.com [64.101.220.143])
	by rcdn-core-9.cisco.com (8.14.5/8.14.5) with ESMTP id u9B5IGXG008784
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 05:18:17 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-003.cisco.com
	(64.101.220.143) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Tue, 11 Oct 2016 01:18:15 -0400
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Tue, 11 Oct 2016 01:18:15 -0400
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Cross platform compiling/build issue: "Yocto - QA Issue:
	Architecture did not match (20 to 62) "
Thread-Index: AQHSI37eCHqhs4XqXUiInJ6sUsx3Fw==
Date: Tue, 11 Oct 2016 05:18:15 +0000
Message-ID: <0FEED60D-5F00-48D2-A68B-C1BC46DB78E4@cisco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.24.13.48]
MIME-Version: 1.0
Subject: Cross platform compiling/build issue: "Yocto - QA Issue: Architecture did not match (20 to 62) "
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
X-List-Received-Date: Tue, 11 Oct 2016 05:18:22 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0FEED60D5F0048D2A68BC1BC46DB78E4ciscocom_"

--_000_0FEED60D5F0048D2A68BC1BC46DB78E4ciscocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpIaSBmb2xrcywNCg0KSSBhbSB0cnlpbmcgdG8gaGF2ZSBjcm9zcyBwbGF0Zm9ybSBidWlsZCB3
aXRoICBZb2N0by9JT1ggU0RLIGZvciBvdXIgYy1tbGliIGxpYi4gSSBhbSBhYmxlIHRvIGNvbXBp
bGUgYW5kIGJ1aWxkIElQSyBwYWNrYWdlcyBhbmQgTFhDIGNvbnRhaW5lciBmb3IgeDg2IHRhcmdl
dC4NCg0KVXNpbmcgdGhlIHNhbWUgYy1tbGliLmJiIHJlY2lwZSwgdHJ5aW5nIHRvIGNyb3NzIGNv
bXBpbGluZyBhbmQgYnVpbGQgZm9yIGEgUFBDIDMyLWJpdCB0YXJnZXQgIG9uIG15IDY0LWJpdCBi
dWlsZCBlbnZpcm9ubWVudC4NCkhlcmUgaXMgdGhlIGJ1aWxkICBjb25maWd1cmF0aW9uDQoNCkJ1
aWxkIENvbmZpZ3VyYXRpb246DQpCQl9WRVJTSU9OICAgICAgICA9ICIxLjI0LjAiDQpCVUlMRF9T
WVMgICAgICAgICA9ICJ4ODZfNjQtbGludXgiDQpOQVRJVkVMU0JTVFJJTkcgICA9ICJVYnVudHUt
MTQuMDQiDQpUQVJHRVRfU1lTICAgICAgICA9ICJwb3dlcnBjLXBva3ktbGludXgtZ251c3BlIg0K
TUFDSElORSAgICAgICAgICAgPSAiaXNyODAwLWx4YyINCkRJU1RSTyAgICAgICAgICAgID0gInBv
a3kiDQpESVNUUk9fVkVSU0lPTiAgICA9ICIxLjcuMiINClRVTkVfRkVBVFVSRVMgICAgID0gIm0z
MiBzcGUgcHBjZTUwMHYyIg0KVEFSR0VUX0ZQVSAgICAgICAgPSAicHBjLWVmZCINCm1ldGEtY2lz
Y28taW94LWJhc2UNCm1ldGEtY2lzY28taXNyODAwDQptZXRhLWZzbC1wcGMtZGl6enktMTIuMC4y
DQptZXRhDQptZXRhLXlvY3RvDQoNCkFuZCBoYXZpbmcgdGhlIGZvbGxvd2luZyBlcnJvcjoNCkVS
Uk9SOiBRQSBJc3N1ZTogQXJjaGl0ZWN0dXJlIGRpZCBub3QgbWF0Y2ggKDIwIHRvIDYyKSBvbiAv
d29yay9wcGNlNTAwdjItcG9reS1saW51eC1nbnVzcGUvYy1tbGliLzEuMS1yMC9wYWNrYWdlcy1z
cGxpdC9jLW1saWIvdXNyL2Jpbi94eHggIFthcmNoXQ0KRVJST1I6IFFBIHJ1biBmb3VuZCBmYXRh
bCBlcnJvcnMuIFBsZWFzZSBjb25zaWRlciBmaXhpbmcgdGhlbS4NCkVSUk9SOiBGdW5jdGlvbiBm
YWlsZWQ6IGRvX3BhY2thZ2VfcWENCg0KUXVlc3Rpb24gaXM6DQpIb3cgdG8gc29sdmUgIGEgY3Jv
c3MgY29tcGlsaW5nL2J1aWxkIGZvciBhIFBQQyAzMi1iaXQgb2JqZWN0IG9uIGEgNjQgYml0IGxp
bnV4IGVudmlyb25tZW50Pw0KTWFueSB0aGFua3MgaW4gYWR2YW5jZSwNCuKAlERpbmgNCg0K

--_000_0FEED60D5F0048D2A68BC1BC46DB78E4ciscocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <9B41453C00F6964981A98173BB080224@emea.cisco.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IHN0eWxlPSJ3b3JkLXdy
YXA6IGJyZWFrLXdvcmQ7IC13ZWJraXQtbmJzcC1tb2RlOiBzcGFjZTsgLXdlYmtpdC1saW5lLWJy
ZWFrOiBhZnRlci13aGl0ZS1zcGFjZTsgY29sb3I6IHJnYigwLCAwLCAwKTsgZm9udC1zaXplOiAx
NHB4OyBmb250LWZhbWlseTogQ2FsaWJyaSwgc2Fucy1zZXJpZjsiPg0KPGRpdj48YnI+DQo8L2Rp
dj4NCjxkaXY+DQo8ZGl2PkhpIGZvbGtzLDwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+
SSBhbSB0cnlpbmcgdG8gaGF2ZSBjcm9zcyBwbGF0Zm9ybSBidWlsZCB3aXRoICZuYnNwO1lvY3Rv
L0lPWCBTREsgZm9yIG91ciBjLW1saWIgbGliLiBJIGFtIGFibGUgdG8gY29tcGlsZSBhbmQgYnVp
bGQgSVBLIHBhY2thZ2VzIGFuZCBMWEMgY29udGFpbmVyIGZvciB4ODYgdGFyZ2V0LjwvZGl2Pg0K
PGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+VXNpbmcgdGhlIHNhbWUgYy1tbGliLmJiIHJlY2lwZSwg
dHJ5aW5nIHRvIGNyb3NzIGNvbXBpbGluZyBhbmQgYnVpbGQgZm9yIGEgUFBDIDMyLWJpdCB0YXJn
ZXQgJm5ic3A7b24gbXkgNjQtYml0IGJ1aWxkIGVudmlyb25tZW50LiZuYnNwOzwvZGl2Pg0KPGRp
dj5IZXJlIGlzIHRoZSBidWlsZCAmbmJzcDtjb25maWd1cmF0aW9uPC9kaXY+DQo8ZGl2Pjxicj4N
CjwvZGl2Pg0KPGRpdj4NCjxkaXY+QnVpbGQgQ29uZmlndXJhdGlvbjo8L2Rpdj4NCjxkaXY+QkJf
VkVSU0lPTiAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDs9ICZxdW90OzEuMjQuMCZxdW90Ozwv
ZGl2Pg0KPGRpdj48Zm9udCBjb2xvcj0iI2ZmMDAwMCI+QlVJTERfU1lTICZuYnNwOyAmbmJzcDsg
Jm5ic3A7ICZuYnNwOyA9ICZxdW90O3g4Nl82NC1saW51eCZxdW90OzwvZm9udD48L2Rpdj4NCjxk
aXY+TkFUSVZFTFNCU1RSSU5HICZuYnNwOyA9ICZxdW90O1VidW50dS0xNC4wNCZxdW90OzwvZGl2
Pg0KPGRpdj5UQVJHRVRfU1lTICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOz0gJnF1b3Q7cG93
ZXJwYy1wb2t5LWxpbnV4LWdudXNwZSZxdW90OzwvZGl2Pg0KPGRpdj5NQUNISU5FICZuYnNwOyAm
bmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgPSAmcXVvdDtpc3I4MDAtbHhjJnF1b3Q7PC9kaXY+
DQo8ZGl2PkRJU1RSTyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOz0g
JnF1b3Q7cG9reSZxdW90OzwvZGl2Pg0KPGRpdj5ESVNUUk9fVkVSU0lPTiAmbmJzcDsgJm5ic3A7
PSAmcXVvdDsxLjcuMiZxdW90OzwvZGl2Pg0KPGRpdj48Zm9udCBjb2xvcj0iI2ZmMDAwMCI+VFVO
RV9GRUFUVVJFUyAmbmJzcDsgJm5ic3A7ID0gJnF1b3Q7bTMyIHNwZSBwcGNlNTAwdjImcXVvdDs8
L2ZvbnQ+PC9kaXY+DQo8ZGl2Pjxmb250IGNvbG9yPSIjZmYwMDAwIj5UQVJHRVRfRlBVICZuYnNw
OyAmbmJzcDsgJm5ic3A7ICZuYnNwOz0gJnF1b3Q7cHBjLWVmZCZxdW90OzwvZm9udD48L2Rpdj4N
CjxkaXY+bWV0YS1jaXNjby1pb3gtYmFzZSZuYnNwOzwvZGl2Pg0KPGRpdj5tZXRhLWNpc2NvLWlz
cjgwMCZuYnNwOzwvZGl2Pg0KPGRpdj5tZXRhLWZzbC1wcGMtZGl6enktMTIuMC4yJm5ic3A7PC9k
aXY+DQo8ZGl2Pm1ldGEgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsg
Jm5ic3A7PC9kaXY+DQo8ZGl2Pm1ldGEteW9jdG8gJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7
PC9kaXY+DQo8L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PkFuZCBoYXZpbmcgdGhlIGZv
bGxvd2luZyBlcnJvcjo8L2Rpdj4NCjxkaXY+RVJST1I6Jm5ic3A7PGZvbnQgY29sb3I9IiNmZjAw
MDAiPlFBIElzc3VlOiBBcmNoaXRlY3R1cmUgZGlkIG5vdCBtYXRjaDwvZm9udD4mbmJzcDsoMjAg
dG8gNjIpIG9uIC93b3JrL3BwY2U1MDB2Mi1wb2t5LWxpbnV4LWdudXNwZS9jLW1saWIvMS4xLXIw
L3BhY2thZ2VzLXNwbGl0L2MtbWxpYi91c3IvYmluL3h4eCAmbmJzcDtbYXJjaF08L2Rpdj4NCjxk
aXY+DQo8ZGl2PkVSUk9SOiBRQSBydW4gZm91bmQgZmF0YWwgZXJyb3JzLiBQbGVhc2UgY29uc2lk
ZXIgZml4aW5nIHRoZW0uPC9kaXY+DQo8ZGl2PkVSUk9SOiZuYnNwOzxmb250IGNvbG9yPSIjZmYw
MDAwIj5GdW5jdGlvbiBmYWlsZWQ6IGRvX3BhY2thZ2VfcWE8L2ZvbnQ+PC9kaXY+DQo8L2Rpdj4N
CjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PlF1ZXN0aW9uIGlzOiZuYnNwOzwvZGl2Pg0KPGRpdj5I
b3cgdG8gc29sdmUgJm5ic3A7YSBjcm9zcyBjb21waWxpbmcvYnVpbGQgZm9yIGEgUFBDIDMyLWJp
dCBvYmplY3QgPGkgc3R5bGU9Im9ycGhhbnM6IDI7IHdoaXRlLXNwYWNlOiBwcmUtd3JhcDsgd2lk
b3dzOiAyOyI+DQpvbiBhIDY0IGJpdCBsaW51eCBlbnZpcm9ubWVudD8gPC9pPjwvZGl2Pg0KPGRp
dj48aSBzdHlsZT0ib3JwaGFuczogMjsgd2hpdGUtc3BhY2U6IHByZS13cmFwOyB3aWRvd3M6IDI7
Ij48L2k+PC9kaXY+DQo8ZGl2PjxpIHN0eWxlPSJvcnBoYW5zOiAyOyB3aGl0ZS1zcGFjZTogcHJl
LXdyYXA7IHdpZG93czogMjsiPk1hbnkgdGhhbmtzIGluIGFkdmFuY2UsPC9pPjwvZGl2Pg0KPGRp
dj48aSBzdHlsZT0ib3JwaGFuczogMjsgd2lkb3dzOiAyOyI+PGZvbnQgZmFjZT0iQ2FsaWJyaSxz
YW5zLXNlcmlmIj48c3BhbiBzdHlsZT0id2hpdGUtc3BhY2U6IHByZS13cmFwOyI+4oCURGluaA0K
PC9zcGFuPjwvZm9udD48L2k+PC9kaXY+DQo8L2Rpdj4NCjxkaXY+PGkgc3R5bGU9Im9ycGhhbnM6
IDI7IHdpZG93czogMjsiPjxmb250IGZhY2U9IkNhbGlicmksc2Fucy1zZXJpZiI+PHNwYW4gc3R5
bGU9IndoaXRlLXNwYWNlOiBwcmUtd3JhcDsiPjxicj4NCjwvc3Bhbj48L2ZvbnQ+PC9pPjwvZGl2
Pg0KPGRpdj4NCjxkaXYgaWQ9Ik1BQ19PVVRMT09LX1NJR05BVFVSRSI+PC9kaXY+DQo8L2Rpdj4N
CjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_0FEED60D5F0048D2A68BC1BC46DB78E4ciscocom_--
