Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 032C5E00DD2; Wed, 15 May 2019 13:53:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [209.222.82.36 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 13pmail.ess.barracuda.com (13pmail.ess.barracuda.com
	[209.222.82.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4866E00D36
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 13:53:27 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1.us-east-2a.ess.aws.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Wed, 15 May 2019 20:53:25 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 15 May 2019 13:53:16 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 15 May 2019 13:53:16 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Rudolf J Streif <rudolf.streif@ibeeto.com>, Yocto list discussion
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] problem adding a user
Thread-Index: AdUKtI8UMCSaJnTQT92qAk6aHgoNcgAxtVKA//+VNhqAAIDUAP//it/KgACHQwD//5XyzoAAeniAgAB1FWA=
Date: Wed, 15 May 2019 20:53:16 +0000
Message-ID: <b38f6ac29beb40c4bb457c09a14cc78d@sakuraus.com>
References: <2086bca8f57442acac5ba11c3d2712f1@sakuraus.com>
	<3d82053c-8db7-15af-34b8-18657749e026@ibeeto.com>
	<59388987f9de418abb8598790a3d3e7f@sakuraus.com>
	<04dbfa63-d5a5-1aff-9d4a-87cbd9f44b5c@ibeeto.com>
	<20cf7cd05ce54a439d05109439572db8@sakuraus.com>
	<2503a68b-2283-cac8-1e5d-11d0885598a7@ibeeto.com>
	<1d6f238b62354df8a92873769755990b@sakuraus.com>
	<fd8f34de-c8e6-c503-a932-9bdf2efdbaed@ibeeto.com>
In-Reply-To: <fd8f34de-c8e6-c503-a932-9bdf2efdbaed@ibeeto.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.3]
MIME-Version: 1.0
X-BESS-ID: 1557953591-893000-22925-40244-2
X-BESS-VER: 2019.3_20190514.1944
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.213344 [from 
	cloudscan26.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: Re: problem adding a user
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
X-List-Received-Date: Wed, 15 May 2019 20:53:30 -0000
X-Groupsio-MsgNum: 45195
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_006_b38f6ac29beb40c4bb457c09a14cc78dsakurauscom_";
	type="multipart/alternative"

--_006_b38f6ac29beb40c4bb457c09a14cc78dsakurauscom_
Content-Type: multipart/alternative;
	boundary="_000_b38f6ac29beb40c4bb457c09a14cc78dsakurauscom_"

--_000_b38f6ac29beb40c4bb457c09a14cc78dsakurauscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thank you very much, that got me back on the right path.
Maybe I'll see you at the Yocto day at the Embedded Linux Conference.
Regards,


Greg Wilson-Lindberg

Principal Firmware Engineer | Sakura Finetek USA, Inc.



1750 W 214th Street | Torrance, CA 90501 | U.S.A.

T: +1 310 783 5075

F: +1 310 618 6902 | E: gwilson@sakuraus.com<mailto:gwilson@sakuraus.com>

www.sakuraus.com<http://www.sakuraus.com>



[cid:image002.png@01D35D7D.179A7510]

[cid:image003.png@01D35D7D.179A7510]


________________________________

Confidentiality Notice: This e-mail transmission may contain confidential o=
r legally privileged information that is intended only for the individual o=
r entity named in the e-mail address. If you are not the intended recipient=
, you are hereby notified that any disclosure, copying, distribution, or re=
liance upon the contents of this e-mail is strictly prohibited. If you have=
 received this e-mail transmission in error, please reply to the sender, so=
 that Sakura Finetek USA, Inc. can arrange for proper delivery, and then pl=
ease delete the message from your inbox. Thank you.



From: Rudolf J Streif [mailto:rudolf.streif@ibeeto.com]
Sent: Wednesday, May 15, 2019 01:30 PM
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>; Yocto list discussion <yoc=
to@yoctoproject.org>
Subject: Re: [yocto] problem adding a user


Instead of



useradd -p `openssl passwd test` sakura



which attempts to add the user and set the password which fails if the user=
 already exists, use



usermod -p `openssl passwd test` sakura



which sets the user's password.



:rjs


On 5/15/19 1:18 PM, Greg Wilson-Lindberg wrote:

Ok, I had been using the useradd class in a couple of other recipes to allo=
w me to copy files to the sakura user directory and another location, but o=
wned by sakura. That seems to have been what was causing the problem.



I had been using the extrausers class in my top level image recipe.

So now how do I get all of this to work together? Do I need to put everythi=
ng that touches the sakura user in the same recipe? It seems that I need to=
 use only one of the useradd or extrausers classes?

Greg
________________________________
From: Rudolf J Streif <rudolf.streif@ibeeto.com><mailto:rudolf.streif@ibeet=
o.com>
Sent: Wednesday, May 15, 2019 12:31 PM
To: Greg Wilson-Lindberg; Yocto list discussion
Subject: Re: [yocto] problem adding a user


The ! for the password in /etc/shadow indicates that the account is disable=
d:

sakura:!:18031:0:99999:7:::



Either there is something wrong with the password generation or it gets dis=
abled by something else. Maybe it's worth trying with a plain image without=
 Boot2Qt or anything else.



:rjs




On 5/15/19 11:46 AM, Greg Wilson-Lindberg wrote:

Hi Rudolf,

1st, yes I inherit extrausers. Attached are the passwd & shadow files.



It shouldn't make any difference, but I'm building this for an RPi3 using t=
he Qt Boot2Qt version of the Yocto environment, distro 2.5.3.


Greg
________________________________
From: Rudolf J Streif <rudolf.streif@ibeeto.com><mailto:rudolf.streif@ibeet=
o.com>
Sent: Wednesday, May 15, 2019 11:26 AM
To: Greg Wilson-Lindberg; Yocto list discussion
Subject: Re: [yocto] problem adding a user


Hi Greg,



> I've also tried both the back-quote and the single-quote, no difference.



Help me to understand this. the back-quotes are the right ones. If you use =
the single ones your password in the /etc/shadow ends up being 'openssl pas=
swd test' (without the quotes), unless the build fails because of a parsing=
 error (I have not tried it). Silly question, you did inherit extrausers cl=
ass?



Can you post your /etc/passwd and /etc/shadow



I am surprised that this does not work with your setup. I have been doing t=
his a gazillion times always with success.



:rjs






On 5/15/19 11:03 AM, Greg Wilson-Lindberg wrote:

Hi Rudolf,

Thanks for the reply, and the information on how openssl works.



I'm trying to create a user with the same group name so the code that I'm u=
sing reduces to:

EXTRA_USERS_PARAMS =3D "\

    useradd -p `openssl passwd test` sakura; \

    usermod -a -G sudo ${SAKURA_USER}; \

    "
I also, as you can see, removed the macros to eliminate as much confusion a=
s possible.



I still can't login in using the password 'test'.



I've also tried both the back-quote and the single-quote, no difference.

Regards,



Greg

________________________________
From: Rudolf J Streif <rudolf.streif@ibeeto.com><mailto:rudolf.streif@ibeet=
o.com>
Sent: Wednesday, May 15, 2019 10:07:47 AM
To: Greg Wilson-Lindberg; Yocto list discussion
Subject: Re: [yocto] problem adding a user

Hi Greg,

Well, I suppose I wrote the book you are referring to...


Using

useradd -p PASSWORD USER

takes the password hash for PASSWORD hence the use of openssl in:

useadd -p `openssl passwd PASSWORD` USER

openssl password creates the password hash using the original crypt hash
algorithm if no other options are specified. e.g.

$ openssl passwd hello
6hEsTksgRkeiI

With this the first two characters of the output is the salt and the
rest is the password hash. If you want openssl to create the same result
again:

$ openssl passwd -salt "6h" hello
6hEsTksgRkeiI

You can use newer algorithms like MD5 based BSD password algorithm 1:

$ openssl passwd -1 hello
$1$4Mu8Fcs.$eIKgPP7RCYrb3lFZjhADA1

$1 : password algorithm 1
$4Mu8Fcs. : salt
$eIKgPP7RCYrb3lFZjhADA1 : password hash


If you log into the system you have to use the clear password. The
system reads the salt, creates the password hash and compares the results.


:rjs


On 5/14/19 5:34 PM, Greg Wilson-Lindberg wrote:
> I'm trying to use the example in "Embedded Linux Systems with the Yocto P=
roject" to add a user to my Yocto build. In the book the sample code:
>
>     useradd -p `openssl passwd ${DEV_PASSWORD}` developer; \
>
> uses openssl to generate the encrypted password string to pass to useradd=
. I have never been able to get this to work. When I run the openssl
> command on the cmd line I get a different value every time, this seems wr=
ong, How can the password code compare against it if every encode
> produces a different value?
>
> I am getting the user added to the system, the home directory shows up an=
d the user is in the passwd and group files. I just can't login to the
> account.
>
> I've obviously got something confused, any help would be appreciated.
>
> Greg Wilson-Lindberg
>

--
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700

--

-----

Rudolf J Streif

CEO/CTO ibeeto

+1.855.442.3396 x700

--

-----

Rudolf J Streif

CEO/CTO ibeeto

+1.855.442.3396 x700

--

-----

Rudolf J Streif

CEO/CTO ibeeto

+1.855.442.3396 x700

--_000_b38f6ac29beb40c4bb457c09a14cc78dsakurauscom_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	color:black;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Arial",sans-serif;
	color:black;
	font-weight:normal;
	font-style:normal;}
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
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Thank you very much, that got me back on =
the right path.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Maybe I'll see you at the Yocto day at th=
e Embedded Linux Conference.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Regards,<o:p></o:p></span></p>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" align=3D"left" width=3D"97%" style=3D"width:97.66%;margin-top:-1.75p=
t;margin-bottom:-1.75pt">
<tbody>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<img width=3D"36" height=3D"7" id=3D"Picture_x0020_1" src=3D"cid:image001.p=
ng@01D50B22.E4566B00" alt=3D"cid:image001.png@01D35D7D.179A7510"><o:p></o:p=
></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<b><span style=3D"font-size:11.0pt;line-height:105%;font-family:&quot;Arial=
&quot;,sans-serif;color:#0089D1">Greg Wilson-Lindberg&nbsp;
<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<b><span style=3D"font-size:11.0pt;line-height:105%;font-family:&quot;Arial=
&quot;,sans-serif;color:#58595B">Principal Firmware Engineer | Sakura Finet=
ek USA, Inc.&nbsp;
<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<b><span style=3D"font-size:10.5pt;line-height:105%;font-family:&quot;Arial=
&quot;,sans-serif;color:#58595B">&nbsp;<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:105%;font-family:&quot;Arial&qu=
ot;,sans-serif;color:#58595B">1750 W 214<sup>th</sup> Street | Torrance, CA=
 90501 | U.S.A.&nbsp;
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<span lang=3D"DE" style=3D"font-size:10.0pt;line-height:105%;font-family:&q=
uot;Arial&quot;,sans-serif;color:#58595B">T: &#43;1 310 783 5075&nbsp;
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<span lang=3D"DE" style=3D"font-size:10.0pt;line-height:105%;font-family:&q=
uot;Arial&quot;,sans-serif;color:#58595B">F: &#43;1 310 618 6902 | E:&nbsp;=
</span><span lang=3D"DE" style=3D"font-size:11.0pt;line-height:105%;font-fa=
mily:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"mailto:gwilson@=
sakuraus.com"><span style=3D"color:#0563C1">gwilson</span><span style=3D"fo=
nt-size:10.0pt;line-height:105%;font-family:&quot;Arial&quot;,sans-serif;co=
lor:#0563C1">@sakuraus.com</span></a></span><span lang=3D"DE" style=3D"font=
-size:10.0pt;line-height:105%;font-family:&quot;Arial&quot;,sans-serif;colo=
r:#58595B">&nbsp;&nbsp;
 &nbsp;&nbsp; <o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<span style=3D"font-size:11.0pt;line-height:105%;font-family:&quot;Calibri&=
quot;,sans-serif;color:black"><a href=3D"http://www.sakuraus.com"><span sty=
le=3D"font-size:10.0pt;line-height:105%;font-family:&quot;Arial&quot;,sans-=
serif;color:#0089D1;text-decoration:none">www.sakuraus.com</span></a></span=
><span style=3D"font-size:10.0pt;line-height:105%;font-family:&quot;Arial&q=
uot;,sans-serif;color:#0089D1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<span style=3D"font-size:9.0pt;line-height:105%;font-family:&quot;Arial&quo=
t;,sans-serif;color:#58595B">&nbsp;<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" align=3D"left" width=3D"100%" style=3D"width:100.0%;margin-bottom:5.=
75pt">
<tbody>
<tr>
<td valign=3D"bottom" style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<img border=3D"0" width=3D"188" height=3D"12" id=3D"Picture_x0020_2" src=3D=
"cid:image002.png@01D50B22.E4566B00" alt=3D"cid:image002.png@01D35D7D.179A7=
510"><o:p></o:p></p>
</td>
<td width=3D"80" valign=3D"bottom" style=3D"width:60.0pt;padding:0in 0in 0i=
n 0in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:105%;mso-element:frame;mso-element-frame-hspace:2.25pt;mso-element-frame-=
vspace:.5pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;m=
so-element-anchor-horizontal:column;mso-height-rule:exactly">
<img border=3D"0" width=3D"66" height=3D"64" id=3D"Picture_x0020_3" src=3D"=
cid:image003.png@01D50B22.E4566B00" alt=3D"cid:image003.png@01D35D7D.179A75=
10"><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-h=
eight:105%;mso-element:frame;mso-element-frame-hspace:2.25pt;mso-element-fr=
ame-vspace:.5pt;mso-element-wrap:around;mso-element-anchor-vertical:paragra=
ph;mso-element-anchor-horizontal:column;mso-height-rule:exactly">
<hr size=3D"2" width=3D"100%" align=3D"center">
</div>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<span style=3D"font-size:7.0pt;line-height:105%;font-family:&quot;Arial&quo=
t;,sans-serif;color:#58595B">Confidentiality Notice: This e-mail transmissi=
on may contain confidential or legally privileged information that is inten=
ded only for the individual or entity named
 in the e-mail address. If you are not the intended recipient, you are here=
by notified that any disclosure, copying, distribution, or reliance upon th=
e contents of this e-mail is strictly prohibited. If you have received this=
 e-mail transmission in error, please
 reply to the sender, so that Sakura Finetek USA, Inc. can arrange for prop=
er delivery, and then please delete the message from your inbox. Thank you.=
</span><span style=3D"font-size:7.0pt;line-height:105%;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#58595B"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:windowtext">From:</span></b><span style=3D"=
font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:windowtex=
t"> Rudolf J Streif [mailto:rudolf.streif@ibeeto.com]
<br>
<b>Sent:</b> Wednesday, May 15, 2019 01:30 PM<br>
<b>To:</b> Greg Wilson-Lindberg &lt;GWilson@sakuraus.com&gt;; Yocto list di=
scussion &lt;yocto@yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] problem adding a user<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p>Instead of<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>useradd -p `openssl passwd test` sakura<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>which attempts to add the user and set the password which fails if the u=
ser already exists, use<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>usermod -p `openssl passwd test` sakura<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>which sets the user's password.<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>:rjs<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On 5/15/19 1:18 PM, Greg Wilson-Lindberg wrote:<o:p>=
</o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div id=3D"divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Ok, I had bee=
n using the useradd class in a couple of other recipes to allow me to copy =
files to the sakura user directory and another location, but owned by sakur=
a. That seems to have been what was causing
 the problem.<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</=
o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">I had been us=
ing the extrausers class in my top&nbsp;level image recipe.<o:p></o:p></spa=
n></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><br>
So now how do I get all of this to work together? Do I need to put everythi=
ng that touches the sakura user in the same recipe? It seems that I need to=
 use only one of the useradd or extrausers classes?<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-f=
amily:&quot;Calibri&quot;,sans-serif">Greg<o:p></o:p></span></p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:&quot;Calibri&quot;,sans-serif">
<hr size=3D"2" width=3D"98%" align=3D"center">
</span></div>
<div id=3D"divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> Rudolf J Streif
<a href=3D"mailto:rudolf.streif@ibeeto.com">&lt;rudolf.streif@ibeeto.com&gt=
;</a><br>
<b>Sent:</b> Wednesday, May 15, 2019 12:31 PM<br>
<b>To:</b> Greg Wilson-Lindberg; Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</span><span style=3D"font=
-family:&quot;Calibri&quot;,sans-serif">
<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">&nbsp;<o:p></o:p></span></p>
</div>
</div>
<div>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">The ! for the=
 password in /etc/shadow indicates that the account is disabled:<o:p></o:p>=
</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">sakura:!:1803=
1:0:99999:7:::<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</=
o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Either there =
is something wrong with the password generation or it gets disabled by some=
thing else. Maybe it's worth trying with a plain image without Boot2Qt or a=
nything else.<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</=
o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">:rjs<o:p></o:=
p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</=
o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</=
o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">On 5/15/19 11:46 AM, Greg Wilson-Lindberg wrote:<o:p></o:p></span></=
p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div id=3D"divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Hi Rudolf,<o:=
p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">1st, yes I in=
herit extrausers. Attached are the passwd &amp; shadow files.<o:p></o:p></s=
pan></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</=
o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">It shouldn't =
make any difference, but I'm building this for an RPi3 using the Qt Boot2Qt=
 version of the Yocto environment, distro 2.5.3.<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-f=
amily:&quot;Calibri&quot;,sans-serif">Greg<o:p></o:p></span></p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:&quot;Calibri&quot;,sans-serif">
<hr size=3D"2" width=3D"98%" align=3D"center">
</span></div>
<div id=3D"divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> Rudolf J Streif
<a href=3D"mailto:rudolf.streif@ibeeto.com">&lt;rudolf.streif@ibeeto.com&gt=
;</a><br>
<b>Sent:</b> Wednesday, May 15, 2019 11:26 AM<br>
<b>To:</b> Greg Wilson-Lindberg; Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</span><span style=3D"font=
-family:&quot;Calibri&quot;,sans-serif">
<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">&nbsp;<o:p></o:p></span></p>
</div>
</div>
<div>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Hi Greg,<o:p>=
</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</=
o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">&gt; I've als=
o tried both the back-quote and the single-quote, no difference.<o:p></o:p>=
</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</=
o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Help me to un=
derstand this. the back-quotes are the right ones. If you use the single on=
es your password in the /etc/shadow ends up being 'openssl passwd test' (wi=
thout the quotes), unless the build fails because
 of a parsing error (I have not tried it). Silly question, you did inherit =
extrausers class?<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</=
o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Can you post =
your /etc/passwd and /etc/shadow<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</=
o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">I am surprise=
d that this does not work with your setup. I have been doing this a gazilli=
on times always with success.<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</=
o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">:rjs<o:p></o:=
p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</=
o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</=
o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</=
o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">On 5/15/19 11:03 AM, Greg Wilson-Lindberg wrote:<o:p></o:p></span></=
p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<div id=3D"x_divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Hi Rudolf,<o:=
p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Thanks for th=
e reply, and the information on how openssl works.<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</=
o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">I'm trying to=
 create a user with the same group name so the code that I'm using reduces =
to:<o:p></o:p></span></p>
<div>
<pre style=3D"background:white">EXTRA_USERS_PARAMS =3D &quot;\<o:p></o:p></=
pre>
<pre style=3D"background:white">&nbsp;&nbsp;&nbsp; useradd -p `openssl pass=
wd test` sakura; \<o:p></o:p></pre>
<pre style=3D"background:white">&nbsp;&nbsp;&nbsp; usermod -a -G sudo ${SAK=
URA_USER}; \<o:p></o:p></pre>
<pre style=3D"background:white">&nbsp;&nbsp;&nbsp; &quot;<o:p></o:p></pre>
</div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">I also, as you can see, removed the macros to eliminate as much conf=
usion as possible.
<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</=
o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">I still can't=
 login in using the&nbsp;password&nbsp;'test'.<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</=
o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">I've also tri=
ed both the back-quote and the single-quote, no difference.<o:p></o:p></spa=
n></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Regards,<o:p>=
</o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>&nbsp;</=
o:p></span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Greg<o:p></o:=
p></span></p>
</div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:&quot;Calibri&quot;,sans-serif">
<hr size=3D"2" width=3D"98%" align=3D"center">
</span></div>
<div id=3D"x_divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> Rudolf J Streif
<a href=3D"mailto:rudolf.streif@ibeeto.com">&lt;rudolf.streif@ibeeto.com&gt=
;</a><br>
<b>Sent:</b> Wednesday, May 15, 2019 10:07:47 AM<br>
<b>To:</b> Greg Wilson-Lindberg; Yocto list discussion<br>
<b>Subject:</b> Re: [yocto] problem adding a user</span><span style=3D"font=
-family:&quot;Calibri&quot;,sans-serif">
<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">&nbsp;<o:p></o:p></span></p>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Calibri&quot;,sans-serif">Hi Greg,<br>
<br>
Well, I suppose I wrote the book you are referring to...<br>
<br>
<br>
Using<br>
<br>
useradd -p PASSWORD USER<br>
<br>
takes the password hash for PASSWORD hence the use of openssl in:<br>
<br>
useadd -p `openssl passwd PASSWORD` USER<br>
<br>
openssl password creates the password hash using the original crypt hash <b=
r>
algorithm if no other options are specified. e.g.<br>
<br>
$ openssl passwd hello<br>
6hEsTksgRkeiI<br>
<br>
With this the first two characters of the output is the salt and the <br>
rest is the password hash. If you want openssl to create the same result <b=
r>
again:<br>
<br>
$ openssl passwd -salt &quot;6h&quot; hello<br>
6hEsTksgRkeiI<br>
<br>
You can use newer algorithms like MD5 based BSD password algorithm 1:<br>
<br>
$ openssl passwd -1 hello<br>
$1$4Mu8Fcs.$eIKgPP7RCYrb3lFZjhADA1<br>
<br>
$1 : password algorithm 1<br>
$4Mu8Fcs. : salt<br>
$eIKgPP7RCYrb3lFZjhADA1 : password hash<br>
<br>
<br>
If you log into the system you have to use the clear password. The <br>
system reads the salt, creates the password hash and compares the results.<=
br>
<br>
<br>
:rjs<br>
<br>
<br>
On 5/14/19 5:34 PM, Greg Wilson-Lindberg wrote:<br>
&gt; I'm trying to use the example in &quot;Embedded Linux Systems with the=
 Yocto Project&quot; to add a user to my Yocto build. In the book the sampl=
e code:<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; useradd -p `openssl passwd ${DEV_PASSWORD}` de=
veloper; \<br>
&gt;<br>
&gt; uses openssl to generate the encrypted password string to pass to user=
add. I have never been able to get this to work. When I run the openssl<br>
&gt; command on the cmd line I get a different value every time, this seems=
 wrong, How can the password code compare against it if every encode<br>
&gt; produces a different value?<br>
&gt;<br>
&gt; I am getting the user added to the system, the home directory shows up=
 and the user is in the passwd and group files. I just can't login to the<b=
r>
&gt; account.<br>
&gt;<br>
&gt; I've obviously got something confused, any help would be appreciated.<=
br>
&gt;<br>
&gt; Greg Wilson-Lindberg<br>
&gt;&nbsp;&nbsp; <br>
<br>
-- <br>
-----<br>
Rudolf J Streif<br>
CEO/CTO ibeeto<br>
&#43;1.855.442.3396 x700<o:p></o:p></span></p>
</div>
</blockquote>
<pre>-- <o:p></o:p></pre>
<pre>-----<o:p></o:p></pre>
<pre>Rudolf J Streif<o:p></o:p></pre>
<pre>CEO/CTO ibeeto<o:p></o:p></pre>
<pre>&#43;1.855.442.3396 x700<o:p></o:p></pre>
</div>
</div>
</div>
</blockquote>
<pre>-- <o:p></o:p></pre>
<pre>-----<o:p></o:p></pre>
<pre>Rudolf J Streif<o:p></o:p></pre>
<pre>CEO/CTO ibeeto<o:p></o:p></pre>
<pre>&#43;1.855.442.3396 x700<o:p></o:p></pre>
</div>
</div>
</div>
</blockquote>
<pre>-- <o:p></o:p></pre>
<pre>-----<o:p></o:p></pre>
<pre>Rudolf J Streif<o:p></o:p></pre>
<pre>CEO/CTO ibeeto<o:p></o:p></pre>
<pre>&#43;1.855.442.3396 x700<o:p></o:p></pre>
</div>
</div>
</body>
</html>

--_000_b38f6ac29beb40c4bb457c09a14cc78dsakurauscom_--

--_006_b38f6ac29beb40c4bb457c09a14cc78dsakurauscom_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=949;
	creation-date="Wed, 15 May 2019 20:53:14 GMT";
	modification-date="Wed, 15 May 2019 20:53:14 GMT"
Content-ID: <image001.png@01D50B22.E4566B00>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAACQAAAAHCAYAAABgOO8AAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTM4IDc5LjE1
OTgyNCwgMjAxNi8wOS8xNC0wMTowOTowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEu
MC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVz
b3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1N
OkRvY3VtZW50SUQ9InhtcC5kaWQ6MzVGQUUxQUI3NTA4MTFFNzkxQjVGODM1RkYyQThFQkQiIHht
cE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MzVGQUUxQUE3NTA4MTFFNzkxQjVGODM1RkYyQThFQkQi
IHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgTWFjaW50b3NoIj4gPHht
cE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MUVBMEU0OEM0Q0YzMTFF
NzkwRTZGNDNENDJEOEY5RTEiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MUVBMEU0OEQ0Q0Yz
MTFFNzkwRTZGNDNENDJEOEY5RTEiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94
OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz5STp/zAAAAJUlEQVR42mK8LW39n2EQASaGQQYG
nYMY////PxpCow6iBAAEGACEIQU6y9MNmAAAAABJRU5ErkJggg==

--_006_b38f6ac29beb40c4bb457c09a14cc78dsakurauscom_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=1916;
	creation-date="Wed, 15 May 2019 20:53:15 GMT";
	modification-date="Wed, 15 May 2019 20:53:15 GMT"
Content-ID: <image002.png@01D50B22.E4566B00>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAALwAAAAMCAYAAADYg9feAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAyhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMDY3IDc5LjE1
Nzc0NywgMjAxNS8wMy8zMC0yMzo0MDo0MiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv
IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS
ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD
cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgKE1hY2ludG9zaCkiIHhtcE1NOklu
c3RhbmNlSUQ9InhtcC5paWQ6MUVBMEU0ODg0Q0YzMTFFNzkwRTZGNDNENDJEOEY5RTEiIHhtcE1N
OkRvY3VtZW50SUQ9InhtcC5kaWQ6MUVBMEU0ODk0Q0YzMTFFNzkwRTZGNDNENDJEOEY5RTEiPiA8
eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpGMjVCRjk3RjRDRjIx
MUU3OTBFNkY0M0Q0MkQ4RjlFMSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpGMjVCRjk4MDRD
RjIxMUU3OTBFNkY0M0Q0MkQ4RjlFMSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8
L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PjV7eI0AAAPqSURBVHja7FnLkZtAEJ1VbQLs
2b6wBweA7/aBDUGEACGgEKQQIAQRAhwcgLnbB83FdxGCPKhe1z7PDgNoWa/sUld1iYH5vH7d09Og
ux8fvqiFZW10a/QR7ZPRxGilrkuuCRdz1l/vjd4tNHc/b/4Oti5h06iPPv36NmvC1RsYGhgNqb0x
qtX1yTXhYs40sC0lfbDvjDbvaFPwynkWEwn4HliNHfXdaEyL9TvzCN3S2APa8iyGFrQ7FRm9xhoy
5kDrnPBcOdqC7QhsPN9pYEyEvieMdZEWjtjCmPeYq7Ac4eLmaPXbYw5l2V4QB0OcScAO8Z/j92Q9
4z4yRzzBn7llv0hNa4l9wUybFO7ZvvfZqCbwrX5+/Lo1ejR6wHWN64L67Pv7KzKolyejHYGtQX6C
rJPSQiECIjPaYkyLbCJzKYyJADjGdYJMVnh2cmBhkzG1Z+cHFGQtYSgcfQXXkC2KMHd4xmOGuKks
Z8bIrjn6bKAxxtucRegngZBj7czBf07z5YRNEWeKMvyYP/s5SsfJF9NaGZUrU21i/9i+99lob7oX
2E0QC4YM99fE+Qs/3BPIBEA1AKxB4GfcF8ApHbk7ODiAAR2RNXSEJugXDgSiTXQI0jT04MhAvuM0
m3gs2rawZLRxZPMOcSNOC6EB5q0RTCX1d3GWWpuypBqWg5wxS6aNCI+ia41nU/y5G+GHcXQzbcoc
vh+zUVGidGHvpTS1fIVMLhj6dmraf/hhRYHB5HCQMIGdddxeIt2MvlzX8u8YhgT4a5Q20cL1aejh
psE1ZxqNZ5w59cR1tLVG8Eouff70zdc6cMy1qbvAxjHsTgxmA9h+aM09vXIEUYRA6RzBFf6FF73A
QWAwsAGGxkc4FR6x04uFMeoRbqSsWdNJpx39pySHYCH+9Sv9GVjX+kKbLrHRh901XtHpElPiUfeU
gbY4WnI6hqXW2mGi1HPkucqRZoYz1vhNLcCCQbBpqz5LrQzeoV9IJcrSm7QZ4aaid42S7qXkpHyA
Mxa2Wc3kfy7mKZ83JdhzsmuuTWqmjeFILIYoXTS9EyjifM9l6T2VAAWc1NDLzhPd144ar3McVUJs
v9CD5yjrrBq5wJiKDHRhe6J1SjxrBsak1surD0Pnueca4+NGjtOW+m8QLFuqfWMHZ5n16ZTfKcoB
/sdKkm6mP11SAbskww1tgDk22ev4bJTN0HqwBxQ7HdYNrfdIbcqZczl09wZ/PN3k/5MTAq65Qmzn
r2gS0CbTn7/emPYD2v1Hjsq0N5zhb3KTf1XOJa0J7IzaFb7ORFQSnWV14+smEySxvpBck2Tq+f+Z
vXr+pzpCeyfZv5ffAgwAvCfP5+7+KRkAAAAASUVORK5CYII=

--_006_b38f6ac29beb40c4bb457c09a14cc78dsakurauscom_
Content-Type: image/png; name="image003.png"
Content-Description: image003.png
Content-Disposition: inline; filename="image003.png"; size=3012;
	creation-date="Wed, 15 May 2019 20:53:15 GMT";
	modification-date="Wed, 15 May 2019 20:53:15 GMT"
Content-ID: <image003.png@01D50B22.E4566B00>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAEIAAABDCAYAAAAoCNNNAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAyhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTM4IDc5LjE1
OTgyNCwgMjAxNi8wOS8xNC0wMTowOTowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEu
MC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVz
b3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1N
OkRvY3VtZW50SUQ9InhtcC5kaWQ6MEY0Q0M1RkE3NTA3MTFFNzkxQjVGODM1RkYyQThFQkQiIHht
cE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MEY0Q0M1Rjk3NTA3MTFFNzkxQjVGODM1RkYyQThFQkQi
IHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgKE1hY2ludG9zaCkiPiA8
eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpGMjVCRjk3RDRDRjIx
MUU3OTBFNkY0M0Q0MkQ4RjlFMSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpGMjVCRjk3RTRD
RjIxMUU3OTBFNkY0M0Q0MkQ4RjlFMSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8
L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PrnG8fYAAAgySURBVHja7FsLlA5VHL8fu2RZ
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

--_006_b38f6ac29beb40c4bb457c09a14cc78dsakurauscom_--
