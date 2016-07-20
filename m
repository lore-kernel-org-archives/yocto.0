Return-Path: <Joerg.Wittenberger@janztec.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2CD3E00DA7; Wed, 20 Jul 2016 04:56:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [178.251.113.40 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 907 seconds by postgrey-1.32 at yocto-www;
	Wed, 20 Jul 2016 04:56:29 PDT
Received: from mx1.mittelstandscloud.de (mx1.mittelstandscloud.de
	[178.251.113.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A425E00D9F
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 04:56:28 -0700 (PDT)
From: =?iso-8859-1?Q?J=F6rg_Wittenberger?= <Joerg.Wittenberger@janztec.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Re: customizing system configuration files in my image
Thread-Index: AdHiefMbVhc/5fUKTCGVGaseoilpyA==
Date: Wed, 20 Jul 2016 11:41:17 +0000
Message-ID: <3713fdcdd74c4147b650120d1dbb88b2@itjeexch02.is.janz.local>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.31.2.40]
X-TM-AS-Product-Ver: SMEX-11.0.0.4179-8.000.1202-22462.006
X-TM-AS-Result: No--21.979000-8.000000-31
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 20 Jul 2016 05:48:19 -0700
Subject: Re: customizing system configuration files in my image
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
X-List-Received-Date: Wed, 20 Jul 2016 11:56:35 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_3713fdcdd74c4147b650120d1dbb88b2itjeexch02isjanzlocal_"

--_000_3713fdcdd74c4147b650120d1dbb88b2itjeexch02isjanzlocal_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

yet another newbie here stumbling around...

I'm not trying to find "any way" to do what I need.  I'm trying to learn ho=
w these thing sould be done in yocto.  Looks to mea s if I'm missing someth=
ing basic.

Zhenhua Lu wrote:

> Usually I do it by adding bbappend of corresponding packages to override =
original files, the interfaces is provided by init-ifupdown, the inittab is=
 provided by sysvinit-inittab.
>
> An example: http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/r=
ecipes-core/init-ifupdown

I failed trying to follow this example.

I  have this samba_4.%.bbappend :
----
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/iris:"

do_install_append() {
    install -m644 iris/smb.conf ${D}${sysconfdir}/samba/smb.conf
}

And in the same directory a subdirectory "iris" which contrains the "smb.co=
nf" I want to install.

Does not work.  Using `bitbake -c devshell samba` I found no copy of my "ir=
is" directory.

Thanks so much.

/J=F6rg


--_000_3713fdcdd74c4147b650120d1dbb88b2itjeexch02isjanzlocal_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">yet another newbie here stumbling around&#8230;<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m not trying to find &#8222;any way&#8220; t=
o do what I need.&nbsp; I&#8217;m trying to learn how these thing sould be =
done in yocto.&nbsp; Looks to mea s if I&#8217;m missing something basic.<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Zhenhua Lu wrote:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt; Usually I do it by adding bbappend of correspon=
ding packages to override original files, the interfaces is provided by ini=
t-ifupdown, the inittab is provided by sysvinit-inittab.<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; <o:p></o:p></p>
<p class=3D"MsoNormal">&gt; An example: <a href=3D"http://git.yoctoproject.=
org/cgit/cgit.cgi/meta-fsl-ppc/tree/recipes-core/init-ifupdown">
http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/recipes-core/in=
it-ifupdown</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I failed trying to follow this example. <o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&nbsp; have this samba_4.%.bbappend :<o:p></o:p></p=
>
<p class=3D"MsoNormal">----<o:p></o:p></p>
<p class=3D"MsoNormal">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/iris:&=
quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">do_install_append() {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp; install -m644 iris/smb.conf ${D}$=
{sysconfdir}/samba/smb.conf<o:p></o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0cm 0cm 1.0pt 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm">}<o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">And in the same directory a subdirectory &#8222;iris=
&#8220; which contrains the &#8222;smb.conf&#8220; I want to install.<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Does not work.&nbsp; Using `bitbake -c devshell samb=
a` I found no copy of my &#8222;iris&#8220; directory.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks so much.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">/J=F6rg<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_3713fdcdd74c4147b650120d1dbb88b2itjeexch02isjanzlocal_--
