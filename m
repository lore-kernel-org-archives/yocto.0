Return-Path: <peter.bergin@tritech.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4431E009C3; Sun, 24 Apr 2016 01:08:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.59.120.190 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0049]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 91 seconds by postgrey-1.32 at yocto-www;
	Sun, 24 Apr 2016 01:08:22 PDT
Received: from nic.tritech.se (tritech.se [46.59.120.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29CA0E0077E
	for <yocto@yoctoproject.org>; Sun, 24 Apr 2016 01:08:21 -0700 (PDT)
Received: from post.tritech.se (post.tritech.se [10.75.60.100])
	by nic.tritech.se (8.14.4/8.14.4/Debian-4) with ESMTP id u3O86kuj009026;
	Sun, 24 Apr 2016 10:06:46 +0200
Received: from POST.tritech.se ([10.75.60.100]) by post ([10.75.60.100]) with
	mapi id 14.03.0279.002; Sun, 24 Apr 2016 10:06:41 +0200
From: Peter Bergin <peter.bergin@tritech.se>
To: Andreas Enbacka <andreas.enbacka@gasera.fi>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Customize login prompt text in Yocto
Thread-Index: AdGd+dIo4XhgbohmSLuovC5zpFi7BA==
Date: Sun, 24 Apr 2016 08:06:40 +0000
Message-ID: <43F0718C449F6A46B393DA2BEC8E01280C9FE07D@post>
References: <000f01d19dfa$51e59400$f5b0bc00$@gasera.fi>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [83.227.10.61]
MIME-Version: 1.0
Subject: Re: Customize login prompt text in Yocto
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
X-List-Received-Date: Sun, 24 Apr 2016 08:08:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_43F0718C449F6A46B393DA2BEC8E01280C9FE07Dpost_"

--_000_43F0718C449F6A46B393DA2BEC8E01280C9FE07Dpost_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

On 04/24/2016 09:42 AM, Andreas Enbacka wrote:
Hello,

Normally, when building e.g., a console-based image using Yocto, you will g=
et at caption text =94Poky Reference Distribution=94... at the login prompt=
. Is it easily possible to change / customize this caption text,
and in such a case, which Yocto package / recipe requires change. Any infor=
mation would be greatly appreciated.

Best regards,
Andreas Enbacka

the information shown is from the file /etc/issue. You can for example do p=
ost-processing on this file and change the information. You can add this to=
 your image recipe.

update_issue() {
    echo "Your text" > ${IMAGE_ROOTFS}/etc/issue
}

ROOTFS_POSTPROCESS_COMMAND +=3D " update issue; "

Best regards,
/Peter

--_000_43F0718C449F6A46B393DA2BEC8E01280C9FE07Dpost_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body text=3D"#000000" bgcolor=3D"#FFFFFF">
<div class=3D"moz-cite-prefix">Hi,<br>
<br>
On 04/24/2016 09:42 AM, Andreas Enbacka wrote:<br>
</div>
<blockquote cite=3D"mid:000f01d19dfa$51e59400$f5b0bc00$@gasera.fi" type=3D"=
cite">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered=0A=
        medium)">
<style><!--=0A=
/* Font Definitions */=0A=
@font-face=0A=
	{font-family:"Cambria Math";=0A=
	panose-1:2 4 5 3 5 4 6 3 2 4;}=0A=
@font-face=0A=
	{font-family:Calibri;=0A=
	panose-1:2 15 5 2 2 2 4 3 2 4;}=0A=
/* Style Definitions */=0A=
p.MsoNormal, li.MsoNormal, div.MsoNormal=0A=
	{margin:0cm;=0A=
	margin-bottom:.0001pt;=0A=
	font-size:11.0pt;=0A=
	font-family:"Calibri",sans-serif;=0A=
	mso-fareast-language:EN-US;}=0A=
a:link, span.MsoHyperlink=0A=
	{mso-style-priority:99;=0A=
	color:#0563C1;=0A=
	text-decoration:underline;}=0A=
a:visited, span.MsoHyperlinkFollowed=0A=
	{mso-style-priority:99;=0A=
	color:#954F72;=0A=
	text-decoration:underline;}=0A=
span.EmailStyle17=0A=
	{mso-style-type:personal-compose;=0A=
	font-family:"Calibri",sans-serif;=0A=
	color:windowtext;}=0A=
.MsoChpDefault=0A=
	{mso-style-type:export-only;=0A=
	font-family:"Calibri",sans-serif;=0A=
	mso-fareast-language:EN-US;}=0A=
@page WordSection1=0A=
	{size:612.0pt 792.0pt;=0A=
	margin:70.85pt 2.0cm 70.85pt 2.0cm;}=0A=
div.WordSection1=0A=
	{page:WordSection1;}=0A=
--></style><!--[if gte mso 9]><xml>=0A=
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />=0A=
</xml><![endif]--><!--[if gte mso 9]><xml>=0A=
<o:shapelayout v:ext=3D"edit">=0A=
<o:idmap v:ext=3D"edit" data=3D"1" />=0A=
</o:shapelayout></xml><![endif]-->
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"SV-FI">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"SV-FI"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Normally, when building e.g., a=
 console-based image using Yocto, you will get at caption text =94Poky Refe=
rence Distribution=94... at the login prompt. Is it easily possible to chan=
ge / customize this caption text,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">and in such a case, which Yocto=
 package / recipe requires change.
</span><span lang=3D"SV-FI">Any information would be greatly appreciated.<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"SV-FI"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"SV-FI">Best regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"SV-FI">Andreas Enbacka<o:p></o:p></spa=
n></p>
</div>
</blockquote>
<br>
the information shown is from the file /etc/issue. You can for example do p=
ost-processing on this file and change the information. You can add this to=
 your image recipe.<br>
<br>
update_issue() {<br>
&nbsp;&nbsp;&nbsp; echo &quot;Your text&quot; &gt; ${IMAGE_ROOTFS}/etc/issu=
e<br>
}<br>
<br>
ROOTFS_POSTPROCESS_COMMAND &#43;=3D &quot; update issue; &quot;<br>
<br>
Best regards,<br>
/Peter<br>
</body>
</html>

--_000_43F0718C449F6A46B393DA2BEC8E01280C9FE07Dpost_--
