Return-Path: <Joel.Esponde@Honeywell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4398EE00ACE; Mon, 20 Mar 2017 09:40:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.113 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0113.outbound.protection.outlook.com [104.47.34.113])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABC20E00AA2
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 09:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Honeywell.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=IpxT7GTyrMjo5/SvJdGcyAx7JsCpBJLA/f82jeh6/2A=;
	b=JpPkhv0jTheHKK/+YfmirGcpkisgC2mdlHMJxigFbKEBCiMKlJZe/q6ZYl1x5YVjO4jhvyGDF/ecWSlUjrx1p0tRWENwKa69laAZclgEe2KNFf0JhV5A0XA23+jxjKJuzzsaKW0VSLGXrV6lWV7pSYsCGkwKQYlSB6K3e9c1V60=
Received: from CO2PR07MB588.namprd07.prod.outlook.com (10.141.229.153) by
	CO2PR07MB588.namprd07.prod.outlook.com (10.141.229.153) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.947.12; Mon, 20 Mar 2017 16:25:55 +0000
Received: from CO2PR07MB588.namprd07.prod.outlook.com ([10.141.229.153]) by
	CO2PR07MB588.namprd07.prod.outlook.com ([10.141.229.153]) with mapi id
	15.01.0947.020; Mon, 20 Mar 2017 16:25:55 +0000
From: "Esponde, Joel" <Joel.Esponde@Honeywell.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] file: fetch fail on missing commit
Thread-Index: AdKhagueO7MT7o4UT3qI9dpPYdqeMAAFt+EAAATwceA=
Date: Mon, 20 Mar 2017 16:25:55 +0000
Message-ID: <CO2PR07MB5889EE70527FE3D2A7D5C30963A0@CO2PR07MB588.namprd07.prod.outlook.com>
References: <CO2PR07MB58833668007B05E6BF1F0FD963A0@CO2PR07MB588.namprd07.prod.outlook.com>
	<CAJTo0La3kUo5YNeF7QsJbbUDmQPJgz5t3WJyfJYSgEt6eAge1w@mail.gmail.com>
In-Reply-To: <CAJTo0La3kUo5YNeF7QsJbbUDmQPJgz5t3WJyfJYSgEt6eAge1w@mail.gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
	header.d=none; intel.com;
	dmarc=none action=none header.from=Honeywell.com; 
x-originating-ip: [199.64.75.70]
x-ms-office365-filtering-correlation-id: db3ff3c6-529b-4b3d-7ef5-08d46fadc8a9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(48565401081); SRVR:CO2PR07MB588; 
x-microsoft-exchange-diagnostics: 1; CO2PR07MB588;
	7:qstazVQzQu9kA+nwcZDWzLkjic3BVpct5r+4/xj9JkXO5Re7miBk4Vobicm7gMD7lMXe1ZbNIoNT07Kzz/7L+aiV3ukTWZGfGFKwM/hOxrs4FQMAuIXU/zMXLQrC37eFtsXEsb5OwkabvlIUAiB3gYocWjbLLurFPmGEh/IK6+ylQK7a20wZskK3XGmhuiCVNULMQ2KX7yTaVpP+PSNw9XqqECFFHVRFGu0kQ/pvH7h+HVS91W9v8dlpbtUgQeUj47tO3RAddKBFPKeONp6v/OncR9bt396IrZuBm0v0m1B3kWpZa7cR8upRTJFqp3trdr/ztJTUZtsUUPVCSEmkrQ==;
	20:c1SITS4RDAU9mIbmQwLRiyJKy/9KibSKHKoAFqI2Catl65K43CyTCX3dT5yk/wxZ7BxMKjNCpsdgdYN4DpA0qMCyyFu+FmnH9O88ej+CJlMoKnwyUpoKv0aNKg4T5Kq6vNryUtligrMGBNCFMYRDgdTx1TaxYp5hMipFmTuCyqLJBIozk/LtN7TDGTRPPpUg71j9eVDCmpczJPTMnfu2dSmOcnumRB2yAq1fwz0Wqisk1l3tSb4F2C5T1vcni+8R
x-recptdomain: NotTLSDomain
x-microsoft-antispam-prvs: <CO2PR07MB588A56ED9133146ADEBDB31963A0@CO2PR07MB588.namprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(93747276172241)(21748063052155)(228905959029699); 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6055026)(6041248)(20161123555025)(20161123564025)(20161123560025)(20161123558025)(20161123562025)(6072148)(6042181);
	SRVR:CO2PR07MB588; BCL:0; PCL:0; RULEID:; SRVR:CO2PR07MB588; 
x-forefront-prvs: 02524402D6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(24454002)(9686003)(122556002)(25786008)(50986999)(8676002)(53546008)(74316002)(76176999)(2900100001)(33656002)(6246003)(66066001)(2906002)(38730400002)(81166006)(110136004)(8936002)(86362001)(4326008)(790700001)(53936002)(102836003)(3660700001)(6306002)(229853002)(54356999)(7736002)(3846002)(6116002)(99286003)(5660300001)(6436002)(6506006)(55016002)(189998001)(77096006)(2950100002)(236005)(6916009)(3280700002)(54896002)(7696004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CO2PR07MB588;
	H:CO2PR07MB588.namprd07.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: Honeywell.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2017 16:25:55.1096 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 96ece526-9c7d-48b0-8daf-8b93c90a5d18
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO2PR07MB588
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: file: fetch fail on missing commit
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
X-List-Received-Date: Mon, 20 Mar 2017 16:40:26 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_CO2PR07MB5889EE70527FE3D2A7D5C30963A0CO2PR07MB588namprd_"

--_000_CO2PR07MB5889EE70527FE3D2A7D5C30963A0CO2PR07MB588namprd_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGUgOiBCdXJ0b24sIFJvc3MgW21haWx0bzpyb3NzLmJ1cnRvbkBpbnRlbC5jb21dDQpFbnZvecOp
IDogbHVuZGkgMjAgbWFycyAyMDE3IDE0OjUwDQoNCk9uIDIwIE1hcmNoIDIwMTcgYXQgMTE6MTYs
IEVzcG9uZGUsIEpvZWwgPEpvZWwuRXNwb25kZUBob25leXdlbGwuY29tPG1haWx0bzpKb2VsLkVz
cG9uZGVAaG9uZXl3ZWxsLmNvbT4+IHdyb3RlOg0KQnV0IGJhc2VkIG9uIHdoYXQgSSBzZWUgaW4g
bXkgbWFjaGluZSwgYWxsIGZyb20gc2NyYXRjaCBidWlsZHMgc2VlbSB0byBiZSBicm9rZW4uDQpN
eSBtb3J0eSBhbmQga3JvZ290aCBidWlsZHMgYXJlIGJyb2tlbi4NCg0KQW0gSSBhbG9uZSB0byBo
YXZlIHRoYXQgaXNzdWUgb3IgaXMgaXQgZ2VuZXJhbGl6ZWQ/DQoNCllvdSdyZSByaWdodCwgYW5k
IHBhdGNoZXMgYXJlIG9uIHRoZSBsaXN0LiAgSG9wZWZ1bGx5IHdlIGNhbiBnZXQgZXZlcnl0aGlu
ZyBtZXJnZWQgdG9kYXkuDQoNClJvc3MNCg0KDQpHcmVhdCBuZXdzISBUaGFua3MhDQpEb2VzIHRo
aXMgbWVhbiB0aGF0IG5ldyBvZmZpY2lhbCB2ZXJzaW9ucyB3aWxsIGFsc28gYmUgZ2VuZXJhdGVk
Pw0KDQpKb8OrbA0KDQo=

--_000_CO2PR07MB5889EE70527FE3D2A7D5C30963A0CO2PR07MB588namprd_
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
c2Fucy1zZXJpZjsNCgljb2xvcjojNDAwMDAwO30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHls
ZS10eXBlOmV4cG9ydC1vbmx5O30NCkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjYxMi4wcHQg
NzkyLjBwdDsNCgltYXJnaW46NzIuMHB0IDcyLjBwdCA3Mi4wcHQgNzIuMHB0O30NCmRpdi5Xb3Jk
U2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48IS0tW2lmIGd0ZSBt
c28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRtYXg9IjEwMjYi
IC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBl
bGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRhPSIxIiAvPg0K
PC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0KPGJvZHkgbGFuZz0i
RU4tVVMiIGxpbms9ImJsdWUiIHZsaW5rPSJwdXJwbGUiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rp
b24xIj4NCjxkaXYgc3R5bGU9ImJvcmRlcjpub25lO2JvcmRlci1sZWZ0OnNvbGlkIGJsdWUgMS41
cHQ7cGFkZGluZzowY20gMGNtIDBjbSA0LjBwdCI+DQo8ZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxiPjxzcGFuIGxhbmc9IkZSIiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250
LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWYiPkRlJm5ic3A7Ojwvc3Bhbj48
L2I+PHNwYW4gbGFuZz0iRlIiIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZx
dW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+IEJ1cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3Mu
YnVydG9uQGludGVsLmNvbV0NCjxicj4NCjxiPkVudm95w6kmbmJzcDs6PC9iPiBsdW5kaSAyMCBt
YXJzIDIwMTcgMTQ6NTA8YnI+DQo8YnI+DQo8L3NwYW4+PHNwYW4gbGFuZz0iRlIiPjxvOnA+PC9v
OnA+PC9zcGFuPjwvcD4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5PbiAyMCBNYXJjaCAy
MDE3IGF0IDExOjE2LCBFc3BvbmRlLCBKb2VsICZsdDs8YSBocmVmPSJtYWlsdG86Sm9lbC5Fc3Bv
bmRlQGhvbmV5d2VsbC5jb20iIHRhcmdldD0iX2JsYW5rIj5Kb2VsLkVzcG9uZGVAaG9uZXl3ZWxs
LmNvbTwvYT4mZ3Q7IHdyb3RlOjxvOnA+PC9vOnA+PC9wPg0KPGJsb2NrcXVvdGUgc3R5bGU9ImJv
cmRlcjpub25lO2JvcmRlci1sZWZ0OnNvbGlkICNDQ0NDQ0MgMS4wcHQ7cGFkZGluZzowY20gMGNt
IDBjbSA2LjBwdDttYXJnaW4tbGVmdDo0LjhwdDttYXJnaW4tcmlnaHQ6MGNtIj4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiIHN0eWxlPSJtc28tbWFyZ2luLXRvcC1hbHQ6YXV0bzttc28tbWFyZ2luLWJv
dHRvbS1hbHQ6YXV0byI+PHNwYW4gc3R5bGU9ImNvbG9yOiM0MDAwMDAiPkJ1dCBiYXNlZCBvbiB3
aGF0IEkgc2VlIGluIG15IG1hY2hpbmUsIGFsbCBmcm9tIHNjcmF0Y2ggYnVpbGRzIHNlZW0gdG8g
YmUgYnJva2VuLjwvc3Bhbj48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0
eWxlPSJtc28tbWFyZ2luLXRvcC1hbHQ6YXV0bzttc28tbWFyZ2luLWJvdHRvbS1hbHQ6YXV0byI+
PHNwYW4gc3R5bGU9ImNvbG9yOiM0MDAwMDAiPk15IG1vcnR5IGFuZCBrcm9nb3RoIGJ1aWxkcyBh
cmUgYnJva2VuLjwvc3Bhbj48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0
eWxlPSJtc28tbWFyZ2luLXRvcC1hbHQ6YXV0bzttc28tbWFyZ2luLWJvdHRvbS1hbHQ6YXV0byI+
PHNwYW4gc3R5bGU9ImNvbG9yOiM0MDAwMDAiPiZuYnNwOzwvc3Bhbj48bzpwPjwvbzpwPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJtc28tbWFyZ2luLXRvcC1hbHQ6YXV0bzttc28t
bWFyZ2luLWJvdHRvbS1hbHQ6YXV0byI+PHNwYW4gc3R5bGU9ImNvbG9yOiM0MDAwMDAiPkFtIEkg
YWxvbmUgdG8gaGF2ZSB0aGF0IGlzc3VlIG9yIGlzIGl0IGdlbmVyYWxpemVkPzwvc3Bhbj48bzpw
PjwvbzpwPjwvcD4NCjwvYmxvY2txdW90ZT4NCjwvZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PGJyPg0KWW91J3JlIHJpZ2h0LCBhbmQgcGF0Y2hlcyBhcmUgb24gdGhlIGxpc3QuJm5ic3A7IEhv
cGVmdWxseSB3ZSBjYW4gZ2V0IGV2ZXJ5dGhpbmcgbWVyZ2VkIHRvZGF5LjxvOnA+PC9vOnA+PC9w
Pg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48
L3A+DQo8L2Rpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPlJvc3M8bzpwPjwvbzpwPjwvcD4NCjxk
aXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtm
b250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzQwMDAwMCI+
PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
c3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90Oyxz
YW5zLXNlcmlmO2NvbG9yOiM0MDAwMDAiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFt
aWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojNDAwMDAwIj5HcmVhdCBu
ZXdzISBUaGFua3MhPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZx
dW90OyxzYW5zLXNlcmlmO2NvbG9yOiM0MDAwMDAiPkRvZXMgdGhpcyBtZWFuIHRoYXQgbmV3IG9m
ZmljaWFsIHZlcnNpb25zIHdpbGwgYWxzbyBiZSBnZW5lcmF0ZWQ/PG86cD48L286cD48L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7
Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiM0MDAwMDAi
PjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDss
c2Fucy1zZXJpZjtjb2xvcjojNDAwMDAwIj5Kb8OrbDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFt
aWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojNDAwMDAwIj48bzpwPiZu
YnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwv
Ym9keT4NCjwvaHRtbD4NCg==

--_000_CO2PR07MB5889EE70527FE3D2A7D5C30963A0CO2PR07MB588namprd_--
