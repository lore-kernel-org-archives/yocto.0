Return-Path: <DEVARSHT@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D74BE00956; Sat, 24 Mar 2018 10:23:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.84 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 4703 seconds by postgrey-1.32 at yocto-www;
	Sat, 24 Mar 2018 10:22:59 PDT
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0084.outbound.protection.outlook.com [104.47.32.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79DF8E0047F
	for <yocto@yoctoproject.org>; Sat, 24 Mar 2018 10:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=7tgKeZl2HACTJm5EpRLvGUNLDzI7hY7zfNAmDS0uoBA=;
	b=DVjGaA79irxF+s8+ZuR/UKBNzdYP+lFQez4gogbiuNbjob1iNA6WimNcKN7OoM2W0wpSUeElhLiA2KiL8fiFiZUJfKFMQNuFgZblGMRuFqSEX+5CIMun5L6DKOz1Q7utYGvaoLkofm5XkmrkZtswoXcDvc/eRP9ApprLAg0+3UM=
Received: from DM2PR0201MB0767.namprd02.prod.outlook.com (10.160.95.13) by
	DM2PR0201MB0734.namprd02.prod.outlook.com (10.160.94.22) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.609.10; Sat, 24 Mar 2018 15:50:08 +0000
Received: from DM2PR0201MB0767.namprd02.prod.outlook.com
	([fe80::91cd:1490:321b:1ebd]) by
	DM2PR0201MB0767.namprd02.prod.outlook.com
	([fe80::91cd:1490:321b:1ebd%13]) with mapi id 15.20.0567.019;
	Sat, 24 Mar 2018 15:50:06 +0000
From: Devarsh Thakkar <DEVARSHT@xilinx.com>
To: "Burton, Ross" <ross.burton@intel.com>, Alexander Kanavin
	<alexander.kanavin@linux.intel.com>
Thread-Topic: [yocto] [matchbox-terminal] main.c: Add support to run user
	command inside the terminal
Thread-Index: AQHTu6NzJdfOTeCIrk+ZhCXCxIp+aaPQEc2AgAANg4CAD3eqIA==
Date: Sat, 24 Mar 2018 15:50:06 +0000
Message-ID: <DM2PR0201MB0767D00687D6442744F7FB23BCAF0@DM2PR0201MB0767.namprd02.prod.outlook.com>
References: <1521038859-32429-1-git-send-email-devarsht@xilinx.com>
	<9478134a-8f67-334a-cfc8-d7a07bd1fe86@linux.intel.com>
	<CAJTo0Lb3o_8cOG7fCLNwsFdPPEx_5-u-qDASPHzHy8kXC2cKAw@mail.gmail.com>
In-Reply-To: <CAJTo0Lb3o_8cOG7fCLNwsFdPPEx_5-u-qDASPHzHy8kXC2cKAw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=DEVARSHT@xilinx.com; 
x-originating-ip: [149.199.62.254]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM2PR0201MB0734;
	7:RNGEviFhbEUMtpo5shh9fo4gR0LXvZ+mo2AU46M2dmcQEeO5gShYU/+8S3WRszrtE5Kiu4kWjYxzbaFbTh/C6pdWKzu4m1/Qk13DpLPXoaKeWj/26o73ydHC24PCPK0PBR6lfrT72Cwx9aBy9lApKUPoPVCBmh/bu5yAKf8bHvl6dQos1HGMasNJpcKSJXLNp5Tk6otNIjidz/8UUyUvoQ9DwexAHANtxip+E2s0+e+SRoY38cWkFWM8Y1xGmmAX
x-ms-exchange-antispam-srfa-diagnostics: SOS;SOR;
x-forefront-antispam-report: SFV:SKI; SCL:-1; SFV:NSPM;
	SFS:(10009020)(396003)(39860400002)(376002)(39380400002)(346002)(366004)(199004)(189003)(6436002)(68736007)(9326002)(59450400001)(3280700002)(5660300001)(33656002)(3660700001)(76176011)(7696005)(81166006)(14454004)(26005)(478600001)(81156014)(72206003)(53546011)(7736002)(2906002)(54906003)(6506007)(106356001)(97736004)(99286004)(105586002)(19609705001)(110136005)(102836004)(8676002)(6116002)(229853002)(53936002)(55016002)(186003)(3846002)(74316002)(25786009)(6306002)(2900100001)(9686003)(316002)(54896002)(86362001)(236005)(4326008)(8936002)(11346002)(5250100002)(446003)(790700001)(107886003)(66066001)(6246003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM2PR0201MB0734;
	H:DM2PR0201MB0767.namprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 010d7edd-abb1-4876-2556-08d5919eea67
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(48565401081)(5600026)(4604075)(3008032)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:DM2PR0201MB0734; 
x-ms-traffictypediagnostic: DM2PR0201MB0734:
x-microsoft-antispam-prvs: <DM2PR0201MB0734D6B391A71DE6E6A87D8FBCAF0@DM2PR0201MB0734.namprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(192813158149592)(21748063052155)(228905959029699)(17755550239193);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(10201501046)(3002001)(93006095)(93001095)(3231221)(944501327)(52105095)(6055026)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123564045)(20161123558120)(20161123562045)(6072148)(201708071742011);
	SRVR:DM2PR0201MB0734; BCL:0; PCL:0; RULEID:;
	SRVR:DM2PR0201MB0734; 
x-forefront-prvs: 0621E7E436
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: dLNpLYq4Jps6H+B7MIEikzdQey69muMJOOQGNRQCGWMW/hlCsxTA0xvzdP3SPu9fCX8vX9sXqJxj/u1gFEfJPnVI7cVnulzwj3SB4wNzlysrMM5Rjj5+S/xSB1ayHEFDWX6xYkdWClaoMf/8zutos62mpyIGIBqUIj51NVOU2w3kNzNJucJDn6z/7DtWdwFHlhW74fNx80ABx+CzoVqfQSXXckEzXr2KoTjYJ8PbPJiWJVw257bFLy4Bx2YAWvyh1rdk8k7LjZD/m9HDqsdxTSDDw/58kbr/xHbtvYjeMr+SMKQBixfSFTnfkhTYvzqK3FAjQ5vrpwAO8XVTcmNMHQ==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 010d7edd-abb1-4876-2556-08d5919eea67
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2018 15:50:06.4875 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0201MB0734
X-Mailman-Approved-At: Mon, 26 Mar 2018 03:28:35 -0700
Cc: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>,
	Yocto-mailing-list <yocto@yoctoproject.org>, Varunkumar
	Allagadapa <VARUNKUM@xilinx.com>, Maulik Desai <maulikd@xilinx.com>,
	Nirmala Pelluri <nirmala@xilinx.com>
Subject: Re: [matchbox-terminal] main.c: Add support to run user command inside the terminal
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
X-List-Received-Date: Sat, 24 Mar 2018 17:23:02 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM2PR0201MB0767D00687D6442744F7FB23BCAF0DM2PR0201MB0767_"

--_000_DM2PR0201MB0767D00687D6442744F7FB23BCAF0DM2PR0201MB0767_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUm9zcywNCg0KSSB3b3VsZCBiZSBnbGFkIGlmIHlvdSBjb3VsZCBwbGVhc2Ugc2hhcmUgbGF0
ZXN0IHVwZGF0ZXMgb24gdGhpcyBwYXRjaD8NCklmIEkgYW0gY29ycmVjdCwgbGFzdCBzdGF0dXMg
d2FzIHRoYXQgYSBidWlsZCB0ZXN0IHdhcyB0cmlnZ2VyZWQgd2l0aCB0aGlzIHBhdGNoLg0KDQpU
aGFua3MgJiBSZWdhcmRzLA0KRGV2YXJzaA0KDQpGcm9tOiBCdXJ0b24sIFJvc3MgW21haWx0bzpy
b3NzLmJ1cnRvbkBpbnRlbC5jb21dDQpTZW50OiBXZWRuZXNkYXksIE1hcmNoIDE0LCAyMDE4IDEy
OjMzIFBNDQpUbzogQWxleGFuZGVyIEthbmF2aW4gPGFsZXhhbmRlci5rYW5hdmluQGxpbnV4Lmlu
dGVsLmNvbT4NCkNjOiBEZXZhcnNoIFRoYWtrYXIgPERFVkFSU0hUQHhpbGlueC5jb20+OyBZb2N0
by1tYWlsaW5nLWxpc3QgPHlvY3RvQHlvY3RvcHJvamVjdC5vcmc+OyBNYW5qdWt1bWFyIEhhcnRo
aWtvdGUgTWF0aGEgPE1BTkpVS1VNQHhpbGlueC5jb20+OyB2Y3UtdGVhbSA8dmN1LXRlYW1AeGls
aW54LmNvbT47IERldmFyc2ggVGhha2thciA8REVWQVJTSFRAeGlsaW54LmNvbT4NClN1YmplY3Q6
IFJlOiBbeW9jdG9dIFttYXRjaGJveC10ZXJtaW5hbF0gbWFpbi5jOiBBZGQgc3VwcG9ydCB0byBy
dW4gdXNlciBjb21tYW5kIGluc2lkZSB0aGUgdGVybWluYWwNCg0KT24gMTQgTWFyY2ggMjAxOCBh
dCAxODo0NCwgQWxleGFuZGVyIEthbmF2aW4gPGFsZXhhbmRlci5rYW5hdmluQGxpbnV4LmludGVs
LmNvbTxtYWlsdG86YWxleGFuZGVyLmthbmF2aW5AbGludXguaW50ZWwuY29tPj4gd3JvdGU6DQpP
biAwMy8xNC8yMDE4IDA0OjQ3IFBNLCBEZXZhcnNoIFRoYWtrYXIgd3JvdGU6DQpBZGQgc3VwcG9y
dCBmb3IgY29tbWFuZGxpbmUgb3B0aW9ucyAoLS1jb21tYW5kIG9yIC1lKQ0KdXNpbmcgd2hpY2gg
b25lIGNhbiBwcm92aWRlIGNvbW1hbmRzIHRvIHJ1biBpbnNpZGUgdGhlIHRlcm1pbmFsDQphcyBz
aG93biBpbiBiZWxvdyBjb21tYW5kIDoNCg0KICAkbWF0Y2hib3gtdGVybWluYWwgLWUgPGNvbW1h
bmQ+DQogICRtYXRjaGJveC10ZXJtaW5hbCAtLWNvbW1hbmQgPGNvbW1hbmQ+DQoNClJvc3MsIHdo
byAoaWYgYW55b25lKSBoYXMgd3JpdGUgYWNjZXNzIHRvIHRoZSBtYXRoY2JveCByZXBvPyBJIHRo
aW5rIG1hdGNoYm94IHN0dWZmIGlzIGluIGEgYml0IG9mIGxpbWJvIGN1cnJlbnRseT8NCg0KSSBk
bywgdGhpcyB3YXMgaGF2aW5nIGEgYnVpbGQgdGVzdCBlYXJsaWVyIHNvIEknbGwgYmUgcHVzaGlu
ZyBzaG9ydGx5Lg0KDQpSb3NzDQo=

--_000_DM2PR0201MB0767D00687D6442744F7FB23BCAF0DM2PR0201MB0767_
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
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJ
Zm9udC1zaXplOjEyLjBwdDsNCglmb250LWZhbWlseToiVGltZXMgTmV3IFJvbWFuIixzZXJpZjt9
DQphOmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCglj
b2xvcjpibHVlOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBzcGFu
Lk1zb0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjpw
dXJwbGU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQpzcGFuLkVtYWlsU3R5bGUxNw0K
CXttc28tc3R5bGUtdHlwZTpwZXJzb25hbC1yZXBseTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIs
c2Fucy1zZXJpZjsNCgljb2xvcjojMUY0OTdEO30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHls
ZS10eXBlOmV4cG9ydC1vbmx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30N
CkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjguNWluIDExLjBpbjsNCgltYXJnaW46MS4waW4g
MS4waW4gMS4waW4gMS4waW47fQ0KZGl2LldvcmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRTZWN0aW9u
MTt9DQotLT48L3N0eWxlPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVkZWZhdWx0
cyB2OmV4dD0iZWRpdCIgc3BpZG1heD0iMTAyNiIgLz4NCjwveG1sPjwhW2VuZGlmXS0tPjwhLS1b
aWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVsYXlvdXQgdjpleHQ9ImVkaXQiPg0KPG86aWRt
YXAgdjpleHQ9ImVkaXQiIGRhdGE9IjEiIC8+DQo8L286c2hhcGVsYXlvdXQ+PC94bWw+PCFbZW5k
aWZdLS0+DQo8L2hlYWQ+DQo8Ym9keSBsYW5nPSJFTi1VUyIgbGluaz0iYmx1ZSIgdmxpbms9InB1
cnBsZSI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlvbjEiPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZx
dW90OyxzYW5zLXNlcmlmO2NvbG9yOiMxRjQ5N0QiPkhpIFJvc3MsPG86cD48L286cD48L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7
Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiMxRjQ5N0Qi
PjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDss
c2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj5JIHdvdWxkIGJlIGdsYWQgaWYgeW91IGNvdWxkIHBs
ZWFzZSBzaGFyZSBsYXRlc3QgdXBkYXRlcyBvbiB0aGlzIHBhdGNoPzxvOnA+PC9vOnA+PC9zcGFu
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0
O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdE
Ij5JZiBJIGFtIGNvcnJlY3QsIGxhc3Qgc3RhdHVzIHdhcyB0aGF0IGEgYnVpbGQgdGVzdCB3YXMg
dHJpZ2dlcmVkIHdpdGggdGhpcyBwYXRjaC48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTom
cXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzFGNDk3RCI+PG86cD4mbmJzcDs8
L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQt
c2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmO2Nv
bG9yOiMxRjQ5N0QiPlRoYW5rcyAmYW1wOyBSZWdhcmRzLDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQt
ZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj5EZXZh
cnNoPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGEgbmFtZT0i
X01haWxFbmRDb21wb3NlIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWls
eTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzFGNDk3RCI+PG86cD4mbmJz
cDs8L286cD48L3NwYW4+PC9hPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPjxzcGFuIHN0
eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fu
cy1zZXJpZiI+RnJvbTo8L3NwYW4+PC9iPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2Zv
bnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+IEJ1cnRvbiwgUm9zcyBb
bWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0NCjxicj4NCjxiPlNlbnQ6PC9iPiBXZWRuZXNk
YXksIE1hcmNoIDE0LCAyMDE4IDEyOjMzIFBNPGJyPg0KPGI+VG86PC9iPiBBbGV4YW5kZXIgS2Fu
YXZpbiAmbHQ7YWxleGFuZGVyLmthbmF2aW5AbGludXguaW50ZWwuY29tJmd0Ozxicj4NCjxiPkNj
OjwvYj4gRGV2YXJzaCBUaGFra2FyICZsdDtERVZBUlNIVEB4aWxpbnguY29tJmd0OzsgWW9jdG8t
bWFpbGluZy1saXN0ICZsdDt5b2N0b0B5b2N0b3Byb2plY3Qub3JnJmd0OzsgTWFuanVrdW1hciBI
YXJ0aGlrb3RlIE1hdGhhICZsdDtNQU5KVUtVTUB4aWxpbnguY29tJmd0OzsgdmN1LXRlYW0gJmx0
O3ZjdS10ZWFtQHhpbGlueC5jb20mZ3Q7OyBEZXZhcnNoIFRoYWtrYXIgJmx0O0RFVkFSU0hUQHhp
bGlueC5jb20mZ3Q7PGJyPg0KPGI+U3ViamVjdDo8L2I+IFJlOiBbeW9jdG9dIFttYXRjaGJveC10
ZXJtaW5hbF0gbWFpbi5jOiBBZGQgc3VwcG9ydCB0byBydW4gdXNlciBjb21tYW5kIGluc2lkZSB0
aGUgdGVybWluYWw8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5PbiAxNCBN
YXJjaCAyMDE4IGF0IDE4OjQ0LCBBbGV4YW5kZXIgS2FuYXZpbiAmbHQ7PGEgaHJlZj0ibWFpbHRv
OmFsZXhhbmRlci5rYW5hdmluQGxpbnV4LmludGVsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPmFsZXhh
bmRlci5rYW5hdmluQGxpbnV4LmludGVsLmNvbTwvYT4mZ3Q7IHdyb3RlOjxvOnA+PC9vOnA+PC9w
Pg0KPGRpdj4NCjxkaXY+DQo8YmxvY2txdW90ZSBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLWxl
ZnQ6c29saWQgI0NDQ0NDQyAxLjBwdDtwYWRkaW5nOjBpbiAwaW4gMGluIDYuMHB0O21hcmdpbi1s
ZWZ0OjQuOHB0O21hcmdpbi1yaWdodDowaW4iPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+T24gMDMv
MTQvMjAxOCAwNDo0NyBQTSwgRGV2YXJzaCBUaGFra2FyIHdyb3RlOjxvOnA+PC9vOnA+PC9wPg0K
PGJsb2NrcXVvdGUgc3R5bGU9ImJvcmRlcjpub25lO2JvcmRlci1sZWZ0OnNvbGlkICNDQ0NDQ0Mg
MS4wcHQ7cGFkZGluZzowaW4gMGluIDBpbiA2LjBwdDttYXJnaW4tbGVmdDo0LjhwdDttYXJnaW4t
cmlnaHQ6MGluIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkFkZCBzdXBwb3J0IGZvciBjb21tYW5k
bGluZSBvcHRpb25zICgtLWNvbW1hbmQgb3IgLWUpPGJyPg0KdXNpbmcgd2hpY2ggb25lIGNhbiBw
cm92aWRlIGNvbW1hbmRzIHRvIHJ1biBpbnNpZGUgdGhlIHRlcm1pbmFsPGJyPg0KYXMgc2hvd24g
aW4gYmVsb3cgY29tbWFuZCA6PGJyPg0KPGJyPg0KJm5ic3A7ICRtYXRjaGJveC10ZXJtaW5hbCAt
ZSAmbHQ7Y29tbWFuZCZndDs8YnI+DQombmJzcDsgJG1hdGNoYm94LXRlcm1pbmFsIC0tY29tbWFu
ZCAmbHQ7Y29tbWFuZCZndDs8bzpwPjwvbzpwPjwvcD4NCjwvYmxvY2txdW90ZT4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxicj4NClJvc3MsIHdobyAoaWYgYW55b25lKSBoYXMgd3JpdGUgYWNjZXNz
IHRvIHRoZSBtYXRoY2JveCByZXBvPyBJIHRoaW5rIG1hdGNoYm94IHN0dWZmIGlzIGluIGEgYml0
IG9mIGxpbWJvIGN1cnJlbnRseT88bzpwPjwvbzpwPjwvcD4NCjwvYmxvY2txdW90ZT4NCjxkaXY+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRp
dj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkkgZG8sIHRoaXMgd2FzIGhhdmluZyBhIGJ1aWxkIHRl
c3QgZWFybGllciBzbyBJJ2xsIGJlIHB1c2hpbmcgc2hvcnRseS48bzpwPjwvbzpwPjwvcD4NCjwv
ZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0K
PC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+Um9zcyZuYnNwOzxvOnA+PC9vOnA+
PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4NCjwv
aHRtbD4NCg==

--_000_DM2PR0201MB0767D00687D6442744F7FB23BCAF0DM2PR0201MB0767_--
