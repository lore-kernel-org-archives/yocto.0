Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58144E0093B; Fri, 16 Mar 2018 08:58:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.150.235 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.150.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9850E00848
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 08:58:44 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx27.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Fri, 16 Mar 2018 15:58:41 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Fri, 16 Mar 2018 08:58:40 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Fri, 16 Mar 2018 08:58:40 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] How to get mysqy/mariadb to start on powerup.
Thread-Index: AQHTvJmRjybrgAvccUyN6MZA1cayV6PSO8aA//+OKnaAATjiEA==
Date: Fri, 16 Mar 2018 15:58:40 +0000
Message-ID: <e323d1d04c544a93a562c54ebdf23fde@sakuraus.com>
References: <454710ed7f6d42279136acc70c35cf74@sakuraus.com>,
	<CAMKF1sp6eeDj8Ny_6G9qiy-uW8spcm+cNrSH-az4+7Z2MpPXbQ@mail.gmail.com>
	<937e0a406a4443b0813052bcc5c0a006@sakuraus.com>
In-Reply-To: <937e0a406a4443b0813052bcc5c0a006@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.3]
MIME-Version: 1.0
X-BESS-ID: 1521215921-637137-5848-41552-1
X-BESS-VER: 2018.3-r1803090017
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.191121
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in 
	message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to get mysqy/mariadb to start on powerup.
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
X-List-Received-Date: Fri, 16 Mar 2018 15:58:46 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_e323d1d04c544a93a562c54ebdf23fdesakurauscom_"

--_000_e323d1d04c544a93a562c54ebdf23fdesakurauscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Greg Wilson-Lindberg
> Sent: Thursday, March 15, 2018 02:16 PM
> To: Khem Raj <raj.khem@gmail.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] How to get mysqy/mariadb to start on powerup.
>

> > From: Khem Raj <raj.khem@gmail.com<mailto:raj.khem@gmail.com>>
> > Sent: Thursday, March 15, 2018 1:54 PM
> > To: Greg Wilson-Lindberg
> > Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
> > Subject: Re: [yocto] How to get mysqy/mariadb to start on powerup.
> >
> > > On Thu, Mar 15, 2018 at 1:38 PM, Greg Wilson-Lindberg
> > <GWilson@sakuraus.com<mailto:GWilson@sakuraus.com>> wrote:
> > > I'm building an RPi3 system that is going to use mysql/mariadb. I've =
got
> > > everything installed, but mysqld is not starting. install_db.service =
does
> > > run on startup, but the mysqld.service file never gets triggered.
> > >
> > >
> > > Is there something that I'm missing to get it to run? I've search onl=
ine,
> > > but can't find anything that pertains to yocto.
> > >
> >
> > poke on the system with systemctl/journalctl to see whats going on
>
> journalctl -u mysqld.service says no entries
> systemctl status mysqld.service shows:
>    Loaded: loaded (/lib/systemd/system/mysqld.service; disabled; vendor p=
reset: enabled)
>    Active: inactive (dead)
>
> I've rebooted the system a couple of times to see if install_db needed to=
 be run before mysql would run, no luck.
>
It's seems that maybe I need to add a bit about my understanding of the yoc=
to system. I was assuming that if I included mysql in the build, that it wo=
uld be started when the system powered up. If mysql is not normally started=
 automatically that I can do what is necessary to start it, I just thought =
that I shouldn't need to do anything.

Greg

--_000_e323d1d04c544a93a562c54ebdf23fdesakurauscom_
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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">&gt; From:</span></b><span style=3D"font-size:11=
.0pt;font-family:&quot;Calibri&quot;,sans-serif"> Greg Wilson-Lindberg
<br>
<b>&gt; Sent:</b> Thursday, March 15, 2018 02:16 PM<br>
<b>&gt; To:</b> Khem Raj &lt;raj.khem@gmail.com&gt;<br>
<b>&gt; Cc:</b> yocto@yoctoproject.org<br>
<b>&gt; Subject:</b> Re: [yocto] How to get mysqy/mariadb to start on power=
up.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black">&gt; </span><o:p></o:p><=
/p>
<div id=3D"divtagdefaultwrapper">
<p><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-=
serif;color:black">&gt;
</span></b><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quo=
t;,sans-serif;color:black">&gt;&nbsp;From:</span></b><span style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"> Khem Raj=
 &lt;</span><a href=3D"mailto:raj.khem@gmail.com"><span style=3D"font-size:=
11.0pt;font-family:&quot;Calibri&quot;,sans-serif">raj.khem@gmail.com</span=
></a><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-s=
erif;color:black">&gt;</span><span style=3D"font-family:&quot;Calibri&quot;=
,sans-serif;color:black"><o:p></o:p></span></p>
<div id=3D"divtagdefaultwrapper">
<div>
<div>
<div id=3D"x_divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:black">&gt;
</span></b><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quo=
t;,sans-serif;color:black">&gt;&nbsp;Sent:</span></b><span style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"> Thursday=
, March 15, 2018 1:54 PM<br>
</span><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,s=
ans-serif;color:black">&gt;
</span></b><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quo=
t;,sans-serif;color:black">&gt;&nbsp;To:</span></b><span style=3D"font-size=
:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"> Greg Wilso=
n-Lindberg<br>
</span><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,s=
ans-serif;color:black">&gt;
</span></b><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quo=
t;,sans-serif;color:black">&gt;&nbsp;Cc:</span></b><span style=3D"font-size=
:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">
</span><a href=3D"mailto:yocto@yoctoproject.org"><span style=3D"font-size:1=
1.0pt;font-family:&quot;Calibri&quot;,sans-serif">yocto@yoctoproject.org</s=
pan></a><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,san=
s-serif;color:black"><br>
</span><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,s=
ans-serif;color:black">&gt;
</span></b><b><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quo=
t;,sans-serif;color:black">&gt;&nbsp;Subject:</span></b><span style=3D"font=
-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"> Re: [=
yocto] How to get mysqy/mariadb to start on powerup.</span><span style=3D"f=
ont-family:&quot;Calibri&quot;,sans-serif;color:black">
<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:black">&gt;
</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k">&gt;&nbsp;&nbsp;<o:p></o:p></span></p>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:black">&gt;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;&nbsp;&gt;&nbsp;On Thu, Mar 15, 2018 at 1:38 PM, Gr=
eg Wilson-Lindberg<br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;&nbsp;&lt;</span><a href=3D"mailto:GWilson@sakuraus=
.com"><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-=
serif">GWilson@sakuraus.com</span></a><span style=3D"font-size:10.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:black">&gt;
 wrote:<br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;&nbsp;&gt; I'm building an RPi3 system that is goin=
g to use mysql/mariadb. I've got<br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;&nbsp;&gt; everything installed, but mysqld is not =
starting. install_db.service does<br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;&nbsp;&gt; run on startup, but the mysqld.service f=
ile never gets triggered.<br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;&nbsp;&gt;<br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;&nbsp;&gt;<br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;&nbsp;&gt; Is there something that I'm missing to g=
et it to run? I've search online,<br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;&nbsp;&gt; but can't find anything that pertains to=
 yocto.<br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;&nbsp;&gt;<br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;<br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&gt;&nbsp;poke on the system with systemctl/journalctl =
to see whats going on<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:black">&gt;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:black">&gt;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">journalctl -u mysqld.service says no entries<o:p></o:p>=
</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:black">&gt;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">systemctl status&nbsp;mysqld.service shows:<o:p></o:p><=
/span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:black">&gt;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&nbsp; &nbsp;Loaded: loaded (/lib/systemd/system/mysqld=
.service; disabled; vendor preset: enabled)<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:black">&gt;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">&nbsp; &nbsp;Active: inactive (dead)<o:p></o:p></span><=
/p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:black">&gt;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:black">&gt;
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:black">I've rebooted the system a couple of times to see if in=
stall_db needed to be run before mysql would run, no luck.</span><span styl=
e=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:blac=
k"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">&gt;<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">It's seems that maybe I need to add a bit=
 about my understanding of the yocto system. I was assuming that if I inclu=
ded mysql in the build, that it would be started
 when the system powered up. If mysql is not normally started automatically=
 that I can do what is necessary to start it, I just thought that I shouldn=
't need to do anything.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Greg<o:p></o:p></span></p>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_e323d1d04c544a93a562c54ebdf23fdesakurauscom_--
