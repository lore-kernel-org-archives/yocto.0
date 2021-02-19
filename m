Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
 by mx.groups.io with SMTP id smtpd.web11.2257.1613695342604297131
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Feb 2021 16:42:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=u99F+3Sh;
 spf=pass (domain: gmail.com, ip: 209.85.166.178, mailfrom: maaloulsafouane@gmail.com)
Received: by mail-il1-f178.google.com with SMTP id o15so3155403ilt.6
        for <yocto@lists.yoctoproject.org>; Thu, 18 Feb 2021 16:42:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bdGiYo4k6bjf5H8MRS5x3Yl4TwQjFe0pNgrSx22mRZU=;
        b=u99F+3ShY7C/prXYKtVw7gzhQiTr+2lPXRIzYVDgqm3x0CeHf4Fs3ixDgnAhgtZXeR
         phecZ0TdyhKZumpuJLib2g3nZjmZh+UPhfwyWfVKofgrzDIJQ5kfzY6bvUq4EFD0YWcx
         qhehihYlr0pdb/SkURpAFP71IN4JQ+bUQGljWU/avNaxTqW2nDEFBbEibSV0HIYcr9xc
         +efh49iG98beKC+8qDqzq89HxGLR2+6JMQw5HWnfkrPP2CJq5Smu9o8hQyQeOQ12fsiI
         puXjZInnL6xmivloUGQjjbdcpIIF3cpxi1gpfUAIp4QzTGT89reO8b2fhnWtEHrA6VZe
         3Ahg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bdGiYo4k6bjf5H8MRS5x3Yl4TwQjFe0pNgrSx22mRZU=;
        b=D6YfN+ivFX744M2iKd0h+kjrlDcDtjXPRJq72mDd/OwrHl6yd7d2t+w4CTEwq88hMr
         7exZmCQaUQ9x7xO3ou7vtLLeXA23yKUShVMo30Nq65Zyr6qasPispxPPVr6OmRqzNCmB
         YK0xpuvV+4uX4rz+CSLjtHleBYPq8B4JXmIYljmlZovoFaCMMR2Ee5dfGXBFDmG582F5
         X3vXeQET0aY0EkN80KY8IsZAjU2soTJUCbepkiKuSRNjt1QiDe7Q+5eCy95UbCxOcwDp
         PtUbALK7NR7LW9SzSDBbsbM3Mk0chZGtBzfyJd3GHhl7i5daxkgBCY5neG8YSFlRQ4+c
         RTxw==
X-Gm-Message-State: AOAM533KoV+idJdqQpYSmhPdLwViIocqChDlCJULb9mpynMvk0cOXwYH
	QdVpkOwXJ8v1C+xYnHrA5Ks4cJpMELzvWkrrQs0=
X-Google-Smtp-Source: ABdhPJyjI5JtyJr1535nrysPNPGslQTEd1mKb73oegxYxaVvoZvHaE+9IbCO8o6bO/8N3UI3X4pwSXSQz045DGPWqLc=
X-Received: by 2002:a92:c849:: with SMTP id b9mr1545288ilq.271.1613695341951;
 Thu, 18 Feb 2021 16:42:21 -0800 (PST)
MIME-Version: 1.0
References: <OHWd.1613555997180740145.8Ytp@lists.yoctoproject.org>
 <CAGAf8LxoGwaocSUq04jqar4hQH2NiZ2DdumN5dpnQm4dr2wkew@mail.gmail.com>
 <CAEj=YVJ6z6etLaMrFUXREfeyFhaS-UvnnDh19zUor37eAPGnvQ@mail.gmail.com>
 <CAGAf8LyRvfu_iw+BQkiVYUuF6po0d0Pe0xqsVRjG8_bG-u75fA@mail.gmail.com>
 <CAEj=YVLoCXsYPF_ptXLZTDuQi3JLwRZAJNmbrUziUj-Mf8DHfw@mail.gmail.com>
 <CAGAf8Lzfz7qyNLiPWDwvyj5gGs64pUHMK3uo9daHKC6-jB7toA@mail.gmail.com>
 <CAEj=YVJroNCPYDdfw9BfhMzySWkVaLSnkmqNv6JTMhBv7NCMoQ@mail.gmail.com>
 <CAGAf8LwoLjf8cn4+wz5o4HeXKZJFz4Pi0vE2U7-wXs3aZmQc-w@mail.gmail.com>
 <CAEj=YV+8uSPa2J07-eFPwB=fwGEuY728a+81iudXt2fPqLFFMA@mail.gmail.com>
 <CAMKF1srYCHnDcfCyZR_psvM=_-p9ccgtHOqdba9Ykv4iuv4LbA@mail.gmail.com>
 <CAEj=YVKUCa+P1tpNja3EAp5aVE=TA4kC+uAzQo4ScyzGQbVNJQ@mail.gmail.com>
 <CAMKF1sqjo4nbLzGZcfMMy6vSrNNOBW3eWG9JeyrNbNGYc==K8A@mail.gmail.com>
 <CAEj=YV+dXhT=iiD3eSHLsm9FqJK_BUQ3M6RwsOBZwfj09N1Uig@mail.gmail.com> <CAMKF1so+8tNx_--8LBwmMtv-2J_pUFsQnQFb0UOfKstk_F4H6g@mail.gmail.com>
In-Reply-To: <CAMKF1so+8tNx_--8LBwmMtv-2J_pUFsQnQFb0UOfKstk_F4H6g@mail.gmail.com>
From: "safouane maaloul" <maaloulsafouane@gmail.com>
Date: Fri, 19 Feb 2021 01:42:10 +0100
Message-ID: <CAEj=YVLrX-x5M-Zfd5axo2d_OE=6NJVb9RZsLzTgefiu7tS-KQ@mail.gmail.com>
Subject: Re: [yocto] #av1 #armv6 #raspberrypi #neon
To: Khem Raj <raj.khem@gmail.com>
Cc: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a1fdb305bba5b904"

--000000000000a1fdb305bba5b904
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yeah it works. I have yet to test the image on my raspberry pi Monday in
the office. But I finished the build.  I will tested Monday and i
will tell you. I have a warning :
image-1.0-r0 do_rootfs: The license listed AOM-Patent-1.0 was not in the
licenses collected for recipe aom

I think because the name of the license in
meta-openembedded/meta-multimedia/licenses/ is AOM-Patent-License-1.0 and
not AOM-Patent-1.0 like mentioned in the recipe. I think it must be
changed. Thanks I will tell you Monday what happened when I try the image
on my raspberry Pi zero W.

Best regards,

Safouane

Le ven. 19 f=C3=A9vr. 2021 =C3=A0 00:00, Khem Raj <raj.khem@gmail.com> a =
=C3=A9crit :

> Please try applying below patch to aom recipe in meta-openembedded repo
>
>
> https://lists.openembedded.org/g/openembedded-devel/topic/meta_multimedi=
a_patch_aom/80743335?p=3D,,,20,0,0,0::recentpostdate%2Fsticky,,,20,2,0,8074=
3335
>
> let me know how it goes.
>
> On Thu, Feb 18, 2021 at 12:22 PM safouane maaloul
> <maaloulsafouane@gmail.com> wrote:
> >
> > Sorry to annoying you with my question but how do i find where HAVE_NE=
ON
> is set ?
> >
> > Best regards,
> >
> > Safouane
> >
> > Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 21:16, Khem Raj <raj.khem@gmail.com>=
 a =C3=A9crit :
> >>
> >> Well we do not enable neon for this tune but aom still seems to want =
it
> so I would suggest to look at the build and see if it=E2=80=99s disablin=
g neon and
> have HAVE_NEON is not set properly
> >>
> >> On Thu, Feb 18, 2021 at 12:12 PM safouane maaloul <
> maaloulsafouane@gmail.com> wrote:
> >>>
> >>> I have an erreur:
> >>> |
> /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-v=
fp-poky-linux-gnueabi/aom/2.0.0-r0/git/av1/common/arm/mem_neon.h:525:24:
> note: called from here
> >>> |   525 |   const int32x4_t v0 =3D vld1q_s32(buf);
> >>> |       |                        ^~~~~~~~~~~~~~
> >>> | ninja: build stopped: subcommand failed.
> >>> | WARNING:
> /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-v=
fp-poky-linux-gnueabi/aom/2.0.0-r0/temp/run.do_compile.24037:155
> exit 1 from 'eval ${DESTDIR:+DESTDIR=3D${DESTDIR} }VERBOSE=3D1 cmake --b=
uild
> '/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-=
vfp-poky-linux-gnueabi/aom/2.0.0-r0/build'
> "$@" -- ${EXTRA_OECMAKE_BUILD}'
> >>> | WARNING: Backtrace (BB generated script):
> >>> |       #1: cmake_runcmake_build,
> /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-v=
fp-poky-linux-gnueabi/aom/2.0.0-r0/temp/run.do_compile.24037,
> line 155
> >>> |       #2: cmake_do_compile,
> /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-v=
fp-poky-linux-gnueabi/aom/2.0.0-r0/temp/run.do_compile.24037,
> line 149
> >>> |       #3: do_compile,
> /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-v=
fp-poky-linux-gnueabi/aom/2.0.0-r0/temp/run.do_compile.24037,
> line 144
> >>> |       #4: main,
> /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-v=
fp-poky-linux-gnueabi/aom/2.0.0-r0/temp/run.do_compile.24037,
> line 168
> >>> |
> >>> | Backtrace (metadata-relative locations):
> >>> |       #1: cmake_runcmake_build,
> /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/../../poky/meta/classes/=
cmake.bbclass,
> line 205
> >>> |       #2: cmake_do_compile,
> /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/../../poky/meta/classes/=
cmake.bbclass,
> line 209
> >>> |       #3: do_compile, autogenerated, line 2
> >>> ERROR: Task
> (/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/../../meta-openembedded=
/meta-multimedia/recipes-multimedia/aom/aom_2.0.0.bb:do_compile)
> failed with exit code '1'
> >>> NOTE: Tasks Summary: Attempted 3538 tasks of which 3326 didn't need =
to
> be rerun and 1 failed.
> >>>
> >>> Summary: 1 task failed:
> >>>
>  /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/../../meta-openembedded=
/meta-multimedia/recipes-multimedia/aom/aom_2.0.0.bb:
> do_compile
> >>> Summary: There was 1 WARNING message shown.
> >>> Summary: There was 1 ERROR message shown, returning a non-zero exit
> code.
> >>>
> >>> Do you have any idea why it didn't work ?
> >>>
> >>> Best regards,
> >>>
> >>> Safouane
> >>>
> >>> Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 20:54, Khem Raj <raj.khem@gmail.co=
m> a =C3=A9crit :
> >>>>
> >>>> can you try adding
> >>>>
> >>>> EXTRA_OECMAKE +=3D "-DHAVE_NEON=3D0"
> >>>>
> >>>> and see if that helps ? for whatever reason set_aom_detect_var is
> >>>> enabling it where as default should be 0
> >>>>
> >>>> On Thu, Feb 18, 2021 at 10:42 AM safouane maaloul
> >>>> <maaloulsafouane@gmail.com> wrote:
> >>>> >
> >>>> > I succed in removing callconvention-hard from TUNE_FEATURES ? But=
 i
> have the same problem. I am pretty sure that i get get it working if i a=
dd
> neon to the TUNE_FEATURES. Something like this     TUNE_FEATURES=3D "arm
> armv6 vfp arm1176jzfs callconvention-hard neon". But I can't do it with
> armv6. I have to use raspberrypi zero w so i have to make it work with
> armv6. I know that i can make it work with armv7 and armv8. I have error
> like this : | In file included from
> /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-v=
fp-poky-linux-gnueabi/aom/2.0.0-r0/git/av1/encoder/arm/neon/quantize_neon.c=
:20:
> >>>> > |
> /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-v=
fp-poky-linux-gnueabi/aom/2.0.0-r0/git/av1/common/arm/mem_neon.h:528:24:
> note: called from here
> >>>> > |   528 |   const int16x4_t s1 =3D vmovn_s32(v1);
> >>>> > |       |                        ^~~~~~~~~~~~~
> >>>> > | In file included from
> /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-v=
fp-poky-linux-gnueabi/aom/2.0.0-r0/git/av1/encoder/arm/neon/quantize_neon.c=
:12:
> >>>> > |
> /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-v=
fp-poky-linux-gnueabi/aom/2.0.0-r0/recipe-sysroot-native/usr/lib/arm-poky-l=
inux-gnueabi/gcc/arm-poky-linux-gnueabi/10.2.0/include/arm_neon.h:7556:1:
> error: inlining failed in call to 'always_inline' 'vmovn_s32': target
> specific option mismatch
> >>>> > |  7556 | vmovn_s32 (int32x4_t __a)
> >>>> > |       | ^~~~~~~~~
> >>>> >
> >>>> > So i am sure i have to add the neon feature so i appreciate it if
> someone can help me. I didn't find a workaround this problem on the
> internet.
> >>>> >
> >>>> > Best regards,
> >>>> >
> >>>> > Safouane
> >>>> >
> >>>> > Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 18:00, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> a =C3=A9crit :
> >>>> >>
> >>>> >> https://yocto.yoctoproject.narkive.com/Wle40I09/gcc-on-arm
> >>>> >>
> >>>> >>
> https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#v=
ar-TUNE_FEATURES
> >>>> >>
> https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#v=
ar-AVAILTUNES
> >>>> >>
> >>>> >> Zee
> >>>> >> _______
> >>>> >>
> >>>> >> On Thu, Feb 18, 2021 at 3:28 PM safouane maaloul
> >>>> >> <maaloulsafouane@gmail.com> wrote:
> >>>> >> >
> >>>> >> > Yes I will check it. Do you know how to remove
> callconvention-hard from TUNE_FEATURES ?
> >>>> >> >
> >>>> >> > Best regards,
> >>>> >> >
> >>>> >> > Safouane
> >>>> >> >
> >>>> >> > Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 14:52, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> a =C3=A9crit :
> >>>> >> >>
> >>>> >> >> > TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs
> callconvention-hard"
> >>>> >> >>
> >>>> >> >> Here is an interesting reading for you, for me also:
> >>>> >> >>
> https://www.yoctoproject.org/pipermail/meta-xilinx/2015-July/001060.html
> >>>> >> >>
> >>>> >> >> What I am getting from this reading is that you need to try
> with the
> >>>> >> >> following line:
> >>>> >> >> TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs"
> >>>> >> >>
> >>>> >> >> I guess, YOCTO people have not too much experience with armv6=
,
> nor me,
> >>>> >> >> but this should be (I hope) generic.
> >>>> >> >>
> >>>> >> >> Hope this helps.
> >>>> >> >> Zoran
> >>>> >> >> _______
> >>>> >> >>
> >>>> >> >> On Thu, Feb 18, 2021 at 12:44 PM safouane maaloul
> >>>> >> >> <maaloulsafouane@gmail.com> wrote:
> >>>> >> >> >
> >>>> >> >> > This is my build configuration :
> >>>> >> >> > Build Configuration:
> >>>> >> >> > BB_VERSION           =3D "1.46.0"
> >>>> >> >> > BUILD_SYS            =3D "x86_64-linux"
> >>>> >> >> > NATIVELSBSTRING      =3D "universal"
> >>>> >> >> > TARGET_SYS           =3D "arm-poky-linux-gnueabi"
> >>>> >> >> > MACHINE              =3D "raspberrypi0-wifi"
> >>>> >> >> > DISTRO               =3D "poky"
> >>>> >> >> > DISTRO_VERSION       =3D "3.1.5"
> >>>> >> >> > TUNE_FEATURES        =3D "arm armv6 vfp arm1176jzfs
> callconvention-hard"
> >>>> >> >> > TARGET_FPU           =3D "hard"
> >>>> >> >> > meta
> >>>> >> >> > meta-poky
> >>>> >> >> > meta-yocto-bsp       =3D
> "dunfell:7ea41de13774675828239b7738d3f5d70be8b1af"
> >>>> >> >> > meta-oe
> >>>> >> >> > meta-multimedia
> >>>> >> >> > meta-networking
> >>>> >> >> > meta-python          =3D
> "dunfell:5bba79488b7d393d2258d6e917f7bf7b0d7c4073"
> >>>> >> >> > meta-raspberrypi     =3D
> "dunfell:987993209716302eb8f314f69a2a3340555f94d8"
> >>>> >> >> > meta-gstreamer1.0    =3D
> "dunfell:b489b1ba084544d9c4c08f7c3b3d1c37ffa53c51"
> >>>> >> >> >
> >>>> >> >> > Best regards,
> >>>> >> >> >
> >>>> >> >> > Safouane
> >>>> >> >> >
> >>>> >> >> > Le mer. 17 f=C3=A9vr. 2021 =C3=A0 13:24, Zoran Stojsavljevi=
c <
> zoran.stojsavljevic@gmail.com> a =C3=A9crit :
> >>>> >> >> >>
> >>>> >> >> >> So, what is your MACHINE variable set to?
> >>>> >> >> >>
> >>>> >> >> >> Maybe knowing that, somebody can help.
> >>>> >> >> >>
> >>>> >> >> >> Zee
> >>>> >> >> >
> >>>> >> >> >
> >>>> >> >> >
> >>>> >> >> > --
> >>>> >> >> > SAFOUANE MAALOUL
> >>>> >> >> > maaloulsafouane@gmail.com
> >>>> >> >> >
> >>>> >> >
> >>>> >> >
> >>>> >> >
> >>>> >> > --
> >>>> >> > SAFOUANE MAALOUL
> >>>> >> > maaloulsafouane@gmail.com
> >>>> >> >
> >>>> >
> >>>> >
> >>>> >
> >>>> > --
> >>>> > SAFOUANE MAALOUL
> >>>> > maaloulsafouane@gmail.com
> >>>> >
> >>>> >
> >>>> >=20
> >>>> >
> >>>
> >>>
> >>>
> >>> --
> >>> SAFOUANE MAALOUL
> >>> maaloulsafouane@gmail.com
> >>>
> > --
> > SAFOUANE MAALOUL
> > maaloulsafouane@gmail.com
> >
>


--=20
*SAFOUANE MAALOUL*

*maaloulsafouane@gmail.com <maaloulsafouane@gmail.com>*

--000000000000a1fdb305bba5b904
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Yeah it works. I have yet to test the ima=
ge on my raspberry pi Monday in the office. But I finished the build.=C2=A0=
 I will tested Monday and i will=C2=A0tell=C2=A0you. I have a warning=C2=A0=
:=C2=A0</div><div dir=3D"ltr">image-1.0-r0 do_rootfs: The license listed AO=
M-Patent-1.0 was not in the licenses collected for recipe aom=C2=A0</div><d=
iv dir=3D"ltr"><br></div><div>I think because the name of the license in me=
ta-openembedded/meta-multimedia/licenses/ is AOM-Patent-License-1.0 and not=
 AOM-Patent-1.0 like mentioned in the recipe. I think it must be changed. T=
hanks I will tell you Monday what happened=C2=A0when I try the image on my =
raspberry Pi zero W.</div><div><br></div><div>Best regards,</div><div><br><=
/div><div>Safouane</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">Le=C2=A0ven. 19 f=C3=A9vr. 2021 =C3=A0=C2=A000:00, =
Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&g=
t; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">Please try applying below patch to aom recipe in meta-openembedded r=
epo<br>
<br>
<a href=3D"https://lists.openembedded.org/g/openembedded-devel/topic/meta_=
multimedia_patch_aom/80743335?p=3D,,,20,0,0,0::recentpostdate%2Fsticky,,,20=
,2,0,80743335" rel=3D"noreferrer" target=3D"_blank">https://lists.openembed=
ded.org/g/openembedded-devel/topic/meta_multimedia_patch_aom/80743335?p=3D,=
,,20,0,0,0::recentpostdate%2Fsticky,,,20,2,0,80743335</a><br>
<br>
let me know how it goes.<br>
<br>
On Thu, Feb 18, 2021 at 12:22 PM safouane maaloul<br>
&lt;<a href=3D"mailto:maaloulsafouane@gmail.com" target=3D"_blank">maaloul=
safouane@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Sorry to annoying you with my question but how do i find where HAVE_N=
EON is set ?<br>
&gt;<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Safouane<br>
&gt;<br>
&gt; Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 21:16, Khem Raj &lt;<a href=3D"mail=
to:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; a =C3=
=A9crit :<br>
&gt;&gt;<br>
&gt;&gt; Well we do not enable neon for this tune but aom still seems to w=
ant it so I would suggest to look at the build and see if it=E2=80=99s disa=
bling neon and have HAVE_NEON is not set properly<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Feb 18, 2021 at 12:12 PM safouane maaloul &lt;<a href=3D"=
mailto:maaloulsafouane@gmail.com" target=3D"_blank">maaloulsafouane@gmail.c=
om</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I have an erreur:<br>
&gt;&gt;&gt; | /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/ar=
m1176jzfshf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/git/av1/common/arm/mem_neon=
.h:525:24: note: called from here<br>
&gt;&gt;&gt; |=C2=A0 =C2=A0525 |=C2=A0 =C2=A0const int32x4_t v0 =3D vld1q_=
s32(buf);<br>
&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~~~<br>
&gt;&gt;&gt; | ninja: build stopped: subcommand failed.<br>
&gt;&gt;&gt; | WARNING: /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tm=
p/work/arm1176jzfshf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/temp/run.do_compil=
e.24037:155 exit 1 from &#39;eval ${DESTDIR:+DESTDIR=3D${DESTDIR} }VERBOSE=
=3D1 cmake --build &#39;/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tm=
p/work/arm1176jzfshf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/build&#39; &quot;$=
@&quot; -- ${EXTRA_OECMAKE_BUILD}&#39;<br>
&gt;&gt;&gt; | WARNING: Backtrace (BB generated script):<br>
&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0#1: cmake_runcmake_build, /workdi=
r/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp-poky-li=
nux-gnueabi/aom/2.0.0-r0/temp/run.do_compile.24037, line 155<br>
&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0#2: cmake_do_compile, /workdir/te=
p-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp-poky-linux-=
gnueabi/aom/2.0.0-r0/temp/run.do_compile.24037, line 149<br>
&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0#3: do_compile, /workdir/tep-cam-=
rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueab=
i/aom/2.0.0-r0/temp/run.do_compile.24037, line 144<br>
&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0#4: main, /workdir/tep-cam-rpi-yo=
cto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/aom/=
2.0.0-r0/temp/run.do_compile.24037, line 168<br>
&gt;&gt;&gt; |<br>
&gt;&gt;&gt; | Backtrace (metadata-relative locations):<br>
&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0#1: cmake_runcmake_build, /workdi=
r/tep-cam-rpi-yocto/rpi-build-gatesgarth/../../poky/meta/classes/cmake.bbcl=
ass, line 205<br>
&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0#2: cmake_do_compile, /workdir/te=
p-cam-rpi-yocto/rpi-build-gatesgarth/../../poky/meta/classes/cmake.bbclass,=
 line 209<br>
&gt;&gt;&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0#3: do_compile, autogenerated, li=
ne 2<br>
&gt;&gt;&gt; ERROR: Task (/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/=
../../meta-openembedded/meta-multimedia/recipes-multimedia/aom/aom_2.0.0.bb=
:do_compile) failed with exit code &#39;1&#39;<br>
&gt;&gt;&gt; NOTE: Tasks Summary: Attempted 3538 tasks of which 3326 didn&=
#39;t need to be rerun and 1 failed.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Summary: 1 task failed:<br>
&gt;&gt;&gt;=C2=A0 =C2=A0/workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/.=
./../meta-openembedded/meta-multimedia/recipes-multimedia/aom/aom_2.0.0.bb:=
do_compile<br>
&gt;&gt;&gt; Summary: There was 1 WARNING message shown.<br>
&gt;&gt;&gt; Summary: There was 1 ERROR message shown, returning a non-zer=
o exit code.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Do you have any idea why it didn&#39;t work ?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Best regards,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Safouane<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 20:54, Khem Raj &lt;<a href=
=
=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt=
; a =C3=A9crit :<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; can you try adding<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; EXTRA_OECMAKE +=3D &quot;-DHAVE_NEON=3D0&quot;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; and see if that helps ? for whatever reason set_aom_detec=
t_var is<br>
&gt;&gt;&gt;&gt; enabling it where as default should be 0<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On Thu, Feb 18, 2021 at 10:42 AM safouane maaloul<br>
&gt;&gt;&gt;&gt; &lt;<a href=3D"mailto:maaloulsafouane@gmail.com" target=
=3D"_blank">maaloulsafouane@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; I succed in removing callconvention-hard from TUNE_F=
EATURES ? But i have the same problem. I am pretty sure that i get get it w=
orking if i add neon to the TUNE_FEATURES. Something like this=C2=A0 =C2=A0=
 =C2=A0TUNE_FEATURES=3D &quot;arm armv6 vfp arm1176jzfs callconvention-hard=
 neon&quot;. But I can&#39;t do it with armv6. I have to use raspberrypi ze=
ro w so i have to make it work with armv6. I know that i can make it work w=
ith armv7 and armv8. I have error like this : | In file included from /work=
dir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp-poky-=
linux-gnueabi/aom/2.0.0-r0/git/av1/encoder/arm/neon/quantize_neon.c:20:<br>
&gt;&gt;&gt;&gt; &gt; | /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tm=
p/work/arm1176jzfshf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/git/av1/common/arm=
/mem_neon.h:528:24: note: called from here<br>
&gt;&gt;&gt;&gt; &gt; |=C2=A0 =C2=A0528 |=C2=A0 =C2=A0const int16x4_t s1 =
=3D vmovn_s32(v1);<br>
&gt;&gt;&gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~=
~~<br>
&gt;&gt;&gt;&gt; &gt; | In file included from /workdir/tep-cam-rpi-yocto/r=
pi-build-gatesgarth/tmp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/aom/2.0.0=
-r0/git/av1/encoder/arm/neon/quantize_neon.c:12:<br>
&gt;&gt;&gt;&gt; &gt; | /workdir/tep-cam-rpi-yocto/rpi-build-gatesgarth/tm=
p/work/arm1176jzfshf-vfp-poky-linux-gnueabi/aom/2.0.0-r0/recipe-sysroot-nat=
ive/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/10.2.0/includ=
e/arm_neon.h:7556:1: error: inlining failed in call to &#39;always_inline&#=
39; &#39;vmovn_s32&#39;: target specific option mismatch<br>
&gt;&gt;&gt;&gt; &gt; |=C2=A0 7556 | vmovn_s32 (int32x4_t __a)<br>
&gt;&gt;&gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0| ^~~~~~~~~<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; So i am sure i have to add the neon feature so i app=
reciate it if someone can help me. I didn&#39;t find a workaround this prob=
lem on the internet.<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; Best regards,<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; Safouane<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 18:00, Zoran Stojs=
avljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_bl=
ank">zoran.stojsavljevic@gmail.com</a>&gt; a =C3=A9crit :<br>
&gt;&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; <a href=3D"https://yocto.yoctoproject.narkive.co=
m/Wle40I09/gcc-on-arm" rel=3D"noreferrer" target=3D"_blank">https://yocto.y=
octoproject.narkive.com/Wle40I09/gcc-on-arm</a><br>
&gt;&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; <a href=3D"https://www.yoctoproject.org/docs/cur=
rent/mega-manual/mega-manual.html#var-TUNE_FEATURES" rel=3D"noreferrer" tar=
get=3D"_blank">https://www.yoctoproject.org/docs/current/mega-manual/mega-m=
anual.html#var-TUNE_FEATURES</a><br>
&gt;&gt;&gt;&gt; &gt;&gt; <a href=3D"https://www.yoctoproject.org/docs/cur=
rent/mega-manual/mega-manual.html#var-AVAILTUNES" rel=3D"noreferrer" target=
=
=3D"_blank">https://www.yoctoproject.org/docs/current/mega-manual/mega-man=
ual.html#var-AVAILTUNES</a><br>
&gt;&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; Zee<br>
&gt;&gt;&gt;&gt; &gt;&gt; _______<br>
&gt;&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; On Thu, Feb 18, 2021 at 3:28 PM safouane maaloul=
<br>
&gt;&gt;&gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:maaloulsafouane@gmail.com"=
 target=3D"_blank">maaloulsafouane@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt; Yes I will check it. Do you know how to rem=
ove callconvention-hard from TUNE_FEATURES ?<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt; Best regards,<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt; Safouane<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt; Le jeu. 18 f=C3=A9vr. 2021 =C3=A0 14:52, Zo=
ran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" targ=
et=3D"_blank">zoran.stojsavljevic@gmail.com</a>&gt; a =C3=A9crit :<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =3D &quot;arm armv6 vfp arm1176jzfs callconvention-hard&quot;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; Here is an interesting reading for you,=
 for me also:<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; <a href=3D"https://www.yoctoproject.org=
/pipermail/meta-xilinx/2015-July/001060.html" rel=3D"noreferrer" target=3D"=
_blank">https://www.yoctoproject.org/pipermail/meta-xilinx/2015-July/001060=
.html</a><br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; What I am getting from this reading is =
that you need to try with the<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; following line:<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =3D &quot;arm armv6 vfp arm1176jzfs&quot;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; I guess, YOCTO people have not too much=
 experience with armv6, nor me,<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; but this should be (I hope) generic.<br=
>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; Hope this helps.<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; Zoran<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; _______<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; On Thu, Feb 18, 2021 at 12:44 PM safoua=
ne maaloul<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:maaloulsafouane@g=
mail.com" target=3D"_blank">maaloulsafouane@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; This is my build configuration :<b=
r>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; Build Configuration:<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0=3D &quot;1.46.0&quot;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; NATIVELSBSTRING=C2=A0 =C2=A0 =C2=
=A0 =3D &quot;universal&quot;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0=3D &quot;arm-poky-linux-gnueabi&quot;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =3D &quot;raspberrypi0-wifi&quot;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0=
 =C2=A0=3D &quot;3.1.5&quot;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =3D &quot;arm armv6 vfp arm1176jzfs callconvention-hard&quot;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0=3D &quot;hard&quot;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; meta<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; meta-poky<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0=
 =C2=A0=3D &quot;dunfell:7ea41de13774675828239b7738d3f5d70be8b1af&quot;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; meta-oe<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; meta-multimedia<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; meta-networking<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; meta-python=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D &quot;dunfell:5bba79488b7d393d2258d6e917f7bf7b0d7c4073&q=
uot;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; meta-raspberrypi=C2=A0 =C2=A0 =C2=
=A0=3D &quot;dunfell:987993209716302eb8f314f69a2a3340555f94d8&quot;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; meta-gstreamer1.0=C2=A0 =C2=A0 =3D=
 &quot;dunfell:b489b1ba084544d9c4c08f7c3b3d1c37ffa53c51&quot;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; Best regards,<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; Safouane<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; Le mer. 17 f=C3=A9vr. 2021 =C3=A0 =
13:24, Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.=
com" target=3D"_blank">zoran.stojsavljevic@gmail.com</a>&gt; a =C3=A9crit :=
<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt; So, what is your MACHINE varia=
ble set to?<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt; Maybe knowing that, somebody c=
an help.<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;&gt; Zee<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; --<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; SAFOUANE MAALOUL<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt; <a href=3D"mailto:maaloulsafouane@=
gmail.com" target=3D"_blank">maaloulsafouane@gmail.com</a><br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt; --<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt; SAFOUANE MAALOUL<br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt; <a href=3D"mailto:maaloulsafouane@gmail.com=
" target=3D"_blank">maaloulsafouane@gmail.com</a><br>
&gt;&gt;&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; --<br>
&gt;&gt;&gt;&gt; &gt; SAFOUANE MAALOUL<br>
&gt;&gt;&gt;&gt; &gt; <a href=3D"mailto:maaloulsafouane@gmail.com" target=
=3D"_blank">maaloulsafouane@gmail.com</a><br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; <br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; SAFOUANE MAALOUL<br>
&gt;&gt;&gt; <a href=3D"mailto:maaloulsafouane@gmail.com" target=3D"_blank=
">maaloulsafouane@gmail.com</a><br>
&gt;&gt;&gt;<br>
&gt; --<br>
&gt; SAFOUANE MAALOUL<br>
&gt; <a href=3D"mailto:maaloulsafouane@gmail.com" target=3D"_blank">maalou=
lsafouane@gmail.com</a><br>
&gt;<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature"><div dir=3D"ltr"><font color=3D"#000000"><span>=
<b>SAFOUANE MAALOUL</b></span></font><div><span><b><u style=3D"background-c=
olor:rgb(255,255,255)"><font color=3D"#0b5394"><a href=3D"mailto:maaloulsaf=
ouane@gmail.com" target=3D"_blank">maaloulsafouane@gmail.com</a></font></u>=
<span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"><br></sp=
an></b></span><div><span style=3D"background-color:rgb(255,255,255)"><font =
color=3D"#000000"><b><br></b></font></span></div></div></div></div>

--000000000000a1fdb305bba5b904--
