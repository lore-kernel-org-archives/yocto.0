Return-Path: <amittomer25@gmail.com>
Received: from mail-wg0-f48.google.com (mail-wg0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4061E0161B
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2013 07:41:21 -0700 (PDT)
Received: by mail-wg0-f48.google.com with SMTP id n12so2554990wgh.3
	for <yocto@yoctoproject.org>; Thu, 03 Oct 2013 07:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=SOjAOZOditMTgwscBmpIsdn8yN0OTB5M2oKDs88Li4g=;
	b=MejJke3T3cKM9vd/TUpOPNmz+u6sFXu4AepWioqF2R2yx1nl7Vd0YaOD526O4hIxgJ
	jN96fQn22EjvKQCVZ0/vRYesb/uAF4YFFSJEyfwLY1GZYCGv9HPfKcS2jSI+6cfNkPqV
	6Sh2JTVlCLJ1At7Qqf3hzJirLf3lrM+Jx1mKb4K1ko00CjDrHGYZGXvvj4mf9KiIHfu8
	9Gsk04nM38aJYTLAhQx1QgxjvlOaBNSHK0MOkXn1gVylhULZSQhDtma+DmW/F2O/ETgE
	yLWrwcqC8STX2wlFL7XwH6123ojQhCkt2iN5Kc11Du5AKVaFL2LNIKisjim0Bhs5v5H0
	0rOQ==
MIME-Version: 1.0
X-Received: by 10.194.119.132 with SMTP id ku4mr2212912wjb.51.1380811280405;
	Thu, 03 Oct 2013 07:41:20 -0700 (PDT)
Received: by 10.227.196.7 with HTTP; Thu, 3 Oct 2013 07:41:20 -0700 (PDT)
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153B898C3F9@pluto.melinkcorp.local>
References: <CABHD4K8q9q3Gb4B1E35G8qk+Bp=RLVW7ZhngNYvW=0ZV_v=RKA@mail.gmail.com>
	<CABHD4K8ggfe+MVzUDuK0dNs82=9dYT-iCyxGTOKNrLm8En2wGQ@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE40153B898C345@pluto.melinkcorp.local>
	<CABHD4K-_9E3qN9exOPkdOoGzEjgskHE6EMNvTkNndbAGC5dcAA@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE40153B898C3AF@pluto.melinkcorp.local>
	<CABHD4K-KW7wMrm+ceLyzGMyyuL0nN=KXmexNmq4yt5RD+yW9og@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE40153B898C3F9@pluto.melinkcorp.local>
Date: Thu, 3 Oct 2013 20:11:20 +0530
Message-ID: <CABHD4K8Ha3J3QOK+JLQuwzmCJdDMDH_WVMUuEn99F2TYpmk82Q@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 03 Oct 2013 14:41:25 -0000
Content-Type: multipart/alternative; boundary=089e01228d72ded9f104e7d72d7d

--089e01228d72ded9f104e7d72d7d
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Fine Bryan,Thanks for your Suggestion

Not sure should I Share it with you or not but I have seen very weird
behaviour on my Targer board regarding Openssh Banner.

When I login to my Hardware Board(after freash boot) and do ssh
some_ip_address ,I am able to see Banner message
But in /etc/ssh/sshd_config file

#Banner is set to nothing

Then when I do ssh some_ip_address again ,I could not see any banner as it
is expected behaviour.

Hope you would provide any pointer on the same .

Thanks
Amit





On Thu, Oct 3, 2013 at 7:40 PM, Bryan Evenson <bevenson@melinkcorp.com>wrot=
e:

> Amit,****
>
> ** **
>
> Good to hear you got your recipe in order.  Best way to learn more about
> the Yocto Project and the Poky distribution is through watching this
> mailing list and the Poky mailing list (poky@yoctoproject.org) to see how
> other people solve their problems they come across.  And, by reading the
> documentation over at http://www.yoctoproject.org/documentation/current/.=
*
> ***
>
> ** **
>
> -Bryan ****
>
> ** **
>
> *From:* Amit Tomer [mailto:amittomer25@gmail.com]
> *Sent:* Thursday, October 03, 2013 10:03 AM
>
> *To:* Bryan Evenson
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Fwd: OpenSSH pre login banner****
>
> ** **
>
> Thanks again Bryan for your kind response ****
>
> ** **
>
> The reason for having the PRINC =3D"4" is becaue when I started modifying
> this already existing file****
>
> value of PRINC is set 3 ,so for my changes I Incremented it to One.****
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
> I am really feeling bit stupid here ,I just in hurry forgot to put + sign=
*
> ***
>
> Though I learned a new point ****
>
> ** **
>
> "With your line, you are overriding all the SRC_URI for the entire openss=
h
> recipe and the openssh recipe will only include the banner file ".****
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
>  ****
>
> We already had openssh-6.1p1 folder where our sshd_config file is placed
> ,So I guess it won't harm****
>
> much if I put FILESEXTRAPATHS_prepend :=3D "${THISDIR}/openssh-6.1p1:" wi=
th
> banner file in openssh-6.1p1 folder****
>
> ** **
>
> One more point wanted from your end,what is best way to learn Yocto****
>
> How can improve my knowledge in Yocto?****
>
> ** **
>
> Thanks ****
>
> Amit.****
>
> ** **
>
> ** **
>
> ** **
>
> ** **
>
> On Thu, Oct 3, 2013 at 7:05 PM, Bryan Evenson <bevenson@melinkcorp.com>
> wrote:****
>
> Amit,****
>
>  ****
>
> First, I suggest you change****
>
> PRINC =3D =934=94****
>
> to****
>
> PRINC :=3D "${@int(PRINC) + 1}"****
>
>  ****
>
> This way your bbappend will always increment the PR to one more than the
> PR called out by the main recipe.  So if the openssh recipe would get
> updated and increment the PR, you do not have to change your bbappend.***=
*
>
>  ****
>
> Change****
>
> SRC_URI =3D =93file://banner=94****
>
> To****
>
> SRC_URI +=3D =93file://banner=93****
>
>  ****
>
> The +=3D appends your banner file to the SRC_URI for the openssh recipe.
> With your line, you are overriding all the SRC_URI for the entire openssh
> recipe and the openssh recipe will only include the banner file.  I=92ve
> taken to the habit of writing the SRC_URI as follows:****
>
>  ****
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
>  ****
>
> Change****
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/openssh-6.1p1:"****
>
> to****
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}:"****
>
>  ****
>
> so Bitbake can find your banner file and sshd_config that you have in the
> same directory as the bbappend.****
>
>  ****
>
> I can=92t remember if you get a warning if Bitbake can=92t find the licen=
se
> file at all or if it fails on each attempt through the filepath.  Since
> your new path is first, it won=92t find LICENCE in your layer since you
> didn=92t copy it.  Once way to quiet this warning would be to copy the
> license file to your directory.****
>
>  ****
>
> -Bryan****
>
>  ****
>
> *From:* Amit Tomer [mailto:amittomer25@gmail.com]
> *Sent:* Thursday, October 03, 2013 8:23 AM
> *To:* Bryan Evenson
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Fwd: OpenSSH pre login banner****
>
>  ****
>
> Hi Brayan****
>
>  ****
>
> Thanks for your help****
>
>  ****
>
> The way I modify .bbapend file is below****
>
>  ****
>
> PRINC =3D "4"****
>
> SRC_URI =3D "file://banner"****
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/openssh-6.1p1:"****
>
> do_install_append() {****
>
>  ****
>
> Install -m 755 ${WORKDIR}/banner ${D}${sysconfdir}/ssh****
>
> }****
>
>  ****
>
>  ****
>
>  ****
>
> But it gives me ****
>
>  ****
>
> Below problem****
>
>  ****
>
> WARNING:
> /tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/openssh/6.1p1-r3/openss=
h-6.1p1/LICENCE
> could not be copied for some reason. It may not exist. WARN for now.****
>
>  ****
>
> And my build process is really got slow and sometimes I am getting the
> error also****
>
>  ****
>
> What could be the reason for above??****
>
>  ****
>
>  ****
>
>  ****
>
>  ****
>
>  ****
>
>  ****
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
>  ****
>
> ** **
>

--089e01228d72ded9f104e7d72d7d
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Fine Bryan,Thanks for your Suggestion<div><br></div><div s=
tyle>Not sure should I Share it with you or not but I have seen very weird =
behaviour on my Targer board regarding Openssh Banner.</div><div style><br>
</div><div style>When I login to my Hardware Board(after freash boot) and d=
o ssh some_ip_address ,I am able to see Banner message</div><div style>But =
in /etc/ssh/sshd_config file=A0</div><div style><br></div><div style>#Banne=
r is set to nothing</div>
<div style><br></div><div style>Then when I do ssh=A0some_ip_address again =
,I could not see any banner as it is expected behaviour.</div><div style><b=
r></div><div style>Hope you would provide any pointer on the same .</div>
<div style><br></div><div style>Thanks=A0</div><div style>Amit=A0</div><div=
 style><br></div><div style><br></div><div style><br></div></div><div class=
=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, Oct 3, 2013 at =
7:40 PM, Bryan Evenson <span dir=3D"ltr">&lt;<a href=3D"mailto:bevenson@mel=
inkcorp.com" target=3D"_blank">bevenson@melinkcorp.com</a>&gt;</span> wrote=
:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div lang=3D"EN-US" link=3D"blue" vlink=3D"p=
urple"><div><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-fam=
ily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Amit,<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Good to hear you got y=
our recipe in order.=A0 Best way to learn more about the Yocto Project and =
the Poky distribution is through watching this mailing list and the Poky ma=
iling list (<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky=
@yoctoproject.org</a>) to see how other people solve their problems they co=
me across.=A0 And, by reading the documentation over at <a href=3D"http://w=
ww.yoctoproject.org/documentation/current/" target=3D"_blank">http://www.yo=
ctoproject.org/documentation/current/</a>.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">-Bryan <u></u><u></u><=
/span></p>
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
<b>Sent:</b> Thursday, October 03, 2013 10:03 AM</span></p><div><div class=
=3D"h5"><br><b>To:</b> Bryan Evenson<br><b>Cc:</b> <a href=3D"mailto:yocto@=
yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><br><b>Subjec=
t:</b> Re: [yocto] Fwd: OpenSSH pre login banner<u></u><u></u></div>
</div><p></p></div></div><div><div class=3D"h5"><p class=3D"MsoNormal"><u><=
/u>=A0<u></u></p><div><p class=3D"MsoNormal">Thanks again Bryan for your ki=
nd response=A0<u></u><u></u></p><div><p class=3D"MsoNormal"><u></u>=A0<u></=
u></p></div>
<div><p class=3D"MsoNormal">The reason for having the PRINC =3D&quot;4&quot=
; is becaue when I started modifying this already existing file<u></u><u></=
u></p></div><div><p class=3D"MsoNormal">value of PRINC is set 3 ,so for my =
changes I Incremented it to One.<u></u><u></u></p>
</div><div><p class=3D"MsoNormal"><u></u>=A0<u></u></p></div><div><p class=
=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,&quot;sans-serif&quot;;color:#1f497d">Change</span><u></u><u></u></p><p=
 class=3D"MsoNormal">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">SRC_URI =3D =93<a>file://banner</a>=94</span><u>=
</u><u></u></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">To</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">SRC_URI +=3D =93file://ba=
nner=93</span><u></u><u></u></p><p class=3D"MsoNormal"><u></u>=A0<u></u></p=
><p class=3D"MsoNormal">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;">I am really</span><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d"> </span><span sty=
le=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quo=
t;">feeling bit stupid here ,I just in hurry forgot to put + sign</span><u>=
</u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">Though I learned a new point=A0</span><=
u></u><u></u></p><p class=3D"MsoNormal"><u></u>=A0<u></u></p><p class=3D"Ms=
oNormal">
<span style=3D"font-size:11.5pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">&quot;With your line, you are overriding all the=
 SRC_URI for the entire openssh recipe and the openssh recipe will only inc=
lude the banner file</span>=A0&quot;.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p><p class=3D"MsoNormal"><span st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&qu=
ot;;color:#1f497d">Change</span><u></u><u></u></p><div><p class=3D"MsoNorma=
l"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}=
/openssh-6.1p1:&quot;</span><u></u><u></u></p>
</div><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">to</span><u></u><u>=
</u></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">FILESEXTRAPATHS_p=
repend :=3D &quot;${THISDIR}:&quot;</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.5pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">We already had=A0openssh-6.1p1 folde=
r where our sshd_config file is placed ,So I guess it won&#39;t harm</span>=
<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">much if I put=A0FILESEXTRAPATHS_prepend=
 :=3D &quot;${THISDIR}/openssh-6.1p1:&quot; with banner file in=A0openssh-6=
.1p1 folder</span><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p><p class=3D"MsoNormal"><span st=
yle=3D"font-size:11.5pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&qu=
ot;">One more point wanted from your end,what is best way to learn Yocto</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.5pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;">How can improve my knowledge in Yocto?<=
/span><u></u><u></u></p><p class=3D"MsoNormal"><u></u>=A0<u></u></p><p clas=
s=3D"MsoNormal">
<span style=3D"font-size:11.5pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;">Thanks=A0</span><u></u><u></u></p><p class=3D"MsoNormal"><span=
 style=3D"font-size:11.5pt;font-family:&quot;Calibri&quot;,&quot;sans-serif=
&quot;">Amit.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p><p class=3D"MsoNormal"><u></u>=
=A0<u></u></p><p class=3D"MsoNormal"><u></u>=A0<u></u></p></div></div><div>=
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><u></u>=A0<u></u></p>=
<div><p class=3D"MsoNormal">
On Thu, Oct 3, 2013 at 7:05 PM, Bryan Evenson &lt;<a href=3D"mailto:bevenso=
n@melinkcorp.com" target=3D"_blank">bevenson@melinkcorp.com</a>&gt; wrote:<=
u></u><u></u></p><div><div><p class=3D"MsoNormal"><span style=3D"font-size:=
11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d=
">Amit,</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">First, I suggest you c=
hange</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">PRINC =3D =934=94</span><=
u></u><u></u></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">to</span=
><u></u><u></u></p>
<div><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">PRINC :=3D &quot;${@=
int(PRINC) + 1}&quot;</span><u></u><u></u></p><p class=3D"MsoNormal"><span =
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&=
quot;;color:#1f497d">=A0</span><u></u><u></u></p>
</div><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">This way your bbapp=
end will always increment the PR to one more than the PR called out by the =
main recipe.=A0 So if the openssh recipe would get updated and increment th=
e PR, you do not have to change your bbappend.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Change</span><u></u><u=
></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">SRC_URI =3D =93<a>file://=
banner</a>=94</span><u></u><u></u></p><p class=3D"MsoNormal"><span style=3D=
"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;co=
lor:#1f497d">To</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">SRC_URI +=3D =93file://ba=
nner=93</span><u></u><u></u></p><p class=3D"MsoNormal"><span style=3D"font-=
size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1=
f497d">=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">The +=3D appends your ban=
ner file to the SRC_URI for the openssh recipe.=A0 With your line, you are =
overriding all the SRC_URI for the entire openssh recipe and the openssh re=
cipe will only include the banner file.=A0 I=92ve taken to the habit of wri=
ting the SRC_URI as follows:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">SRC_URI +=3D =93 \</sp=
an><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"font-size:=
11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d=
"><a>file://banner</a> \</span><u></u><u></u></p><p class=3D"MsoNormal" sty=
le=3D"text-indent:.5in">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d">=93</span><u></u><u></u></p><p class=3D"MsoNorma=
l"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d">just to ensure that words aren=92t joined tog=
ether when my SRC_URI is appended to the existing one.=A0 I don=92t know if=
 this is strictly necessary, but it=92s not a bad habit.</span><u></u><u></=
u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Change</span><u></u><u=
></u></p>
<div><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">FILESEXTRAPATHS_prep=
end :=3D &quot;${THISDIR}/openssh-6.1p1:&quot;</span><u></u><u></u></p></di=
v>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">to</span><u></u><u></u></=
p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;=
Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">FILESEXTRAPATHS_prepend=
 :=3D &quot;${THISDIR}:&quot;</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">so Bitbake can find yo=
ur banner file and sshd_config that you have in the same directory as the b=
bappend.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">I can=92t remember if =
you get a warning if Bitbake can=92t find the license file at all or if it =
fails on each attempt through the filepath.=A0 Since your new path is first=
, it won=92t find LICENCE in your layer since you didn=92t copy it.=A0 Once=
 way to quiet this warning would be to copy the license file to your direct=
ory.</span><u></u><u></u></p>
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
ot;"> Amit Tomer [mailto:<a href=3D"mailto:amittomer25@gmail.com" target=3D=
"_blank">amittomer25@gmail.com</a>] <br>
<b>Sent:</b> Thursday, October 03, 2013 8:23 AM<br><b>To:</b> Bryan Evenson=
<br><b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">=
yocto@yoctoproject.org</a><br><b>Subject:</b> Re: [yocto] Fwd: OpenSSH pre =
login banner</span><u></u><u></u></p>
</div></div><div><div><p class=3D"MsoNormal">=A0<u></u><u></u></p><div><p c=
lass=3D"MsoNormal">Hi Brayan<u></u><u></u></p><div><p class=3D"MsoNormal">=
=A0<u></u><u></u></p></div><div><p class=3D"MsoNormal">Thanks for your help=
<u></u><u></u></p>
</div><div><p class=3D"MsoNormal">=A0<u></u><u></u></p></div><div><p class=
=3D"MsoNormal">The way I modify .bbapend file is below<u></u><u></u></p></d=
iv><div><p class=3D"MsoNormal">=A0<u></u><u></u></p></div><div><div><p clas=
s=3D"MsoNormal">
PRINC =3D &quot;4&quot;<u></u><u></u></p></div><div><p class=3D"MsoNormal">=
SRC_URI =3D &quot;<a>file://banner</a>&quot;<u></u><u></u></p></div><div><p=
 class=3D"MsoNormal">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/openssh-=
6.1p1:&quot;<u></u><u></u></p>
</div><div><p class=3D"MsoNormal">do_install_append() {<u></u><u></u></p></=
div><div><p class=3D"MsoNormal">=A0<u></u><u></u></p></div><div><p class=3D=
"MsoNormal">Install -m 755 ${WORKDIR}/banner ${D}${sysconfdir}/ssh<u></u><u=
></u></p>
</div><div><p class=3D"MsoNormal">}<u></u><u></u></p></div><div><p class=3D=
"MsoNormal">=A0<u></u><u></u></p></div><div><p class=3D"MsoNormal">=A0<u></=
u><u></u></p></div><div><p class=3D"MsoNormal">=A0<u></u><u></u></p></div><=
div><p class=3D"MsoNormal">
But it gives me=A0<u></u><u></u></p></div><div><p class=3D"MsoNormal">=A0<u=
></u><u></u></p></div><div><p class=3D"MsoNormal">Below problem<u></u><u></=
u></p></div><div><p class=3D"MsoNormal">=A0<u></u><u></u></p></div><div><di=
v><p class=3D"MsoNormal">
WARNING: /tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/openssh/6.1p1-r3=
/openssh-6.1p1/LICENCE could not be copied for some reason. It may not exis=
t. WARN for now.<u></u><u></u></p></div><div><p class=3D"MsoNormal">=A0<u><=
/u><u></u></p>
</div><div><p class=3D"MsoNormal">And my build process is really got slow a=
nd sometimes I am getting the error also<u></u><u></u></p></div><div><p cla=
ss=3D"MsoNormal">=A0<u></u><u></u></p></div><div><p class=3D"MsoNormal">Wha=
t could be the reason for above??<u></u><u></u></p>
</div><div><p class=3D"MsoNormal">=A0<u></u><u></u></p></div><div><p class=
=3D"MsoNormal">=A0<u></u><u></u></p></div><div><p class=3D"MsoNormal">=A0<u=
></u><u></u></p></div></div><div><p class=3D"MsoNormal">=A0<u></u><u></u></=
p></div><div>
<p class=3D"MsoNormal">=A0<u></u><u></u></p></div></div></div><div><p class=
=3D"MsoNormal" style=3D"margin-bottom:12.0pt">=A0<u></u><u></u></p><div><p =
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
</div></div></div></div></div></div></div><p class=3D"MsoNormal">=A0<u></u>=
<u></u></p></div></div></div></div></div></div></div><p class=3D"MsoNormal"=
><u></u>=A0<u></u></p></div></div></div></div></div></div></blockquote></di=
v><br>
</div>

--089e01228d72ded9f104e7d72d7d--
