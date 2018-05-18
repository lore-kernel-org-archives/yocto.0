Return-Path: <chandrasekhar@evolute.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E62C9E009E2; Thu, 17 May 2018 23:17:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [202.137.236.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 405 seconds by postgrey-1.32 at yocto-www;
	Thu, 17 May 2018 23:17:29 PDT
Received: from rediffmail.com (pro236-136.mxout.rediffmailpro.com
	[202.137.236.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7361FE009B9
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 23:17:28 -0700 (PDT)
X-REDIFF-Delivered-Remotely-To: yocto@yoctoproject.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rediffmailpro.com;
	s=epro; t=1526623836;
	bh=kKKdOfixb4RSmzD79sCgpPoemGNi4fCZgJBOsJ3yas8=;
	h=MIME-Version:From:Date:Message-ID:Subject:To;
	b=OhXZA+sxi2B0gDU1nm5X1da51Y936JSiUsDYxFnTfhxKtus7qM0nh8JsOd5NaTzcJ
	x/KKI4GzSyDA4RJa38bt1o2/yNumq1vic5yvKQytkfRCGO2ozhYHUdepPhYJ6u8V12
	1tnx0whdRXSLvbM427acDYYzY6HWZLykCb8Tz1C4=
Received: (qmail 1429 invoked from network); 18 May 2018 06:10:36 -0000
x-m-msg: asd54ad564ad7aa6sd5as6d5; a6da7d6asas6dasd77; 5dad65ad5sd;
X-OUT-VDRT-SpamState: 0\LEGIT
X-OUT-VDRT-SpamScore: -100
X-OUT-VDRT-SpamCause: gggruggvucftvghtrhhoucdtuddrgedthedrfedvgddutdehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuggftfghnshhusghstghrihgsvgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvfhgjufffkfggtgfothesrgdtghepvddtjeenucfhrhhomhepfdgthhgrnhgurhgrshgvkhhhrghrfdcuoegthhgrnhgurhgrshgvkhhhrghrsegvvhholhhuthgvrdhinheqnecuffhomhgrihhnpeihrghhohhordgtohhmnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtnecuvehluhhsthgvrhfuihiivgeptd
X-Dedup-Identifier: 1526623836_1335_958_pro-236-136
Received: from unknown (HELO chandrasekhar)
	(chandrasekhar@evolute.in@180.151.37.180)
	by mailserver with SMTP; 18 May 2018 06:10:35 -0000
From: "chandrasekhar" <chandrasekhar@evolute.in>
To: <kumar.ugesh003@yahoo.com>, "'Yocto-mailing-list'" <yocto@yoctoproject.org>
References: <1621704137.2131896.1526488025606.ref@mail.yahoo.com>
	<1621704137.2131896.1526488025606@mail.yahoo.com>
	<000c01d3ed93$cc662ce0$653286a0$@in>
	<1610363301.2651115.1526610116510@mail.yahoo.com>
	<000901d3ee5e$aab1ec80$0015c580$@in>
	<2114034351.2762560.1526622299302@mail.yahoo.com>
In-Reply-To: <2114034351.2762560.1526622299302@mail.yahoo.com>
Date: Fri, 18 May 2018 11:40:20 +0530
Message-ID: <001d01d3ee6e$e6fb79d0$b4f26d70$@in>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdPua1/MoLti/K/0SqW4WCyDl/FX7AAA3RPg
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
X-List-Received-Date: Fri, 18 May 2018 06:17:33 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_001E_01D3EE9D.00B3B5D0"
Content-Language: en-us

------=_NextPart_000_001E_01D3EE9D.00B3B5D0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I think you can use Toaster for that which has a web interface you can =
select packages/receipes

=20

Regards,

Chandrasekhar

=20

From: Ugesh Reddy [mailto:kumar.ugesh003@yahoo.com]=20
Sent: Friday, May 18, 2018 11:15 AM
To: chandrasekhar@evolute.in; 'Yocto-mailing-list'
Subject: RE: [yocto] Enabling the recipe from menuconfig

=20

The similar kind is required for my custom layer. So that I could enable =
the receipt from the menu config

Sent from Yahoo <https://overview.mail.yahoo.com/mobile/?.src=3DAndroid> =
 Mail on Android

=20

On Fri, 18 May 2018 at 9:44 a.m., chandrasekhar

<chandrasekhar@evolute.in> wrote:

you want to see in kernel menuconfig??

=20

From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Ugesh Reddy
Sent: Friday, May 18, 2018 7:52 AM
To: 'Yocto-mailing-list'; chandrasekhar
Subject: Re: [yocto] Enabling the recipe from menuconfig

=20

Hi,

Thanks for the response,

=20

 This will add the recipe as a part of image but I want to build and add =
the recipe when it has been selected from the menuconfig.

How to make visible the recipe in menuconfig?

On Thursday, 17 May, 2018, 9:32:15 AM IST, chandrasekhar =
<chandrasekhar@evolute.in> wrote:=20

=20

=20

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


------=_NextPart_000_001E_01D3EE9D.00B3B5D0
Content-Type: text/html;
	charset="utf-8"
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:New;
	panose-1:0 0 0 0 0 0 0 0 0 0;}
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
p.yiv1946153965msonormal, li.yiv1946153965msonormal, =
div.yiv1946153965msonormal
	{mso-style-name:yiv1946153965msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.yiv1946153965msochpdefault, li.yiv1946153965msochpdefault, =
div.yiv1946153965msochpdefault
	{mso-style-name:yiv1946153965msochpdefault;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.yiv1946153965msonormal1, li.yiv1946153965msonormal1, =
div.yiv1946153965msonormal1
	{mso-style-name:yiv1946153965msonormal1;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.yiv1946153965msochpdefault1, li.yiv1946153965msochpdefault1, =
div.yiv1946153965msochpdefault1
	{mso-style-name:yiv1946153965msochpdefault1;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.yiv1946153965msohyperlink
	{mso-style-name:yiv1946153965msohyperlink;}
span.yiv1946153965msohyperlinkfollowed
	{mso-style-name:yiv1946153965msohyperlinkfollowed;}
span.yiv1946153965msohyperlink1
	{mso-style-name:yiv1946153965msohyperlink1;}
span.yiv1946153965msohyperlinkfollowed1
	{mso-style-name:yiv1946153965msohyperlinkfollowed1;}
span.yiv1946153965emailstyle171
	{mso-style-name:yiv1946153965emailstyle171;}
span.yiv1946153965emailstyle27
	{mso-style-name:yiv1946153965emailstyle27;}
p.yiv1946153965msonormal2, li.yiv1946153965msonormal2, =
div.yiv1946153965msonormal2
	{mso-style-name:yiv1946153965msonormal2;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"New","serif";}
span.yiv1946153965msohyperlink2
	{mso-style-name:yiv1946153965msohyperlink2;
	color:blue;
	text-decoration:underline;}
span.yiv1946153965msohyperlinkfollowed2
	{mso-style-name:yiv1946153965msohyperlinkfollowed2;
	color:purple;
	text-decoration:underline;}
p.yiv1946153965msonormal3, li.yiv1946153965msonormal3, =
div.yiv1946153965msonormal3
	{mso-style-name:yiv1946153965msonormal3;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"New","serif";}
p.yiv1946153965msochpdefault2, li.yiv1946153965msochpdefault2, =
div.yiv1946153965msochpdefault2
	{mso-style-name:yiv1946153965msochpdefault2;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"New","serif";}
p.yiv1946153965msonormal11, li.yiv1946153965msonormal11, =
div.yiv1946153965msonormal11
	{mso-style-name:yiv1946153965msonormal11;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.yiv1946153965msohyperlink11
	{mso-style-name:yiv1946153965msohyperlink11;
	color:blue;
	text-decoration:underline;}
span.yiv1946153965msohyperlinkfollowed11
	{mso-style-name:yiv1946153965msohyperlinkfollowed11;
	color:purple;
	text-decoration:underline;}
span.yiv1946153965emailstyle1711
	{mso-style-name:yiv1946153965emailstyle1711;
	color:#1F497D;}
p.yiv1946153965msochpdefault11, li.yiv1946153965msochpdefault11, =
div.yiv1946153965msochpdefault11
	{mso-style-name:yiv1946153965msochpdefault11;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:10.0pt;
	font-family:"New","serif";}
span.yiv1946153965emailstyle271
	{mso-style-name:yiv1946153965emailstyle271;
	color:#1F497D;}
span.EmailStyle38
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;}
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
color:#1F497D'>I think you can use Toaster for that which has a web =
interface
you can select packages/receipes<o:p></o:p></span></p>

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

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt =
0in 0in 0in'>

<p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> Ugesh =
Reddy
[mailto:kumar.ugesh003@yahoo.com] <br>
<b>Sent:</b> Friday, May 18, 2018 11:15 AM<br>
<b>To:</b> chandrasekhar@evolute.in; 'Yocto-mailing-list'<br>
<b>Subject:</b> RE: [yocto] Enabling the recipe from =
menuconfig<o:p></o:p></span></p>

</div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'>The similar kind is =
required
for my custom layer. So that I could enable the receipt from the menu =
config<o:p></o:p></p>

<div id=3D"ymail_android_signature">

<p class=3DMsoNormal><a
href=3D"https://overview.mail.yahoo.com/mobile/?.src=3DAndroid">Sent =
from Yahoo
Mail on Android</a><o:p></o:p></p>

</div>

<blockquote =
style=3D'margin-left:0in;margin-right:0in;margin-bottom:15.0pt'>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<div>

<div>

<p class=3DMsoNormal><span =
style=3D'font-family:"Arial","sans-serif";color:#6D00F6'>On
Fri, 18 May 2018 at 9:44 a.m., chandrasekhar<o:p></o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span =
style=3D'font-family:"Arial","sans-serif";color:#6D00F6'>&lt;chandrasekha=
r@evolute.in&gt;
wrote:<o:p></o:p></span></p>

</div>

</div>

<div style=3D'border:none;border-left:solid #6D00F6 1.0pt;padding:0in =
0in 0in 15.0pt;
margin-top:7.5pt'>

<div id=3Dyiv1946153965>

<div>

<div>

<p class=3Dyiv1946153965msonormal><span style=3D'font-size:11.0pt'>you =
want to see
in kernel menuconfig??</span><o:p></o:p></p>

<p class=3Dyiv1946153965msonormal><span =
style=3D'font-size:11.0pt'>&nbsp;</span><o:p></o:p></p>

<div id=3Dyiv1946153965yqt05922>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt =
0in 0in 0in'>

<p class=3Dyiv1946153965msonormal><b><span =
style=3D'font-size:10.0pt'>From:</span></b><span
style=3D'font-size:10.0pt'> yocto-bounces@yoctoproject.org
[mailto:yocto-bounces@yoctoproject.org] <b>On Behalf Of </b>Ugesh =
Reddy<br>
<b>Sent:</b> Friday, May 18, 2018 7:52 AM<br>
<b>To:</b> 'Yocto-mailing-list'; chandrasekhar<br>
<b>Subject:</b> Re: [yocto] Enabling the recipe from =
menuconfig</span><o:p></o:p></p>

</div>

</div>

<p class=3Dyiv1946153965msonormal>&nbsp;<o:p></o:p></p>

<div>

<div>

<p class=3Dyiv1946153965msonormal><span =
style=3D'font-size:10.0pt'>Hi,</span><o:p></o:p></p>

</div>

<div>

<p class=3Dyiv1946153965msonormal><span =
style=3D'font-size:10.0pt'>Thanks for the
response,</span><o:p></o:p></p>

</div>

<div>

<p class=3Dyiv1946153965msonormal>&nbsp;<o:p></o:p></p>

</div>

<div>

<p class=3Dyiv1946153965msonormal><span =
style=3D'font-size:10.0pt'>&nbsp;This will
add the recipe as a part of image but I want&nbsp;to build and add the =
recipe
when it has been selected from the menuconfig.</span><o:p></o:p></p>

</div>

<div>

<p class=3Dyiv1946153965msonormal><span style=3D'font-size:10.0pt'>How =
to make
visible&nbsp;the recipe in menuconfig?</span><o:p></o:p></p>

</div>

<div id=3D"yiv1946153965yahoo_quoted_7582411903">

<div>

<div>

<p class=3Dyiv1946153965msonormal><span style=3D'font-size:10.0pt'>On =
Thursday, 17
May, 2018, 9:32:15 AM IST, chandrasekhar =
&lt;chandrasekhar@evolute.in&gt;
wrote: </span><o:p></o:p></p>

</div>

<div>

<p class=3Dyiv1946153965msonormal><span =
style=3D'font-size:10.0pt'>&nbsp;</span><o:p></o:p></p>

</div>

<div>

<p class=3Dyiv1946153965msonormal><span =
style=3D'font-size:10.0pt'>&nbsp;</span><o:p></o:p></p>

</div>

<div>

<div id=3Dyiv1946153965>

<div>

<div>

<p class=3Dyiv1946153965msonormal3><span style=3D'font-size:11.0pt'>Hi =
</span><o:p></o:p></p>

<p class=3Dyiv1946153965msonormal3><span style=3D'font-size:11.0pt'>You =
can use </span><o:p></o:p></p>

<p class=3Dyiv1946153965msonormal3><span =
style=3D'font-size:11.0pt'>IMAGE_INSTALL
+=3D &quot;Package Name/Recipes name&quot;</span><o:p></o:p></p>

<p class=3Dyiv1946153965msonormal3><span =
style=3D'font-size:11.0pt'>&nbsp;</span><o:p></o:p></p>

<p class=3Dyiv1946153965msonormal3><span =
style=3D'font-size:11.0pt'>Regards,</span><o:p></o:p></p>

<p class=3Dyiv1946153965msonormal3><span =
style=3D'font-size:11.0pt'>Chandrasekhar</span><o:p></o:p></p>

<p class=3Dyiv1946153965msonormal3><span =
style=3D'font-size:11.0pt'>&nbsp;</span><o:p></o:p></p>

<div id=3Dyiv1946153965yqt99373>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt =
0in 0in 0in'>

<p class=3Dyiv1946153965msonormal3><b><span =
style=3D'font-size:10.0pt'>From:</span></b><span
style=3D'font-size:10.0pt'> yocto-bounces@yoctoproject.org
[mailto:yocto-bounces@yoctoproject.org] <b>On Behalf Of </b>Ugesh =
Reddy<br>
<b>Sent:</b> Wednesday, May 16, 2018 9:57 PM<br>
<b>To:</b> Yocto-mailing-list<br>
<b>Subject:</b> [yocto] Enabling the recipe from =
menuconfig</span><o:p></o:p></p>

</div>

</div>

<p class=3Dyiv1946153965msonormal3><span =
style=3D'font-size:10.0pt'>&nbsp;</span><o:p></o:p></p>

<div>

<div>

<p class=3Dyiv1946153965msonormal3><span =
style=3D'font-size:10.0pt'>Hello Team,</span><o:p></o:p></p>

</div>

<div>

<p class=3Dyiv1946153965msonormal3><span =
style=3D'font-size:10.0pt'>&nbsp;</span><o:p></o:p></p>

</div>

<div>

<p class=3Dyiv1946153965msonormal3><span =
style=3D'font-size:10.0pt'>&nbsp;I have a
list of recipes in my custom layer. The recipes in this&nbsp;layer shall =
be
enabled/selected through the menuconfig, once it is enabled then it =
shall be
the part of image. is it possible to achieve&nbsp;it ? do we have any
references?&nbsp;</span><o:p></o:p></p>

</div>

<div>

<p class=3Dyiv1946153965msonormal3><span =
style=3D'font-size:10.0pt'>&nbsp;</span><o:p></o:p></p>

</div>

<div>

<p class=3Dyiv1946153965msonormal3><span =
style=3D'font-size:10.0pt'>Regards,</span><o:p></o:p></p>

</div>

<div>

<p class=3Dyiv1946153965msonormal3><span =
style=3D'font-size:10.0pt'>Ugesh</span><o:p></o:p></p>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</blockquote>

</div>

</body>

</html>

------=_NextPart_000_001E_01D3EE9D.00B3B5D0--
