Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 921C2E00A9C; Mon,  2 Oct 2017 08:03:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F149E006CA
	for <yocto@yoctoproject.org>; Mon,  2 Oct 2017 08:03:20 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 2C427861B2;
	Mon,  2 Oct 2017 15:03:19 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 6tFhslujUFCF; Mon,  2 Oct 2017 15:03:10 +0000 (UTC)
Received: from [10.102.54.18] (unknown [94.197.121.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 7F2CB860DC;
	Mon,  2 Oct 2017 15:03:10 +0000 (UTC)
Mime-Version: 1.0 (1.0)
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
X-Mailer: iPhone Mail (15A372)
In-Reply-To: <51BE6D71ED8CFC4BA05434EB06711F5DD295DF2E@UKCENMBX04.oxinst.com>
Date: Mon, 2 Oct 2017 16:03:02 +0100
Message-Id: <AC542F9E-FECD-4F59-B5E7-11D441C4F962@dynamicdevices.co.uk>
References: <51BE6D71ED8CFC4BA05434EB06711F5DD295DF2E@UKCENMBX04.oxinst.com>
To: MUGRIDGE Robin <Robin.Mugridge@oxinst.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: mono 5.0.1.1 TypeLoadException
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
X-List-Received-Date: Mon, 02 Oct 2017 15:03:22 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-CE0C25F2-D4EE-4839-812E-2CA5DE58D004
Content-Transfer-Encoding: 7bit

--Apple-Mail-CE0C25F2-D4EE-4839-812E-2CA5DE58D004
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Robin,

If you supply a test case I=E2=80=99ll take a look.

Regards,

Alex

> On 2 Oct 2017, at 15:02, MUGRIDGE Robin <Robin.Mugridge@oxinst.com> wrote:=

>=20
> Hi,
> =20
> I am using mono with Krogoth.  The current version of mono we are building=
 with is 4.2.2.30.
> =20
> I am trying to move mono forward to 5.0.1.1 to avoid an issue in the HttpL=
istener class, but now get a TypeLoadException which I assume is a missing a=
ssembly or a build configuration error, but I=E2=80=99m struggling to work o=
ut what=E2=80=99s wrong=E2=80=A6
> =20
> System.TypeLoadException: Could not load type of field 'System.Net.HttpLis=
tener:tlsSettings' (9) due to: Could not resolve type with token 01000034 (f=
rom typeref, class/assembly Mono.Security.Inteace.MonoTlsSettings, Mono.Secu=
rity, Version=3D4.0.0.0, Culture=3Dneutral, PublicKeyToken=3D0738eb9f132ed75=
6) assembly:Mono.Security, Version=3D4.0.0.0, Culture=3Dneutral, PublicKeyTo=
ken=3D0738eb9f132ed756 typMono.Security.Interface.MonoTlsSettings member:<no=
ne>
> =20
> Has anyone else come across this and know what the root cause is?
> =20
> Thanks,
> =20
> Robin
> =20
> =20
> =20
>=20
>=20
> __________________________________________________________________________=
_
> This e-mail is confidential and is for the addressee only.   Please refer t=
o=20
> www.oxinst.com/email-statement for regulatory information.
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--Apple-Mail-CE0C25F2-D4EE-4839-812E-2CA5DE58D004
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div></div><div>Hi Robin,</div><div><br></d=
iv><div>If you supply a test case I=E2=80=99ll take a look.</div><div><br></=
div><div>Regards,</div><div><br></div><div>Alex</div><div><br>On 2 Oct 2017,=
 at 15:02, MUGRIDGE Robin &lt;<a href=3D"mailto:Robin.Mugridge@oxinst.com">R=
obin.Mugridge@oxinst.com</a>&gt; wrote:<br><br></div><blockquote type=3D"cit=
e"><div>

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:EN-US;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:EN-US;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using mono with Krogoth.&nbsp; The current versi=
on of mono we are building with is 4.2.2.30.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to move mono forward to 5.0.1.1 to avoid a=
n issue in the HttpListener class, but now get a TypeLoadException which I a=
ssume is a missing assembly or a build configuration error, but I=E2=80=99m s=
truggling to work out what=E2=80=99s wrong=E2=80=A6<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Cou=
rier New&quot;">System.TypeLoadException: Could not load type of field 'Syst=
em.Net.HttpListener:tlsSettings' (9) due to: Could not resolve type with tok=
en 01000034 (from typeref, class/assembly Mono.Security.Inteace.MonoTlsSetti=
ngs,
 Mono.Security, Version=3D4.0.0.0, Culture=3Dneutral, PublicKeyToken=3D0738e=
b9f132ed756) assembly:Mono.Security, Version=3D4.0.0.0, Culture=3Dneutral, P=
ublicKeyToken=3D0738eb9f132ed756 typMono.Security.Interface.MonoTlsSettings m=
ember:&lt;none&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Has anyone else come across this and know what the ro=
ot cause is?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Robin<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br><br>
___________________________________________________________________________<=
br>This e-mail is confidential and is for the addressee only.&nbsp;&nbsp; Pl=
ease refer to <br><a href=3D"http://www.oxinst.com/email-statement">www.oxin=
st.com/email-statement</a> for regulatory information.=20


</div></blockquote><blockquote type=3D"cite"><div><span>-- </span><br><span>=
_______________________________________________</span><br><span>yocto mailin=
g list</span><br><span><a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a></span><br><span><a href=3D"https://lists.yoctoproject.org/li=
stinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a></span><br></=
div></blockquote></body></html>=

--Apple-Mail-CE0C25F2-D4EE-4839-812E-2CA5DE58D004--
