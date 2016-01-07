Return-Path: <JSchluechtermann@FORCEAmerica.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA9C1E00C88; Thu,  7 Jan 2016 13:29:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [64.198.112.134 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail.forceamerica.com (webmail.forceamerica.com
	[64.198.112.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62390E00404
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2016 13:29:40 -0800 (PST)
Received: from Corp-EX10.forceamerica.com ([10.100.101.44]) by
	Corp-EX10.forceamerica.com ([10.100.101.44]) with mapi id
	14.03.0123.003; Thu, 7 Jan 2016 15:29:37 -0600
From: John Schluechtermann <JSchluechtermann@FORCEAmerica.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: do_rootfs error due to package installation
Thread-Index: AdFJbfGup9/rk9m9SE+PN1+mfVKYLQAJBxxg
Date: Thu, 7 Jan 2016 21:29:35 +0000
Message-ID: <28FBBE02F609FB4B8B4F047102C7B7360144C5A322@Corp-EX10.forceamerica.com>
References: <28FBBE02F609FB4B8B4F047102C7B7360144C5A27D@Corp-EX10.forceamerica.com>
In-Reply-To: <28FBBE02F609FB4B8B4F047102C7B7360144C5A27D@Corp-EX10.forceamerica.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.8.24]
MIME-Version: 1.0
Subject: Re: do_rootfs error due to package installation
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
X-List-Received-Date: Thu, 07 Jan 2016 21:29:44 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_28FBBE02F609FB4B8B4F047102C7B7360144C5A322CorpEX10force_"

--_000_28FBBE02F609FB4B8B4F047102C7B7360144C5A322CorpEX10force_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Some additional information in regards to this.  In the troubleshooting of =
it I turned on the build history by adding the following to my local.conf,
          INHERIT +=3D "buildhistory"
          BUILDHISTORY_COMMIT =3D "1"

With that added to the local.conf the image creation would complete success=
fully, it was also repeatable if I removed it I would then get the error me=
ssage about the unmet dependencies, replacing it allowed the build to compl=
ete.  What do I not have setup correctly?


-          John


I have a custom image that I am trying to pick up and get working that was =
setup and used by an individual no longer with the company.

The image creation is failing in the do_rootfs portion and appears to be du=
e to a package not being installed in the image.  I have verified that the =
package is being created which it is.  I am not sure if I need to modify an=
 IMAGE_INSTALL commend in a recipe or not since I do not understand how the=
 first package (packagegroup-base-extended) is being included.

The error message that occurs is:

The following packages have unmet dependencies:
packagegroup-base-extended : Depends: packagegroup-base-nfc but it is not g=
oing to be installed
E: Unable to correct problems, you have held broken packages.

So if I understanding this correctly it is placing the packagegroup-base-ex=
tended package in the image but it for some reason cannot do that with the =
packagegroup-base-nfc.  Is this an order issue or something else.  I do not=
 know where to look at the moment so any guidance on that would be greatly =
appreciated.

Thanks,

-          John
The information contained in this message and any attachment may be proprie=
tary, confidential, and privileged or subject to the work product doctrine =
and thus protected from disclosure. If the reader of this message is not th=
e intended recipient, or an employee or agent responsible for delivering th=
is message to the intended recipient, you are hereby notified that any diss=
emination, distribution or copying of this communication is strictly prohib=
ited. If you have received this communication in error, please notify me im=
mediately by replying to this message and deleting it and all copies and ba=
ckups thereof. Thank you.

--_000_28FBBE02F609FB4B8B4F047102C7B7360144C5A322CorpEX10force_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style>
<!--
@font-face
	{font-family:Wingdings}
@font-face
	{font-family:Wingdings}
@font-face
	{font-family:Calibri}
@font-face
	{font-family:Tahoma}
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif"}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline}
a:visited, span.MsoHyperlinkFollowed
	{color:purple;
	text-decoration:underline}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif"}
p.msochpdefault, li.msochpdefault, div.msochpdefault
	{margin-right:0in;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Calibri","sans-serif"}
span.emailstyle17
	{font-family:"Calibri","sans-serif";
	color:windowtext}
span.auto-style1
	{}
span.EmailStyle22
	{font-family:"Calibri","sans-serif";
	color:#1F497D}
.MsoChpDefault
	{font-size:10.0pt;
	font-family:"Calibri","sans-serif"}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
div.WordSection1
	{}
ol
	{margin-bottom:0in}
ul
	{margin-bottom:0in}
-->
</style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Some additional inform=
ation in regards to this.&nbsp; In the troubleshooting of it I turned on th=
e build history by adding the following to my local.conf,
</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INHERIT &#43;=3D &#8220;buildhistory&=
#8221;</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;BUILDHISTORY_COMMIT =3D &#8220;1&#8221;</s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">With that added to the=
 local.conf the image creation would complete successfully, it was also rep=
eatable if I removed it I would then get the error message about the unmet =
dependencies, replacing it allowed the
 build to complete.&nbsp; What do I not have setup correctly?</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in"><span style=3D"c=
olor:#1F497D"><span style=3D"">-<span style=3D"font:7.0pt &quot;Times New R=
oman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><span style=3D"color:#1F497D">John</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;</span></p>
<div>
<div style=3D"border:none; border-top:solid #B5C4DF 1.0pt; padding:3.0pt 0i=
n 0in 0in">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;T=
ahoma&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
</div>
</div>
<div>
<p class=3D"MsoNormal">I have a custom image that I am trying to pick up an=
d get working that was setup and used by an individual no longer with the c=
ompany.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">The image creation is failing in the do_rootfs porti=
on and appears to be due to a package not being installed in the image.&nbs=
p; I have verified that the package is being created which it is.&nbsp; I a=
m not sure if I need to modify an IMAGE_INSTALL
 commend in a recipe or not since I do not understand how the first package=
 (packagegroup-base-extended) is being included.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">The error message that occurs is:</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">The following packages have unmet dependencies:</p>
<p class=3D"MsoNormal">packagegroup-base-extended : Depends: packagegroup-b=
ase-nfc but it is not going to be installed</p>
<p class=3D"MsoNormal">E: Unable to correct problems, you have held broken =
packages.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">So if I understanding this correctly it is placing t=
he packagegroup-base-extended package in the image but it for some reason c=
annot do that with the packagegroup-base-nfc.&nbsp; Is this an order issue =
or something else.&nbsp; I do not know where
 to look at the moment so any guidance on that would be greatly appreciated=
.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">Thanks,</p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in">-<span style=3D"=
font-size:7.0pt; font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>John</p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"color:#0000FF"><span class=3D"auto-style1">=
<em>The information contained in this message and any attachment may be pro=
prietary, confidential, and privileged or subject to the work product doctr=
ine and thus protected from disclosure.
 If the reader of this message is not the intended recipient, or an employe=
e or agent responsible for delivering this message to the intended recipien=
t, you are hereby notified that any dissemination, distribution or copying =
of this communication is strictly
 prohibited. If you have received this communication in error, please notif=
y me immediately by replying to this message and deleting it and all copies=
 and backups thereof. Thank you.</em></span>
</p>
</body>
</html>

--_000_28FBBE02F609FB4B8B4F047102C7B7360144C5A322CorpEX10force_--
