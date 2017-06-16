Return-Path: <Thomas.Thorne@net2edge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41FB6E00B58; Fri, 16 Jun 2017 05:46:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.108 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0108.outbound.protection.outlook.com [104.47.2.108])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C21DBE00A9B
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 05:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=transitionnetworks.onmicrosoft.com; s=selector1-net2edge-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Q9NUB7IcytCR1voOG47h12ZYXPXQ1xXgmVA6ATjuljA=;
	b=ofRP9waOG+M/etbVYBoQQWzZuBToTL6HRYn1JJLzhy1kQgi4uZ2is/MYFukB4IDfSGu7/yY93szsnuDxANhhsKyS6apu0+H5FhiAyZUSBzyGc6L2puf3SZ+6UjOLY4GOukJa4PLDPZKDlpMImcb7xf6/+2LmijHBBt7nrwGzr/8=
Received: from DB6PR0701MB1879.eurprd07.prod.outlook.com (10.168.10.151) by
	DB6PR0701MB2389.eurprd07.prod.outlook.com (10.168.75.19) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1199.6; Fri, 16 Jun 2017 09:12:24 +0000
Received: from DB6PR0701MB1879.eurprd07.prod.outlook.com
	([fe80::b0ad:4d46:ac20:61bd]) by
	DB6PR0701MB1879.eurprd07.prod.outlook.com
	([fe80::b0ad:4d46:ac20:61bd%13]) with mapi id 15.01.1199.006;
	Fri, 16 Jun 2017 09:12:23 +0000
From: Thomas Thorne <Thomas.Thorne@net2edge.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Using A Proprietary Closed License Inside A Layer & Its
	Recipes
Thread-Index: AQHS5eb620Has8x1vUOBfuT14ME7fqImUMOAgADiqUA=
Date: Fri, 16 Jun 2017 09:12:23 +0000
Message-ID: <DB6PR0701MB1879F68989431486E48F7FF6D3C10@DB6PR0701MB1879.eurprd07.prod.outlook.com>
References: <75eaa4ef-ddd4-198e-4299-a5cad9ed570c@Net2Edge.com>
	<CAJTo0LZjhRyL4gzOyK4OKUpTpCarUPmv8TjVQ5485hG-6R=1qw@mail.gmail.com>
In-Reply-To: <CAJTo0LZjhRyL4gzOyK4OKUpTpCarUPmv8TjVQ5485hG-6R=1qw@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
	header.d=none; intel.com;
	dmarc=none action=none header.from=net2edge.com; 
x-originating-ip: [81.128.174.58]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DB6PR0701MB2389;
	7:5BnIC03xN7xOE9/eSS/syhDeF3Q1KIAeTpeNeANS7dGgiBFQQo0QI+Vy6PJfgtrvp6qjg3LAhrJ6hJ/+8Xgp8nIQc+0cfFmS1KKH7NW1PotbqCn3DlY1ydChjw3OWJz474h7ypn9owTMrjOtAESci9NcIP6SnTqxGKZdVY2or+H6NgyV3tmrTeb6jeIvkWup37sruVpmJWTDWyKFvApRnw/lzGtq6r2qVzc6Ph70fy3XXe/AjhpC4rc4jjwpE3G+pAGDdsBveExGoJO1ELEeTN5DLEelX1AgQz4WVY/mikQ4lPwehd51SbVjbAGPpFRFkA+/CDpAigWrVuXjisOT5f+FGeHEgOGbDfBHCYr1tNopd90MrpnMlTdS+dVYAchJrlcdreGYyDd8rd+gqLFqmeMBdfJ+ATW3AJx7/AarDxHVYpeOgAotx1Zp612IjNZ9Ty+H3SyUpBCwwiSWuSM/GX5/V5UNfvhgqnQUgoqJq5VuMyYCAS35J3T3YZRWX/ToO+azGOIY+XtGMW5J5lCxUCj0fb/fJmfRjcaVVelIg24kpV7y75rcQUQKIEttvtyxzpTRcqB+Ov0jI+84tLz0YjVxfLXwNrHUybsgE5FlSKqW5xYePeCJ3JOY5uGrYoiGUDayVD79wGWrrgh7D/9HKFnCMpvGSK29dUGYynXfpH/XKnPG9ngc6NaT6SoNUgM4CAmBM7NZv20Jqkb2axtSvh697PKiXeotVF04a3vXT+sni516nCyrTkTkxc3UUinRHkX1RsOL0IvHXtDPmoQaLAJ46p5nFoKF+4XG2cIwi34=
x-ms-office365-filtering-correlation-id: d4d59822-f336-41e9-9441-08d4b497ccec
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(201703131423075);
	SRVR:DB6PR0701MB2389; 
x-ms-traffictypediagnostic: DB6PR0701MB2389:
x-microsoft-antispam-prvs: <DB6PR0701MB238955B845A9BC7F1487C92CD3C10@DB6PR0701MB2389.eurprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155)(17755550239193);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(8121501046)(5005006)(10201501046)(100000703101)(100105400095)(3002001)(93006095)(93001095)(6041248)(20161123564025)(20161123558100)(20161123555025)(20161123562025)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(2016111802025)(6043046)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:DB6PR0701MB2389; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DB6PR0701MB2389; 
x-forefront-prvs: 0340850FCD
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39410400002)(39400400002)(39830400002)(51694002)(2906002)(81166006)(66066001)(14454004)(8676002)(8936002)(6916009)(6306002)(72206003)(54896002)(50986999)(478600001)(99286003)(54356999)(76176999)(6246003)(38730400002)(110136004)(2950100002)(102836003)(229853002)(790700001)(74316002)(2900100001)(6116002)(3846002)(9686003)(3280700002)(3660700001)(5660300001)(189998001)(7696004)(53936002)(33656002)(6506006)(6436002)(86362001)(4326008)(25786009)(55016002)(5250100002)(7736002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0701MB2389;
	H:DB6PR0701MB1879.eurprd07.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: net2edge.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2017 09:12:23.5481 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 851184e8-8658-4a6a-973d-aa012bcc8794
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0701MB2389
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Using A Proprietary Closed License Inside A Layer & Its Recipes
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
X-List-Received-Date: Fri, 16 Jun 2017 12:46:45 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0701MB1879F68989431486E48F7FF6D3C10DB6PR0701MB1879_"

--_000_DB6PR0701MB1879F68989431486E48F7FF6D3C10DB6PR0701MB1879_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Pj4gSXMgaXQgb25seSBwb3NzaWJsZSB0byB1c2UgdGhlIHNwZWNpYWwNCj4+IExJQ0VOU0UgPSAi
Q0xPU0VEIg0KPj4gbGljZW5zZSBmb3IgbGljZW5zZXMgbm90IGFscmVhZHkgcGxhY2VkIGluIHRo
ZSBtYWluIGxpY2Vuc2UgZGlyZWN0b3J5Pw0KPg0KPiBZZXMsIHRoZXJlJ3Mgc3BlY2lhbC1jYXNl
IGxvZ2ljIGZvciAnQ0xPU0VEJy4gIENhbiB5b3Ugbm90IGp1c3QgdXNlIHRoYXQgZm9yIHlvdXIg
aW50ZXJuYWwgcGllY2VzPyAgSXQncyBzcGVjaWFsLWNhc2VkIGluIGEgZmV3IHBsYWNlcy4NCg0K
SSBjYW4gdXNlIENMT1NFRC4gIEkganVzdCB3YW50ZWQgdG8gZW5zdXJlIEkgd2FzIGZvbGxvd2lu
ZyB0aGUgcmVjb21tZW5kZWQgb3IgYmVzdCBwcmFjdGljZS4NCg0KQXMgdGhpcyBpcyBhbiBpbnRl
cm5hbCB0aGluZyBpdCBzaG91bGQgYmUgT0sgZm9yIG5vdy4gIEkgd2FzIHdvbmRlcmluZyB3aGF0
IHdvdWxkIGhhcHBlbiBpZiBhIGNsb3NlZCBsaWNlbnNlcyB3YXMgdXBkYXRlZCwgYXMgbm90aGlu
ZyB3b3VsZCBjdXJyZW50bHkgbm90ZSB0aGUgbWQ1IGNoYW5nZS4NCg0KDQpUaGUgbWVnYSBtYW51
YWwgbWVudGlvbnMgQ0xPU0VEIGluIDcgcGxhY2VzLiAgT25lIG9mIHRob3NlIHBsYWNlcyBhbHNv
IGxpc3RzICJQcm9wcmlldGFyeSIgYXMgYSB2YWx1ZSBzbyBJIGNvdWxkIHVzZWQgZWl0aGVyIGlu
IHNvbWUgY2FzZXMuICBCYXNlZCBvbiBteSByZWFkaW5nIG9mIHRoZSBtYW51YWwgIlByb3ByaWV0
YXJ5IiB3b3VsZCBub3QgYmUgZXhlbXB0IGZyb20gc2V0dGluZyB1cCB0aGUgTElDX0ZJTEVTX0NI
S1NVTSwgYnV0IENMT1NFRCB3b3VsZCBiZS4NCg==

--_000_DB6PR0701MB1879F68989431486E48F7FF6D3C10DB6PR0701MB1879_
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
Zm9udC1zaXplOjExLjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQph
OmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xv
cjpibHVlOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBzcGFuLk1z
b0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjpwdXJw
bGU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQpwLm1zb25vcm1hbDAsIGxpLm1zb25v
cm1hbDAsIGRpdi5tc29ub3JtYWwwDQoJe21zby1zdHlsZS1uYW1lOm1zb25vcm1hbDsNCgltc28t
bWFyZ2luLXRvcC1hbHQ6YXV0bzsNCgltYXJnaW4tcmlnaHQ6MGNtOw0KCW1zby1tYXJnaW4tYm90
dG9tLWFsdDphdXRvOw0KCW1hcmdpbi1sZWZ0OjBjbTsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZv
bnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCnNwYW4uRW1haWxTdHlsZTE4DQoJe21z
by1zdHlsZS10eXBlOnBlcnNvbmFsLXJlcGx5Ow0KCWZvbnQtZmFtaWx5OiJBcmlhbCIsc2Fucy1z
ZXJpZjsNCgljb2xvcjojMDA2NjAwOw0KCWZvbnQtd2VpZ2h0Om5vcm1hbDsNCglmb250LXN0eWxl
Om5vcm1hbDsNCgl0ZXh0LWRlY29yYXRpb246bm9uZSBub25lO30NCi5Nc29DaHBEZWZhdWx0DQoJ
e21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5z
LXNlcmlmOw0KCW1zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVTO30NCkBwYWdlIFdvcmRTZWN0aW9u
MQ0KCXtzaXplOjYxMi4wcHQgNzkyLjBwdDsNCgltYXJnaW46NzIuMHB0IDcyLjBwdCA3Mi4wcHQg
NzIuMHB0O30NCmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9z
dHlsZT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVk
aXQiIHNwaWRtYXg9IjEwMjYiIC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28g
OV0+PHhtbD4NCjxvOnNoYXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJl
ZGl0IiBkYXRhPSIxIiAvPg0KPC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9o
ZWFkPg0KPGJvZHkgbGFuZz0iRU4tR0IiIGxpbms9ImJsdWUiIHZsaW5rPSJwdXJwbGUiPg0KPGRp
diBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPiZndDsmZ3Q7IElz
IGl0IG9ubHkgcG9zc2libGUgdG8gdXNlIHRoZSBzcGVjaWFsPGJyPg0KJmd0OyZndDsgTElDRU5T
RSA9ICZxdW90O0NMT1NFRCZxdW90Ozxicj4NCiZndDsmZ3Q7IGxpY2Vuc2UgZm9yIGxpY2Vuc2Vz
IG5vdCBhbHJlYWR5IHBsYWNlZCBpbiB0aGUgbWFpbiBsaWNlbnNlIGRpcmVjdG9yeT88bzpwPjwv
bzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPiZndDs8YnI+DQomZ3Q7IFllcywgdGhlcmUn
cyBzcGVjaWFsLWNhc2UgbG9naWMgZm9yICdDTE9TRUQnLiZuYnNwOyBDYW4geW91IG5vdCBqdXN0
IHVzZSB0aGF0IGZvciB5b3VyIGludGVybmFsIHBpZWNlcz8mbmJzcDsgSXQncyBzcGVjaWFsLWNh
c2VkIGluIGEgZmV3IHBsYWNlcy48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9
ImZvbnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzAwNjYwMCI+
SSBjYW4gdXNlIENMT1NFRC4mbmJzcDsgSSBqdXN0IHdhbnRlZCB0byBlbnN1cmUgSSB3YXMgZm9s
bG93aW5nIHRoZSByZWNvbW1lbmRlZCBvciBiZXN0IHByYWN0aWNlLiZuYnNwOw0KPG86cD48L286
cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtZmFt
aWx5OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzAwNjYwMCI+PG86cD4mbmJz
cDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZv
bnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzAwNjYwMCI+QXMg
dGhpcyBpcyBhbiBpbnRlcm5hbCB0aGluZyBpdCBzaG91bGQgYmUgT0sgZm9yIG5vdy4mbmJzcDsg
SSB3YXMgd29uZGVyaW5nIHdoYXQgd291bGQgaGFwcGVuIGlmIGEgY2xvc2VkIGxpY2Vuc2VzIHdh
cyB1cGRhdGVkLCBhcyBub3RoaW5nIHdvdWxkIGN1cnJlbnRseSBub3RlIHRoZSBtZDUgY2hhbmdl
LiZuYnNwOw0KPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNw
YW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6
IzAwNjYwMCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWY7
Y29sb3I6IzAwNjYwMCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMt
c2VyaWY7Y29sb3I6IzAwNjYwMCI+VGhlIG1lZ2EgbWFudWFsIG1lbnRpb25zIENMT1NFRCBpbiA3
IHBsYWNlcy4mbmJzcDsgT25lIG9mIHRob3NlIHBsYWNlcyBhbHNvIGxpc3RzICZxdW90O1Byb3By
aWV0YXJ5JnF1b3Q7IGFzIGEgdmFsdWUgc28gSSBjb3VsZCB1c2VkIGVpdGhlciBpbiBzb21lIGNh
c2VzLiZuYnNwOyBCYXNlZCBvbiBteSByZWFkaW5nIG9mIHRoZSBtYW51YWwgJnF1b3Q7UHJvcHJp
ZXRhcnkmcXVvdDsNCiB3b3VsZCBub3QgYmUgZXhlbXB0IGZyb20gc2V0dGluZyB1cCB0aGUgTElD
X0ZJTEVTX0NIS1NVTSwgYnV0IENMT1NFRCB3b3VsZCBiZS4mbmJzcDsgPG86cD4NCjwvbzpwPjwv
c3Bhbj48L3A+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_DB6PR0701MB1879F68989431486E48F7FF6D3C10DB6PR0701MB1879_--
