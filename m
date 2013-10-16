Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79C87E015BA
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 11:19:56 -0700 (PDT)
Received: by mail-ie0-f173.google.com with SMTP id u16so2020837iet.18
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 11:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=qBbvfpBYbScp74o2LuaxKx6YY/yWWLsv7JLJJeqGWws=;
	b=jHvq3hg7BhbwuPTl3PRj8fJX6Qidokvos8znWP+/awRgrRl4IthA8NEpg5JLbgOKpv
	qukxLhR9IqGffG6jnLsjQSKXf5i9JZ6ZxtscdZcYOUlSeIL+P0mxzTgV0cfmtLpuMU2a
	Pyoi95z1E9YWC/TxCDQD7JKIwGKoSYvCWdyL5DRxUlVN5u7L1fCk2HmQGFL5udlBvgXK
	9B4cas9StBRnUtPSeZIHF4KuwbeFGShndc17UPYhbl034o4rqzhloAIomyaT0xYSHYtc
	qFCXYkthADQrNg0dj1+5xsleiHcr+tMv7VJeIlhMJ3ORJl9ANtezycU6+8n2u3GfS39s
	lovQ==
X-Received: by 10.50.13.66 with SMTP id f2mr23115784igc.17.1381947595949; Wed,
	16 Oct 2013 11:19:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Wed, 16 Oct 2013 11:19:35 -0700 (PDT)
In-Reply-To: <CAMCfZKF_Rp=uds8tnDPSD9k3GO5dEiHSx9WfYjZ0yPkmh_9YPg@mail.gmail.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
	<CA+gsK-o6n24Aqp2dtpOwnmrCBjWE=HDSJvfqyYy2pvJYrHqXmQ@mail.gmail.com>
	<CAAQYJAu+wU0ODvVoTrRBFhVOUVh+CdMg3mimfgGkj-pwJh3A1g@mail.gmail.com>
	<CAMCfZKF_Rp=uds8tnDPSD9k3GO5dEiHSx9WfYjZ0yPkmh_9YPg@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Wed, 16 Oct 2013 15:19:35 -0300
Message-ID: <CAMCfZKFh8iJH4655mzFveFYfz8ebLXkGftSa-MR5mEcMEFV8Vw@mail.gmail.com>
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
X-List-Received-Date: Wed, 16 Oct 2013 18:19:57 -0000
Content-Type: multipart/alternative; boundary=089e0118460e8e112d04e8dfbf27

--089e0118460e8e112d04e8dfbf27
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Folks,

Looking at log.do_unpack it shows:

...
NOTE:
Unpacking <...>/meta-beagleboard/common-bsp/recipes-kernel/linux/linux-main=
line-3.8/beaglebone/defconfig
to <...>/build/tmp-angstrom_v2013_06-eglibc/work/beaglebone-angstrom-linux-=
gnueabi/linux-mainline/3.8.13-r23a/
...

NOTE: Unpacking
<...>/meta-mine/recipes-kernel/linux/linux-mainline-3.8/mine.patch to
<...>/build/tmp-angstrom_v2013_06-eglibc/work/beaglebone-angstrom-linux-gnu=
eabi/linux-mainline/3.8.13-r23a/
NOTE:
Unpacking <...>/meta-beagleboard/common-bsp/recipes-kernel/linux/linux-main=
line-3.8/beaglebone/defconfig
to <...>/build/tmp-angstrom_v2013_06-eglibc/work/beaglebone-angstrom-linux-=
gnueabi/linux-mainline/3.8.13-r23a/


Note that it copies defconfig from meta-beagleboard and in the end, instead
copying mine, it is copying from meta-beagleboard again.

My layer has the priority higher than meta-beagleboard.



Abra=C3=A7os,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br

Engenheiro de Controle e Automa=C3=A7=C3=A3o
UNIVERSIDADE FEDERAL DE ITAJUB=C3=80

/*long live rock 'n roll*/


2013/10/16 Diego Sueiro <diego.sueiro@gmail.com>

> Guys,
>
> As I told before, I already tried the config fragment strategy and it did
> not worked too.
>
> Looking at linux-mailine-3.8.bb from meta-beagleboard[1] it just inherits
> kernel and not inherits linux-yocto or requires linux-yocto.inc. So I
> believe that the config fragment will not work. But I can be wrong.
>
> On directory "meta-mine/recipes-kernel/linux/" I have this:
>
> .
> =E2=94=9C=E2=94=80=E2=94=80 files
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 mine.patch
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 defconfig
> =E2=94=94=E2=94=80=E2=94=80 linux-mainline_3.8.bbappend
>
>
> And my linux-mainline_3.8.bbappend recipe:
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
> SRC_URI +=3D " file://mine.patch \
>              file://defconfig \
>              "
>
> The mine.patch is applied but defconfig not.
>
> I've already tried to use another FILESEXTRAPATHS layout like[2],but no
> success too.
>
> How can I have the "bb" command listed on the following link?
> http://www.crashcourse.ca/wiki/index.php/OE_FILESEXTRAPATHS
>
>
>  [1] -
>  https://github.com/beagleboard/meta-beagleboard/blob/dylan/common-bsp/re=
cipes-kernel/linux/linux-mainline_3.8.bb<https://github.com/beagleboard/met=
a-beagleboard/blob/dylan/common-bsp/recipes-kernel/linux/linux-mainline_3.8=
.bb>
> [2] -
> http://cgit.openembedded.org/meta-handheld/tree/recipes-kernel/linux/linu=
x-yocto_3.10.bbappend
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/
>
>
> 2013/10/15 Andrea Adami <andrea.adami@gmail.com>
>
>> Hi,
>>
>> I guess you're setting a wrong FILESEXTRAPATHS_prepend :=3D
>> "${THISDIR}/files:"
>>
>> See this example, using simple defconfig for some devices and an
>> experimental configuration (WIP ;) fo others using fragments.
>>
>>
>> http://cgit.openembedded.org/meta-handheld/tree/recipes-kernel/linux/lin=
ux-yocto_3.10.bbappend
>>
>> Cheers
>>
>> Andrea
>>
>>
>> On Tue, Oct 15, 2013 at 11:49 PM, Rudolf Streif
>> <rstreif@linuxfoundation.org> wrote:
>> > Diego,
>> >
>> > You are appending a kernel recipe that uses the Linux Yocto tooling. T=
he
>> > defconfig is essentially comprised of many different pieces from the
>> meta
>> > branch of the Yocto kernel repository and optional configuration
>> fragments
>> > that you provide. This tooling will not recognize a defconfig file you
>> > provide but it does recognize configuration fragments to be added to
>> > .config.
>> >
>> > You need to put
>> >
>> > CONFIG_WATCHDOG_NOWAYOUT=3Dy
>> >
>> > into a file that ends with .cfg eg. watchdog.cfg and then modify your
>> > bbappend to
>> >
>> > FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>> > SRC_URI +=3D " file://0019-mine.patch \
>> >              file://watchdog.cfg \
>> >              "
>> >
>> > Rudi
>> >
>> >
>> >
>> > On Tue, Oct 15, 2013 at 2:07 PM, Diego Sueiro <diego.sueiro@gmail.com>
>> > wrote:
>> >>
>> >> Folks,
>> >>
>> >> I created the following bbapend recipe for linux-mainline_3.8.bb (fro=
m
>> >> meta-beagleboard on dylan branch) for beaglebone.
>> >> meta-mine/recipes-kernel/linux/linux-mainline_3.8.bbappend:
>> >>
>> >> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>> >> SRC_URI +=3D " file://0019-mine.patch \
>> >>              file://defconfig \
>> >>              "
>> >>
>> >> But the defconfig and .config files on ${S} and ${WORKDIR} used are
>> from
>> >> meta-beagleboad, not from my bbappend.
>> >>
>> >> I tried to follow the instructions to add config fragments on the pag=
e
>> >> below but it did not worked too.
>> >>
>> >>
>> http://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html#chan=
ging-the-configuration
>> >>
>> >> The strange thing is: My patch is applied but my defconfig, or config
>> >> fragment is not used.
>> >> I just want to add CONFIG_WATCHDOG_NOWAYOUT=3Dy.
>> >>
>> >> I already did a cleasstate but no success.
>> >>
>> >> Any hints?
>> >>
>> >>
>> >> Regards,
>> >>
>> >> --
>> >> *dS
>> >> Diego Sueiro
>> >>
>> >> /*long live rock 'n roll*/
>> >>
>> >> _______________________________________________
>> >> yocto mailing list
>> >> yocto@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/yocto
>> >>
>> >
>> >
>> >
>> >
>> >
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>
>

--089e0118460e8e112d04e8dfbf27
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Folks,<div><br></div><div style>Looking at log.do_unpack i=
t shows:</div><div style><blockquote style=3D"margin:0px 0px 0px 40px;borde=
r:none;padding:0px"><div style>...</div><div style>NOTE: Unpacking=C2=A0&lt=
;...&gt;/meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline-3.=
8/beaglebone/defconfig to=C2=A0&lt;...&gt;/build/tmp-angstrom_v2013_06-egli=
bc/work/beaglebone-angstrom-linux-gnueabi/linux-mainline/3.8.13-r23a/<br>

</div><div>...</div></blockquote></div><blockquote style=3D"margin:0px 0px =
0px 40px;border:none;padding:0px"><div style><div style>NOTE: Unpacking &lt=
;...&gt;/meta-mine/recipes-kernel/linux/linux-mainline-3.8/mine.patch to &l=
t;...&gt;/build/tmp-angstrom_v2013_06-eglibc/work/beaglebone-angstrom-linux=
-gnueabi/linux-mainline/3.8.13-r23a/</div>

</div><div style><div style>NOTE: Unpacking=C2=A0&lt;...&gt;/meta-beagleboa=
rd/common-bsp/recipes-kernel/linux/linux-mainline-3.8/beaglebone/defconfig =
to=C2=A0&lt;...&gt;/build/tmp-angstrom_v2013_06-eglibc/work/beaglebone-angs=
trom-linux-gnueabi/linux-mainline/3.8.13-r23a/</div>

</div></blockquote><br><div style>Note that it copies defconfig from meta-b=
eagleboard and in the end, instead copying mine, it is copying from meta-be=
agleboard again.</div><div style><br></div><div style>My layer has the prio=
rity higher than meta-beagleboard.</div>

<div style><br></div><div style><br></div></div><div class=3D"gmail_extra">=
<br clear=3D"all"><div><div dir=3D"ltr"><div>Abra=C3=A7os,</div><div><br></=
div>--<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados<br><a href=
=3D"http://www.embarcados.com.br" target=3D"_blank">www.embarcados.com.br</=
a><br>

<br>Engenheiro de Controle e Automa=C3=A7=C3=A3o<br>UNIVERSIDADE FEDERAL DE=
 ITAJUB=C3=80<br><br>/*long live rock &#39;n roll*/</div></div>
<br><br><div class=3D"gmail_quote">2013/10/16 Diego Sueiro <span dir=3D"ltr=
">&lt;<a href=3D"mailto:diego.sueiro@gmail.com" target=3D"_blank">diego.sue=
iro@gmail.com</a>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<div dir=3D"ltr">Guys,<div><br></div><div>As I told before, I already tried=
 the config fragment strategy and it did not worked too.</div><div><br></di=
v><div>Looking at <a href=3D"http://linux-mailine-3.8.bb" target=3D"_blank"=
>linux-mailine-3.8.bb</a> from meta-beagleboard[1] it just inherits kernel =
and not inherits linux-yocto or requires linux-yocto.inc. So I believe that=
 the config fragment will not work. But I can be wrong.</div>


<div><br></div><div>On directory &quot;meta-mine/recipes-kernel/linux/&quot=
; I have this:</div><div><blockquote style=3D"margin:0px 0px 0px 40px;borde=
r:none;padding:0px"><div><div>.</div><div>=E2=94=9C=E2=94=80=E2=94=80 files=
</div>
<div>=E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 mine.patch</div><div>=E2=
=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 defconfig</div><div>=E2=94=94=E2=
=94=80=E2=94=80 linux-mainline_3.8.bbappend<br></div></div></blockquote><di=
v><br></div>And my=C2=A0linux-mainline_3.8.bbappend recipe:</div><div><bloc=
kquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">


<div><div class=3D"im"><div>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/f=
iles:&quot;</div></div><div>SRC_URI +=3D &quot; file://mine.patch \<br></di=
v><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://defconfig \</=
div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;</div></div>

</blockquote>
The mine.patch is applied but defconfig not.</div><div><br></div><div>I&#39=
;ve already tried to use another FILESEXTRAPATHS layout like[2],but no succ=
ess too.</div><div><br></div><div>How can I have the &quot;bb&quot; command=
 listed on the following link?</div>


<div><a href=3D"http://www.crashcourse.ca/wiki/index.php/OE_FILESEXTRAPATHS=
" target=3D"_blank">http://www.crashcourse.ca/wiki/index.php/OE_FILESEXTRAP=
ATHS</a><br></div><div><br></div><div class=3D"gmail_extra"><br clear=3D"al=
l">

<div>
<div dir=3D"ltr"><div>[1] -<a href=3D"https://github.com/beagleboard/meta-b=
eagleboard/blob/dylan/common-bsp/recipes-kernel/linux/linux-mainline_3.8.bb=
" target=3D"_blank">=C2=A0https://github.com/beagleboard/meta-beagleboard/b=
lob/dylan/common-bsp/recipes-kernel/linux/linux-mainline_3.8.bb</a></div>


<div>[2] -=C2=A0<a href=3D"http://cgit.openembedded.org/meta-handheld/tree/=
recipes-kernel/linux/linux-yocto_3.10.bbappend" target=3D"_blank">http://cg=
it.openembedded.org/meta-handheld/tree/recipes-kernel/linux/linux-yocto_3.1=
0.bbappend</a></div>

<div class=3D"im"><div>
<br></div><div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><b=
r>/*long live rock &#39;n roll*/<br></div></div></div><div><div class=3D"h5=
">
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
<span><font color=3D"#888888"><br>
Andrea<br>
</font></span><div><div><br>
<br>
On Tue, Oct 15, 2013 at 11:49 PM, Rudolf Streif<br>
&lt;<a href=3D"mailto:rstreif@linuxfoundation.org" target=3D"_blank">rstrei=
f@linuxfoundation.org</a>&gt; wrote:<br>
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
ego.sueiro@gmail.com" target=3D"_blank">diego.sueiro@gmail.com</a>&gt;<br>
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
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a><br>
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
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</div></div></blockquote></div><br></div></div></div></div>
</blockquote></div><br></div>

--089e0118460e8e112d04e8dfbf27--
