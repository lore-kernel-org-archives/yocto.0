Return-Path: <carlos.bejar-colonia@philips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83687E00B5F; Sat, 13 Jan 2018 13:25:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.91 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 7132 seconds by postgrey-1.32 at yocto-www;
	Sat, 13 Jan 2018 13:25:38 PST
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0091.outbound.protection.outlook.com [104.47.2.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 450DCE0085E
	for <yocto@yoctoproject.org>; Sat, 13 Jan 2018 13:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=Philips.onmicrosoft.com; s=selector1-philips-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=YyAf+6v3hS1gvzy4viey30aDrAVG00hO3bMpLk1/DVA=;
	b=GjSXfTwZlEp4JXv3i1De1eaa7Zf37XC6romNe4pD5ydxMwA0DNZ6KR0rM4eUsidm+uhtEiGk4uD5f9IP3zR/msHTx7bza2Lr9hLGNV6C9Hr3hYSzmymU6WmG9/A4diz/8x7l5jFzyhmTSSj7x3elyDbwpRVGgQKFfgd6tq450dk=
Received: from AM4P122MB0068.EURP122.PROD.OUTLOOK.COM (129.75.167.87) by
	AM4P122MB0066.EURP122.PROD.OUTLOOK.COM (129.75.167.85) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.386.9; Fri, 12 Jan 2018 20:38:43 +0000
Received: from AM4P122MB0068.EURP122.PROD.OUTLOOK.COM
	([fe80::b181:8347:2bf2:e1d]) by AM4P122MB0068.EURP122.PROD.OUTLOOK.COM
	([fe80::b181:8347:2bf2:e1d%17]) with mapi id 15.20.0386.009;
	Fri, 12 Jan 2018 20:38:43 +0000
From: "Bejar-Colonia, Carlos" <carlos.bejar-colonia@philips.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: cve-check behind a proxy fails
Thread-Index: AdOL5UKZ5JjqVq5DT1Gc1+7DUxgk8w==
Date: Fri, 12 Jan 2018 20:38:43 +0000
Message-ID: <AM4P122MB0068A9B9AF17A0475396615CD6170@AM4P122MB0068.EURP122.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=carlos.bejar-colonia@philips.com; 
x-originating-ip: [192.101.81.235]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM4P122MB0066;
	7:EDiOmZVr6gg1hZ8tfdf/pzjiSADx8MlCcpO/ne8qrgZemseAkoNITRnm3liDFfF4fyb9iQNCaGDmHaoPih9qkRO/LMfPUDuhkfnv4X1sL4gG2wMqFEZGauuxDuT15OJStDtsAGXCAd+SWMCp9d/4DUPd0tgS18DKEoDhtjU6ExvLSrUyzNbAxPG7QsLHzo6Y7JCOCAZJotzczgkfufooLIXBMO+I9m9Z4l6vC7OEffYgIhZIcdmTvdw0maxw/5TR;
	23:o5TQ/aEHUAvOdwQiN+WbrJ+8SGrAP17dMqEb0gT3KHFlm8cWhRU7sCzXcEGrmdR5DC0PvVev1vBuHk3G9iVNIENz0l79RZ1TgZPvWLA0Xb8w6exUdW6wY/NXS4S8jESV1BfmYf4EM3p2TFCdalPuKA==;
	23:OrjgrSajcRWGjXGocCfZewPWU1Zo+lM3bWqqe+E1CkBENvAEUnoJb6MesbviYGRf5FxH+t+p+hyTGNWLeGH+uD9dnRYqFximNfHiMOlg6FCoqdYYsKqZghgcg6xD36JCc5q3wEOQmuvIT7sAVxdtgA==
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5c2f967d-7151-4cd5-0102-08d559fc78b2
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020087)(4652020)(48565401081)(4534117)(4602075)(4627213)(201703031133081)(201702281549075)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:AM4P122MB0066; 
X-MS-TrafficTypeDiagnostic: AM4P122MB0066:|AM4P122MB0066:|AM4P122MB0066:
x-microsoft-antispam-prvs: <AM4P122MB0066A26652FE99853B25D925D6170@AM4P122MB0066.EURP122.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(28532068793085)(158342451672863)(21748063052155); 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040470)(2401047)(5005006)(8121501046)(10201501046)(93006095)(93001095)(3231023)(944501147)(3002001)(6055026)(6041268)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123562045)(20161123558120)(6072148)(201708071742011);
	SRVR:AM4P122MB0066; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:AM4P122MB0066; 
x-forefront-prvs: 0550778858
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39860400002)(396003)(366004)(39380400002)(346002)(376002)(374574003)(199004)(189003)(55904004)(85714005)(7696005)(68736007)(59450400001)(478600001)(1730700003)(81166006)(74316002)(66066001)(2900100001)(966005)(7736002)(14454004)(86362001)(8936002)(3846002)(81156014)(8676002)(606006)(102836004)(6506007)(316002)(97736004)(2906002)(6116002)(6916009)(33656002)(2351001)(99286004)(790700001)(3280700002)(105586002)(25786009)(6436002)(6306002)(3660700001)(106356001)(5640700003)(53936002)(5660300001)(55016002)(5250100002)(236005)(9686003)(54896002)(5630700001)(2501003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM4P122MB0066;
	H:AM4P122MB0068.EURP122.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: philips.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: tAFZ4L95EqsQLvEZbHxDsX62qHx0tnTPlHkwnLSy++k7/RfUWqHiVbZt/5gKyzklbpCvMvTCjOV5IqEeKUXcfg==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c2f967d-7151-4cd5-0102-08d559fc78b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2018 20:38:43.3105 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1a407a2d-7675-4d17-8692-b3ac285306e4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4P122MB0066
X-OriginatorOrg: philips.com
Subject: cve-check behind a proxy fails
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
X-List-Received-Date: Sat, 13 Jan 2018 21:25:42 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM4P122MB0068A9B9AF17A0475396615CD6170AM4P122MB0068EURP_"

--_000_AM4P122MB0068A9B9AF17A0475396615CD6170AM4P122MB0068EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Yocto Team,

I have downloaded Poky(Rocko), added a local layer and added: INHERIT +=3D =
"cve-check" to conf/local.conf file.
When I run 'bitbake core-image-minimal', cve-check fails with the following=
 message:

WARNING: cve-check-tool-native-5.6.4-r0 do_populate_cve_db: Error in execut=
ing cve-check-update
WARNING: cve-check-tool-native-5.6.4-r0 do_populate_cve_db: Failed to updat=
e cve-check-tool database, CVEs won't be checked

I am working behind a proxy and tried to setup my build machine following t=
hese steps, but still fails:
https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy#HTTP.2FHT=
TPS.2FFTP_Setup

Am I missing something in the setup to make cve-check work behind a proxy s=
erver?

Thanks,
Carlos





________________________________
The information contained in this message may be confidential and legally p=
rotected under applicable law. The message is intended solely for the addre=
ssee(s). If you are not the intended recipient, you are hereby notified tha=
t any use, forwarding, dissemination, or reproduction of this message is st=
rictly prohibited and may be unlawful. If you are not the intended recipien=
t, please contact the sender by return e-mail and destroy all copies of the=
 original message.

--_000_AM4P122MB0068A9B9AF17A0475396615CD6170AM4P122MB0068EURP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Lucida Console";
	panose-1:2 11 6 9 4 5 4 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello Yocto Team,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have downloaded Poky(Rocko), added a local layer a=
nd added:
<span style=3D"font-size:10.0pt;font-family:&quot;Lucida Console&quot;">INH=
ERIT &#43;=3D <b><span style=3D"color:#FF40FF">&quot;cve-check&quot;
</span></b></span>to conf/local.conf file.<o:p></o:p></p>
<p class=3D"MsoNormal">When I run &#8216;bitbake core-image-minimal&#8217;,=
 cve-check fails with the following message:
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">WARNING: cve-check-tool-native-5.6.4-r0 do_populate_=
cve_db: Error in executing cve-check-update<o:p></o:p></p>
<p class=3D"MsoNormal">WARNING: cve-check-tool-native-5.6.4-r0 do_populate_=
cve_db: Failed to update cve-check-tool database, CVEs won't be checked<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am working behind a proxy and tried to setup my bu=
ild machine following these steps, but still fails:
<o:p></o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://wiki.yoctoproject.org/wiki/Workin=
g_Behind_a_Network_Proxy#HTTP.2FHTTPS.2FFTP_Setup">https://wiki.yoctoprojec=
t.org/wiki/Working_Behind_a_Network_Proxy#HTTP.2FHTTPS.2FFTP_Setup</a><o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Am I missing something in the setup to make cve-chec=
k work behind a proxy server?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Carlos<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1">The information contained in=
 this message may be confidential and legally protected under applicable la=
w. The message is intended solely for the addressee(s). If you are not the =
intended recipient, you are hereby notified
 that any use, forwarding, dissemination, or reproduction of this message i=
s strictly prohibited and may be unlawful. If you are not the intended reci=
pient, please contact the sender by return e-mail and destroy all copies of=
 the original message.<br>
</font>
</body>
</html>

--_000_AM4P122MB0068A9B9AF17A0475396615CD6170AM4P122MB0068EURP_--
