Return-Path: <pcjegan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 051CDE0090E; Thu, 22 Jan 2015 22:38:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pcjegan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f41.google.com (mail-wg0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26B5EE00782
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 22:38:41 -0800 (PST)
Received: by mail-wg0-f41.google.com with SMTP id a1so5734174wgh.0
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 22:38:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ANmx18ISdbdVWmpQRD3WsCLLx2a2KilCp74hceBpbNY=;
	b=qmpGfsB8VsJF8AezbZunnGHpk0WtYyyLWJw/uMIVvAtZLN5h7sR8M2N9pnItHiwq3U
	faHPdx7slEBcxDsNI1szGXKzbWdqLNbJa61TazoIFv6XsTW372KST0ZDNPc+g81gOSNh
	N/TgYnzmS3RiP5WNsIGJRbRgV9uLZcfEFI30Xo/PB+1A1PcSP2qbBHnlq3OiVn3CLa9i
	6Lm5rVmEmcH0HVdf4nwuf8GgAgdngHCmoolC3M5eoolSWY3+Qu+P4eB5+zQgbsesB9h+
	gOSOTOmPvRzNUTvmd3V1Y6PKFddmOsWpr2Ic64PgTQu21aCQpz+pNLz1F+yIYlibfYrK
	OTLA==
X-Received: by 10.194.237.202 with SMTP id ve10mr10893299wjc.36.1421995120355; 
	Thu, 22 Jan 2015 22:38:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.180.86.35 with HTTP; Thu, 22 Jan 2015 22:38:20 -0800 (PST)
In-Reply-To: <9BA84827B30CBE4996725F98F7DC9123428FB401@SMExchange01.siebmeyer.org>
References: <9BA84827B30CBE4996725F98F7DC9123428FB241@SMExchange01.siebmeyer.org>
	<CY1PR0301MB11947FC2B060F6E507B3539793360@CY1PR0301MB1194.namprd03.prod.outlook.com>
	<9BA84827B30CBE4996725F98F7DC9123428FB401@SMExchange01.siebmeyer.org>
From: Jegan Chandru <pcjegan@gmail.com>
Date: Fri, 23 Jan 2015 12:08:20 +0530
Message-ID: <CAAA4K6LtR+G7G5sbByg+ZKE3+e_Kb2T-HBOdkAOrMp5t24PzPA@mail.gmail.com>
To: =?UTF-8?Q?H=C3=A4nel=2DBaas=2C_Alexander?=
	<alexander.haenel-baas@sieb-meyer.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"ting.liu@freescale.com" <ting.liu@freescale.com>
Subject: Re: mount.nfs -> how i include nfs-utils
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
X-List-Received-Date: Fri, 23 Jan 2015 06:38:51 -0000
Content-Type: multipart/alternative; boundary=089e01493f06057072050d4c0a58

--089e01493f06057072050d4c0a58
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

IMAGE_INSTALL_append =3D "nfs-util-client"  in local.conf is what you
are looking for. You need to bitbake the image again.

So if some packages are not available in rootfs by default, you could
follow this method.

Check here for your quick reference,

https://wiki.yoctoproject.org/wiki/FAQ

=E2=80=8BPlease read here in detail,

http://www.yoctoproject.org/docs/1.7.1/dev-manual/dev-manual.html#usingpoky=
-extend-customimage

=E2=80=8B-=E2=80=8B
JC=E2=80=8B


On Fri, Jan 23, 2015 at 11:50 AM, H=C3=A4nel-Baas, Alexander <
alexander.haenel-baas@sieb-meyer.de> wrote:

>  Hi
>
> Yes i know that.
>
>
>
> BUT this file was not copied to the rootfs during  the do_rootfs process.
>
> It is not include in the root_fs.
>
> But it was already compiled.
>
>
>
> Alexander
>
>
>
> *Von:* ting.liu@freescale.com [mailto:ting.liu@freescale.com]
> *Gesendet:* Freitag, 23. Januar 2015 03:02
> *An:* H=C3=A4nel-Baas, Alexander; yocto@yoctoproject.org
> *Betreff:* RE: mount.nfs -> how i include nfs-utils
>
>
>
> mount.nfs is packaged in nfs-utils-client.
>
>
>
> *From:* yocto-bounces@yoctoproject.org [
> mailto:yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org>] *=
On
> Behalf Of *H?nel-Baas, Alexander
> *Sent:* Thursday, January 22, 2015 5:38 PM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] mount.nfs -> how i include nfs-utils
>
>
>
> Hi
>
>
>
> In terms of my question =E2=80=9Ehow i include nfs-utils=E2=80=9C i saw t=
hat the nfs-utils
> was compiled correctly.
>
> But there was no mount.nfs in /sbin on the target or in the rootfs image.
>
>
>
> What is the step to get this files in the do_rootfs process?
>
>
>
> With best regards,
>
> Alexander
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
JCP

--089e01493f06057072050d4c0a58
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre style=3D"white-space:pre-wrap;color:rgb(0,0,0)"><div =
class=3D"gmail_default" style=3D"font-family:&#39;trebuchet ms&#39;,sans-se=
rif;display:inline">IMAGE_INSTALL_append =3D &quot;nfs-util-client&quot;  i=
n local.conf is what you are looking for. You need to bitbake the image aga=
in.</div><br></pre><pre style=3D"white-space:pre-wrap;color:rgb(0,0,0)"><di=
v class=3D"gmail_default" style=3D"font-family:&#39;trebuchet ms&#39;,sans-=
serif;display:inline">So if some packages are not available in rootfs by de=
fault, you could follow this method. </div></pre><pre style=3D"white-space:=
pre-wrap;color:rgb(0,0,0)"><div class=3D"gmail_default" style=3D"font-famil=
y:&#39;trebuchet ms&#39;,sans-serif;display:inline">Check here for your qui=
ck reference,</div></pre><pre style><div class=3D"gmail_default" style=3D"d=
isplay:inline"><font color=3D"#000000" face=3D"trebuchet ms, sans-serif"><s=
pan style=3D"white-space:pre-wrap"><a href=3D"https://wiki.yoctoproject.org=
/wiki/FAQ">https://wiki.yoctoproject.org/wiki/FAQ</a><br></span></font></di=
v></pre><pre style><div class=3D"gmail_default" style=3D"font-family:&#39;t=
rebuchet ms&#39;,sans-serif;display:inline">=E2=80=8BPlease read here in de=
tail,</div></pre><pre style><div class=3D"gmail_default" style=3D"font-fami=
ly:&#39;trebuchet ms&#39;,sans-serif;display:inline"><a href=3D"http://www.=
yoctoproject.org/docs/1.7.1/dev-manual/dev-manual.html#usingpoky-extend-cus=
tomimage">http://www.yoctoproject.org/docs/1.7.1/dev-manual/dev-manual.html=
#usingpoky-extend-customimage</a></div></pre><pre style><span style=3D"font=
-family:&#39;trebuchet ms&#39;,sans-serif"><div class=3D"gmail_default" sty=
le=3D"font-family:&#39;trebuchet ms&#39;,sans-serif;display:inline">=E2=80=
=8B-=E2=80=8B</div>JC=E2=80=8B</span><br></pre></div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">On Fri, Jan 23, 2015 at 11:50 AM, H=C3=
=A4nel-Baas, Alexander <span dir=3D"ltr">&lt;<a href=3D"mailto:alexander.ha=
enel-baas@sieb-meyer.de" target=3D"_blank">alexander.haenel-baas@sieb-meyer=
.de</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"DE" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1f497d">Hi<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1f497d">Yes i k=
now that.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1f497d"><u></u>=
=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1f497d">BUT thi=
s file was not copied to the rootfs during =C2=A0the do_rootfs process.<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1f497d">It is n=
ot include in the root_fs.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1f497d">But it =
was already compiled.
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1f497d"><u></u>=
=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1f497d">Alexand=
er<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<div>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">Von:</span></b><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> <a href=
=3D"mailto:ting.liu@freescale.com" target=3D"_blank">ting.liu@freescale.com=
</a> [mailto:<a href=3D"mailto:ting.liu@freescale.com" target=3D"_blank">ti=
ng.liu@freescale.com</a>]
<br>
<b>Gesendet:</b> Freitag, 23. Januar 2015 03:02<br>
<b>An:</b> H=C3=A4nel-Baas, Alexander; <a href=3D"mailto:yocto@yoctoproject=
.org" target=3D"_blank">yocto@yoctoproject.org</a><br>
<b>Betreff:</b> RE: mount.nfs -&gt; how i include nfs-utils<u></u><u></u></=
span></p>
</div>
</div><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1f497d">mount.n=
fs is packaged in nfs-utils-client.</span><span lang=3D"EN-US"><u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1f497d">=C2=A0<=
/span><span lang=3D"EN-US"><u></u><u></u></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span =
lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&qu=
ot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-b=
ounces@yoctoproject.org</a> [<a href=3D"mailto:yocto-bounces@yoctoproject.o=
rg" target=3D"_blank">mailto:yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>H?nel-Baas, Alexander<br>
<b>Sent:</b> Thursday, January 22, 2015 5:38 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] mount.nfs -&gt; how i include nfs-utils</span><span=
 lang=3D"EN-US"><u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p>
<p class=3D"MsoNormal">Hi<span lang=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal">=C2=A0<span lang=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">In terms of my question =E2=80=
=9Ehow i include nfs-utils=E2=80=9C i saw that the nfs-utils was compiled c=
orrectly.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">But there was no mount.nfs in /=
sbin on the target or in the rootfs image.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">What is the step to get this fi=
les in the do_rootfs process?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p>
<p class=3D"MsoNormal">With best regards,<span lang=3D"EN-US"><u></u><u></u=
></span></p>
<p class=3D"MsoNormal">Alexander<span lang=3D"EN-US"><u></u><u></u></span><=
/p>
<p class=3D"MsoNormal">=C2=A0<span lang=3D"EN-US"><u></u><u></u></span></p>
</div>
</div></div></div>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature">JCP</div>
</div>

--089e01493f06057072050d4c0a58--
