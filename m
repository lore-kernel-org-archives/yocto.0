Return-Path: <hgujulan@visteon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51218E006CD; Tue,  4 Apr 2017 22:26:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.104 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 55062 seconds by postgrey-1.32 at yocto-www;
	Tue, 04 Apr 2017 22:26:38 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0104.outbound.protection.outlook.com [104.47.2.104])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B88E6E00546
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 22:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=visteon.onmicrosoft.com; s=selector1-visteon-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=9+lvqgZRz1ZHfzTz7iaC0RPC+RSG0a5DiAUDPswpWYM=;
	b=xRdANbQtjUoxIlwUqW7bFT4eNlxABCMwnBzAyJZTF1wj5Y8yftgC1q18EKgu0LuN/rWmSsXN/fIYgmkcHVvVu4oP1G59sru9YkYdFcjctOcORxJrLJolNxKm1mhGveTtDSZGXCwO145Ydat0McD2M2h/aOvqQPOTNW8g/gYerlM=
Received: from DB6PR0601MB2663.eurprd06.prod.outlook.com (10.168.82.16) by
	DB6PR0601MB2678.eurprd06.prod.outlook.com (10.168.82.19) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1005.10; Wed, 5 Apr 2017 04:54:22 +0000
Received: from DB6PR0601MB2663.eurprd06.prod.outlook.com ([10.168.82.16]) by
	DB6PR0601MB2663.eurprd06.prod.outlook.com ([10.168.82.16]) with mapi id
	15.01.1005.018; Wed, 5 Apr 2017 04:54:21 +0000
From: "Gujulan Elango, Hari Prasath (H.)" <hgujulan@visteon.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: FIT Image boot issue
Thread-Index: AdKtS7tHKal2DZHMRL6XxPAMkzjIMwAAzb0Q
Date: Wed, 5 Apr 2017 04:54:21 +0000
Message-ID: <DB6PR0601MB26636F9796635B663F069033CF0A0@DB6PR0601MB2663.eurprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=visteon.com;
x-originating-ip: [91.212.132.119]
x-microsoft-exchange-diagnostics: 1; DB6PR0601MB2678;
	7:cO1mlGKYSReXLOnfg07s3Wlu1AgDYKDGhXz9iBHY4dP/9gs0lvRD2J3ppUkpHXPlQmJ6HjPjJb4Ra22d/8S5bROKe6kilRt+1FfAp3kX2pNfiqTcS/UTUh9j2YFRYMbMsTY2KvOFh/g7cGmOabE19ErXqf/xA3J4xXkZ+JKuAFuAKBe8LbzejKcMzpUwBEtEO3csRAJxDgICGBRHgxxRJt12gcCAxwiHq0U2v8UMG4K3jTARh2tTY2R9YjZhuewA8TB6aB3wuEmUFzHi7C8Nqce805J94K6xsUr9tDQF/VZyTn9LoGYG77k0Q64vWGJeR7LoxlteD2ymhNOBGaC0/Q==
x-forefront-antispam-report: SFV:SKI; SCL:-1SFV:NSPM;
	SFS:(10019020)(6009001)(39850400002)(39410400002)(39860400002)(39840400002)(39400400002)(39450400003)(53754006)(377454003)(9686003)(54356999)(6306002)(50986999)(54896002)(122556002)(5640700003)(107886003)(2906002)(5630700001)(77096006)(6506006)(55016002)(4326008)(110136004)(86362001)(2900100001)(3660700001)(38730400002)(54906002)(53546009)(99286003)(189998001)(25786009)(74316002)(33656002)(66066001)(99936001)(19609705001)(229853002)(3480700004)(8936002)(3280700002)(81156014)(102836003)(81166006)(3846002)(1730700003)(8676002)(6916009)(2501003)(5890100001)(790700001)(7736002)(6116002)(6246003)(7696004)(53936002)(5660300001)(2351001)(6436002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0601MB2678;
	H:DB6PR0601MB2663.eurprd06.prod.outlook.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
x-ms-office365-filtering-correlation-id: 08011dd2-0b0f-4492-9618-08d47bdfd30b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(48565401081)(201703131423075)(201703031133081)(201702281549075);
	SRVR:DB6PR0601MB2678; 
x-microsoft-antispam-prvs: <DB6PR0601MB26784F0876F695B35EB284F5CF0A0@DB6PR0601MB2678.eurprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(190756311086443)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(102415395)(6040450)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(93006095)(93001095)(6055026)(6041248)(201703131423075)(201702281528075)(201703061421075)(20161123555025)(20161123560025)(20161123564025)(20161123562025)(6072148);
	SRVR:DB6PR0601MB2678; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0601MB2678; 
x-forefront-prvs: 0268246AE7
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: visteon.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2017 04:54:21.3707 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a147aaf-01ec-498c-80a1-e34a8c63c548
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0601MB2678
Cc: "Vadivel, Arulpandiyan \(A.\)" <avadive1@visteon.com>, "Ravindran,
	Madhusudhanan \(M.\)" <mravindr@visteon.com>, "Rajagopalan,
	Thiagarajan \(T.\)" <trajagop@visteon.com>, "DHANAPAL,
	GNANACHANDRAN \(G.\)" <gnanachandran.dhanapal@visteon.com>
Subject: Re: FIT Image boot issue
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
X-List-Received-Date: Wed, 05 Apr 2017 05:26:42 -0000
X-Groupsio-MsgNum: 35406
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_DB6PR0601MB26636F9796635B663F069033CF0A0DB6PR0601MB2663_"

--_004_DB6PR0601MB26636F9796635B663F069033CF0A0DB6PR0601MB2663_
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0601MB26636F9796635B663F069033CF0A0DB6PR0601MB2663_"

--_000_DB6PR0601MB26636F9796635B663F069033CF0A0DB6PR0601MB2663_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Sorry the its file was blocked by Outlook. Renamed the extension and re-att=
aching it.

Regards,
Hari Prasath

From: Gujulan Elango, Hari Prasath (H.)
Sent: Tuesday, April 04, 2017 7:39 PM
To: yocto@yoctoproject.org
Cc: Rajagopalan, Thiagarajan (T.); Vadivel, Arulpandiyan (A.); Ravindran, M=
adhusudhanan (M.); DHANAPAL, GNANACHANDRAN (G.)
Subject: FIT Image boot issue

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


--_000_DB6PR0601MB26636F9796635B663F069033CF0A0DB6PR0601MB2663_
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Sorry the its file was=
 blocked by Outlook. Renamed the extension and re-attaching it.<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Regards,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hari Prasath<o:p></o:p=
></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Gujulan =
Elango, Hari Prasath (H.)
<br>
<b>Sent:</b> Tuesday, April 04, 2017 7:39 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Cc:</b> Rajagopalan, Thiagarajan (T.); Vadivel, Arulpandiyan (A.); Ravin=
dran, Madhusudhanan (M.); DHANAPAL, GNANACHANDRAN (G.)<br>
<b>Subject:</b> FIT Image boot issue<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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

--_000_DB6PR0601MB26636F9796635B663F069033CF0A0DB6PR0601MB2663_--

--_004_DB6PR0601MB26636F9796635B663F069033CF0A0DB6PR0601MB2663_
Content-Type: application/octet-stream; name="fitImage-its-salvator-x"
Content-Description: fitImage-its-salvator-x
Content-Disposition: attachment; filename="fitImage-its-salvator-x";
	size=1486; creation-date="Tue, 04 Apr 2017 14:23:53 GMT";
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

--_004_DB6PR0601MB26636F9796635B663F069033CF0A0DB6PR0601MB2663_--
