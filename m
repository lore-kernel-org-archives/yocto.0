Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40D0FE00D03; Wed, 22 Nov 2017 07:39:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f171.google.com (mail-pf0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A771E00CF7
	for <yocto@yoctoproject.org>; Wed, 22 Nov 2017 07:39:18 -0800 (PST)
Received: by mail-pf0-f171.google.com with SMTP id 17so12213881pfn.12
	for <yocto@yoctoproject.org>; Wed, 22 Nov 2017 07:39:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3LMhTbeRwbozcSk8B+wgFsX/vRgv/CB2fI9vOIMemv8=;
	b=ip+gUZqoaY+fKohlgvkyCb2VGgnLqCeH2h67oPRTsFUBYPHz3Z6+Y+Wj41xh+rIYFg
	RdtFGlKWnlfuiGj9jSBmzzEdG61DeWlfXBJJxxcQf6VAkcp+WS3EehLcHcpL2FGyuNL+
	RdJFzvd6gmb6DjYR+LUinZsIt83Z/2K7BIpVIDHHr9Dkn1mK4IRDlAzOfcXKeZYkuSeJ
	GIXWxKpeIbwa5zlZAMGEKwyj9CKhCCzjRH4Ljm917x8dT0OxcVE/2QLR6QIXYxJPL4pA
	7oL6kgtfcdrZ/Dw5yPfBmwo3JzM00dM1DVheKaZ9jMO/SZFDJ+rx0OxZ04MZ6iuISAxI
	GhKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3LMhTbeRwbozcSk8B+wgFsX/vRgv/CB2fI9vOIMemv8=;
	b=uaP35P8hze8Ghu9ypt1YEBlazuWhV5zBf3IyeSAIO+cCx0fDB+beSbiWCu8hXZgIwn
	D/SExKcBJmJnS4Jj7F8p8cid4oo/KyvPDWD+yMScbzZEtaeMJkgINMh6OXOAU3ZmOxNC
	8aRJn9ifo6hkYNritK0yQ35tZwgfp74jM3N0H+qVkCCYPl7JhKq4fsiZ99yOJSEGhKdX
	VGxd0XecvYoyykfOxbM6MZZ2mvBfiMYOmz71E03uxujBwInvTILPjFbCQosWQexx8Kty
	nCy/1Szjz+8Ir8QWPT50pNDzUz7PzdhC9yTTp/gttOmBUkVdgcT0UG5TnfoVUKaSypje
	ShyQ==
X-Gm-Message-State: AJaThX5Scc9VZOAQGLunuZLpZYiQTyQI094woiSDXB8ZXCZC8L4Ghl7A
	V+hHTH+T495joCgu0zPcafe/NriyfyVbYG7ouRM=
X-Google-Smtp-Source: AGs4zMbwYDZcP3V+RJpn3qeVSmaUdCtIgMhQ/3k0ELQ6i1U5OEBJEXPOvyq2l625JEcFuo4vHL1tWx79eGZiqPt2p0U=
X-Received: by 10.99.124.24 with SMTP id x24mr20948540pgc.196.1511365158176;
	Wed, 22 Nov 2017 07:39:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.159.15 with HTTP; Wed, 22 Nov 2017 07:38:47 -0800 (PST)
In-Reply-To: <PS1PR02MB16258175EBB61A98BAB3279EFF200@PS1PR02MB1625.apcprd02.prod.outlook.com>
References: <HK2PR02MB1155068EF6C0F2371A6AFA2EFE230@HK2PR02MB1155.apcprd02.prod.outlook.com>
	<CAMKF1so=wsy8mjwWS7nXfBYtODhu1T_oVYN8tJScUvucNJwriw@mail.gmail.com>
	<PS1PR02MB16258175EBB61A98BAB3279EFF200@PS1PR02MB1625.apcprd02.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 22 Nov 2017 07:38:47 -0800
Message-ID: <CAMKF1srAGgQ0Muv6EVRmMRNo71gkuJHcDWZNMS5L0GpBQdgDkw@mail.gmail.com>
To: Viraj Mistry <Viraj.Mistry@einfochips.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DEPENDS python-xml not working in pyro2.3
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
X-List-Received-Date: Wed, 22 Nov 2017 15:39:20 -0000
Content-Type: multipart/alternative; boundary="94eb2c1b4cf6610ce9055e941f3b"

--94eb2c1b4cf6610ce9055e941f3b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Check the configure logs, or post the logs somewhere. You should be looking
at the test which is done to assert presence
of libxml2 and then see why its failing. btw. you might need to
inherit pkgconfig if pkgconfig is used for conguring lib deps.

On Tue, Nov 21, 2017 at 11:37 PM, Viraj Mistry <Viraj.Mistry@einfochips.com=
>
wrote:

> Hi KhemRaj,
>
>
>
> Thank you for update.
>
> Yes we have added libxml2 to DEPENDS but same error.
>
> But what we observe is when we inherit setuptools then it is showing this
> error =E2=80=9C*checking python module: libxml2... no=E2=80=9D*.
>
> But when we don=E2=80=99t inherit setuptools then it will take PC=E2=80=
=99s libxml2
> package. However we want target libxml2 package.
>
> In daisy version we used *python-xml* and it resolve our issue. However
> in pyro we are facing this issue.
>
>
>
> Please help us in this matter.
>
>
>
> *Regards,*
>
> *Viraj Mistry*
>
>
>
> *From:* Khem Raj [mailto:raj.khem@gmail.com]
> *Sent:* Tuesday, November 21, 2017 10:29 PM
> *To:* Amit Gondaliya <amit.gondaliya@einfochips.com>
> *Cc:* yocto@yoctoproject.org; Viraj Mistry <Viraj.Mistry@einfochips.com>
> *Subject:* Re: [yocto] DEPENDS python-xml not working in pyro2.3
>
>
>
> you might need to add libxml2 to DEPENDS
>
>
>
> On Tue, Nov 21, 2017 at 3:26 AM, Amit Gondaliya <
> amit.gondaliya@einfochips.com> wrote:
>
> Hello All,
>
>
>
> I am configuring one package using pyro 2.3 I sticked at below error..
>
>
>
>
>
> *checking python module: libxml2... no configure: error: failed to find
> required module libxml2*
>
>
>
> *checking python module: curses... yes checking python module: libxml2...
> no configure: error: failed to find required module libxml2*
>
>
>
> I have "python-xml" in my "application.bb" file as *DEPENDS* variable, *t=
his
> is working fine yocto daisy1.6, however this is not working with yocto
> pyro2.3*
>
>
>
> *Best Regards,*
> *Amit Gondaliya*
>
> ************************************************************
> ************************************************************
> ************************************* eInfochips Business Disclaimer:
> This e-mail message and all attachments transmitted with it are intended
> solely for the use of the addressee and may contain legally privileged an=
d
> confidential information. If the reader of this message is not the intend=
ed
> recipient, or an employee or agent responsible for delivering this messag=
e
> to the intended recipient, you are hereby notified that any dissemination=
,
> distribution, copying, or other use of this message or its attachments is
> strictly prohibited. If you have received this message in error, please
> notify the sender immediately by replying to this message and please dele=
te
> it from your computer. Any views expressed in this message are those of t=
he
> individual sender unless otherwise stated. Company has taken enough
> precautions to prevent the spread of viruses. However the company accepts
> no liability for any damage caused by any virus transmitted by this email=
.
> ************************************************************
> ************************************************************
> *************************************
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>

--94eb2c1b4cf6610ce9055e941f3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace">Check the configure logs, or post the logs somewhere. You shou=
ld be looking at the test which is done to assert presence</div><div class=
=3D"gmail_default" style=3D"font-family:monospace,monospace">of libxml2 and=
 then see why its failing. btw. you might need to</div><div class=3D"gmail_=
default" style=3D"font-family:monospace,monospace">inherit pkgconfig if pkg=
config is used for conguring lib deps.</div><div class=3D"gmail_extra"><br>=
<div class=3D"gmail_quote">On Tue, Nov 21, 2017 at 11:37 PM, Viraj Mistry <=
span dir=3D"ltr">&lt;<a href=3D"mailto:Viraj.Mistry@einfochips.com" target=
=3D"_blank">Viraj.Mistry@einfochips.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"m_2168551776113504647WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Hi KhemRaj,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Thank you for update.<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Yes we have added libxml2 to DEPENDS =
but same error.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">But what we observe is when we inheri=
t setuptools then it is showing this error =E2=80=9C</span><b><i><span styl=
e=3D"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif;color:#006=
fc9">checking
 python module: libxml2... no=E2=80=9D</span></i></b><span style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">.<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">But when we don=E2=80=99t inherit set=
uptools then it will take PC=E2=80=99s libxml2 package. However we want tar=
get libxml2 package.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">In daisy version we used
<b>python-xml</b> and it resolve our issue. However in pyro we are facing t=
his issue.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Please help us in this matter.
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:#1f497d">Regards,<u></u><u></u></span></b><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Calibri&quot;,sans-serif;color:#1f497d">Viraj Mistry<u></u><u></u></span><=
/b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> Khem Raj [mailto:<a href=3D"ma=
ilto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>]
<br>
<b>Sent:</b> Tuesday, November 21, 2017 10:29 PM<br>
<b>To:</b> Amit Gondaliya &lt;<a href=3D"mailto:amit.gondaliya@einfochips.c=
om" target=3D"_blank">amit.gondaliya@einfochips.com</a><wbr>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a>; Viraj Mistry &lt;<a href=3D"mailto:Viraj.Mistry@ein=
fochips.com" target=3D"_blank">Viraj.Mistry@einfochips.com</a>&gt;<br>
<b>Subject:</b> Re: [yocto] DEPENDS python-xml not working in pyro2.3<u></u=
><u></u></span></p><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
you might need to add libxml2 to DEPENDS<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On Tue, Nov 21, 2017 at 3:26 AM, Amit Gondaliya &lt;=
<a href=3D"mailto:amit.gondaliya@einfochips.com" target=3D"_blank">amit.gon=
daliya@einfochips.com</a><wbr>&gt; wrote:<u></u><u></u></p>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<div>
<div id=3D"m_2168551776113504647m_-5227395159321723476divtagdefaultwrapper"=
>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-ser=
if;color:#006fc9">Hello All,<u></u><u></u></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-ser=
if;color:#006fc9"><u></u>=C2=A0<u></u></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-ser=
if;color:#006fc9">I am configuring one package using pyro 2.3 I sticked at =
below error..<u></u><u></u></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-ser=
if;color:#006fc9"><u></u>=C2=A0<u></u></span></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><i><span style=3D"=
font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif;color:#006fc9">=
checking python module: libxml2...<br>
no<br>
configure: error: failed to find required module libxml2</span></i></b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif;colo=
r:#006fc9"><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><b><i><span style=3D"font-size:11.0pt;font-family:&q=
uot;Verdana&quot;,sans-serif;color:#006fc9">checking python module: curses.=
.. yes<br>
checking python module: libxml2... no<br>
configure: error: failed to find required module libxml2</span></i></b><spa=
n style=3D"font-size:11.0pt;font-family:&quot;Verdana&quot;,sans-serif;colo=
r:#006fc9"><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;color:#006fc9"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;color:#006fc9">I have &quot;python-xml&quot; in my &=
quot;<a href=3D"http://application.bb" target=3D"_blank">application.bb</a>=
&quot; file as
<b>DEPENDS</b> variable, <b><i>this is working fine yocto daisy1.6, however=
 this is not working with yocto pyro2.3</i></b><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;color:#006fc9"><u></u>=C2=A0<u></u></span></p>
</div>
<div id=3D"m_2168551776113504647m_-5227395159321723476Signature">
<div id=3D"m_2168551776113504647m_-5227395159321723476divtagdefaultwrapper"=
>
<table class=3D"m_2168551776113504647MsoNormalTable" border=3D"0" cellspaci=
ng=3D"0" cellpadding=3D"0" style=3D"border-collapse:collapse">
<tbody>
<tr>
<td colspan=3D"2" style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Verdana&quot;,sans-serif;color:#004b76;border:none windowtext 1.0pt;paddin=
g:0in">Best Regards,</span></b><b><span style=3D"font-size:10.5pt;font-fami=
ly:&quot;Calibri&quot;,sans-serif;color:#004b76;border:none windowtext 1.0p=
t;padding:0in"><br>
</span></b><b><span style=3D"font-size:10.0pt;font-family:&quot;Verdana&quo=
t;,sans-serif;color:#004b76;border:none windowtext 1.0pt;padding:0in">Amit =
Gondaliya</span></b><span style=3D"font-size:10.5pt;font-family:&quot;Calib=
ri&quot;,sans-serif;color:#004b76"><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td valign=3D"top" style=3D"padding:0in 0in 0in 0in"></td>
<td valign=3D"top" style=3D"padding:9.75pt 0in 0in 0in"></td>
</tr>
<tr>
<td colspan=3D"2" style=3D"padding:0in 0in 0in 0in"></td>
</tr>
<tr>
<td colspan=3D"2" style=3D"padding:0in 0in 0in 0in"></td>
</tr>
<tr>
<td colspan=3D"2" style=3D"padding:0in 0in 0in 0in"></td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
<p class=3D"MsoNormal">******************************<wbr>*****************=
*************<wbr>******************************<wbr>**********************=
********<wbr>******************************<wbr>******* eInfochips Business=
 Disclaimer: This e-mail message and all attachments transmitted
 with it are intended solely for the use of the addressee and may contain l=
egally privileged and confidential information. If the reader of this messa=
ge is not the intended recipient, or an employee or agent responsible for d=
elivering this message to the intended
 recipient, you are hereby notified that any dissemination, distribution, c=
opying, or other use of this message or its attachments is strictly prohibi=
ted. If you have received this message in error, please notify the sender i=
mmediately by replying to this message
 and please delete it from your computer. Any views expressed in this messa=
ge are those of the individual sender unless otherwise stated. Company has =
taken enough precautions to prevent the spread of viruses. However the comp=
any accepts no liability for any
 damage caused by any virus transmitted by this email. ********************=
**********<wbr>******************************<wbr>*************************=
*****<wbr>******************************<wbr>******************************=
<wbr>*******
<u></u><u></u></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><u></u><u></u></p>
</blockquote>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
</div></div></div>
</div>

</blockquote></div><br></div></div>

--94eb2c1b4cf6610ce9055e941f3b--
