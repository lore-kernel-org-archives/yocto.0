Return-Path: <chandrasekhar@evolute.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0C9FE00B18; Wed, 16 May 2018 21:08:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [202.137.237.110 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 402 seconds by postgrey-1.32 at yocto-www;
	Wed, 16 May 2018 21:08:55 PDT
Received: from rediffmail.com (pro237-110.mxout.rediffmailpro.com
	[202.137.237.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ADF5E00831
	for <yocto@yoctoproject.org>; Wed, 16 May 2018 21:08:55 -0700 (PDT)
X-REDIFF-Delivered-Remotely-To: yocto@yoctoproject.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rediffmailpro.com;
	s=epro; t=1526529730;
	bh=uHFbcEB7UuXUIHZZSuZkqC44fm3ddGI7OtNLs4hVIRI=;
	h=MIME-Version:From:Date:Message-ID:Subject:To;
	b=DYLnH+Arby4X0+VS6FxL0tKi8CL4rh1tlelYNDdP37zH1bYaZT5qU8qDQ613yVFxR
	erUpHsCQ3kOcRwPe7g+IPbV9vlk/qumvBK2XenbEzFWaazdvJbzMHlRbGE5/iKwi1P
	WPXpNRXblIC+RZVwSYYJXsUo/2ISGLfTsBaJsMNY=
Received: (qmail 14861 invoked from network); 17 May 2018 04:02:10 -0000
x-m-msg: asd54ad564ad7aa6sd5as6d5; a6da7d6asas6dasd77; 5dad65ad5sd;
X-OUT-VDRT-SpamState: 0\LEGIT
X-OUT-VDRT-SpamScore: -100
X-OUT-VDRT-SpamCause: gggruggvucftvghtrhhoucdtuddrgedthedrfedtgdejkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvfhfjgfufffkgggtofhtsegrtdhgpedvtdejnecuhfhrohhmpedftghhrghnughrrghsvghkhhgrrhdfuceotghhrghnughrrghsvghkhhgrrhesvghvohhluhhtvgdrihhnqeenucfrrghrrghmpehmohguvgepshhmthhpohhuthenucevlhhushhtvghrufhiiigvpedt
X-Dedup-Identifier: 1526529730_14859_14756_pro-237-110
Received: from unknown (HELO chandrasekhar)
	(chandrasekhar@evolute.in@180.151.37.180)
	by mailserver with SMTP; 17 May 2018 04:02:10 -0000
From: "chandrasekhar" <chandrasekhar@evolute.in>
To: "'Ugesh Reddy'" <kumar.ugesh003@yahoo.com>,
	"'Yocto-mailing-list'" <yocto@yoctoproject.org>
References: <1621704137.2131896.1526488025606.ref@mail.yahoo.com>
	<1621704137.2131896.1526488025606@mail.yahoo.com>
In-Reply-To: <1621704137.2131896.1526488025606@mail.yahoo.com>
Date: Thu, 17 May 2018 09:31:55 +0530
Message-ID: <000c01d3ed93$cc662ce0$653286a0$@in>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdPtMsaZfbYwn4+WSHGOdTGIVSqLTgAYOM3A
Subject: Re: Enabling the recipe from menuconfig
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
X-List-Received-Date: Thu, 17 May 2018 04:08:57 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_000D_01D3EDC1.E61E68E0"
Content-Language: en-us

------=_NextPart_000_000D_01D3EDC1.E61E68E0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi=20

You can use=20

IMAGE_INSTALL +=3D "Package Name/Recipes name"

=20

Regards,

Chandrasekhar

=20

From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Ugesh Reddy
Sent: Wednesday, May 16, 2018 9:57 PM
To: Yocto-mailing-list
Subject: [yocto] Enabling the recipe from menuconfig

=20

Hello Team,

=20

 I have a list of recipes in my custom layer. The recipes in this layer =
shall be enabled/selected through the menuconfig, once it is enabled =
then it shall be the part of image. is it possible to achieve it ? do we =
have any references?=20

=20

Regards,

Ugesh


------=_NextPart_000_000D_01D3EDC1.E61E68E0
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
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
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>Hi <o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>You can use <o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>IMAGE_INSTALL +=3D &quot;Package Name/Recipes =
name&quot;<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>Regards,<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'>Chandrasekhar<o:p></o:p></span></p>

<p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt =
0in 0in 0in'>

<p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] =
<b>On
Behalf Of </b>Ugesh Reddy<br>
<b>Sent:</b> Wednesday, May 16, 2018 9:57 PM<br>
<b>To:</b> Yocto-mailing-list<br>
<b>Subject:</b> [yocto] Enabling the recipe from =
menuconfig<o:p></o:p></span></p>

</div>

</div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<div>

<div>

<p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif"'>Hello
Team,</span><span =
style=3D'font-family:"Helvetica","sans-serif"'><o:p></o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span =
style=3D'font-family:"Helvetica","sans-serif"'><o:p>&nbsp;</o:p></span></=
p>

</div>

<div>

<p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif"'>&nbsp;I
have a list of recipes in my custom layer. The recipes in =
this&nbsp;layer shall
be enabled/selected through the menuconfig, once it is enabled then it =
shall be
the part of image. is it possible to achieve&nbsp;it ? do we have any
references?&nbsp;</span><span =
style=3D'font-family:"Helvetica","sans-serif"'><o:p></o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span =
style=3D'font-family:"Helvetica","sans-serif"'><o:p>&nbsp;</o:p></span></=
p>

</div>

<div>

<p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif"'>Regards,<=
/span><span
style=3D'font-family:"Helvetica","sans-serif"'><o:p></o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif"'>Ugesh</sp=
an><span
style=3D'font-family:"Helvetica","sans-serif"'><o:p></o:p></span></p>

</div>

</div>

</div>

</body>

</html>

------=_NextPart_000_000D_01D3EDC1.E61E68E0--
