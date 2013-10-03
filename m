Return-Path: <amittomer25@gmail.com>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0BF4E0169F
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2013 05:23:27 -0700 (PDT)
Received: by mail-we0-f172.google.com with SMTP id w61so2647853wes.31
	for <yocto@yoctoproject.org>; Thu, 03 Oct 2013 05:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Wp3NIUR69Rt2Cp5Ncm3REEvGNHzhO0eyYnHOwuLqXwA=;
	b=m403YakrIvt9Nk3foAeN6TvJ5+mj+ZRe1pCJkbDxuvVZmyd0khGqfVoQtotT9Lxgi0
	3eCJPK0vU5pcIaiw7DFS40ZDdlgG5WFIaf4IBlc8peqqwBSHDzABWCCRgXH1dHPZjugE
	+FhoqccfCSYyYdeyjXEBeNyfjyC9a7HViisQ45SmyNnix1Y8Ha1hXe1C5Byr6GLCGkZu
	r6xXAUuNSmOwSaf2Xc08dPO2DFEFacvricti5Q6pQwWZALH1tuaNye7r9ZY7hd1auNCt
	FbGLHCbDYb9Clupig5fGSLPsqgKp3HljXmtL1gfp4wA3wDO91Rvn88spizZNL/oxZ4+J
	NjYw==
MIME-Version: 1.0
X-Received: by 10.180.149.179 with SMTP id ub19mr2205077wib.43.1380803006225; 
	Thu, 03 Oct 2013 05:23:26 -0700 (PDT)
Received: by 10.227.196.7 with HTTP; Thu, 3 Oct 2013 05:23:26 -0700 (PDT)
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153B898C345@pluto.melinkcorp.local>
References: <CABHD4K8q9q3Gb4B1E35G8qk+Bp=RLVW7ZhngNYvW=0ZV_v=RKA@mail.gmail.com>
	<CABHD4K8ggfe+MVzUDuK0dNs82=9dYT-iCyxGTOKNrLm8En2wGQ@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE40153B898C345@pluto.melinkcorp.local>
Date: Thu, 3 Oct 2013 17:53:26 +0530
Message-ID: <CABHD4K-_9E3qN9exOPkdOoGzEjgskHE6EMNvTkNndbAGC5dcAA@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: OpenSSH pre login banner
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
X-List-Received-Date: Thu, 03 Oct 2013 12:23:29 -0000
Content-Type: multipart/alternative; boundary=001a11c38dc2b0e23904e7d54072

--001a11c38dc2b0e23904e7d54072
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Brayan

Thanks for your help

The way I modify .bbapend file is below

PRINC =3D "4"
SRC_URI =3D "file://banner"
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/openssh-6.1p1:"
do_install_append() {

Install -m 755 ${WORKDIR}/banner ${D}${sysconfdir}/ssh
}



But it gives me

Below problem

WARNING:
/tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/openssh/6.1p1-r3/openssh-=
6.1p1/LICENCE
could not be copied for some reason. It may not exist. WARN for now.

And my build process is really got slow and sometimes I am getting the
error also

What could be the reason for above??







On Thu, Oct 3, 2013 at 5:49 PM, Bryan Evenson <bevenson@melinkcorp.com>wrot=
e:

> Amit,****
>
> ** **
>
> From your message, I=92m assuming you have a bbappend file for openssh.
> Following the example in section of 5.1.4 of the Mega Manual (located at
> http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#usi=
ng-bbappend-files)
> and from personal experience, put the following in your bbappend file:***=
*
>
> ** **
>
> FILESEXTRAPATHS_prepend :=3D " ${THISDIR}: "****
>
> SRC_URI +=3D =93 file://banner =94****
>
> FILES_${PN} +=3D =93 /etc/ssh/banner =94****
>
> ** **
>
> do_install_append() {****
>
>                 install =96d ${D}${sysconfdir}/ssh****
>
>                 install =96m 0644 ${WORKDIR}/banner
> ${D}${sysconfdir/ssh/banner****
>
> }****
>
> PRINC :=3D "${@int(PRINC) + 1}"****
>
> ** **
>
> then place your banner file and sshd_config in the same directory as your
> bbappend.  When openssh gets built, Bitbake will find your sshd_config
> first and use and install that file instead of the one from the main
> layer.  The recipe also tells it how to handle the new banner file that i=
s
> not part of the original recipe; you do not need to put these rules in
> place for sshd_config because that is already part of the original recipe=
.
> Then in the future every time you make a change to the openssh package in
> your layer, increment the PRINC so your package management tools will see
> it as an upgrade.  For example, if you change the contents of the banner
> file, then change the =93+ 1=94 to =93+ 2=94.****
>
> ** **
>
> -Bryan****
>
> ** **
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Amit Tomer
> *Sent:* Thursday, October 03, 2013 7:05 AM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] Fwd: OpenSSH pre login banner****
>
> ** **
>
> ** **
>
> ---------- Forwarded message ----------
> From: *Amit Tomer* <amittomer25@gmail.com>
> Date: Thu, Oct 3, 2013 at 1:50 PM
> Subject: OpenSSH pre login banner
> To: "yocto-request@yoctoproject.org" <yocto-request@yoctoproject.org>
>
> ****
>
> I am new to OpenEmbedded Yocto and have a requirement where OpenSSH pre
> login banner****
>
> should come when do ssh from target board****
>
> ** **
>
> Now I know I have to create a simple .txt file(banner) and put my banner
> in to it and add the following to sshd_config****
>
> ** **
>
> Banner /etc/ssh/banner ****
>
> ** **
>
> But now  wanted to know where should I keep my banner file in yocto so
> that Yocto build infrastructure will pack banner file  to /etc/ssh/banner
> into final image.****
>
> ** **
>
> I do have receipes for openssh in meta-xyz/recipes-connectivity/openssh
>  folder****
>
> ** **
>
> Thanks ****
>
> Amit ****
>
>  ****
>
> ** **
>
> ** **
>
> ** **
>

--001a11c38dc2b0e23904e7d54072
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Brayan<div><br></div><div style>Thanks for your help</d=
iv><div style><br></div><div style>The way I modify .bbapend file is below<=
/div><div style><br></div><div style><div>PRINC =3D &quot;4&quot;</div><div=
>
SRC_URI =3D &quot;file://banner&quot;</div><div>FILESEXTRAPATHS_prepend :=
=3D &quot;${THISDIR}/openssh-6.1p1:&quot;</div><div>do_install_append() {</=
div><div><br></div><div>Install -m 755 ${WORKDIR}/banner ${D}${sysconfdir}/=
ssh</div>
<div>}</div><div><br></div><div><br></div><div><br></div><div style>But it =
gives me=A0</div><div style><br></div><div style>Below problem</div><div st=
yle><br></div><div style><div>WARNING: /tmp/work/cortexa15hf-vfp-neon-poky-=
linux-gnueabi/openssh/6.1p1-r3/openssh-6.1p1/LICENCE could not be copied fo=
r some reason. It may not exist. WARN for now.</div>
<div><br></div><div style>And my build process is really got slow and somet=
imes I am getting the error also</div><div style><br></div><div style>What =
could be the reason for above??</div><div><br></div><div><br></div><div>
<br></div></div><div style><br></div><div style><br></div></div></div><div =
class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, Oct 3, 201=
3 at 5:49 PM, Bryan Evenson <span dir=3D"ltr">&lt;<a href=3D"mailto:bevenso=
n@melinkcorp.com" target=3D"_blank">bevenson@melinkcorp.com</a>&gt;</span> =
wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div lang=3D"EN-US" link=3D"blue" vlink=3D"p=
urple"><div><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Amit,<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">From your message, I=
=92m assuming you have a bbappend file for openssh.=A0 Following the exampl=
e in section of 5.1.4 of the Mega Manual (located at <a href=3D"http://www.=
yoctoproject.org/docs/current/mega-manual/mega-manual.html#using-bbappend-f=
iles" target=3D"_blank">http://www.yoctoproject.org/docs/current/mega-manua=
l/mega-manual.html#using-bbappend-files</a>) and from personal experience, =
put the following in your bbappend file:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p><p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f4=
97d">FILESEXTRAPATHS_prepend :=3D &quot; ${THISDIR}: &quot;<u></u><u></u></=
span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d=
">SRC_URI +=3D =93 file://banner =94<u></u><u></u></span></p><p class=3D"Ms=
oNormal" style=3D"text-indent:.5in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">FILES_${PN} +=3D =93 /etc/ssh/banner =94<u></u><=
u></u></span></p><p class=3D"MsoNormal" style=3D"text-indent:.5in"><span st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&qu=
ot;;color:#1f497d"><u></u>=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d=
">do_install_append() {<u></u><u></u></span></p><p class=3D"MsoNormal" styl=
e=3D"text-indent:.5in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 in=
stall =96d ${D}${sysconfdir}/ssh<u></u><u></u></span></p><p class=3D"MsoNor=
mal" style=3D"text-indent:.5in"><span style=3D"font-size:11.0pt;font-family=
:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 install =96m 0644 ${WORKDIR}/banner ${D}${sy=
sconfdir/ssh/banner<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d=
">}<u></u><u></u></span></p><p class=3D"MsoNormal" style=3D"text-indent:.5i=
n"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d">PRINC :=3D &quot;${@int(PRINC) + 1}&quot;<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">then place your banner=
 file and sshd_config in the same directory as your bbappend.=A0 When opens=
sh gets built, Bitbake will find your sshd_config first and use and install=
 that file instead of the one from the main layer.=A0 The recipe also tells=
 it how to handle the new banner file that is not part of the original reci=
pe; you do not need to put these rules in place for sshd_config because tha=
t is already part of the original recipe.=A0 Then in the future every time =
you make a change to the openssh package in your layer, increment the PRINC=
 so your package management tools will see it as an upgrade.=A0 For example=
, if you change the contents of the banner file, then change the =93+ 1=94 =
to =93+ 2=94.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">-Bryan<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p><div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0=
in 4.0pt">
<div><div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt=
 0in 0in 0in"><p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&qu=
ot;"> <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">y=
octo-bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@y=
octoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>] <b>O=
n Behalf Of </b>Amit Tomer<br>
<b>Sent:</b> Thursday, October 03, 2013 7:05 AM<br><b>To:</b> <a href=3D"ma=
ilto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><b=
r><b>Subject:</b> [yocto] Fwd: OpenSSH pre login banner<u></u><u></u></span=
></p>
</div></div><div><div class=3D"h5"><p class=3D"MsoNormal"><u></u>=A0<u></u>=
</p><div><p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><u></u>=A0<u=
></u></p><div><p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">-------=
--- Forwarded message ----------<br>
From: <b>Amit Tomer</b> &lt;<a href=3D"mailto:amittomer25@gmail.com" target=
=3D"_blank">amittomer25@gmail.com</a>&gt;<br>Date: Thu, Oct 3, 2013 at 1:50=
 PM<br>Subject: OpenSSH pre login banner<br>To: &quot;<a href=3D"mailto:yoc=
to-request@yoctoproject.org" target=3D"_blank">yocto-request@yoctoproject.o=
rg</a>&quot; &lt;<a href=3D"mailto:yocto-request@yoctoproject.org" target=
=3D"_blank">yocto-request@yoctoproject.org</a>&gt;<br>
<br><u></u><u></u></p><div><p class=3D"MsoNormal">I am new to OpenEmbedded =
Yocto and have a requirement where=A0OpenSSH pre login banner<u></u><u></u>=
</p><div><p class=3D"MsoNormal">should come when do ssh from target board<u=
></u><u></u></p>
</div><div><p class=3D"MsoNormal"><u></u>=A0<u></u></p></div><div><p class=
=3D"MsoNormal">Now I know I have to create a simple .txt file(banner) and p=
ut my banner in to it and add the following to=A0sshd_config<u></u><u></u><=
/p></div>
<div><p class=3D"MsoNormal"><u></u>=A0<u></u></p></div><div><p class=3D"Mso=
Normal">Banner /etc/ssh/banner=A0<u></u><u></u></p></div><div><p class=3D"M=
soNormal"><u></u>=A0<u></u></p></div><div><p class=3D"MsoNormal">But now =
=A0wanted to know where should I keep my banner file in yocto so that Yocto=
 build infrastructure will pack banner file =A0to /etc/ssh/banner into fina=
l image.<u></u><u></u></p>
</div><div><p class=3D"MsoNormal"><u></u>=A0<u></u></p></div><div><p class=
=3D"MsoNormal">I do have receipes for openssh in meta-xyz/recipes-connectiv=
ity/openssh =A0folder<u></u><u></u></p></div><div><p class=3D"MsoNormal"><u=
></u>=A0<u></u></p>
</div><div><p class=3D"MsoNormal">Thanks=A0<u></u><u></u></p></div><div><p =
class=3D"MsoNormal"><span style=3D"color:#888888">Amit=A0<u></u><u></u></sp=
an></p></div><div><p class=3D"MsoNormal"><span style=3D"color:#888888">=A0<=
u></u><u></u></span></p>
</div><div><p class=3D"MsoNormal"><span style=3D"color:#888888"><u></u>=A0<=
u></u></span></p></div><div><p class=3D"MsoNormal"><span style=3D"color:#88=
8888"><u></u>=A0<u></u></span></p></div></div></div><p class=3D"MsoNormal">=
<u></u>=A0<u></u></p>
</div></div></div></div></div></div></blockquote></div><br></div>

--001a11c38dc2b0e23904e7d54072--
