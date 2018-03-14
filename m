Return-Path: <vincent.daanen@orthotaxy.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7F10E00712; Wed, 14 Mar 2018 19:20:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.130 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0130.outbound.protection.outlook.com [104.47.2.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17D1AE00712
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 19:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=orthotaxy.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=F7vF/nNOcM8T1GZ7hYbJzb6lF+nbt8pSQrK8omg8faI=;
	b=gB8FJ1a3Tos+sP3On8tREGz0Gd945bcql0QMQdz7xmXCTfMlmceZ9DiwopyRUwIIMC/4pOxKspN+2JpsA1sZrNW1hR3k+0GEvXiqqTVJjIoXPz74CU0qXOdf2TOOYuASOE6ICzDEb++wsZ4Ic82pPLcHua0GD4r/WoBN93l+oQk=
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM (10.175.180.135) by
	VI1P192MB0157.EURP192.PROD.OUTLOOK.COM (10.175.180.137) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.567.14; Wed, 14 Mar 2018 17:47:22 +0000
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::b85b:37d9:45a2:c505]) by VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::b85b:37d9:45a2:c505%18]) with mapi id 15.20.0567.018;
	Wed, 14 Mar 2018 17:47:21 +0000
From: Vincent Daanen <vincent.daanen@orthotaxy.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: directory not created in /lib/firmware rootfs
Thread-Index: AdO7u/3h7vmYDZ9rS3aSKct1xBbbVw==
Date: Wed, 14 Mar 2018 17:47:21 +0000
Message-ID: <VI1P192MB01435C77324EF462EAC695F08DD10@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=vincent.daanen@orthotaxy.com; 
x-originating-ip: [152.77.102.34]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1P192MB0157;
	6:KreRWQbRAiejK5oAgON5PI6bC2P3vA/Aq07pjZua6K5gKnLk/akqmqwY8pEikSfEkrTuQQGlMZbapXPngrK+OoDGQXe61aJtqaGkWca8+TFr5iflAv3i+L+8zfCEqc2FF0juRH1/OEnkvXfYHTYp86UmrFUWrVJBfyh07CHrixCXdHtjxESI7oV++3NBgF3u32AJrjMhC9GOdMhV9W35dT3HrDD1CSRbhBphUAc8tuO84kVBOPUTIFHhzrCahidpkxRELmvXYPAPG9QeMUITMRJ5mKCk/D49cSPCtk0SFl8szlqehjopP5n8uUef0OtgH1GCQpt7kNyq5jFgMe1KFQpHYJZ8qetd7VIlKEMMCIlm/UsxVjEoUclHjCjsTS/P;
	5:cmXVWTQqmWsNSq49JueszXAQnPWmKpVE/KvkV6qEqIijkSyelwrSWfA9oX9cxapoVN3SgJvnWyieDGRmCSFFPBR2Timuj7eT2hmm4uKDcTsCeAKyJfu1RHdzAFjkPB2ACCqvP+N2tznksPZuIdws9pG0uHrMEKfCM01GKJk8nx0=;
	24:CPVsapRXTR/f1mXX0rDSGX2s6NttyKoogSkYEvTQMPgTp6ioIqfwCeQ4IbVnlmAWHSoxB34eQwFI4cNPDEjuibJmy2uzrIdK70lG9qZRtIw=;
	7:JRz7/lKECUnGZmMa2phNXhzxzDmZrXHq61YX2ske1T1RqzsJOv+jwuugn1ks9VL3sEvAubKfP1uqR0vVLpByb9sMKAs1uQvP9f0a1Jh47ZWXGJfBdz8OnlPrF74ztYH414xjyDmUDzDHIXTd8U+PCJws4Ki+7vUPsMIDOOj5CM0FldWxlL+fIqVy1Ho9QO3XZVGGwUwxnOrQgU1+AcC8ahxSL2U15MH0aFN7r8327+t2feyc4wjpBATAEMcw8xYo
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: cafed8ad-764f-44a2-4a97-08d589d3a398
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4604075)(3008032)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:VI1P192MB0157; 
x-ms-traffictypediagnostic: VI1P192MB0157:
x-microsoft-antispam-prvs: <VI1P192MB0157618456FDEF1A99E24F738DD10@VI1P192MB0157.EURP192.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(3002001)(93006095)(93001095)(3231221)(944501244)(52105095)(6041310)(20161123564045)(20161123560045)(20161123562045)(2016111802025)(20161123558120)(6043046)(6072148)(201708071742011);
	SRVR:VI1P192MB0157; BCL:0; PCL:0; RULEID:; SRVR:VI1P192MB0157; 
x-forefront-prvs: 0611A21987
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(346002)(376002)(39380400002)(39830400003)(366004)(396003)(189003)(199004)(7696005)(3846002)(5250100002)(5660300001)(53936002)(316002)(3280700002)(6506007)(2351001)(3660700001)(478600001)(6116002)(790700001)(2501003)(2906002)(8676002)(55016002)(7736002)(81156014)(81166006)(1730700003)(8936002)(86362001)(74316002)(9326002)(26005)(6916009)(54896002)(97736004)(68736007)(9686003)(106356001)(186003)(6306002)(6436002)(105586002)(66066001)(25786009)(102836004)(99286004)(2900100001)(5640700003)(14454004)(33656002)(5630700001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1P192MB0157;
	H:VI1P192MB0143.EURP192.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: orthotaxy.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: cec6Zv3mMWk+TDKzGtzEcZeDNtNjVemx9xTmD3cKKLC+UJ/i26LLdv4BYMxIoFECbxwTMdMGn7x7qNE+ZQ2sOeOJz+55p6h7KWQQRfFQF5JdRu0LFrPgvWlJseLU8LMKyG/McqO3gs/69vum4DgJtpLUW5Dm14XugRLtAaSeBnQNJzblT3g/453+C8wIAASu8ha0Y8Q6dusNbOpS7dMLsP2U/KFheht/lOGfmRb6oieRNnzSW+tWltdyvoeALO8IQ0q2No3JYwwKXGVTDTWY88bG5mx5qdT/Z8UMgm2iBEWR/4br+0xkATBQuMSpepW3lbbr0jBhsZsFJxCZ/wblLw==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: orthotaxy.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cafed8ad-764f-44a2-4a97-08d589d3a398
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2018 17:47:21.7314 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0c838133-9c42-4d53-8cbc-7a36ef5279a7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB0157
Subject: directory not created in /lib/firmware rootfs
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
X-List-Received-Date: Thu, 15 Mar 2018 02:20:06 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_VI1P192MB01435C77324EF462EAC695F08DD10VI1P192MB0143EURP_"

--_000_VI1P192MB01435C77324EF462EAC695F08DD10VI1P192MB0143EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have to install a firmware in /lib/firmware.
In the recipe, the function do_install() is the following
do_install() {
                install -d ${base_libdir}/firmware
                install -m 0755 ${WORKDIR}/firmware_manufacturer/firmware.f=
w ${base_libdir}/firmware
}

FILES_${PN} +=3D " ${base_libdir}/firmware/firmware.fw "

And the build fails with an error: "cannot create regular file '/lib/firmwa=
re/firmware.fw': Permission denied


So I comment the install statement relative to the firmware (install -m 075=
5...) and change FILES_${PN} to FILES_${PN} +=3D " ${base_libdir}/firmware =
"
The build succeeds but when I look at the image (with qemu) the directory /=
lib/firmware does not exists..

What am I doing wrong ?

Vincent


--_000_VI1P192MB01435C77324EF462EAC695F08DD10VI1P192MB0143EURP_
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have to install a firmware in /lib/firmware.<o:p><=
/o:p></p>
<p class=3D"MsoNormal">In the recipe, the function do_install() is the foll=
owing<o:p></o:p></p>
<p class=3D"MsoNormal">do_install() {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -d ${base_libdir}/firmware<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 0755 ${WORKDIR}/firmware_=
manufacturer/firmware.fw ${base_libdir}/firmware<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">FILES_${PN} &#43;=3D &#8220; ${base_libdir}/firmware=
/firmware.fw &#8220;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">And the build fails with an error: &#8220;cannot cre=
ate regular file &#8216;/lib/firmware/firmware.fw&#8217;: Permission denied=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So I comment the install statement relative to the f=
irmware (install -m 0755&#8230;) and change FILES_${PN} to FILES_${PN} &#43=
;=3D &#8220; ${base_libdir}/firmware &#8221;<o:p></o:p></p>
<p class=3D"MsoNormal">The build succeeds but when I look at the image (wit=
h qemu) the directory /lib/firmware does not exists..<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What am I doing wrong ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Vincent<span lang=3D"FR" style=3D"font-family:&quot;=
Arial&quot;,sans-serif;color:#222222;mso-fareast-language:EN-GB"><o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_VI1P192MB01435C77324EF462EAC695F08DD10VI1P192MB0143EURP_--
