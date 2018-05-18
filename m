Return-Path: <chandrasekhar@evolute.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56021E009CA; Thu, 17 May 2018 21:21:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [202.137.236.83 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Thu, 17 May 2018 21:21:09 PDT
Received: from rediffmail.com (pro236-83.mxout.rediffmailpro.com
	[202.137.236.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8435E00942
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 21:21:09 -0700 (PDT)
X-REDIFF-Delivered-Remotely-To: yocto@yoctoproject.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rediffmailpro.com;
	s=epro; t=1526616863;
	bh=8BtGaIgBIXIwbLx1M2+TTXA4bxyviqRRgH3pJoyx0UA=;
	h=MIME-Version:From:Date:Message-ID:Subject:To;
	b=azI4IT+zQ/7g/dcyxjgzaxYtc92MmAFS2l9o4UHQOqRn/XrxLGTlj1DdOTSYgOK/+
	amFImzhnGdDMrGyHRBxUFkEPPbHv79sJYhV06wdRE2VdljgaLI81CMtv10K7zNUlTs
	Ys/Bsh+kSaCa6ifOfswnLN5rHVE2KUkTz6jxdn5g=
Received: (qmail 10954 invoked from network); 18 May 2018 04:14:23 -0000
x-m-msg: asd54ad564ad7aa6sd5as6d5; a6da7d6asas6dasd77; 5dad65ad5sd;
X-OUT-VDRT-SpamState: 0\LEGIT
X-OUT-VDRT-SpamScore: -100
X-OUT-VDRT-SpamCause: gggruggvucftvghtrhhoucdtuddrgedthedrfedvgdekudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvfhfjgfufffkgggtofhtsegrtdhgpedvtdejnecuhfhrohhmpedftghhrghnughrrghsvghkhhgrrhdfuceotghhrghnughrrghsvghkhhgrrhesvghvohhluhhtvgdrihhnqeenucfrrghrrghmpehmohguvgepshhmthhpohhuthenucevlhhushhtvghrufhiiigvpedt
X-Dedup-Identifier: 1526616863_10931_10693_pro-236-161
Received: from unknown (HELO chandrasekhar)
	(chandrasekhar@evolute.in@180.151.37.180)
	by mailserver with SMTP; 18 May 2018 04:14:23 -0000
From: "chandrasekhar" <chandrasekhar@evolute.in>
To: "'Ugesh Reddy'" <kumar.ugesh003@yahoo.com>,
	"'Yocto-mailing-list'" <yocto@yoctoproject.org>
References: <1621704137.2131896.1526488025606.ref@mail.yahoo.com>	<1621704137.2131896.1526488025606@mail.yahoo.com>	<000c01d3ed93$cc662ce0$653286a0$@in>
	<1610363301.2651115.1526610116510@mail.yahoo.com>
In-Reply-To: <1610363301.2651115.1526610116510@mail.yahoo.com>
Date: Fri, 18 May 2018 09:44:06 +0530
Message-ID: <000901d3ee5e$aab1ec80$0015c580$@in>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdPuTw6uitJSNDHkRPeSU9Ixo7gB7AAD4yaQ
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
X-List-Received-Date: Fri, 18 May 2018 04:21:12 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_000A_01D3EE8C.C46A2880"
Content-Language: en-us

------=_NextPart_000_000A_01D3EE8C.C46A2880
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

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


------=_NextPart_000_000A_01D3EE8C.C46A2880
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
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
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
p.yiv3901952822msonormal, li.yiv3901952822msonormal, =
div.yiv3901952822msonormal
	{mso-style-name:yiv3901952822msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.yiv3901952822msochpdefault, li.yiv3901952822msochpdefault, =
div.yiv3901952822msochpdefault
	{mso-style-name:yiv3901952822msochpdefault;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.yiv3901952822msohyperlink
	{mso-style-name:yiv3901952822msohyperlink;}
span.yiv3901952822msohyperlinkfollowed
	{mso-style-name:yiv3901952822msohyperlinkfollowed;}
span.yiv3901952822emailstyle17
	{mso-style-name:yiv3901952822emailstyle17;}
p.yiv3901952822msonormal1, li.yiv3901952822msonormal1, =
div.yiv3901952822msonormal1
	{mso-style-name:yiv3901952822msonormal1;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"New","serif";}
span.yiv3901952822msohyperlink1
	{mso-style-name:yiv3901952822msohyperlink1;
	color:blue;
	text-decoration:underline;}
span.yiv3901952822msohyperlinkfollowed1
	{mso-style-name:yiv3901952822msohyperlinkfollowed1;
	color:purple;
	text-decoration:underline;}
span.yiv3901952822emailstyle171
	{mso-style-name:yiv3901952822emailstyle171;
	color:#1F497D;}
p.yiv3901952822msochpdefault1, li.yiv3901952822msochpdefault1, =
div.yiv3901952822msochpdefault1
	{mso-style-name:yiv3901952822msochpdefault1;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:10.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle27
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
color:#1F497D'>you want to see in kernel =
menuconfig??<o:p></o:p></span></p>

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
<b>Sent:</b> Friday, May 18, 2018 7:52 AM<br>
<b>To:</b> 'Yocto-mailing-list'; chandrasekhar<br>
<b>Subject:</b> Re: [yocto] Enabling the recipe from =
menuconfig<o:p></o:p></span></p>

</div>

</div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<div>

<div>

<p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif"'>Hi,</span=
><span
style=3D'font-family:"Helvetica","sans-serif"'><o:p></o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif"'>Thanks
for the response,</span><span =
style=3D'font-family:"Helvetica","sans-serif"'><o:p></o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span =
style=3D'font-family:"Helvetica","sans-serif"'><o:p>&nbsp;</o:p></span></=
p>

</div>

<div>

<p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif"'>&nbsp;Thi=
s
will add the recipe as a part of image but I want&nbsp;to build and add =
the
recipe when it has been selected from the menuconfig.</span><span
style=3D'font-family:"Helvetica","sans-serif"'><o:p></o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif"'>How
to make visible&nbsp;the recipe in menuconfig?</span><span =
style=3D'font-family:
"Helvetica","sans-serif"'><o:p></o:p></span></p>

</div>

<div id=3D"yahoo_quoted_7582411903">

<div>

<div>

<p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif";
color:#26282A'>On Thursday, 17 May, 2018, 9:32:15 AM IST, chandrasekhar
&lt;chandrasekhar@evolute.in&gt; wrote: <o:p></o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif";
color:#26282A'><o:p>&nbsp;</o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif";
color:#26282A'><o:p>&nbsp;</o:p></span></p>

</div>

<div>

<div id=3Dyiv3901952822>

<div>

<div>

<p class=3Dyiv3901952822msonormal><span =
style=3D'font-size:11.0pt;font-family:"Helvetica","sans-serif";
color:#26282A'>Hi </span><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif";
color:#26282A'><o:p></o:p></span></p>

<p class=3Dyiv3901952822msonormal><span =
style=3D'font-size:11.0pt;font-family:"Helvetica","sans-serif";
color:#26282A'>You can use </span><span =
style=3D'font-size:10.0pt;font-family:
"Helvetica","sans-serif";color:#26282A'><o:p></o:p></span></p>

<p class=3Dyiv3901952822msonormal><span =
style=3D'font-size:11.0pt;font-family:"Helvetica","sans-serif";
color:#26282A'>IMAGE_INSTALL +=3D &quot;Package Name/Recipes =
name&quot;</span><span
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif";color:#262=
82A'><o:p></o:p></span></p>

<p class=3Dyiv3901952822msonormal><span =
style=3D'font-size:11.0pt;font-family:"Helvetica","sans-serif";
color:#26282A'>&nbsp;</span><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif";
color:#26282A'><o:p></o:p></span></p>

<p class=3Dyiv3901952822msonormal><span =
style=3D'font-size:11.0pt;font-family:"Helvetica","sans-serif";
color:#26282A'>Regards,</span><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif";
color:#26282A'><o:p></o:p></span></p>

<p class=3Dyiv3901952822msonormal><span =
style=3D'font-size:11.0pt;font-family:"Helvetica","sans-serif";
color:#26282A'>Chandrasekhar</span><span =
style=3D'font-size:10.0pt;font-family:
"Helvetica","sans-serif";color:#26282A'><o:p></o:p></span></p>

<p class=3Dyiv3901952822msonormal><span =
style=3D'font-size:11.0pt;font-family:"Helvetica","sans-serif";
color:#26282A'>&nbsp;</span><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif";
color:#26282A'><o:p></o:p></span></p>

<div id=3Dyiv3901952822yqt99373>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt =
0in 0in 0in'>

<p class=3Dyiv3901952822msonormal><b><span =
style=3D'font-size:10.0pt;font-family:
"Helvetica","sans-serif";color:#26282A'>From:</span></b><span =
style=3D'font-size:
10.0pt;font-family:"Helvetica","sans-serif";color:#26282A'>
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] =
<b>On
Behalf Of </b>Ugesh Reddy<br>
<b>Sent:</b> Wednesday, May 16, 2018 9:57 PM<br>
<b>To:</b> Yocto-mailing-list<br>
<b>Subject:</b> [yocto] Enabling the recipe from =
menuconfig<o:p></o:p></span></p>

</div>

</div>

<p class=3Dyiv3901952822msonormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif";
color:#26282A'>&nbsp;<o:p></o:p></span></p>

<div>

<div>

<p class=3Dyiv3901952822msonormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif";
color:#26282A'>Hello Team,<o:p></o:p></span></p>

</div>

<div>

<p class=3Dyiv3901952822msonormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif";
color:#26282A'>&nbsp;<o:p></o:p></span></p>

</div>

<div>

<p class=3Dyiv3901952822msonormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif";
color:#26282A'>&nbsp;I have a list of recipes in my custom layer. The =
recipes
in this&nbsp;layer shall be enabled/selected through the menuconfig, =
once it is
enabled then it shall be the part of image. is it possible to =
achieve&nbsp;it ?
do we have any references?&nbsp;<o:p></o:p></span></p>

</div>

<div>

<p class=3Dyiv3901952822msonormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif";
color:#26282A'>&nbsp;<o:p></o:p></span></p>

</div>

<div>

<p class=3Dyiv3901952822msonormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif";
color:#26282A'>Regards,<o:p></o:p></span></p>

</div>

<div>

<p class=3Dyiv3901952822msonormal><span =
style=3D'font-size:10.0pt;font-family:"Helvetica","sans-serif";
color:#26282A'>Ugesh<o:p></o:p></span></p>

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

</body>

</html>

------=_NextPart_000_000A_01D3EE8C.C46A2880--
