Return-Path: <suneetha.g@tataelxsi.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68E70E00A4F; Sun, 12 Mar 2017 21:28:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.125.95 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from APC01-SG2-obe.outbound.protection.outlook.com
	(mail-sg2apc01on0095.outbound.protection.outlook.com [104.47.125.95])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD7D5E00A3B
	for <yocto@yoctoproject.org>; Sun, 12 Mar 2017 21:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=tataelxsi.onmicrosoft.com; s=selector1-tataelxsi-co-in;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=MJsPBVErQPSkvRQU81xg6lkZgoaf489ju9NA+PBWtT4=;
	b=FW/FrjeHRDiTDq+hI2FJ9QKVBAdJOT+vZTL3H8dllw20d+XeaPyni+oE5bWZDabrLeWOIjnL25g1+fMPpNdAkac6F156X7otPo/wr3kLDZgojoGMV39vjMOtF2DoOJH/ABzzVxZtcEdA2gP8sv7o09x32GZl+HJ8aFUI9oQJ3KE=
Received: from HK2PR0401MB1492.apcprd04.prod.outlook.com (10.165.181.14) by
	HK2PR0401MB1489.apcprd04.prod.outlook.com (10.165.181.11) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.947.12; Mon, 13 Mar 2017 04:28:40 +0000
Received: from HK2PR0401MB1492.apcprd04.prod.outlook.com ([10.165.181.14]) by
	HK2PR0401MB1492.apcprd04.prod.outlook.com ([10.165.181.14]) with
	mapi id 15.01.0947.023; Mon, 13 Mar 2017 04:28:40 +0000
From: Suneetha Lakshmi G <suneetha.g@tataelxsi.co.in>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] help
Thread-Index: AQHSmcperIBQsFZnGUGbgGr0C/RUMqGSLxEx
Date: Mon, 13 Mar 2017 04:28:40 +0000
Message-ID: <HK2PR0401MB14927B9C74BF888B6E4EC462C6250@HK2PR0401MB1492.apcprd04.prod.outlook.com>
References: <mailman.63189.1489153806.15860.yocto@yoctoproject.org>
	<HK2PR0401MB149200CF1FFB30976C65F1C0C6200@HK2PR0401MB1492.apcprd04.prod.outlook.com>,
	<CAMKF1sqfy8Rq5fQ5aDRK8T5AefffdEYahN2JHxkibF7hPK7_0g@mail.gmail.com>
In-Reply-To: <CAMKF1sqfy8Rq5fQ5aDRK8T5AefffdEYahN2JHxkibF7hPK7_0g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none; gmail.com;
	dmarc=none action=none header.from=tataelxsi.co.in; 
x-originating-ip: [25.165.70.4]
x-ms-office365-filtering-correlation-id: 1338fb44-689b-4a0b-00fa-08d469c96cd6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001)(48565401081);
	SRVR:HK2PR0401MB1489; 
x-microsoft-exchange-diagnostics: 1; HK2PR0401MB1489;
	7:BDeFt72XaZ7uful3uUYOLEK4m0MTUM+Y9P4dlw9EC/sS+x9xSEhMfePaEXGiv1htXGc/1bG1L1bL041nnKPOtWjGo5f8ulW9ewGFxJMpIWyzX1DBBmfMsSgOo+TU1m/ptaJDNAeqkzCeFqNnrTO9NhpmSKrGnfpbfSwPC2OmhJyRD8Ev9aS82z68qAsC50+nZ1v6/K0rSHAFPGeSzDDp0fghZ3qDXnwsIyCWi0iGUBqdyWk6HMUrzwydQdnKurKwDeKc+vvA+9+LCLKjiVJsUcSq4uMNHJBOQ7GVd7i5WO4MiM1EAhDjO+MvnhhMrorzZRNV5cCxPT8f1qql9epFbw==
x-microsoft-antispam-prvs: <HK2PR0401MB14895A11BF0619FDFDC021E6C6250@HK2PR0401MB1489.apcprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(90964069518039);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6055026)(6041248)(20161123558025)(20161123564025)(20161123555025)(20161123560025)(20161123562025)(6072148);
	SRVR:HK2PR0401MB1489; BCL:0; PCL:0; RULEID:;
	SRVR:HK2PR0401MB1489; 
x-forefront-prvs: 0245702D7B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39450400003)(39860400002)(39840400002)(39850400002)(39410400002)(53754006)(377454003)(24454002)(229853002)(54896002)(236005)(8676002)(102836003)(6116002)(66066001)(3846002)(9686003)(110136004)(25786008)(6246003)(6436002)(33656002)(99286003)(6506006)(55016002)(77096006)(53936002)(2950100002)(42882006)(106116001)(19627405001)(7696004)(81166006)(5660300001)(8936002)(74316002)(50986999)(54356999)(76176999)(2900100001)(7736002)(74482002)(122556002)(86362001)(2906002)(3660700001)(3280700002)(4326008)(6862004)(53546006)(38730400002)(189998001)(80872002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HK2PR0401MB1489;
	H:HK2PR0401MB1492.apcprd04.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: tataelxsi.co.in
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2017 04:28:40.0139 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ad6a39dd-96b6-4368-82da-f2ec4d92e26a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR0401MB1489
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: help
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
X-List-Received-Date: Mon, 13 Mar 2017 04:28:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HK2PR0401MB14927B9C74BF888B6E4EC462C6250HK2PR0401MB1492_"

--_000_HK2PR0401MB14927B9C74BF888B6E4EC462C6250HK2PR0401MB1492_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgS2hlbSwNCg0KDQpTb3JyeSBmb3IgbGF0ZSByZXNwb25zZSAuDQoNCldoaWxlIGJ1aWxkaW5n
IEtlcm5lbCA0LjEuMTcgd2l0aCBnY2MgNC45LjQgd2UgYXJlIHVzaW5nIGdjYyBhcyBhIEV4dGVy
bmFsIHRvb2xjaGFpbiAoYXNkay00LjkuNC1hNy1FTC0zLjEwLWcyLjE5LWEzMm50LTE2MDIxOSkN
Cg0KDQpSZWdhcmRzLA0KDQpTdW5lZXRoYQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KRnJvbTogS2hlbSBSYWogPHJhai5raGVtQGdtYWlsLmNvbT4NClNlbnQ6IEZyaWRheSwg
TWFyY2ggMTAsIDIwMTcgMTE6NDU6MjMgUE0NClRvOiBTdW5lZXRoYSBMYWtzaG1pIEcNCkNjOiB5
b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBoZWxwDQoNCg0KDQpP
biBGcmksIE1hciAxMCwgMjAxNyBhdCA2OjI1IEFNLCBTdW5lZXRoYSBMYWtzaG1pIEcgPHN1bmVl
dGhhLmdAdGF0YWVseHNpLmNvLmluPG1haWx0bzpzdW5lZXRoYS5nQHRhdGFlbHhzaS5jby5pbj4+
IHdyb3RlOg0KDQpIaSBBbGwsDQoNCg0KSW0gbmV3IHRvIHlvY3RvIGFuZCB0cnlpbmcgdG8gYnVp
bGQgZm9yIG15IGN1c3RvbWVyIGRldmljZSBpbSBmYWNpbmcgdGhpcyBpc3N1ZS4NCg0KDQp8IGFy
bS1saW51eC1nbnVlYWJpLXhnY2M6IGVycm9yOiB1bnJlY29nbml6ZWQgY29tbWFuZCBsaW5lIG9w
dGlvbiAnLW1nZW5lcmFsLXJlZ3Mtb25seScNCnwgYXJtLWxpbnV4LWdudWVhYmkteGdjYzogZXJy
b3I6IHVucmVjb2duaXplZCBjb21tYW5kIGxpbmUgb3B0aW9uICctbWNtb2RlbD1sYXJnZScNCnwg
bWFrZTogKioqIFtvcGtnLWNvbXBhcmUtdmVyc2lvbnNdIEVycm9yIDENCnwgRVJST1I6IG9lX3J1
bm1ha2UgZmFpbGVkDQoNClBsZWFzZSBndWlkZSBob3cgdG8gcHJvZ3Jlc3MgZnVydGhlci4NCg0K
DQrigIt4Z2NjIGlzIGludGVybmFsIG5hbWUgZHVyaW5nIGJ1aWxkaW5nL3Rlc3RpbmcgZ2NjIGl0
c2VsZiwgd2hpY2ggcGFja2FnZSBpdCBmYWlsaW5nIGxpa2UgdGhpcyBmb3IgeW91ID8NCg==

--_000_HK2PR0401MB14927B9C74BF888B6E4EC462C6250HK2PR0401MB1492_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5Pg0KPHN0eWxlIHR5cGU9
InRleHQvY3NzIiBzdHlsZT0iZGlzcGxheTpub25lOyI+PCEtLSBQIHttYXJnaW4tdG9wOjA7bWFy
Z2luLWJvdHRvbTowO30gLS0+PC9zdHlsZT4NCjxkaXYgaWQ9ImRpdnRhZ2RlZmF1bHR3cmFwcGVy
IiBzdHlsZT0iZm9udC1zaXplOjEycHQ7Y29sb3I6IzAwMDAwMDtmb250LWZhbWlseTpDYWxpYnJp
LEFyaWFsLEhlbHZldGljYSxzYW5zLXNlcmlmOyIgZGlyPSJsdHIiPg0KPHA+SGkgS2hlbSw8L3A+
DQo8cD48YnI+DQo8L3A+DQo8cD5Tb3JyeSBmb3IgbGF0ZSByZXNwb25zZSAuPC9wPg0KPHA+V2hp
bGUgYnVpbGRpbmcgS2VybmVsIDQuMS4xNyB3aXRoIGdjYyA0LjkuNCB3ZSBhcmUgdXNpbmcgZ2Nj
IGFzIGEgRXh0ZXJuYWwgdG9vbGNoYWluICg8c3Bhbj5hc2RrLTQuOS40LWE3LUVMLTMuMTAtZzIu
MTktYTMybnQtMTYwMjE5PC9zcGFuPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IDEycHQ7Ij4pPC9z
cGFuPjwvcD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IDEycHQ7Ij48YnI+DQo8L3NwYW4+
PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogMTJwdDsiPlJlZ2FyZHMsPC9zcGFuPjwv
cD4NCjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IDEycHQ7Ij5TdW5lZXRoYTwvc3Bhbj48L3A+
DQo8L2Rpdj4NCjxociBzdHlsZT0iZGlzcGxheTppbmxpbmUtYmxvY2s7d2lkdGg6OTglIiB0YWJp
bmRleD0iLTEiPg0KPGRpdiBpZD0iZGl2UnBseUZ3ZE1zZyIgZGlyPSJsdHIiPjxmb250IGZhY2U9
IkNhbGlicmksIHNhbnMtc2VyaWYiIHN0eWxlPSJmb250LXNpemU6MTFwdCIgY29sb3I9IiMwMDAw
MDAiPjxiPkZyb206PC9iPiBLaGVtIFJhaiAmbHQ7cmFqLmtoZW1AZ21haWwuY29tJmd0Ozxicj4N
CjxiPlNlbnQ6PC9iPiBGcmlkYXksIE1hcmNoIDEwLCAyMDE3IDExOjQ1OjIzIFBNPGJyPg0KPGI+
VG86PC9iPiBTdW5lZXRoYSBMYWtzaG1pIEc8YnI+DQo8Yj5DYzo8L2I+IHlvY3RvQHlvY3RvcHJv
amVjdC5vcmc8YnI+DQo8Yj5TdWJqZWN0OjwvYj4gUmU6IFt5b2N0b10gaGVscDwvZm9udD4NCjxk
aXY+Jm5ic3A7PC9kaXY+DQo8L2Rpdj4NCjxkaXY+DQo8ZGl2IGRpcj0ibHRyIj4NCjxkaXYgY2xh
c3M9ImdtYWlsX2RlZmF1bHQiIHN0eWxlPSJmb250LWZhbWlseTptb25vc3BhY2UsbW9ub3NwYWNl
Ij48YnI+DQo8L2Rpdj4NCjxkaXYgY2xhc3M9ImdtYWlsX2V4dHJhIj48YnI+DQo8ZGl2IGNsYXNz
PSJnbWFpbF9xdW90ZSI+T24gRnJpLCBNYXIgMTAsIDIwMTcgYXQgNjoyNSBBTSwgU3VuZWV0aGEg
TGFrc2htaSBHIDxzcGFuIGRpcj0ibHRyIj4NCiZsdDs8YSBocmVmPSJtYWlsdG86c3VuZWV0aGEu
Z0B0YXRhZWx4c2kuY28uaW4iIHRhcmdldD0iX2JsYW5rIj5zdW5lZXRoYS5nQHRhdGFlbHhzaS5j
by5pbjwvYT4mZ3Q7PC9zcGFuPiB3cm90ZTo8YnI+DQo8YmxvY2txdW90ZSBjbGFzcz0iZ21haWxf
cXVvdGUiIHN0eWxlPSJtYXJnaW46MCAwIDAgLjhleDtib3JkZXItbGVmdDoxcHggI2NjYyBzb2xp
ZDtwYWRkaW5nLWxlZnQ6MWV4Ij4NCjxkaXYgZGlyPSJsdHIiPg0KPGRpdiBpZD0ibV83OTg3NjEz
MjA4Mzc1OTA3MDI3ZGl2dGFnZGVmYXVsdHdyYXBwZXIiIHN0eWxlPSJmb250LXNpemU6MTJwdDtj
b2xvcjojMDAwMDAwO2ZvbnQtZmFtaWx5OkNhbGlicmksQXJpYWwsSGVsdmV0aWNhLHNhbnMtc2Vy
aWYiIGRpcj0ibHRyIj4NCjxwPkhpIEFsbCw8L3A+DQo8cD48YnI+DQo8L3A+DQo8cD5JbSBuZXcg
dG8geW9jdG8gYW5kIHRyeWluZyZuYnNwO3RvIGJ1aWxkIGZvciBteSZuYnNwO2N1c3RvbWVyIGRl
dmljZSBpbSBmYWNpbmcgdGhpcyBpc3N1ZS48L3A+DQo8cD48YnI+DQo8L3A+DQo8cD48L3A+DQo8
ZGl2PnwgYXJtLWxpbnV4LWdudWVhYmkteGdjYzogZXJyb3I6IHVucmVjb2duaXplZCBjb21tYW5k
IGxpbmUgb3B0aW9uICctbWdlbmVyYWwtcmVncy1vbmx5Jzxicj4NCnwgYXJtLWxpbnV4LWdudWVh
YmkteGdjYzogZXJyb3I6IHVucmVjb2duaXplZCBjb21tYW5kIGxpbmUgb3B0aW9uICctbWNtb2Rl
bD1sYXJnZSc8YnI+DQp8IG1ha2U6ICoqKiBbb3BrZy1jb21wYXJlLXZlcnNpb25zXSBFcnJvciAx
PGJyPg0KfCBFUlJPUjogb2VfcnVubWFrZSBmYWlsZWQ8L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+
DQo8ZGl2PlBsZWFzZSBndWlkZSBob3cgdG8gcHJvZ3Jlc3MgZnVydGhlci48L2Rpdj4NCjxkaXY+
PGJyPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ibG9ja3F1b3RlPg0KPGRpdj48YnI+DQo8
L2Rpdj4NCjxkaXYgY2xhc3M9ImdtYWlsX2RlZmF1bHQiIHN0eWxlPSJmb250LWZhbWlseTptb25v
c3BhY2UsbW9ub3NwYWNlIj7igIt4Z2NjIGlzIGludGVybmFsIG5hbWUgZHVyaW5nIGJ1aWxkaW5n
L3Rlc3RpbmcgZ2NjIGl0c2VsZiwgd2hpY2ggcGFja2FnZSBpdCBmYWlsaW5nIGxpa2UgdGhpcyBm
b3IgeW91ID88L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ib2R5Pg0K
PC9odG1sPg0K

--_000_HK2PR0401MB14927B9C74BF888B6E4EC462C6250HK2PR0401MB1492_--
