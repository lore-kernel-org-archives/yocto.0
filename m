Return-Path: <amittomer25@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE12FE0161C
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2013 07:03:01 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id w62so737569wes.7
	for <yocto@yoctoproject.org>; Thu, 03 Oct 2013 07:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=F4I5llAlmM829bJYlxXpRlpTnt38QybLjxSXlV73pOs=;
	b=lhQts8qC+GGmUIrMoqygYfzNxyUPPoN7D3qFSOxq4bCGFLVTnGEvN648wI6VIuZXdo
	npNJw5DfyS9dSauRFzJ6G1E/FmigvzQ0hw/AYciqFi7ciRDoxaGYAUD8XmM2afCn2Nos
	WHVw2+IqD31and/MOFCS1CXsxPRQPCxHyjhd7oNBmIw3UoZ2NbvJpD/OEe7dq3EmNwsI
	7cFBw2DnfLpEEhdpRaL9/obxNxpyEKhGTGx0PrGW0/iaW7pTrDHqHDpbi4wj8EJ4b0mE
	crgWbwhkzHNfCl4+3p4jCMwmMNG+3aWv7w+WIj//SwTsiTVwQC/XLX5R9UitHIeB0L+e
	VY4Q==
MIME-Version: 1.0
X-Received: by 10.180.149.179 with SMTP id ub19mr2629094wib.43.1380808979921; 
	Thu, 03 Oct 2013 07:02:59 -0700 (PDT)
Received: by 10.227.196.7 with HTTP; Thu, 3 Oct 2013 07:02:59 -0700 (PDT)
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153B898C3AF@pluto.melinkcorp.local>
References: <CABHD4K8q9q3Gb4B1E35G8qk+Bp=RLVW7ZhngNYvW=0ZV_v=RKA@mail.gmail.com>
	<CABHD4K8ggfe+MVzUDuK0dNs82=9dYT-iCyxGTOKNrLm8En2wGQ@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE40153B898C345@pluto.melinkcorp.local>
	<CABHD4K-_9E3qN9exOPkdOoGzEjgskHE6EMNvTkNndbAGC5dcAA@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE40153B898C3AF@pluto.melinkcorp.local>
Date: Thu, 3 Oct 2013 19:32:59 +0530
Message-ID: <CABHD4K-KW7wMrm+ceLyzGMyyuL0nN=KXmexNmq4yt5RD+yW9og@mail.gmail.com>
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
X-List-Received-Date: Thu, 03 Oct 2013 14:03:02 -0000
Content-Type: multipart/alternative; boundary=001a11c38dc2c0445704e7d6a4a1

--001a11c38dc2c0445704e7d6a4a1
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Thanks again Bryan for your kind response

The reason for having the PRINC =3D"4" is becaue when I started modifying
this already existing file
value of PRINC is set 3 ,so for my changes I Incremented it to One.

Change****

SRC_URI =3D =93file://banner=94****

To****

SRC_URI +=3D =93file://banner=93


I am really feeling bit stupid here ,I just in hurry forgot to put + sign

Though I learned a new point


"With your line, you are overriding all the SRC_URI for the entire openssh
recipe and the openssh recipe will only include the banner file ".


Change****

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/openssh-6.1p1:"****

to****

FILESEXTRAPATHS_prepend :=3D "${THISDIR}:"****

**

We already had openssh-6.1p1 folder where our sshd_config file is placed
,So I guess it won't harm

much if I put FILESEXTRAPATHS_prepend :=3D "${THISDIR}/openssh-6.1p1:" with
banner file in openssh-6.1p1 folder


One more point wanted from your end,what is best way to learn Yocto

How can improve my knowledge in Yocto?


Thanks

Amit.






On Thu, Oct 3, 2013 at 7:05 PM, Bryan Evenson <bevenson@melinkcorp.com>wrot=
e:

> Amit,****
>
> ** **
>
> First, I suggest you change****
>
> PRINC =3D =934=94****
>
> to****
>
> PRINC :=3D "${@int(PRINC) + 1}"****
>
> ** **
>
> This way your bbappend will always increment the PR to one more than the
> PR called out by the main recipe.  So if the openssh recipe would get
> updated and increment the PR, you do not have to change your bbappend.***=
*
>
> ** **
>
> Change****
>
> SRC_URI =3D =93file://banner=94****
>
> To****
>
> SRC_URI +=3D =93file://banner=93****
>
> ** **
>
> The +=3D appends your banner file to the SRC_URI for the openssh recipe.
> With your line, you are overriding all the SRC_URI for the entire openssh
> recipe and the openssh recipe will only include the banner file.  I=92ve
> taken to the habit of writing the SRC_URI as follows:****
>
> ** **
>
> SRC_URI +=3D =93 \****
>
> file://banner \****
>
> =93****
>
> just to ensure that words aren=92t joined together when my SRC_URI is
> appended to the existing one.  I don=92t know if this is strictly necessa=
ry,
> but it=92s not a bad habit.****
>
> ** **
>
> Change****
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/openssh-6.1p1:"****
>
> to****
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}:"****
>
> ** **
>
> so Bitbake can find your banner file and sshd_config that you have in the
> same directory as the bbappend.****
>
> ** **
>
> I can=92t remember if you get a warning if Bitbake can=92t find the licen=
se
> file at all or if it fails on each attempt through the filepath.  Since
> your new path is first, it won=92t find LICENCE in your layer since you
> didn=92t copy it.  Once way to quiet this warning would be to copy the
> license file to your directory.****
>
> ** **
>
> -Bryan****
>
> ** **
>
> *From:* Amit Tomer [mailto:amittomer25@gmail.com]
> *Sent:* Thursday, October 03, 2013 8:23 AM
> *To:* Bryan Evenson
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Fwd: OpenSSH pre login banner****
>
> ** **
>
> Hi Brayan****
>
> ** **
>
> Thanks for your help****
>
> ** **
>
> The way I modify .bbapend file is below****
>
> ** **
>
> PRINC =3D "4"****
>
> SRC_URI =3D "file://banner"****
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/openssh-6.1p1:"****
>
> do_install_append() {****
>
> ** **
>
> Install -m 755 ${WORKDIR}/banner ${D}${sysconfdir}/ssh****
>
> }****
>
> ** **
>
> ** **
>
> ** **
>
> But it gives me ****
>
> ** **
>
> Below problem****
>
> ** **
>
> WARNING:
> /tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/openssh/6.1p1-r3/openss=
h-6.1p1/LICENCE
> could not be copied for some reason. It may not exist. WARN for now.****
>
> ** **
>
> And my build process is really got slow and sometimes I am getting the
> error also****
>
> ** **
>
> What could be the reason for above??****
>
> ** **
>
> ** **
>
> ** **
>
> ** **
>
> ** **
>
> ** **
>
> On Thu, Oct 3, 2013 at 5:49 PM, Bryan Evenson <bevenson@melinkcorp.com>
> wrote:****
>
> Amit,****
>
>  ****
>
> From your message, I=92m assuming you have a bbappend file for openssh.
> Following the example in section of 5.1.4 of the Mega Manual (located at
> http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#usi=
ng-bbappend-files)
> and from personal experience, put the following in your bbappend file:***=
*
>
>  ****
>
> FILESEXTRAPATHS_prepend :=3D " ${THISDIR}: "****
>
> SRC_URI +=3D =93 file://banner =94****
>
> FILES_${PN} +=3D =93 /etc/ssh/banner =94****
>
>  ****
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
>  ****
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
>  ****
>
> -Bryan****
>
>  ****
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Amit Tomer
> *Sent:* Thursday, October 03, 2013 7:05 AM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] Fwd: OpenSSH pre login banner****
>
>  ****
>
>  ****
>
> ---------- Forwarded message ----------
> From: *Amit Tomer* <amittomer25@gmail.com>
> Date: Thu, Oct 3, 2013 at 1:50 PM
> Subject: OpenSSH pre login banner
> To: "yocto-request@yoctoproject.org" <yocto-request@yoctoproject.org>****
>
> I am new to OpenEmbedded Yocto and have a requirement where OpenSSH pre
> login banner****
>
> should come when do ssh from target board****
>
>  ****
>
> Now I know I have to create a simple .txt file(banner) and put my banner
> in to it and add the following to sshd_config****
>
>  ****
>
> Banner /etc/ssh/banner ****
>
>  ****
>
> But now  wanted to know where should I keep my banner file in yocto so
> that Yocto build infrastructure will pack banner file  to /etc/ssh/banner
> into final image.****
>
>  ****
>
> I do have receipes for openssh in meta-xyz/recipes-connectivity/openssh
>  folder****
>
>  ****
>
> Thanks ****
>
> Amit ****
>
>  ****
>
>  ****
>
>  ****
>
>  ****
>
> ** **
>

--001a11c38dc2c0445704e7d6a4a1
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks again Bryan for your kind response=A0<div><br></div=
><div style>The reason for having the PRINC =3D&quot;4&quot; is becaue when=
 I started modifying this already existing file</div><div style>value of PR=
INC is set 3 ,so for my changes I Incremented it to One.</div>
<div style><br></div><div style><p class=3D"" style=3D"margin-top:0in;margi=
n-right:0in;margin-bottom:0.0001pt;margin-left:0in;font-size:12pt;font-fami=
ly:&#39;Times New Roman&#39;,serif"><span style=3D"font-size:11pt;font-fami=
ly:Calibri,sans-serif;color:rgb(31,73,125)">Change<u></u><u></u></span></p>
<p class=3D"" style=3D"margin-top:0in;margin-right:0in;margin-bottom:0.0001=
pt;margin-left:0in;font-size:12pt;font-family:&#39;Times New Roman&#39;,ser=
if"><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(=
31,73,125)">SRC_URI =3D =93file://banner=94<u></u><u></u></span></p>
<p class=3D"" style=3D"margin-top:0in;margin-right:0in;margin-bottom:0.0001=
pt;margin-left:0in;font-size:12pt;font-family:&#39;Times New Roman&#39;,ser=
if"><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(=
31,73,125)">To<u></u><u></u></span></p>
<p class=3D"" style=3D"margin-top:0in;margin-right:0in;margin-bottom:0.0001=
pt;margin-left:0in;font-size:12pt;font-family:&#39;Times New Roman&#39;,ser=
if"><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(=
31,73,125)">SRC_URI +=3D =93file://banner=93</span></p>
<p class=3D"" style=3D"margin-top:0in;margin-right:0in;margin-bottom:0.0001=
pt;margin-left:0in;font-size:12pt;font-family:&#39;Times New Roman&#39;,ser=
if"><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(=
31,73,125)"><br>
</span></p><p class=3D"" style=3D"margin-top:0in;margin-right:0in;margin-bo=
ttom:0.0001pt;margin-left:0in;font-size:12pt;font-family:&#39;Times New Rom=
an&#39;,serif"><span style=3D"font-size:11pt;font-family:Calibri,sans-serif=
"><font color=3D"#000000">I am really</font></span><span style=3D"font-size=
:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)"> </span><span st=
yle=3D"font-size:11pt;font-family:Calibri,sans-serif"><font color=3D"#00000=
0">feeling bit stupid here ,I just in hurry forgot to put + sign</font></sp=
an></p>
<p class=3D"" style=3D"margin-top:0in;margin-right:0in;margin-bottom:0.0001=
pt;margin-left:0in;font-size:12pt;font-family:&#39;Times New Roman&#39;,ser=
if"><span style=3D"font-size:11pt;font-family:Calibri,sans-serif"><font col=
or=3D"#000000">Though I learned a new point=A0</font></span></p>
<p class=3D"" style=3D"margin-top:0in;margin-right:0in;margin-bottom:0.0001=
pt;margin-left:0in;font-size:12pt;font-family:&#39;Times New Roman&#39;,ser=
if"><span style=3D"font-size:11pt;font-family:Calibri,sans-serif"><font col=
or=3D"#000000"><br>
</font></span></p><p class=3D"" style=3D"margin-top:0in;margin-right:0in;ma=
rgin-bottom:0.0001pt;margin-left:0in"><span style=3D"color:rgb(31,73,125);f=
ont-family:Calibri,sans-serif;font-size:15px">&quot;With your line, you are=
 overriding all the SRC_URI for the entire openssh recipe and the openssh r=
ecipe will only include the banner file</span>=A0&quot;.<font color=3D"#000=
000" face=3D"Calibri, sans-serif"><span style=3D"font-size:15px"><br>
</span></font></p><p class=3D"" style=3D"margin-top:0in;margin-right:0in;ma=
rgin-bottom:0.0001pt;margin-left:0in"><br></p><p class=3D"" style=3D"margin=
-top:0in;margin-right:0in;margin-bottom:0.0001pt;margin-left:0in"></p><p cl=
ass=3D"" style=3D"margin-top:0in;margin-right:0in;margin-bottom:0.0001pt;ma=
rgin-left:0in;font-size:12pt;font-family:&#39;Times New Roman&#39;,serif">
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)">Change<u></u><u></u></span></p><div class=3D"im" style=3D"font-fami=
ly:arial,sans-serif;font-size:13px"><p class=3D"" style=3D"margin-top:0in;m=
argin-right:0in;margin-bottom:0.0001pt;margin-left:0in;font-size:12pt;font-=
family:&#39;Times New Roman&#39;,serif">
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/openssh-6.1p1:&quot;<=
u></u><u></u></span></p></div><p class=3D"" style=3D"margin-top:0in;margin-=
right:0in;margin-bottom:0.0001pt;margin-left:0in;font-size:12pt;font-family=
:&#39;Times New Roman&#39;,serif">
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)">to<u></u><u></u></span></p><p class=3D"" style=3D"margin-top:0in;ma=
rgin-right:0in;margin-bottom:0.0001pt;margin-left:0in;font-size:12pt;font-f=
amily:&#39;Times New Roman&#39;,serif">
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}:&quot;<u></u><u></u><=
/span></p><p class=3D"" style=3D"margin-top:0in;margin-right:0in;margin-bot=
tom:0.0001pt;margin-left:0in;font-size:12pt;font-family:&#39;Times New Roma=
n&#39;,serif">
<span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,7=
3,125)"><u></u>=A0</span></p><p class=3D"" style=3D"margin-top:0in;margin-r=
ight:0in;margin-bottom:0.0001pt;margin-left:0in"><font color=3D"#000000"><f=
ont face=3D"Calibri, sans-serif"><span style=3D"font-size:15px">We already =
had=A0</span></font><span style=3D"font-family:Calibri,sans-serif;font-size=
:15px">openssh-6.1p1 folder where our sshd_config file is placed ,So I gues=
s it won&#39;t harm</span></font></p>
<p class=3D"" style=3D"margin-top:0in;margin-right:0in;margin-bottom:0.0001=
pt;margin-left:0in"><font color=3D"#000000"><span style=3D"font-family:Cali=
bri,sans-serif;font-size:15px">much if I put=A0</span><span style=3D"font-f=
amily:Calibri,sans-serif;font-size:15px">FILESEXTRAPATHS_prepend :=3D &quot=
;${THISDIR}/openssh-6.1p1:&quot; with banner file in=A0</span><span style=
=3D"font-family:Calibri,sans-serif;font-size:15px">openssh-6.1p1 folder</sp=
an></font></p>
<p class=3D"" style=3D"margin-top:0in;margin-right:0in;margin-bottom:0.0001=
pt;margin-left:0in"><span style=3D"font-family:Calibri,sans-serif;font-size=
:15px"><font color=3D"#000000"><br></font></span></p><p class=3D"" style=3D=
"margin-top:0in;margin-right:0in;margin-bottom:0.0001pt;margin-left:0in">
<font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-si=
ze:15px">One more point wanted from your end,what is best way to learn Yoct=
o</span></font></p><p class=3D"" style=3D"margin-top:0in;margin-right:0in;m=
argin-bottom:0.0001pt;margin-left:0in">
<font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-si=
ze:15px">How can improve my knowledge in Yocto?</span></font></p><p class=
=3D"" style=3D"margin-top:0in;margin-right:0in;margin-bottom:0.0001pt;margi=
n-left:0in">
<span style=3D"font-family:Calibri,sans-serif;font-size:15px"><font color=
=3D"#000000"><br></font></span></p><p class=3D"" style=3D"margin-top:0in;ma=
rgin-right:0in;margin-bottom:0.0001pt;margin-left:0in"><font face=3D"Calibr=
i, sans-serif" color=3D"#000000"><span style=3D"font-size:15px">Thanks=A0</=
span></font></p>
<p class=3D"" style=3D"margin-top:0in;margin-right:0in;margin-bottom:0.0001=
pt;margin-left:0in"><font face=3D"Calibri, sans-serif" color=3D"#000000"><s=
pan style=3D"font-size:15px">Amit.</span></font></p><p></p><p class=3D"" st=
yle=3D"margin-top:0in;margin-right:0in;margin-bottom:0.0001pt;margin-left:0=
in">
<br></p><p class=3D"" style=3D"margin-top:0in;margin-right:0in;margin-botto=
m:0.0001pt;margin-left:0in"><br></p><p class=3D"" style=3D"margin-top:0in;m=
argin-right:0in;margin-bottom:0.0001pt;margin-left:0in"><br></p></div></div=
><div class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Thu, Oct 3, 2013 at 7:05 PM, Bryan Ev=
enson <span dir=3D"ltr">&lt;<a href=3D"mailto:bevenson@melinkcorp.com" targ=
et=3D"_blank">bevenson@melinkcorp.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">
<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div><p class=3D"MsoNorm=
al"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1f497d">Amit,<u></u><u></u></span></p><p class=3D"Ms=
oNormal">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d"><u></u>=A0<u></u></span></p><p class=3D"MsoNorma=
l"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d">First, I suggest you change<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">PRINC =3D =934=94<u></u><=
u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">to<u></u=
><u></u></span></p>
<div class=3D"im"><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">PRINC :=
=3D &quot;${@int(PRINC) + 1}&quot;<u></u><u></u></span></p><p class=3D"MsoN=
ormal">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d"><u></u>=A0<u></u></span></p></div><p class=3D"Ms=
oNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1f497d">This way your bbappend will always incr=
ement the PR to one more than the PR called out by the main recipe.=A0 So i=
f the openssh recipe would get updated and increment the PR, you do not hav=
e to change your bbappend.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Change<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">SRC_URI =3D =93file://ban=
ner=94<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-s=
ize:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f=
497d">To<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">SRC_URI +=3D =93file://ba=
nner=93<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-=
size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1=
f497d"><u></u>=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">The +=3D appends your ban=
ner file to the SRC_URI for the openssh recipe.=A0 With your line, you are =
overriding all the SRC_URI for the entire openssh recipe and the openssh re=
cipe will only include the banner file.=A0 I=92ve taken to the habit of wri=
ting the SRC_URI as follows:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">SRC_URI +=3D =93 \<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d=
">file://banner \<u></u><u></u></span></p><p class=3D"MsoNormal" style=3D"t=
ext-indent:.5in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">=93<u></u><u></u></span></p><p class=3D"MsoNorma=
l"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d">just to ensure that words aren=92t joined tog=
ether when my SRC_URI is appended to the existing one.=A0 I don=92t know if=
 this is strictly necessary, but it=92s not a bad habit.<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Change<u></u><u></u></=
span></p>
<div class=3D"im"><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">FILESEX=
TRAPATHS_prepend :=3D &quot;${THISDIR}/openssh-6.1p1:&quot;<u></u><u></u></=
span></p>
</div><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">to<u></u><u></u></s=
pan></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">FILESEXTRAPATHS_p=
repend :=3D &quot;${THISDIR}:&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">so Bitbake can find yo=
ur banner file and sshd_config that you have in the same directory as the b=
bappend.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">I can=92t remember if =
you get a warning if Bitbake can=92t find the license file at all or if it =
fails on each attempt through the filepath.=A0 Since your new path is first=
, it won=92t find LICENCE in your layer since you didn=92t copy it.=A0 Once=
 way to quiet this warning would be to copy the license file to your direct=
ory.<u></u><u></u></span></p>
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
ot;"> Amit Tomer [mailto:<a href=3D"mailto:amittomer25@gmail.com" target=3D=
"_blank">amittomer25@gmail.com</a>] <br>
<b>Sent:</b> Thursday, October 03, 2013 8:23 AM<br><b>To:</b> Bryan Evenson=
<br><b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">=
yocto@yoctoproject.org</a><br><b>Subject:</b> Re: [yocto] Fwd: OpenSSH pre =
login banner<u></u><u></u></span></p>
</div></div><div><div class=3D"h5"><p class=3D"MsoNormal"><u></u>=A0<u></u>=
</p><div><p class=3D"MsoNormal">Hi Brayan<u></u><u></u></p><div><p class=3D=
"MsoNormal"><u></u>=A0<u></u></p></div><div><p class=3D"MsoNormal">Thanks f=
or your help<u></u><u></u></p>
</div><div><p class=3D"MsoNormal"><u></u>=A0<u></u></p></div><div><p class=
=3D"MsoNormal">The way I modify .bbapend file is below<u></u><u></u></p></d=
iv><div><p class=3D"MsoNormal"><u></u>=A0<u></u></p></div><div><div><p clas=
s=3D"MsoNormal">
PRINC =3D &quot;4&quot;<u></u><u></u></p></div><div><p class=3D"MsoNormal">=
SRC_URI =3D &quot;<a>file://banner</a>&quot;<u></u><u></u></p></div><div><p=
 class=3D"MsoNormal">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/openssh-=
6.1p1:&quot;<u></u><u></u></p>
</div><div><p class=3D"MsoNormal">do_install_append() {<u></u><u></u></p></=
div><div><p class=3D"MsoNormal"><u></u>=A0<u></u></p></div><div><p class=3D=
"MsoNormal">Install -m 755 ${WORKDIR}/banner ${D}${sysconfdir}/ssh<u></u><u=
></u></p>
</div><div><p class=3D"MsoNormal">}<u></u><u></u></p></div><div><p class=3D=
"MsoNormal"><u></u>=A0<u></u></p></div><div><p class=3D"MsoNormal"><u></u>=
=A0<u></u></p></div><div><p class=3D"MsoNormal"><u></u>=A0<u></u></p></div>=
<div><p class=3D"MsoNormal">
But it gives me=A0<u></u><u></u></p></div><div><p class=3D"MsoNormal"><u></=
u>=A0<u></u></p></div><div><p class=3D"MsoNormal">Below problem<u></u><u></=
u></p></div><div><p class=3D"MsoNormal"><u></u>=A0<u></u></p></div><div><di=
v><p class=3D"MsoNormal">
WARNING: /tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/openssh/6.1p1-r3=
/openssh-6.1p1/LICENCE could not be copied for some reason. It may not exis=
t. WARN for now.<u></u><u></u></p></div><div><p class=3D"MsoNormal"><u></u>=
=A0<u></u></p>
</div><div><p class=3D"MsoNormal">And my build process is really got slow a=
nd sometimes I am getting the error also<u></u><u></u></p></div><div><p cla=
ss=3D"MsoNormal"><u></u>=A0<u></u></p></div><div><p class=3D"MsoNormal">Wha=
t could be the reason for above??<u></u><u></u></p>
</div><div><p class=3D"MsoNormal"><u></u>=A0<u></u></p></div><div><p class=
=3D"MsoNormal"><u></u>=A0<u></u></p></div><div><p class=3D"MsoNormal"><u></=
u>=A0<u></u></p></div></div><div><p class=3D"MsoNormal"><u></u>=A0<u></u></=
p></div><div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p></div></div></div><div><p class=
=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><u></u>=A0<u></u></p><div><p =
class=3D"MsoNormal">On Thu, Oct 3, 2013 at 5:49 PM, Bryan Evenson &lt;<a hr=
ef=3D"mailto:bevenson@melinkcorp.com" target=3D"_blank">bevenson@melinkcorp=
.com</a>&gt; wrote:<u></u><u></u></p>
<div><div><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-famil=
y:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Amit,</span><u>=
</u><u></u></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span>=
<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">From your message, I=92m =
assuming you have a bbappend file for openssh.=A0 Following the example in =
section of 5.1.4 of the Mega Manual (located at <a href=3D"http://www.yocto=
project.org/docs/current/mega-manual/mega-manual.html#using-bbappend-files"=
 target=3D"_blank">http://www.yoctoproject.org/docs/current/mega-manual/meg=
a-manual.html#using-bbappend-files</a>) and from personal experience, put t=
he following in your bbappend file:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p><p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-si=
ze:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f4=
97d">FILESEXTRAPATHS_prepend :=3D &quot; ${THISDIR}: &quot;</span><u></u><u=
></u></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d=
">SRC_URI +=3D =93 <a>file://banner</a> =94</span><u></u><u></u></p><p clas=
s=3D"MsoNormal" style=3D"text-indent:.5in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">FILES_${PN} +=3D =93 /etc/ssh/banner =94</span><=
u></u><u></u></p><p class=3D"MsoNormal" style=3D"text-indent:.5in"><span st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&qu=
ot;;color:#1f497d">=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d=
">do_install_append() {</span><u></u><u></u></p><p class=3D"MsoNormal" styl=
e=3D"text-indent:.5in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 in=
stall =96d ${D}${sysconfdir}/ssh</span><u></u><u></u></p><p class=3D"MsoNor=
mal" style=3D"text-indent:.5in"><span style=3D"font-size:11.0pt;font-family=
:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 install =96m 0644 ${WORKDIR}/banner ${D}${sy=
sconfdir/ssh/banner</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d=
">}</span><u></u><u></u></p><p class=3D"MsoNormal" style=3D"text-indent:.5i=
n"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d">PRINC :=3D &quot;${@int(PRINC) + 1}&quot;</sp=
an><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
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
to =93+ 2=94.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">-Bryan</span><u></u><u=
></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
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
r><b>Subject:</b> [yocto] Fwd: OpenSSH pre login banner</span><u></u><u></u=
></p>
</div></div><div><div><p class=3D"MsoNormal">=A0<u></u><u></u></p><div><p c=
lass=3D"MsoNormal" style=3D"margin-bottom:12.0pt">=A0<u></u><u></u></p><div=
><p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">---------- Forwarded=
 message ----------<br>
From: <b>Amit Tomer</b> &lt;<a href=3D"mailto:amittomer25@gmail.com" target=
=3D"_blank">amittomer25@gmail.com</a>&gt;<br>Date: Thu, Oct 3, 2013 at 1:50=
 PM<br>Subject: OpenSSH pre login banner<br>To: &quot;<a href=3D"mailto:yoc=
to-request@yoctoproject.org" target=3D"_blank">yocto-request@yoctoproject.o=
rg</a>&quot; &lt;<a href=3D"mailto:yocto-request@yoctoproject.org" target=
=3D"_blank">yocto-request@yoctoproject.org</a>&gt;<u></u><u></u></p>
<div><p class=3D"MsoNormal">I am new to OpenEmbedded Yocto and have a requi=
rement where=A0OpenSSH pre login banner<u></u><u></u></p><div><p class=3D"M=
soNormal">should come when do ssh from target board<u></u><u></u></p></div>=
<div>
<p class=3D"MsoNormal">=A0<u></u><u></u></p></div><div><p class=3D"MsoNorma=
l">Now I know I have to create a simple .txt file(banner) and put my banner=
 in to it and add the following to=A0sshd_config<u></u><u></u></p></div><di=
v><p class=3D"MsoNormal">
=A0<u></u><u></u></p></div><div><p class=3D"MsoNormal">Banner /etc/ssh/bann=
er=A0<u></u><u></u></p></div><div><p class=3D"MsoNormal">=A0<u></u><u></u><=
/p></div><div><p class=3D"MsoNormal">But now =A0wanted to know where should=
 I keep my banner file in yocto so that Yocto build infrastructure will pac=
k banner file =A0to /etc/ssh/banner into final image.<u></u><u></u></p>
</div><div><p class=3D"MsoNormal">=A0<u></u><u></u></p></div><div><p class=
=3D"MsoNormal">I do have receipes for openssh in meta-xyz/recipes-connectiv=
ity/openssh =A0folder<u></u><u></u></p></div><div><p class=3D"MsoNormal">=
=A0<u></u><u></u></p>
</div><div><p class=3D"MsoNormal">Thanks=A0<u></u><u></u></p></div><div><p =
class=3D"MsoNormal"><span style=3D"color:#888888">Amit=A0</span><u></u><u><=
/u></p></div><div><p class=3D"MsoNormal"><span style=3D"color:#888888">=A0<=
/span><u></u><u></u></p>
</div><div><p class=3D"MsoNormal"><span style=3D"color:#888888">=A0</span><=
u></u><u></u></p></div><div><p class=3D"MsoNormal"><span style=3D"color:#88=
8888">=A0</span><u></u><u></u></p></div></div></div><p class=3D"MsoNormal">=
=A0<u></u><u></u></p>
</div></div></div></div></div></div></div><p class=3D"MsoNormal"><u></u>=A0=
<u></u></p></div></div></div></div></div></div></blockquote></div><br></div=
>

--001a11c38dc2c0445704e7d6a4a1--
