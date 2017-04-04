Return-Path: <hgujulan@visteon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F03CE00655; Wed,  5 Apr 2017 01:46:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.98 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0098.outbound.protection.outlook.com [104.47.2.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38931E00349
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 01:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=visteon.onmicrosoft.com; s=selector1-visteon-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=PBT4Ra3gBoKpDc9u7OVtuQ3957caUbocpwEaKPBaZ+s=;
	b=r+4JLtIsRW35HxjYzLElR2/Ou+dJuPCSbY0MStkILeF3K8SKYvtseDf+pvpn4ixgHU4LBcys0AT0ZbR3nWgED2uoIczuiLe+0PEzPrvab5yTCkTbWAFsPxmBgT+gaHcRL1KYI46BOZg/+xtCKWE6dUb6AQXNN/LsAGkgWtlGO74=
Received: from DB6PR0601MB2663.eurprd06.prod.outlook.com (10.168.82.16) by
	DB6PR0601MB2677.eurprd06.prod.outlook.com (10.168.82.18) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1005.10; Tue, 4 Apr 2017 14:08:52 +0000
Received: from DB6PR0601MB2663.eurprd06.prod.outlook.com ([10.168.82.16]) by
	DB6PR0601MB2663.eurprd06.prod.outlook.com ([10.168.82.16]) with mapi id
	15.01.1005.018; Tue, 4 Apr 2017 14:08:52 +0000
From: "Gujulan Elango, Hari Prasath (H.)" <hgujulan@visteon.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: FIT Image boot issue
Thread-Index: AdKtS7tHKal2DZHMRL6XxPAMkzjIMw==
Date: Tue, 4 Apr 2017 14:08:52 +0000
Message-ID: <DB6PR0601MB26633CE38C3512324CDF630BCF0B0@DB6PR0601MB2663.eurprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=visteon.com;
x-originating-ip: [91.212.132.119]
x-microsoft-exchange-diagnostics: 1; DB6PR0601MB2677;
	7:fPBQwTbsJS4doliK2JyTRZIkDz5UP9x9nEkC1sA8dpiVrvVZSp7n0kmyaxO9rtzoUHmlidcfYGt21Cd9PcoxFFoU/wnm9xtxDXUvpbTo0R28zN3mtuwBcRr2qibm0qb8rMeudtsjK8V0y5BpzMBzrUTCS8QmMEFscf0KOCKsqitwzQl3WhZTvy47OayQhgnyWO94L/P8mL78w2MsUqe7ctn7K8qpA0kW3q2Wlh1lpVoESBAN4dNzWmysLCzsbTYVoY1mER93N+hUgev8csO58ryHPKPIPLTxH/prmQdtbg1XUwE/DJSEM9KxfcCphi7NBIogvamZP2OaWsJnWCaFuA==
x-forefront-antispam-report: SFV:SKI; SCL:-1SFV:NSPM;
	SFS:(10019020)(6009001)(39400400002)(39850400002)(39860400002)(39450400003)(39840400002)(39410400002)(53754006)(5890100001)(6506006)(7736002)(4326008)(74316002)(97736004)(86362001)(55016002)(2501003)(54356999)(8676002)(1730700003)(99286003)(2906002)(122556002)(54906002)(77096006)(5660300001)(3280700002)(6436002)(66066001)(19609705001)(3660700001)(5640700003)(6916009)(5630700001)(53936002)(110136004)(107886003)(2900100001)(38730400002)(25786009)(33656002)(6306002)(189998001)(102836003)(2351001)(3846002)(6116002)(7696004)(9686003)(8936002)(790700001)(50986999)(99936001)(3480700004)(81166006)(54896002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0601MB2677;
	H:DB6PR0601MB2663.eurprd06.prod.outlook.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
x-ms-office365-filtering-correlation-id: 3e981bf9-4d05-4965-f54e-08d47b641f8c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(48565401081)(201703131423075)(201703031133081);
	SRVR:DB6PR0601MB2677; 
x-microsoft-antispam-prvs: <DB6PR0601MB267782B4757B1A162580ED02CF0B0@DB6PR0601MB2677.eurprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(190756311086443)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(102415395)(6040450)(601004)(2401047)(8121501046)(5005006)(93006095)(93001095)(3002001)(10201501046)(6055026)(6041248)(201703131423075)(201702281528075)(201703061421075)(20161123560025)(20161123555025)(20161123564025)(20161123562025)(6072148);
	SRVR:DB6PR0601MB2677; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0601MB2677; 
x-forefront-prvs: 0267E514F9
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: visteon.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2017 14:08:52.0448 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a147aaf-01ec-498c-80a1-e34a8c63c548
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0601MB2677
Cc: "Vadivel, Arulpandiyan \(A.\)" <avadive1@visteon.com>, "Ravindran,
	Madhusudhanan \(M.\)" <mravindr@visteon.com>, "Rajagopalan,
	Thiagarajan \(T.\)" <trajagop@visteon.com>, "DHANAPAL,
	GNANACHANDRAN \(G.\)" <gnanachandran.dhanapal@visteon.com>
Subject: FIT Image boot issue
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
X-List-Received-Date: Wed, 05 Apr 2017 08:46:46 -0000
X-Groupsio-MsgNum: 35410
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_007_DB6PR0601MB26633CE38C3512324CDF630BCF0B0DB6PR0601MB2663_"

--_007_DB6PR0601MB26633CE38C3512324CDF630BCF0B0DB6PR0601MB2663_
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0601MB26633CE38C3512324CDF630BCF0B0DB6PR0601MB2663_"

--_000_DB6PR0601MB26633CE38C3512324CDF630BCF0B0DB6PR0601MB2663_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello all,

We are using FIT image in an ARM 64 bit target based instead of separate Li=
nux binary(Image.bin) and DTB. We are using a copy of the kernel fit image =
bbclass provided by poky in our custom machine layer to build the fit image=
. We observe that the bootloader is not able to load the device tree from t=
he RAM. We are using Yocto project 2.1 and kernel version 4.9

Additionally, we observe that the fit image size varies across builds. We a=
re observing two different image sizes viz 6855936 and 6855932 bytes. Of th=
ese two, the fit image with size 6855932 bytes boot properly while the imag=
e with size 6855936 doesn't boot. Most often the image with 6855932 bytes i=
s generated as build output. Out of 5 to 7 builds (approximately), the imag=
e with size 6855936 bytes that causes the boot issue is generated once.

We had modified our custom machine conf file and the kernel-fitimage.bbclas=
s provided by poky layer for adding fit Image support . I have attached the=
 modified fitimage bbclass file,our custom machine layer conf file ,its fil=
e generated and the error log during boot for your reference.

Regards,
Hari Prasath


--_000_DB6PR0601MB26633CE38C3512324CDF630BCF0B0DB6PR0601MB2663_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are using FIT image in an ARM 64 bit target based=
 instead of separate Linux binary(Image.bin) and DTB. We are using a copy o=
f the kernel fit image bbclass provided by poky in our custom machine layer=
 to build the fit image. We observe
 that the bootloader is not able to load the device tree from the RAM. We a=
re using Yocto project 2.1 and kernel version 4.9<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Additionally, we observe that the fit image size var=
ies across builds. We are observing two different image sizes viz 6855936 a=
nd 6855932 bytes. Of these two, the fit image with size 6855932 bytes boot =
properly while the image with size
 6855936 doesn't boot. Most often the image with 6855932 bytes is generated=
 as build output. Out of 5 to 7 builds (approximately), the image with size=
 6855936 bytes that causes the boot issue is generated once.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We had modified our custom machine conf file and the=
 kernel-fitimage.bbclass provided by poky layer for adding fit Image suppor=
t . I have attached the modified fitimage bbclass file,our custom machine l=
ayer conf file ,its file generated
 and the error log during boot for your reference. <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Hari Prasath<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DB6PR0601MB26633CE38C3512324CDF630BCF0B0DB6PR0601MB2663_--

--_007_DB6PR0601MB26633CE38C3512324CDF630BCF0B0DB6PR0601MB2663_
Content-Type: application/octet-stream; name="fit-image-error.log"
Content-Description: fit-image-error.log
Content-Disposition: attachment; filename="fit-image-error.log"; size=3680;
	creation-date="Tue, 04 Apr 2017 14:04:10 GMT";
	modification-date="Tue, 04 Apr 2017 14:03:30 GMT"
Content-Transfer-Encoding: base64

Tk9USUNFOiAgQkwyOiBQUlIgaXMgUi1DYXIgSDMgRVMxLjEKTk9USUNFOiAgQkwyOiBMQ00gc3Rh
dGUgaXMgQ00KTk9USUNFOiAgQkwyOiBERFIyNDAwKHJldi4wLjE1KQpOT1RJQ0U6ICBCTDI6IERS
QU0gU3BsaXQgaXMgNGNoCk5PVElDRTogIEJMMjogUW9TIGlzIEdmeCBPcmllbnRlZChyZXYuMC4z
MCkKTk9USUNFOiAgQkwyOiBBVlMgc2V0dGluZyBzdWNjZWVkZWQuIERWRlNfU2V0VklEPTB4NTIK
Tk9USUNFOiAgQkwyOiBMb3NzeSBEZWNvbXAgYXJlYXMKTk9USUNFOiAgICAgICBFbnRyeSAwOiBE
Q01QQVJFQUNSQXg6MHg4MDAwMDU0MCBEQ01QQVJFQUNSQng6MHg1NzAKTk9USUNFOiAgICAgICBF
bnRyeSAxOiBEQ01QQVJFQUNSQXg6MHg0MDAwMDAwMCBEQ01QQVJFQUNSQng6MHgwCk5PVElDRTog
ICAgICAgRW50cnkgMjogRENNUEFSRUFDUkF4OjB4MjAwMDAwMDAgRENNUEFSRUFDUkJ4OjB4MApO
T1RJQ0U6ICBCTDI6IHYxLjEocmVsZWFzZSk6NDEwOTlmNApOT1RJQ0U6ICBCTDI6IEJ1aWx0IDog
MTA6NTI6MzgsIEZlYiAyOCAyMDE3Ck5PVElDRTogIEJMMjogTm9ybWFsIGJvb3QKTk9USUNFOiAg
QkwyOiBkc3Q9MHhlNjMxNTBjOCBzcmM9MHg4MTgwMDAwIGxlbj0zNigweDI0KQpOT1RJQ0U6ICBC
TDI6IGRzdD0weDQzZjAwMDAwIHNyYz0weDgxODA0MDAgbGVuPTMwNzIoMHhjMDApCk5PVElDRTog
IEJMMjogZHN0PTB4NDQwMDAwMDAgc3JjPTB4ODFjMDAwMCBsZW49NjU1MzYoMHgxMDAwMCkKTk9U
SUNFOiAgQkwyOiBkc3Q9MHg0NDEwMDAwMCBzcmM9MHg4MjAwMDAwIGxlbj01MjQyODgoMHg4MDAw
MCkKTk9USUNFOiAgQkwyOiBkc3Q9MHg0OTAwMDAwMCBzcmM9MHg4NjQwMDAwIGxlbj0xMDQ4NTc2
KDB4MTAwMDAwKQoKClUtQm9vdCAyMDE1LjA0IChGZWIgMjggMjAxNyAtIDEwOjU3OjM3KQoKQ1BV
OiBSZW5lc2FzIEVsZWN0cm9uaWNzIFI4QTc3OTUgcmV2IDEuMQpCb2FyZDogU2FsdmF0b3ItWApJ
MkM6ICAgcmVhZHkKRFJBTTogIDMuOSBHaUIKTU1DOiAgIHNoLXNkaGk6IDAsIHNoLXNkaGk6IDEs
IHNoLXNkaGk6IDIKSW46ICAgIHNlcmlhbApPdXQ6ICAgc2VyaWFsCkVycjogICBzZXJpYWwKTmV0
OiAgIEJvYXJkIE5ldCBJbml0aWFsaXphdGlvbiBGYWlsZWQKTm8gZXRoZXJuZXQgZm91bmQuCkhp
dCBhbnkga2V5IHRvIHN0b3AgYXV0b2Jvb3Q6ICAwIAo9PiBzZXRlbnYgYm9vdGFyZ3MgJ2NvbnNv
bGU9dHR5U0MwLDExNTIwMCByb290PS9kZXYvc2RhMiBydyByb290d2FpdCByb290ZnN0eXBlPWV4
dDQgcmVsYXRpdmVfc2xlZXBfc3RhdGVzPTEgY21hPTM4NE1CIHZpZGVvPUhETUktQS0xOjEwMjR4
NzYKOFIgdmlkZW89SERNSS1BLTI6MTAyNHg3NjgKPT4gc2V0ZW52IGJvb3RjbWQgJ3VzYiBzdGFy
dDtmYXRsb2FkIHVzYiAwOjEgMHg0YzAwMDAwMCBmaXRJbWFnZS1zYWx2YXRvci14LTY4NTU5MzYu
YmluO2Jvb3RtIDB4NGMwMDAwMDAnCj0+IHJ1biBib290Y21kCnN0YXJ0aW5nIFVTQi4uLgpVU0Iw
OiAgIFVTQiBFSENJIDEuMTAKc2Nhbm5pbmcgYnVzIDAgZm9yIGRldmljZXMuLi4gMSBVU0IgRGV2
aWNlKHMpIGZvdW5kClVTQjE6ICAgVVNCIEVIQ0kgMS4xMApzY2FubmluZyBidXMgMSBmb3IgZGV2
aWNlcy4uLiAxIFVTQiBEZXZpY2UocykgZm91bmQKVVNCMjogICBVU0IgRUhDSSAxLjEwCnNjYW5u
aW5nIGJ1cyAyIGZvciBkZXZpY2VzLi4uIDIgVVNCIERldmljZShzKSBmb3VuZAogICAgICAgc2Nh
bm5pbmcgdXNiIGZvciBzdG9yYWdlIGRldmljZXMuLi4gMSBTdG9yYWdlIERldmljZShzKSBmb3Vu
ZApyZWFkaW5nIGZpdEltYWdlLXNhbHZhdG9yLXgtNjg1NTkzNi5iaW4KNjg1NTkzNiBieXRlcyBy
ZWFkIGluIDMyMSBtcyAoMjAuNCBNaUIvcykKIyMgTG9hZGluZyBrZXJuZWwgZnJvbSBGSVQgSW1h
Z2UgYXQgNGMwMDAwMDAgLi4uCiAgIFVzaW5nICdjb25mQDEnIGNvbmZpZ3VyYXRpb24KICAgVHJ5
aW5nICdrZXJuZWxAMScga2VybmVsIHN1YmltYWdlCiAgICAgRGVzY3JpcHRpb246ICBMaW51eCBr
ZXJuZWwKICAgICBUeXBlOiAgICAgICAgIEtlcm5lbCBJbWFnZQogICAgIENvbXByZXNzaW9uOiAg
Z3ppcCBjb21wcmVzc2VkCiAgICAgRGF0YSBTdGFydDogICAweDRjMDAwMTE0CiAgICAgRGF0YSBT
aXplOiAgICA2Nzg1Nzk4IEJ5dGVzID0gNi41IE1pQgogICAgIEFyY2hpdGVjdHVyZTogQUFyY2g2
NAogICAgIE9TOiAgICAgICAgICAgTGludXgKICAgICBMb2FkIEFkZHJlc3M6IDB4NDgwODAwMDAK
ICAgICBFbnRyeSBQb2ludDogIDB4NDgwODAwMDAKICAgICBIYXNoIGFsZ286ICAgIHNoYTEKICAg
ICBIYXNoIHZhbHVlOiAgIGEyOWE0YTgyNjdmMzUwZjhjMjE4ZjUxNDYzYzBkZjVlODcxMDBmZTAK
ICAgVmVyaWZ5aW5nIEhhc2ggSW50ZWdyaXR5IC4uLiBzaGExKyBPSwojIyBMb2FkaW5nIGZkdCBm
cm9tIEZJVCBJbWFnZSBhdCA0YzAwMDAwMCAuLi4KICAgVXNpbmcgJ2NvbmZAMScgY29uZmlndXJh
dGlvbgogICBUcnlpbmcgJ2ZkdEAxJyBmZHQgc3ViaW1hZ2UKICAgICBEZXNjcmlwdGlvbjogIEZs
YXR0ZW5lZCBEZXZpY2UgVHJlZSBibG9iCiAgICAgVHlwZTogICAgICAgICBGbGF0IERldmljZSBU
cmVlCiAgICAgQ29tcHJlc3Npb246ICB1bmNvbXByZXNzZWQKICAgICBEYXRhIFN0YXJ0OiAgIDB4
NGM2NzhkMTQKICAgICBEYXRhIFNpemU6ICAgIDY4NzcxIEJ5dGVzID0gNjcuMiBLaUIKICAgICBB
cmNoaXRlY3R1cmU6IEFBcmNoNjQKICAgICBIYXNoIGFsZ286ICAgIHNoYTEKICAgICBIYXNoIHZh
bHVlOiAgIGVlMjA4Yjc2NWRmNGE1NDFmYjRlZjRmODg2ZjU3MzgyMTc2NGJiNjYKICAgVmVyaWZ5
aW5nIEhhc2ggSW50ZWdyaXR5IC4uLiBzaGExKyBPSwogICBCb290aW5nIHVzaW5nIHRoZSBmZHQg
YmxvYiBhdCAweDRjNjc4ZDE0CiAgIFVuY29tcHJlc3NpbmcgS2VybmVsIEltYWdlIC4uLiBPSwoi
U3luY2hyb25vdXMgQWJvcnQiIGhhbmRsZXIsIGVzciAweDk2MDAwMDIxCkVMUjogICAgIDQ5MDI5
MjY0CkxSOiAgICAgIDQ5MDEwZjE4CngwIDogMDAwMDAwMDAwMDAwMDAwMCB4MSA6IDAwMDAwMDAw
NGM2NzhkNDQKeDIgOiAwMDAwMDAwMDAwMDAwMDExIHgzIDogMDAwMDAwMDAwMDAwMDAwOQp4NCA6
IDAwMDAwMDAwMDAwMDAwMDAgeDUgOiAwMDAwMDAwMDQ5MDM4NzMwCng2IDogMDAwMDAwMDAwMDAw
MDAwMiB4NyA6IDAwMDAwMDAwNDkwNTFkOTgKeDggOiAwMDAwMDAwMDAwMDAwMDAwIHg5IDogMDAw
MDAwMDBmZmZmZmZmZgp4MTA6IDAwMDAwMDAwNDhmN2ZhMDAgeDExOiAwMDAwMDAwMDAwMDAwMDAx
CngxMjogMDAwMDAwMDAwMDAwMDA2MCB4MTM6IDAwMDAwMDAwMDAwMDAxZmYKeDE0OiAwMDAwMDAw
MDAwMDAwMDNmIHgxNTogMDAwMDAwMDA3ZmU2YTYwMAp4MTY6IDAwMDAwMDAwN2ZlNmIwMzggeDE3
OiAwMDAwMDAwMTAwMDAwMDAwCngxODogMDAwMDAwMDA3ZmU2M2UyMCB4MTk6IDAwMDAwMDAwMDAw
MDAwMDAKeDIwOiAwMDAwMDAwMDRjNjc4ZDE0IHgyMTogMDAwMDAwMDA0OTAzZGRjNgp4MjI6IDAw
MDAwMDAwNDkwNTFiOTggeDIzOiAwMDAwMDAwMDQ5MDUxY2Q4CngyNDogMDAwMDAwMDAwMDAwMDAw
MCB4MjU6IDAwMDAwMDAwNDkwNDg5MzAKeDI2OiAwMDAwMDAwMDRjMDAwMTE0IHgyNzogMDAwMDAw
MDA0OTAwMThhMAp4Mjg6IDAwMDAwMDAwNDgwODAwMDAgeDI5OiAwMDAwMDAwMDdmZTYzNTgwCgpS
ZXNldHRpbmcgQ1BVIC4uLgoKcmVzZXR0aW5nIC4uLgo=

--_007_DB6PR0601MB26633CE38C3512324CDF630BCF0B0DB6PR0601MB2663_
Content-Type: application/octet-stream; name="fitImage-its-salvator-x.its"
Content-Description: fitImage-its-salvator-x.its
Content-Disposition: attachment; filename="fitImage-its-salvator-x.its";
	size=1486; creation-date="Tue, 04 Apr 2017 14:04:10 GMT";
	modification-date="Tue, 04 Apr 2017 14:03:38 GMT"
Content-Transfer-Encoding: base64

L2R0cy12MS87CgovIHsKICAgICAgICBkZXNjcmlwdGlvbiA9ICJVLUJvb3QgZml0SW1hZ2UgZm9y
IFBva3kgKFlvY3RvIFByb2plY3QgUmVmZXJlbmNlIERpc3RybykvNC45LjArZ2l0QVVUT0lOQysx
M2U3NjgwNzc0L3NhbHZhdG9yLXgiOwogICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+OwoKICAg
ICAgICBpbWFnZXMgewogICAgICAgICAgICAgICAga2VybmVsQDEgewogICAgICAgICAgICAgICAg
ICAgICAgICBkZXNjcmlwdGlvbiA9ICJMaW51eCBrZXJuZWwiOwogICAgICAgICAgICAgICAgICAg
ICAgICBkYXRhID0gL2luY2Jpbi8oImxpbnV4LmJpbiIpOwogICAgICAgICAgICAgICAgICAgICAg
ICB0eXBlID0gImtlcm5lbCI7CiAgICAgICAgICAgICAgICAgICAgICAgIGFyY2ggPSAiYXJtNjQi
OwogICAgICAgICAgICAgICAgICAgICAgICBvcyA9ICJsaW51eCI7CiAgICAgICAgICAgICAgICAg
ICAgICAgIGNvbXByZXNzaW9uID0gImd6aXAiOwogICAgICAgICAgICAgICAgICAgICAgICBsb2Fk
ID0gPDB4NDgwODAwMDA+OwogICAgICAgICAgICAgICAgICAgICAgICBlbnRyeSA9IDwweDQ4MDgw
MDAwPjsKICAgICAgICAgICAgICAgICAgICAgICAgaGFzaEAxIHsKICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBhbGdvID0gInNoYTEiOwogICAgICAgICAgICAgICAgICAgICAgICB9Owog
ICAgICAgICAgICAgICAgfTsKICAgICAgICAgICAgICAgIGZkdEAxIHsKICAgICAgICAgICAgICAg
ICAgICAgICAgZGVzY3JpcHRpb24gPSAiRmxhdHRlbmVkIERldmljZSBUcmVlIGJsb2IiOwogICAg
ICAgICAgICAgICAgICAgICAgICBkYXRhID0gL2luY2Jpbi8oImFyY2gvYXJtNjQvYm9vdC9kdHMv
cmVuZXNhcy9yOGE3Nzk1LWVzMS1zYWx2YXRvci14LmR0YiIpOwogICAgICAgICAgICAgICAgICAg
ICAgICB0eXBlID0gImZsYXRfZHQiOwogICAgICAgICAgICAgICAgICAgICAgICBhcmNoID0gImFy
bTY0IjsKICAgICAgICAgICAgICAgICAgICAgICAgY29tcHJlc3Npb24gPSAibm9uZSI7CiAgICAg
ICAgICAgICAgICAgICAgICAgIGhhc2hAMSB7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgYWxnbyA9ICJzaGExIjsKICAgICAgICAgICAgICAgICAgICAgICAgfTsKICAgICAgICAgICAg
ICAgIH07Cgl9OwoKICAgICAgICBjb25maWd1cmF0aW9ucyB7CiAgICAgICAgICAgICAgICBkZWZh
dWx0ID0gImNvbmZAMSI7CiAgICAgICAgICAgICAgICBjb25mQDEgewogICAgICAgICAgICAgICAg
ICAgICAgICBkZXNjcmlwdGlvbiA9ICJCb290IExpbnV4IGtlcm5lbCB3aXRoIEZEVCBibG9iIjsK
CQkJa2VybmVsID0gImtlcm5lbEAxIjsKCQkJZmR0ID0gImZkdEAxIjsKICAgICAgICAgICAgICAg
ICAgICAgICAgaGFzaEAxIHsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBhbGdvID0g
InNoYTEiOwogICAgICAgICAgICAgICAgICAgICAgICB9OwogICAgICAgICAgICAgICAgfTsKCX07
Cn07Cg==

--_007_DB6PR0601MB26633CE38C3512324CDF630BCF0B0DB6PR0601MB2663_
Content-Type: application/octet-stream; name="kernel-fitimage.bbclass"
Content-Description: kernel-fitimage.bbclass
Content-Disposition: attachment; filename="kernel-fitimage.bbclass";
	size=5932; creation-date="Tue, 04 Apr 2017 14:04:10 GMT";
	modification-date="Tue, 04 Apr 2017 14:03:24 GMT"
Content-Transfer-Encoding: base64

aW5oZXJpdCBrZXJuZWwtdWJvb3QKCnB5dGhvbiBfX2Fub255bW91cyAoKSB7CiAgICBrZXJuZWx0
eXBlID0gZC5nZXRWYXIoJ0tFUk5FTF9JTUFHRVRZUEUnLCBUcnVlKQogICAgaWYga2VybmVsdHlw
ZSA9PSAnZml0SW1hZ2UnOgogICAgICAgIGRlcGVuZHMgPSBkLmdldFZhcigiREVQRU5EUyIsIFRy
dWUpCiAgICAgICAgZGVwZW5kcyA9ICIlcyB1LWJvb3QtbWtpbWFnZS1uYXRpdmUgZHRjLW5hdGl2
ZSIgJSBkZXBlbmRzCiAgICAgICAgZC5zZXRWYXIoIkRFUEVORFMiLCBkZXBlbmRzKQoKCSMgT3Zl
cnJpZGUgS0VSTkVMX0lNQUdFVFlQRV9GT1JfTUFLRSB2YXJpYWJsZSwgd2hpY2ggaXMgaW50ZXJu
YWwKCSMgdG8ga2VybmVsLmJiY2xhc3MgLiBXZSBoYXZlIHRvIG92ZXJyaWRlIGl0LCBzaW5jZSB3
ZSBwYWNrIEltYWdlCgkjIChhdCBsZWFzdCBmb3Igbm93KSBpbnRvIHRoZSBmaXRJbWFnZSAuCiAg
ICAgICAgZC5zZXRWYXIoIktFUk5FTF9JTUFHRVRZUEVfRk9SX01BS0UiLCAiSW1hZ2UiKQoKICAg
ICAgICBpbWFnZSA9IGQuZ2V0VmFyKCdJTklUUkFNRlNfSU1BR0UnLCBUcnVlKQogICAgICAgIGlm
IGltYWdlOgogICAgICAgICAgICBkLmFwcGVuZFZhckZsYWcoJ2RvX2Fzc2VtYmxlX2ZpdGltYWdl
JywgJ2RlcGVuZHMnLCAnICR7SU5JVFJBTUZTX0lNQUdFfTpkb19pbWFnZV9jb21wbGV0ZScpCn0K
CiMKIyBFbWl0IHRoZSBmaXRJbWFnZSBJVFMgaGVhZGVyCiMKZml0aW1hZ2VfZW1pdF9maXRfaGVh
ZGVyKCkgewoJY2F0IDw8IEVPRiA+PiBmaXQtaW1hZ2UuaXRzCi9kdHMtdjEvOwoKLyB7CiAgICAg
ICAgZGVzY3JpcHRpb24gPSAiVS1Cb290IGZpdEltYWdlIGZvciAke0RJU1RST19OQU1FfS8ke1BW
fS8ke01BQ0hJTkV9IjsKICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKRU9GCn0KCiMKIyBF
bWl0IHRoZSBmaXRJbWFnZSBzZWN0aW9uIGJpdHMKIwojICQxIC4uLiBTZWN0aW9uIGJpdCB0eXBl
OiBpbWFnZXN0YXJ0IC0gaW1hZ2Ugc2VjdGlvbiBzdGFydAojICAgICAgICAgICAgICAgICAgICAg
ICAgICBjb25mc3RhcnQgIC0gY29uZmlndXJhdGlvbiBzZWN0aW9uIHN0YXJ0CiMgICAgICAgICAg
ICAgICAgICAgICAgICAgIHNlY3RlbmQgICAgLSBzZWN0aW9uIGVuZAojICAgICAgICAgICAgICAg
ICAgICAgICAgICBmaXRlbmQgICAgIC0gZml0aW1hZ2UgZW5kCiMKZml0aW1hZ2VfZW1pdF9zZWN0
aW9uX21haW50KCkgewoJY2FzZSAkMSBpbgoJaW1hZ2VzdGFydCkKCQljYXQgPDwgRU9GID4+IGZp
dC1pbWFnZS5pdHMKCiAgICAgICAgaW1hZ2VzIHsKRU9GCgk7OwoJY29uZnN0YXJ0KQoJCWNhdCA8
PCBFT0YgPj4gZml0LWltYWdlLml0cwoKICAgICAgICBjb25maWd1cmF0aW9ucyB7CkVPRgoJOzsK
CXNlY3RlbmQpCgkJY2F0IDw8IEVPRiA+PiBmaXQtaW1hZ2UuaXRzCgl9OwpFT0YKCTs7CglmaXRl
bmQpCgkJY2F0IDw8IEVPRiA+PiBmaXQtaW1hZ2UuaXRzCn07CkVPRgoJOzsKCWVzYWMKfQoKIwoj
IEVtaXQgdGhlIGZpdEltYWdlIElUUyBrZXJuZWwgc2VjdGlvbgojCiMgJDEgLi4uIEltYWdlIGNv
dW50ZXIKIyAkMiAuLi4gUGF0aCB0byBrZXJuZWwgaW1hZ2UKIyAkMyAuLi4gQ29tcHJlc3Npb24g
dHlwZQpmaXRpbWFnZV9lbWl0X3NlY3Rpb25fa2VybmVsKCkgewoKCWtlcm5lbF9jc3VtPSJzaGEx
IgoKCUVOVFJZUE9JTlQ9JHtVQk9PVF9FTlRSWVBPSU5UfQoJaWYgdGVzdCAtbiAiJHtVQk9PVF9F
TlRSWVNZTUJPTH0iOyB0aGVuCgkJRU5UUllQT0lOVD1gJHtIT1NUX1BSRUZJWH1ubSAke1N9L3Zt
bGludXggfCBcCgkJCWF3ayAnJDM9PSIke1VCT09UX0VOVFJZU1lNQk9MfSIge3ByaW50ICQxfSdg
CglmaQoKCWNhdCA8PCBFT0YgPj4gZml0LWltYWdlLml0cwogICAgICAgICAgICAgICAga2VybmVs
QCR7MX0gewogICAgICAgICAgICAgICAgICAgICAgICBkZXNjcmlwdGlvbiA9ICJMaW51eCBrZXJu
ZWwiOwogICAgICAgICAgICAgICAgICAgICAgICBkYXRhID0gL2luY2Jpbi8oIiR7Mn0iKTsKICAg
ICAgICAgICAgICAgICAgICAgICAgdHlwZSA9ICJrZXJuZWwiOwogICAgICAgICAgICAgICAgICAg
ICAgICBhcmNoID0gIiR7VUJPT1RfQVJDSH0iOwogICAgICAgICAgICAgICAgICAgICAgICBvcyA9
ICJsaW51eCI7CiAgICAgICAgICAgICAgICAgICAgICAgIGNvbXByZXNzaW9uID0gIiR7M30iOwog
ICAgICAgICAgICAgICAgICAgICAgICBsb2FkID0gPCR7VUJPT1RfTE9BREFERFJFU1N9PjsKICAg
ICAgICAgICAgICAgICAgICAgICAgZW50cnkgPSA8JHtFTlRSWVBPSU5UfT47CiAgICAgICAgICAg
ICAgICAgICAgICAgIGhhc2hAMSB7CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYWxn
byA9ICIke2tlcm5lbF9jc3VtfSI7CiAgICAgICAgICAgICAgICAgICAgICAgIH07CiAgICAgICAg
ICAgICAgICB9OwpFT0YKfQoKIwojIEVtaXQgdGhlIGZpdEltYWdlIElUUyBEVEIgc2VjdGlvbgoj
CiMgJDEgLi4uIEltYWdlIGNvdW50ZXIKIyAkMiAuLi4gUGF0aCB0byBEVEIgaW1hZ2UKZml0aW1h
Z2VfZW1pdF9zZWN0aW9uX2R0YigpIHsKCglkdGJfY3N1bT0ic2hhMSIKCgljYXQgPDwgRU9GID4+
IGZpdC1pbWFnZS5pdHMKICAgICAgICAgICAgICAgIGZkdEAkezF9IHsKICAgICAgICAgICAgICAg
ICAgICAgICAgZGVzY3JpcHRpb24gPSAiRmxhdHRlbmVkIERldmljZSBUcmVlIGJsb2IiOwogICAg
ICAgICAgICAgICAgICAgICAgICBkYXRhID0gL2luY2Jpbi8oIiR7Mn0iKTsKICAgICAgICAgICAg
ICAgICAgICAgICAgdHlwZSA9ICJmbGF0X2R0IjsKICAgICAgICAgICAgICAgICAgICAgICAgYXJj
aCA9ICIke1VCT09UX0FSQ0h9IjsKICAgICAgICAgICAgICAgICAgICAgICAgY29tcHJlc3Npb24g
PSAibm9uZSI7CiAgICAgICAgICAgICAgICAgICAgICAgIGhhc2hAMSB7CiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgYWxnbyA9ICIke2R0Yl9jc3VtfSI7CiAgICAgICAgICAgICAgICAg
ICAgICAgIH07CiAgICAgICAgICAgICAgICB9OwpFT0YKfQoKIwojIEVtaXQgdGhlIGZpdEltYWdl
IElUUyBjb25maWd1cmF0aW9uIHNlY3Rpb24KIwojICQxIC4uLiBMaW51eCBrZXJuZWwgSUQKIyAk
MiAuLi4gRFRCIGltYWdlIElECmZpdGltYWdlX2VtaXRfc2VjdGlvbl9jb25maWcoKSB7CgoJY29u
Zl9jc3VtPSJzaGExIgoKCSMgVGVzdCBpZiB3ZSBoYXZlIGFueSBEVEJzIGF0IGFsbAoJaWYgWyAt
eiAiJHsyfSIgXSA7IHRoZW4KCQljb25mX2Rlc2M9IkJvb3QgTGludXgga2VybmVsIgoJCWZkdF9s
aW5lPSIiCgllbHNlCgkJY29uZl9kZXNjPSJCb290IExpbnV4IGtlcm5lbCB3aXRoIEZEVCBibG9i
IgoJCWZkdF9saW5lPSJmZHQgPSBcImZkdEAkezJ9XCI7IgoJZmkKCWtlcm5lbF9saW5lPSJrZXJu
ZWwgPSBcImtlcm5lbEAkezF9XCI7IgoKCWNhdCA8PCBFT0YgPj4gZml0LWltYWdlLml0cwogICAg
ICAgICAgICAgICAgZGVmYXVsdCA9ICJjb25mQDEiOwogICAgICAgICAgICAgICAgY29uZkAxIHsK
ICAgICAgICAgICAgICAgICAgICAgICAgZGVzY3JpcHRpb24gPSAiJHtjb25mX2Rlc2N9IjsKCQkJ
JHtrZXJuZWxfbGluZX0KCQkJJHtmZHRfbGluZX0KICAgICAgICAgICAgICAgICAgICAgICAgaGFz
aEAxIHsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBhbGdvID0gIiR7Y29uZl9jc3Vt
fSI7CiAgICAgICAgICAgICAgICAgICAgICAgIH07CiAgICAgICAgICAgICAgICB9OwpFT0YKfQoK
ZG9fYXNzZW1ibGVfZml0aW1hZ2UoKSB7CglpZiB0ZXN0ICJ4JHtLRVJORUxfSU1BR0VUWVBFfSIg
PSAieGZpdEltYWdlIiA7IHRoZW4KCQlrZXJuZWxjb3VudD0xCgkJZHRiY291bnQ9IiIKCQlybSAt
ZiBmaXQtaW1hZ2UuaXRzCgoJCWZpdGltYWdlX2VtaXRfZml0X2hlYWRlcgoKCQkjCgkJIyBTdGVw
IDE6IFByZXBhcmUgYSBrZXJuZWwgaW1hZ2Ugc2VjdGlvbi4KCQkjCgkJZml0aW1hZ2VfZW1pdF9z
ZWN0aW9uX21haW50IGltYWdlc3RhcnQKCgkJdWJvb3RfcHJlcF9raW1hZ2UKCQlmaXRpbWFnZV9l
bWl0X3NlY3Rpb25fa2VybmVsICIke2tlcm5lbGNvdW50fSIgbGludXguYmluICIke2xpbnV4X2Nv
bXB9IgoKCQkjCgkJIyBTdGVwIDI6IFByZXBhcmUgYSBEVEIgaW1hZ2Ugc2VjdGlvbgoJCSMKCQlp
ZiB0ZXN0IC1uICIke0tFUk5FTF9ERVZJQ0VUUkVFfSI7IHRoZW4KCQkJZHRiY291bnQ9MQoJCQlm
b3IgRFRCIGluICR7S0VSTkVMX0RFVklDRVRSRUV9OyBkbwoJCQkJaWYgZWNobyAke0RUQn0gfCBn
cmVwIC1xICcvZHRzLyc7IHRoZW4KCQkJCQliYndhcm4gIiR7RFRCfSBjb250YWlucyB0aGUgZnVs
bCBwYXRoIHRvIHRoZSB0aGUgZHRzIGZpbGUsIGJ1dCBvbmx5IHRoZSBkdGIgbmFtZSBzaG91bGQg
YmUgdXNlZC4iCgkJCQkJRFRCPWBiYXNlbmFtZSAke0RUQn0gfCBzZWQgJ3MsXC5kdHMkLC5kdGIs
ZydgCgkJCQlmaQoJCQkJRFRCX1BBVEg9ImFyY2gvJHtBUkNIfS9ib290L2R0cy8ke0RUQn0iCgkJ
CQlpZiBbICEgLWUgIiR7RFRCX1BBVEh9IiBdOyB0aGVuCgkJCQkJRFRCX1BBVEg9ImFyY2gvJHtB
UkNIfS9ib290LyR7RFRCfSIKCQkJCWZpCgoJCQkJZml0aW1hZ2VfZW1pdF9zZWN0aW9uX2R0YiAk
e2R0YmNvdW50fSAke0RUQl9QQVRIfQoJCQkJZHRiY291bnQ9YGV4cHIgJHtkdGJjb3VudH0gKyAx
YAoJCQlkb25lCgkJZmkKCgkJZml0aW1hZ2VfZW1pdF9zZWN0aW9uX21haW50IHNlY3RlbmQKCgkJ
IyBGb3JjZSB0aGUgZmlyc3QgS2VybmVsIGFuZCBEVEIgaW4gdGhlIGRlZmF1bHQgY29uZmlnCgkJ
a2VybmVsY291bnQ9MQoJCWR0YmNvdW50PTEKCgkJIwoJCSMgU3RlcCAzOiBQcmVwYXJlIGEgY29u
ZmlndXJhdGlvbnMgc2VjdGlvbgoJCSMKCQlmaXRpbWFnZV9lbWl0X3NlY3Rpb25fbWFpbnQgY29u
ZnN0YXJ0CgoJCWZpdGltYWdlX2VtaXRfc2VjdGlvbl9jb25maWcgJHtrZXJuZWxjb3VudH0gJHtk
dGJjb3VudH0KCgkJZml0aW1hZ2VfZW1pdF9zZWN0aW9uX21haW50IHNlY3RlbmQKCgkJZml0aW1h
Z2VfZW1pdF9zZWN0aW9uX21haW50IGZpdGVuZAoKCQkjCgkJIyBTdGVwIDQ6IEFzc2VtYmxlIHRo
ZSBpbWFnZQoJCSMKCQl1Ym9vdC1ta2ltYWdlIC1mIGZpdC1pbWFnZS5pdHMgYXJjaC8ke0FSQ0h9
L2Jvb3QvZml0SW1hZ2UKCWZpCn0KCmFkZHRhc2sgYXNzZW1ibGVfZml0aW1hZ2UgYmVmb3JlIGRv
X2luc3RhbGwgYWZ0ZXIgZG9fY29tcGlsZQoKa2VybmVsX2RvX2RlcGxveVt2YXJkZXBzZXhjbHVk
ZV0gPSAiREFURVRJTUUiCmtlcm5lbF9kb19kZXBsb3lfYXBwZW5kKCkgewoJIyBVcGRhdGUgZGVw
bG95IGRpcmVjdG9yeQoJaWYgdGVzdCAieCR7S0VSTkVMX0lNQUdFVFlQRX0iID0gInhmaXRJbWFn
ZSIgOyB0aGVuCgkJY2QgJHtCfQoJCWVjaG8gIkNvcHlpbmcgZml0LWltYWdlLml0cyBzb3VyY2Ug
ZmlsZS4uLiIKCQlpdHNfYmFzZV9uYW1lPSIke0tFUk5FTF9JTUFHRVRZUEV9LWl0cy0ke1BWfS0k
e1BSfS0ke01BQ0hJTkV9LSR7REFURVRJTUV9IgoJCWl0c19zeW1saW5rX25hbWU9JHtLRVJORUxf
SU1BR0VUWVBFfS1pdHMtJHtNQUNISU5FfQoJCWluc3RhbGwgLW0gMDY0NCBmaXQtaW1hZ2UuaXRz
ICR7REVQTE9ZRElSfS8ke2l0c19iYXNlX25hbWV9Lml0cwoJCWxpbnV4X2Jpbl9iYXNlX25hbWU9
IiR7S0VSTkVMX0lNQUdFVFlQRX0tbGludXguYmluLSR7UFZ9LSR7UFJ9LSR7TUFDSElORX0tJHtE
QVRFVElNRX0iCgkJbGludXhfYmluX3N5bWxpbmtfbmFtZT0ke0tFUk5FTF9JTUFHRVRZUEV9LWxp
bnV4LmJpbi0ke01BQ0hJTkV9CgkJaW5zdGFsbCAtbSAwNjQ0IGxpbnV4LmJpbiAke0RFUExPWURJ
Un0vJHtsaW51eF9iaW5fYmFzZV9uYW1lfS5iaW4KCgkJY2QgJHtERVBMT1lESVJ9CgkJbG4gLXNm
ICR7aXRzX2Jhc2VfbmFtZX0uaXRzICR7aXRzX3N5bWxpbmtfbmFtZX0uaXRzCgkJbG4gLXNmICR7
bGludXhfYmluX2Jhc2VfbmFtZX0uYmluICR7bGludXhfYmluX3N5bWxpbmtfbmFtZX0uYmluCglm
aQp9Cg==

--_007_DB6PR0601MB26633CE38C3512324CDF630BCF0B0DB6PR0601MB2663_
Content-Type: application/octet-stream; name="salvator-x.conf"
Content-Description: salvator-x.conf
Content-Disposition: attachment; filename="salvator-x.conf"; size=1380;
	creation-date="Tue, 04 Apr 2017 14:04:57 GMT";
	modification-date="Tue, 04 Apr 2017 14:03:44 GMT"
Content-Transfer-Encoding: base64

I0BUWVBFOiBNYWNoaW5lCiNATkFNRTogU2FsdmF0b3ItWCBtYWNoaW5lCiNAREVTQ1JJUFRJT046
IE1hY2hpbmUgY29uZmlndXJhdGlvbiBmb3IgcnVubmluZyBTYWx2YXRvci1YCgpERUZBVUxUVFVO
RSA/PSAiY29ydGV4YTU3LWNvcnRleGE1MyIKcmVxdWlyZSBjb25mL21hY2hpbmUvaW5jbHVkZS90
dW5lLWNvcnRleGE1Ny1jb3J0ZXhhNTMuaW5jCnJlcXVpcmUgY29uZi9tYWNoaW5lL2luY2x1ZGUv
JHtTT0NfRkFNSUxZfS5pbmMKCiMgMzJCSVQgcGFja2FnZSBpbnN0YWxsIChkZWZhdWx0IGlzIGRp
c2FibGUpCiMgVGhpcyB2YXJpYWJsZXMgY2FuIGJlIHVzZWQgb25seSBpbiBtdWx0aWxpYi4KVVNF
XzMyQklUX1BLR1MgPz0gIjAiClVTRV8zMkJJVF9XQVlMQU5EID89ICIwIgpVU0VfMzJCSVRfTU1Q
ID89ICIwIgoKTUFDSElORV9GRUFUVVJFUyA9ICIiCgpLRVJORUxfQ0xBU1NFUyA9ICJrZXJuZWwt
Zml0aW1hZ2UiCktFUk5FTF9JTUFHRVRZUEUgPSAiZml0SW1hZ2UiCiNLRVJORUxfSU1BR0VUWVBF
ID0gIkltYWdlIgpVQk9PVF9FTlRSWVBPSU5UID0gIjB4NDgwODAwMDAiCkVOVFJZUE9JTlQgPSAi
MHg0ODA4MDAwMCIKSU1BR0VfRlNUWVBFUyA9ICJ0YXIuYnoyIGV4dDQgY3Bpby5neiIKClNFUklB
TF9DT05TT0xFID0gIjExNTIwMCB0dHlTQzAiCgojIENvbmZpZ3VyYXRpb24gZm9yIGtlcm5lbApQ
UkVGRVJSRURfUFJPVklERVJfdmlydHVhbC9rZXJuZWwgPSAibGludXgtcmVuZXNhcyIKIyBEZXZp
Y2UgdHJlZSBmb3IgSDMKS0VSTkVMX0RFVklDRVRSRUVfcjhhNzc5NSA9ICIgXAogICAgcmVuZXNh
cy9yOGE3Nzk1LWVzMS1zYWx2YXRvci14LmR0YiBcCiIKIyBEZXZpY2UgdHJlZSBmb3IgTTMKS0VS
TkVMX0RFVklDRVRSRUVfcjhhNzc5NiA9ICJyZW5lc2FzL3I4YTc3OTYtc2FsdmF0b3IteC5kdGIi
CgojIENvbmZpZ3VyYXRpb24gZm9yIEFSTSBUcnVzdGVkIEZpcm13YXJlCkVYVFJBX0lNQUdFREVQ
RU5EUyArPSAiIGFybS10cnVzdGVkLWZpcm13YXJlIG9wdGVlLW9zIgoKIyB1LWJvb3QKUFJFRkVS
UkVEX1ZFUlNJT05fdS1ib290ID0gInYyMDE1LjA0JSIKRVhUUkFfSU1BR0VERVBFTkRTICs9ICIg
dS1ib290IgojIEgzIHUtYm9vdCBjb25maWd1cmUKVUJPT1RfTUFDSElORV9yOGE3Nzk1ID0gInI4
YTc3OTVfc2FsdmF0b3IteF9kZWZjb25maWciCiMgTTMgdS1ib290IGNvbmZpZ3VyZQpVQk9PVF9N
QUNISU5FX3I4YTc3OTYgPSAicjhhNzc5Nl9zYWx2YXRvci14X2RlZmNvbmZpZyIKCiMgbGliZHJt
ClBSRUZFUlJFRF9WRVJTSU9OX2xpYmRybSA9ICIyLjQuNjgiCgojIEFkZCB2YXJpYWJsZSB0byBC
dWlsZCBDb25maWd1cmF0aW9uIGluIGJ1aWxkIGxvZwpCVUlMRENGR19WQVJTX2FwcGVuZCA9ICIg
U09DX0ZBTUlMWSIK

--_007_DB6PR0601MB26633CE38C3512324CDF630BCF0B0DB6PR0601MB2663_--
