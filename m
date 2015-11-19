Return-Path: <marcin.krzeminski@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 743C6E009EF; Thu, 19 Nov 2015 04:23:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [93.183.12.32 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from demumfd001.nsn-inter.net (demumfd001.nsn-inter.net
	[93.183.12.32])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 248F0E00985
	for <yocto@yoctoproject.org>; Thu, 19 Nov 2015 04:23:50 -0800 (PST)
Received: from demuprx016.emea.nsn-intra.net ([10.150.129.55])
	by demumfd001.nsn-inter.net (8.15.2/8.15.2) with ESMTPS id
	tAJCNkik019300
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Thu, 19 Nov 2015 12:23:46 GMT
Received: from DEMUHTC004.nsn-intra.net ([10.159.42.35])
	by demuprx016.emea.nsn-intra.net (8.12.11.20060308/8.12.11) with ESMTP
	id tAJCNjOj031418
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 19 Nov 2015 13:23:45 +0100
Received: from DEMUHTC012.nsn-intra.net (10.159.42.43) by
	DEMUHTC004.nsn-intra.net (10.159.42.35) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Thu, 19 Nov 2015 13:23:45 +0100
Received: from DEMUMBX005.nsn-intra.net ([169.254.5.30]) by
	DEMUHTC012.nsn-intra.net ([10.159.42.43]) with mapi id 14.03.0248.002;
	Thu, 19 Nov 2015 13:23:44 +0100
From: "Krzeminski, Marcin (Nokia - PL/Wroclaw)" <marcin.krzeminski@nokia.com>
To: "EXT Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] After update to yocto 2.0 from 1.8 can not install app
	to /usr/sbin in SDK
Thread-Index: AdEiuUoGfH/C7i9YRR+H5+t0g2ZH8///9V6A///d4PA=
Date: Thu, 19 Nov 2015 12:23:45 +0000
Message-ID: <CA0E6F9BA6AED7458C23277BD87075E510107840@DEMUMBX005.nsn-intra.net>
References: <CA0E6F9BA6AED7458C23277BD87075E510107688@DEMUMBX005.nsn-intra.net>
	<CAJTo0LYjN2_7v38sCMkeZXGQ+cK0K-nVKdc1xpXyu8ON5Yqv7w@mail.gmail.com>
In-Reply-To: <CAJTo0LYjN2_7v38sCMkeZXGQ+cK0K-nVKdc1xpXyu8ON5Yqv7w@mail.gmail.com>
Accept-Language: pl-PL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.159.42.116]
MIME-Version: 1.0
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for
	further information)
X-purgate-size: 6960
X-purgate-ID: 151667::1447935826-000027D6-E233E7C7/0/0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: After update to yocto 2.0 from 1.8 can not install app to /usr/sbin in SDK
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
X-List-Received-Date: Thu, 19 Nov 2015 12:23:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CA0E6F9BA6AED7458C23277BD87075E510107840DEMUMBX005nsnin_"

--_000_CA0E6F9BA6AED7458C23277BD87075E510107840DEMUMBX005nsnin_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXQgZG9lcyBtYWtlIHNlbnNlIG5vdy4gQ21ha2UgdXBkYXRlZC4NCg0KVGhhbmtzLA0KTWFyY2lu
IEtyemVtaW5za2kNCg0KRnJvbTogRVhUIEJ1cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVydG9u
QGludGVsLmNvbV0NClNlbnQ6IFRodXJzZGF5LCBOb3ZlbWJlciAxOSwgMjAxNSAxMjoyMSBQTQ0K
VG86IEtyemVtaW5za2ksIE1hcmNpbiAoTm9raWEgLSBQTC9Xcm9jbGF3KSA8bWFyY2luLmtyemVt
aW5za2lAbm9raWEuY29tPg0KQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJl
OiBbeW9jdG9dIEFmdGVyIHVwZGF0ZSB0byB5b2N0byAyLjAgZnJvbSAxLjggY2FuIG5vdCBpbnN0
YWxsIGFwcCB0byAvdXNyL3NiaW4gaW4gU0RLDQoNCg0KT24gMTkgTm92ZW1iZXIgMjAxNSBhdCAx
MDo1OSwgS3J6ZW1pbnNraSwgTWFyY2luIChOb2tpYSAtIFBML1dyb2NsYXcpIDxtYXJjaW4ua3J6
ZW1pbnNraUBub2tpYS5jb208bWFpbHRvOm1hcmNpbi5rcnplbWluc2tpQG5va2lhLmNvbT4+IHdy
b3RlOg0KRG9lcyB0aGlzIGJlaGF2aW9yIGlzIHNvbWVob3cgZXhwZWN0ZWQ/DQoNClllcy4gIHNi
aW5kaXIgaXMgc2V0IHRvIGJpbmRpciBmb3IgdGhlIFNESywgc28gdGhhdCBhbGwgYmluYXJpZXMg
aW5zdGFsbGVkIGFyZSB0cml2aWFsbHkgYXZhaWxhYmxlIHRvIHRoZSB1c2VyLiAgIEluc3RlYWQg
b2YgaGFyZC1jb2RpbmcgJHtwcmVmaXh9L3NiaW4gdXNlICR7c2JpbmRpcn0gZXZlcnl3aGVyZSBh
bmQgeW91ciBiaW5hcnkgd2lsbCBlbmQgdXAgaW4gdGhlIFNESydzIHVzci9iaW4vLg0KDQpSb3Nz
DQo=

--_000_CA0E6F9BA6AED7458C23277BD87075E510107840DEMUMBX005nsnin_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWws
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBjbTsNCgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJ
Zm9udC1zaXplOjEyLjBwdDsNCglmb250LWZhbWlseToiVGltZXMgTmV3IFJvbWFuIixzZXJpZjt9
DQphOmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCglj
b2xvcjpibHVlOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBzcGFu
Lk1zb0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjpw
dXJwbGU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQpzcGFuLkVtYWlsU3R5bGUxNw0K
CXttc28tc3R5bGUtdHlwZTpwZXJzb25hbC1yZXBseTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIs
c2Fucy1zZXJpZjsNCgljb2xvcjojMUY0OTdEO30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHls
ZS10eXBlOmV4cG9ydC1vbmx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30N
CkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjYxMi4wcHQgNzkyLjBwdDsNCgltYXJnaW46NzIu
MHB0IDcyLjBwdCA3Mi4wcHQgNzIuMHB0O30NCmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3Jk
U2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBl
ZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRtYXg9IjEwMjYiIC8+DQo8L3htbD48IVtlbmRpZl0t
LT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4N
CjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRhPSIxIiAvPg0KPC9vOnNoYXBlbGF5b3V0PjwveG1s
PjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0KPGJvZHkgbGFuZz0iRU4tVVMiIGxpbms9ImJsdWUiIHZs
aW5rPSJwdXJwbGUiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0Nh
bGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj5JdCBkb2VzIG1ha2Ugc2Vuc2Ug
bm93LiBDbWFrZSB1cGRhdGVkLjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0Nh
bGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj48bzpwPiZuYnNwOzwvbzpwPjwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEx
LjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzFG
NDk3RCI+VGhhbmtzLDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkm
cXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj5NYXJjaW4gS3J6ZW1pbnNraTxvOnA+PC9v
OnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9w
Pg0KPGRpdiBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLWxlZnQ6c29saWQgYmx1ZSAxLjVwdDtw
YWRkaW5nOjBjbSAwY20gMGNtIDQuMHB0Ij4NCjxkaXY+DQo8ZGl2IHN0eWxlPSJib3JkZXI6bm9u
ZTtib3JkZXItdG9wOnNvbGlkICNFMUUxRTEgMS4wcHQ7cGFkZGluZzozLjBwdCAwY20gMGNtIDBj
bSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48Yj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBw
dDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWYiPkZyb206PC9zcGFu
PjwvYj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxp
YnJpJnF1b3Q7LHNhbnMtc2VyaWYiPiBFWFQgQnVydG9uLCBSb3NzIFttYWlsdG86cm9zcy5idXJ0
b25AaW50ZWwuY29tXQ0KPGJyPg0KPGI+U2VudDo8L2I+IFRodXJzZGF5LCBOb3ZlbWJlciAxOSwg
MjAxNSAxMjoyMSBQTTxicj4NCjxiPlRvOjwvYj4gS3J6ZW1pbnNraSwgTWFyY2luIChOb2tpYSAt
IFBML1dyb2NsYXcpICZsdDttYXJjaW4ua3J6ZW1pbnNraUBub2tpYS5jb20mZ3Q7PGJyPg0KPGI+
Q2M6PC9iPiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnPGJyPg0KPGI+U3ViamVjdDo8L2I+IFJlOiBb
eW9jdG9dIEFmdGVyIHVwZGF0ZSB0byB5b2N0byAyLjAgZnJvbSAxLjggY2FuIG5vdCBpbnN0YWxs
IGFwcCB0byAvdXNyL3NiaW4gaW4gU0RLPG86cD48L286cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8
L2Rpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPGRpdj4N
CjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxkaXY+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5PbiAxOSBOb3ZlbWJlciAyMDE1IGF0IDEwOjU5LCBLcnpl
bWluc2tpLCBNYXJjaW4gKE5va2lhIC0gUEwvV3JvY2xhdykgJmx0OzxhIGhyZWY9Im1haWx0bzpt
YXJjaW4ua3J6ZW1pbnNraUBub2tpYS5jb20iIHRhcmdldD0iX2JsYW5rIj5tYXJjaW4ua3J6ZW1p
bnNraUBub2tpYS5jb208L2E+Jmd0OyB3cm90ZTo8bzpwPjwvbzpwPjwvcD4NCjxibG9ja3F1b3Rl
IHN0eWxlPSJib3JkZXI6bm9uZTtib3JkZXItbGVmdDpzb2xpZCAjQ0NDQ0NDIDEuMHB0O3BhZGRp
bmc6MGNtIDBjbSAwY20gNi4wcHQ7bWFyZ2luLWxlZnQ6NC44cHQ7bWFyZ2luLXJpZ2h0OjBjbSI+
DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImNvbG9yOiMyMjIyMjIi
PkRvZXMgdGhpcyBiZWhhdmlvciBpcyBzb21laG93IGV4cGVjdGVkPzwvc3Bhbj48bzpwPjwvbzpw
PjwvcD4NCjwvZGl2Pg0KPC9ibG9ja3F1b3RlPg0KPC9kaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48YnI+DQpZZXMuICZuYnNwO3NiaW5kaXIgaXMgc2V0IHRvIGJpbmRpciBmb3IgdGhlIFNESywg
c28gdGhhdCBhbGwgYmluYXJpZXMgaW5zdGFsbGVkIGFyZSB0cml2aWFsbHkgYXZhaWxhYmxlIHRv
IHRoZSB1c2VyLiAmbmJzcDsgSW5zdGVhZCBvZiBoYXJkLWNvZGluZyAke3ByZWZpeH0vc2JpbiB1
c2UgJHtzYmluZGlyfSBldmVyeXdoZXJlIGFuZCB5b3VyIGJpbmFyeSB3aWxsIGVuZCB1cCBpbiB0
aGUgU0RLJ3MgdXNyL2Jpbi8uPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPlJvc3M8bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rp
dj4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_CA0E6F9BA6AED7458C23277BD87075E510107840DEMUMBX005nsnin_--
