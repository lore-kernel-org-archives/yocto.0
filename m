Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99E33E01661
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 10:25:59 -0700 (PDT)
Received: by mail-ie0-f170.google.com with SMTP id at1so1924629iec.1
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 10:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=j2l1bOk0JjZ5Aq/SNkdHjbKIYAGCG1N3uLwtGRinwDo=;
	b=WxakotJY9OWPEXL7cJrxIGOWtn4kGTbNspwjdOJZ/ii3aTDc1mcpGXu8m8w4iFOKwK
	d6yP7uCH36Ruu+lHUs75zFoELiHig+5OpL+inpAygx3YgrahxBFERIXluuNEnXkhFdef
	AgytDff8Hm0lmoKNy5YBRqS5m4NLQ4Yd0wYkiL0efF319Zr2LsK0HMTys8B+zoKU44SP
	EiqaGZm8dizKwLOg29MxdgjRxkfqOJDow4m1/5sgw8fFqjeSVrkqxSJ4tMIsu0FIBeEJ
	2XKSrSkqhq5QenJz5M2QjeEpOyXxmpCnJCR7TjJ6t0X/BU+2ZLL/CbMlYCMMUcDpB22g
	CGdQ==
X-Received: by 10.50.26.36 with SMTP id i4mr3067273igg.33.1381944358385; Wed,
	16 Oct 2013 10:25:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Wed, 16 Oct 2013 10:25:38 -0700 (PDT)
In-Reply-To: <CAAQYJAu+wU0ODvVoTrRBFhVOUVh+CdMg3mimfgGkj-pwJh3A1g@mail.gmail.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
	<CA+gsK-o6n24Aqp2dtpOwnmrCBjWE=HDSJvfqyYy2pvJYrHqXmQ@mail.gmail.com>
	<CAAQYJAu+wU0ODvVoTrRBFhVOUVh+CdMg3mimfgGkj-pwJh3A1g@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Wed, 16 Oct 2013 14:25:38 -0300
Message-ID: <CAMCfZKF_Rp=uds8tnDPSD9k3GO5dEiHSx9WfYjZ0yPkmh_9YPg@mail.gmail.com>
To: Andrea Adami <andrea.adami@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: Custom defconfig is not used
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
X-List-Received-Date: Wed, 16 Oct 2013 17:26:00 -0000
Content-Type: multipart/alternative; boundary=047d7bd76fe094cf9604e8defe5e

--047d7bd76fe094cf9604e8defe5e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Guys,

As I told before, I already tried the config fragment strategy and it did
not worked too.

Looking at linux-mailine-3.8.bb from meta-beagleboard[1] it just inherits
kernel and not inherits linux-yocto or requires linux-yocto.inc. So I
believe that the config fragment will not work. But I can be wrong.

On directory "meta-mine/recipes-kernel/linux/" I have this:

.
=E2=94=9C=E2=94=80=E2=94=80 files
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 mine.patch
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 defconfig
=E2=94=94=E2=94=80=E2=94=80 linux-mainline_3.8.bbappend


And my linux-mainline_3.8.bbappend recipe:

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
SRC_URI +=3D " file://mine.patch \
             file://defconfig \
             "

The mine.patch is applied but defconfig not.

I've already tried to use another FILESEXTRAPATHS layout like[2],but no
success too.

How can I have the "bb" command listed on the following link?
http://www.crashcourse.ca/wiki/index.php/OE_FILESEXTRAPATHS


[1] -
 https://github.com/beagleboard/meta-beagleboard/blob/dylan/common-bsp/reci=
pes-kernel/linux/linux-mainline_3.8.bb
[2] -
http://cgit.openembedded.org/meta-handheld/tree/recipes-kernel/linux/linux-=
yocto_3.10.bbappend

Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/


2013/10/15 Andrea Adami <andrea.adami@gmail.com>

> Hi,
>
> I guess you're setting a wrong FILESEXTRAPATHS_prepend :=3D
> "${THISDIR}/files:"
>
> See this example, using simple defconfig for some devices and an
> experimental configuration (WIP ;) fo others using fragments.
>
>
> http://cgit.openembedded.org/meta-handheld/tree/recipes-kernel/linux/linu=
x-yocto_3.10.bbappend
>
> Cheers
>
> Andrea
>
>
> On Tue, Oct 15, 2013 at 11:49 PM, Rudolf Streif
> <rstreif@linuxfoundation.org> wrote:
> > Diego,
> >
> > You are appending a kernel recipe that uses the Linux Yocto tooling. Th=
e
> > defconfig is essentially comprised of many different pieces from the me=
ta
> > branch of the Yocto kernel repository and optional configuration
> fragments
> > that you provide. This tooling will not recognize a defconfig file you
> > provide but it does recognize configuration fragments to be added to
> > .config.
> >
> > You need to put
> >
> > CONFIG_WATCHDOG_NOWAYOUT=3Dy
> >
> > into a file that ends with .cfg eg. watchdog.cfg and then modify your
> > bbappend to
> >
> > FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
> > SRC_URI +=3D " file://0019-mine.patch \
> >              file://watchdog.cfg \
> >              "
> >
> > Rudi
> >
> >
> >
> > On Tue, Oct 15, 2013 at 2:07 PM, Diego Sueiro <diego.sueiro@gmail.com>
> > wrote:
> >>
> >> Folks,
> >>
> >> I created the following bbapend recipe for linux-mainline_3.8.bb (from
> >> meta-beagleboard on dylan branch) for beaglebone.
> >> meta-mine/recipes-kernel/linux/linux-mainline_3.8.bbappend:
> >>
> >> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
> >> SRC_URI +=3D " file://0019-mine.patch \
> >>              file://defconfig \
> >>              "
> >>
> >> But the defconfig and .config files on ${S} and ${WORKDIR} used are fr=
om
> >> meta-beagleboad, not from my bbappend.
> >>
> >> I tried to follow the instructions to add config fragments on the page
> >> below but it did not worked too.
> >>
> >>
> http://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html#chang=
ing-the-configuration
> >>
> >> The strange thing is: My patch is applied but my defconfig, or config
> >> fragment is not used.
> >> I just want to add CONFIG_WATCHDOG_NOWAYOUT=3Dy.
> >>
> >> I already did a cleasstate but no success.
> >>
> >> Any hints?
> >>
> >>
> >> Regards,
> >>
> >> --
> >> *dS
> >> Diego Sueiro
> >>
> >> /*long live rock 'n roll*/
> >>
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >>
> >
> >
> >
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--047d7bd76fe094cf9604e8defe5e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Guys,<div><br></div><div style>As I told before, I already=
 tried the config fragment strategy and it did not worked too.</div><div st=
yle><br></div><div style>Looking at <a href=3D"http://linux-mailine-3.8.bb"=
>linux-mailine-3.8.bb</a> from meta-beagleboard[1] it just inherits kernel =
and not inherits linux-yocto or requires linux-yocto.inc. So I believe that=
 the config fragment will not work. But I can be wrong.</div>

<div style><br></div><div style>On directory &quot;meta-mine/recipes-kernel=
/linux/&quot; I have this:</div><div style><blockquote style=3D"margin:0px =
0px 0px 40px;border:none;padding:0px"><div style><div>.</div><div>=E2=94=9C=
=E2=94=80=E2=94=80 files</div>

<div>=E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 mine.patch</div><div>=E2=
=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 defconfig</div><div>=E2=94=94=E2=
=94=80=E2=94=80 linux-mainline_3.8.bbappend<br></div></div></blockquote><di=
v style><br></div>And my=C2=A0linux-mainline_3.8.bbappend recipe:</div><div=
 style><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px=
">

<div style><div>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;<=
/div><div>SRC_URI +=3D &quot; file://mine.patch \<br></div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://defconfig \</div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;</div></div></blockquote>

The mine.patch is applied but defconfig not.</div><div style><br></div><div=
 style>I&#39;ve already tried to use another FILESEXTRAPATHS layout like[2]=
,but no success too.</div><div style><br></div><div style>How can I have th=
e &quot;bb&quot; command listed on the following link?</div>

<div style><a href=3D"http://www.crashcourse.ca/wiki/index.php/OE_FILESEXTR=
APATHS">http://www.crashcourse.ca/wiki/index.php/OE_FILESEXTRAPATHS</a><br>=
</div><div style><br></div><div class=3D"gmail_extra"><br clear=3D"all"><di=
v>

<div dir=3D"ltr"><div>[1] -<a href=3D"=C2=A0https://github.com/beagleboard/=
meta-beagleboard/blob/dylan/common-bsp/recipes-kernel/linux/linux-mainline_=
3.8.bb">=C2=A0https://github.com/beagleboard/meta-beagleboard/blob/dylan/co=
mmon-bsp/recipes-kernel/linux/linux-mainline_3.8.bb</a></div>

<div>[2] -=C2=A0<a href=3D"http://cgit.openembedded.org/meta-handheld/tree/=
recipes-kernel/linux/linux-yocto_3.10.bbappend">http://cgit.openembedded.or=
g/meta-handheld/tree/recipes-kernel/linux/linux-yocto_3.10.bbappend</a></di=
v>
<div>
<br></div><div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><b=
r>/*long live rock &#39;n roll*/<br></div></div>
<br><br><div class=3D"gmail_quote">2013/10/15 Andrea Adami <span dir=3D"ltr=
">&lt;<a href=3D"mailto:andrea.adami@gmail.com" target=3D"_blank">andrea.ad=
ami@gmail.com</a>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,20=
4,204);border-left-style:solid;padding-left:1ex">

Hi,<br>
<br>
I guess you&#39;re setting a wrong FILESEXTRAPATHS_prepend :=3D &quot;${THI=
SDIR}/files:&quot;<br>
<br>
See this example, using simple defconfig for some devices and an<br>
experimental configuration (WIP ;) fo others using fragments.<br>
<br>
<a href=3D"http://cgit.openembedded.org/meta-handheld/tree/recipes-kernel/l=
inux/linux-yocto_3.10.bbappend" target=3D"_blank">http://cgit.openembedded.=
org/meta-handheld/tree/recipes-kernel/linux/linux-yocto_3.10.bbappend</a><b=
r>


<br>
Cheers<br>
<span class=3D""><font color=3D"#888888"><br>
Andrea<br>
</font></span><div class=3D""><div class=3D"h5"><br>
<br>
On Tue, Oct 15, 2013 at 11:49 PM, Rudolf Streif<br>
&lt;<a href=3D"mailto:rstreif@linuxfoundation.org">rstreif@linuxfoundation.=
org</a>&gt; wrote:<br>
&gt; Diego,<br>
&gt;<br>
&gt; You are appending a kernel recipe that uses the Linux Yocto tooling. T=
he<br>
&gt; defconfig is essentially comprised of many different pieces from the m=
eta<br>
&gt; branch of the Yocto kernel repository and optional configuration fragm=
ents<br>
&gt; that you provide. This tooling will not recognize a defconfig file you=
<br>
&gt; provide but it does recognize configuration fragments to be added to<b=
r>
&gt; .config.<br>
&gt;<br>
&gt; You need to put<br>
&gt;<br>
&gt; CONFIG_WATCHDOG_NOWAYOUT=3Dy<br>
&gt;<br>
&gt; into a file that ends with .cfg eg. watchdog.cfg and then modify your<=
br>
&gt; bbappend to<br>
&gt;<br>
&gt; FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;<br>
&gt; SRC_URI +=3D &quot; file://0019-mine.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://watchdog.cfg \<=
br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
&gt;<br>
&gt; Rudi<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Tue, Oct 15, 2013 at 2:07 PM, Diego Sueiro &lt;<a href=3D"mailto:di=
ego.sueiro@gmail.com">diego.sueiro@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Folks,<br>
&gt;&gt;<br>
&gt;&gt; I created the following bbapend recipe for <a href=3D"http://linux=
-mainline_3.8.bb" target=3D"_blank">linux-mainline_3.8.bb</a> (from<br>
&gt;&gt; meta-beagleboard on dylan branch) for beaglebone.<br>
&gt;&gt; meta-mine/recipes-kernel/linux/linux-mainline_3.8.bbappend:<br>
&gt;&gt;<br>
&gt;&gt; FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;<br>
&gt;&gt; SRC_URI +=3D &quot; file://0019-mine.patch \<br>
&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://defconfig \=
<br>
&gt;&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
&gt;&gt;<br>
&gt;&gt; But the defconfig and .config files on ${S} and ${WORKDIR} used ar=
e from<br>
&gt;&gt; meta-beagleboad, not from my bbappend.<br>
&gt;&gt;<br>
&gt;&gt; I tried to follow the instructions to add config fragments on the =
page<br>
&gt;&gt; below but it did not worked too.<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"http://www.yoctoproject.org/docs/current/kernel-dev/ker=
nel-dev.html#changing-the-configuration" target=3D"_blank">http://www.yocto=
project.org/docs/current/kernel-dev/kernel-dev.html#changing-the-configurat=
ion</a><br>


&gt;&gt;<br>
&gt;&gt; The strange thing is: My patch is applied but my defconfig, or con=
fig<br>
&gt;&gt; fragment is not used.<br>
&gt;&gt; I just want to add CONFIG_WATCHDOG_NOWAYOUT=3Dy.<br>
&gt;&gt;<br>
&gt;&gt; I already did a cleasstate but no success.<br>
&gt;&gt;<br>
&gt;&gt; Any hints?<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; *dS<br>
&gt;&gt; Diego Sueiro<br>
&gt;&gt;<br>
&gt;&gt; /*long live rock &#39;n roll*/<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</div></div></blockquote></div><br></div></div>

--047d7bd76fe094cf9604e8defe5e--
