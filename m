Return-Path: <teemu.keskinarkaus@crosscontrol.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2341EE00AFD; Sun, 26 Mar 2017 23:29:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.47 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0047.outbound.protection.outlook.com [104.47.34.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B11EDE00A9A
	for <yocto@yoctoproject.org>; Sun, 26 Mar 2017 23:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=actuant.onmicrosoft.com; s=selector1-actuant-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=xvYxCJkErpfACmXHSnpATB0f8hC4HpxLztX8TnM6RBE=;
	b=1Y3trLAfg/gW8fyFGtjekkhj1sl4fF7yJzGPEzf7hBZTpu1ACA33A1V86V/QgHiwDhOkkmNJHmudypfZ94z+IBVqfF57Y6r1keTkDsfoPLGO5RHuK83SFbVAJncTVxbAGsi2dhCzjK1wQ7obzw8YKAhNHmM7gdii9VrvBeYTlTo=
Received: from CY4PR18MB1605.namprd18.prod.outlook.com (10.173.63.145) by
	CY4PR18MB1607.namprd18.prod.outlook.com (10.173.63.147) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.991.14; Mon, 27 Mar 2017 03:53:57 +0000
Received: from CY4PR18MB1605.namprd18.prod.outlook.com ([10.173.63.145]) by
	CY4PR18MB1605.namprd18.prod.outlook.com ([10.173.63.145]) with mapi id
	15.01.0991.020; Mon, 27 Mar 2017 03:53:56 +0000
From: "Keskinarkaus, Teemu" <teemu.keskinarkaus@crosscontrol.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Taskhash mismatch when using WIC-tool
Thread-Index: AdKmrUduuujGCloUTXSLqvEdt0NIOw==
Date: Mon, 27 Mar 2017 03:53:56 +0000
Message-ID: <CY4PR18MB16050411C42ECD1FCA33AF04E0330@CY4PR18MB1605.namprd18.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=crosscontrol.com;
x-originating-ip: [81.19.113.90]
x-microsoft-exchange-diagnostics: 1; CY4PR18MB1607;
	7:paKtYKYnpIbZP59BYprjlYk4k7UGzuxC9sMGaBWzllI7uPc4EBTGJIDGjmjVJiGizo+/Zn0c16uEF0ZbRovjCvmaLjUefe8rEuiA3G3cmup0eusGIpHjTGOItX/F8TL3RvkktG+0JYsbZzeI2OQmI+tWNGmFWkfN5G+VbIaBTAv4sy7aQ+2CAteUw+KBhdo5oY4oicMUs1pauol61ryWieV5L3QES+GqJijahdw1KyszEomvsBiuMKb3PUMUNsQXmdcHsH5PETEge8kvUuo+0LLCPgv85l0lXhNeSz5Tm6tX3JK61AaN+drHt8qAV+IAt7MiEe7NwvTAWWBYaEKGBg==;
	20:8Xz1F4MTtumHi+0/9G0GB5kgFR9+hG/GYb8q0AVEy+PpPwPgqswtWpmVlFEDMk/RwhF1fNsQsLR0iagvR1SMfG+C7vh5yO2qk1ElfnlrlsvdvMLix5d8BRkkOSGh+EiptOOjsj7oWYv5LPRvLgf3FE+i67xZD9tXVNI8hlc8rqc=
x-ms-office365-filtering-correlation-id: 3233b4cb-cd46-4424-8c76-08d474c4e4e6
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001)(2017030254075);
	SRVR:CY4PR18MB1607; 
x-microsoft-antispam-prvs: <CY4PR18MB1607970D20D014FB77683CD7E0330@CY4PR18MB1607.namprd18.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040413)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123560025)(20161123564025)(20161123562025)(201703131423038)(201702281528038)(201703061421038)(201703061406038)(20161123558025)(20161123555025)(6072148);
	SRVR:CY4PR18MB1607; BCL:0; PCL:0; RULEID:; SRVR:CY4PR18MB1607; 
x-forefront-prvs: 02596AB7DA
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39400400002)(39450400003)(39850400002)(39410400002)(39840400002)(8676002)(81166006)(1730700003)(2900100001)(77096006)(66066001)(38730400002)(2906002)(110136004)(74316002)(102836003)(3846002)(8936002)(6116002)(790700001)(3660700001)(7736002)(122556002)(3280700002)(55016002)(99286003)(2351001)(54356999)(5640700003)(6436002)(53936002)(50986999)(33656002)(5660300001)(7696004)(5630700001)(2501003)(6916009)(25786009)(86362001)(189998001)(54896002)(6306002)(9686003)(6506006);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR18MB1607;
	H:CY4PR18MB1605.namprd18.prod.outlook.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: crosscontrol.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2017 03:53:56.5840 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1602ae82-0266-40d6-910b-11680fe0f6a5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR18MB1607
Subject: Taskhash mismatch when using WIC-tool
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
X-List-Received-Date: Mon, 27 Mar 2017 06:29:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR18MB16050411C42ECD1FCA33AF04E0330CY4PR18MB1605namp_"

--_000_CY4PR18MB16050411C42ECD1FCA33AF04E0330CY4PR18MB1605namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I recently started using WIC-tool to create the final image instead and fro=
m day one I seem to be having taskhash mismatch errors when first time crea=
ting the image. If I run the same command second time it goes through witho=
ut any problems.

I'm using Yocto 2.1.

Here is the error I'm talking about:

ERROR: release-image-1.0-r0 do_rootfs_wicenv: Taskhash mismatch da155888bd9=
c40e3ca6c8584a4d86cf5 verses 8307d09291312e835bb5254c93af3e05 for /<path to=
 image recipe>/release-image.bb.do_rootfs_wicenv

Is this known issue or what am I doing wrong?

-TeemuK

________________________________

Actuant Corporation Email Notice

This message is intended only for the use of the Addressee and may contain =
information that is PRIVILEGED and/or CONFIDENTIAL.
This email is intended only for the personal and confidential use of the re=
cipient(s) named above. If the reader of this email is not an intended reci=
pient, you have received this email in error and any review, dissemination,=
 distribution or copying is strictly prohibited.
If you have received this email in error, please notify the sender immediat=
ely by return mail and permanently delete the copy you received.

Thank you.

--_000_CY4PR18MB16050411C42ECD1FCA33AF04E0330CY4PR18MB1605namp_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 2.0cm 70.85pt 2.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FI" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I recently started using WIC-to=
ol to create the final image instead and from day one I seem to be having t=
askhash mismatch errors when first time creating the image. If I run the sa=
me command second time it goes through
 without any problems.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m using Yocto 2.1.<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Here is the error I&#8217;m tal=
king about:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: release-image-1.0-r0 do_=
rootfs_wicenv: Taskhash mismatch da155888bd9c40e3ca6c8584a4d86cf5 verses 83=
07d09291312e835bb5254c93af3e05 for /&lt;path to image recipe&gt;/release-im=
age.bb.do_rootfs_wicenv<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is this known issue or what am =
I doing wrong?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">-TeemuK<o:p></o:p></span></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Black" size=3D"1"><br>
Actuant Corporation Email Notice<br>
<br>
This message is intended only for the use of the Addressee and may contain =
information that is PRIVILEGED and/or CONFIDENTIAL.<br>
This email is intended only for the personal and confidential use of the re=
cipient(s) named above. If the reader of this email is not an intended reci=
pient, you have received this email in error and any review, dissemination,=
 distribution or copying is strictly
 prohibited.<br>
If you have received this email in error, please notify the sender immediat=
ely by return mail and permanently delete the copy you received.<br>
<br>
Thank you.<br>
</font>
</body>
</html>

--_000_CY4PR18MB16050411C42ECD1FCA33AF04E0330CY4PR18MB1605namp_--
