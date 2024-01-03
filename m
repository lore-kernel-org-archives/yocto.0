Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86061C46CD2
	for <webhook@archiver.kernel.org>; Wed,  3 Jan 2024 01:42:21 +0000 (UTC)
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
 by mx.groups.io with SMTP id smtpd.web11.4257.1704246131976008573
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Jan 2024 17:42:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Tx5neF2I;
 spf=pass (domain: gmail.com, ip: 209.85.160.46, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-204ec50010eso2833372fac.3
        for <yocto@lists.yoctoproject.org>; Tue, 02 Jan 2024 17:42:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704246131; x=1704850931; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SbeIAMTy2aTITfF1d8ErXy9ezHKbv8Vr1j2OFb3IdIQ=;
        b=Tx5neF2Izg+2S6QSR8B49bw8n+yVdtgOv71et5RLh5Mhwxw/nBg5fLTIM2yUA7iwWz
         4zVetucSCwR6aB8dbfNLREahlCG7SK0FQerN39bRDvHppNQXJilZVV/AWebI36R2kVMI
         LBbu01XoZCN180/z/ESgDHGyPLaCi5dMVghz5+eg3Ks/Bot+xJTt9SflNxHkpvZlfFBy
         H17GCVyUp/mt40QH2JmyEjq4EavKtbc1SXg1bzuGXslUEprqmKny/WpvmAUOSlMn9zbB
         yKV0etpUtyG+rqkHytkimq+2qLpFPNr5TmV9gih+l2T8eJKqoTWiixUIL6URLCOoeETw
         1BvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704246131; x=1704850931;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SbeIAMTy2aTITfF1d8ErXy9ezHKbv8Vr1j2OFb3IdIQ=;
        b=MkGARcAnRJudVVixpu8AJMhLuEAm+w3hMHYVMEjyzSFXyfV0HIs3e4GcpLYINyN9HN
         HC9+rAvp6zv1GSsYVWwJdYyCX/MJwa0t730USLY8UIYtg9kzHtf11ysH3rqXmyPtSyu7
         UlJvF3/k5Ceaugc54EQ+LtJEahHaDRkZcfRLFld9VWa8+dfsZ8A3RnkVwQ4YzsFQIs3F
         n5Uc4H6DEHJXx8iTmxUtocz5JlC4SlVEMFkg2paSms6JifETPeSeEBPtNLsYo1kdXuZg
         cN3d+8HAZ0ZJJ3mNVIOIhOzjS/m3mWkiRH69ayhP5bTPL1n1Bccbze0kfK1K2r9Ts5TM
         p2fw==
X-Gm-Message-State: AOJu0Yy1cUYSYs4h8vFDm4Q9nD2rbtXgb7W53pFtI3I7FSmkZWplfmdG
	5Mc18v/owl/Im1ac2QMYYMwtGFCWxQFT8IPKnfc=
X-Google-Smtp-Source: AGHT+IHP5VMVyThTUvGjL01IyvrA3sur9MRWsez9T2xY4oQc2pmwuL32B+KzrVrh0bWSxwsyTCXfMmCqvEXXrCQ40j8=
X-Received: by 2002:a05:6870:a998:b0:204:5206:365f with SMTP id
 ep24-20020a056870a99800b002045206365fmr17039641oab.88.1704246130854; Tue, 02
 Jan 2024 17:42:10 -0800 (PST)
MIME-Version: 1.0
References: <z3fE.1704232194586691808.HEiw@lists.yoctoproject.org>
In-Reply-To: <z3fE.1704232194586691808.HEiw@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 2 Jan 2024 17:41:59 -0800
Message-ID: <CAMKF1sqjx_YRMPOTTLNf0ku4ZZhtzow50Y2PTzPgSJKxkJDuTA@mail.gmail.com>
Subject: Re: [yocto] Nondeterministic errors with bitbake
To: daniele.lugli@gmail.com, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003d4e53060e00b909"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Jan 2024 01:42:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62074

--0000000000003d4e53060e00b909
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What is the configuration of this system ? CPU and memory specifically one
likely reason is that you have oom hitting the system because it=E2=80=99s
overloaded so check the system logs for any indication of this

On Tue, Jan 2, 2024 at 1:49=E2=80=AFPM <daniele.lugli@gmail.com> wrote:

> Hi all and best wishes for the new year.
>
> I recently worked with nanbield on Ubuntu 22.04.3 in a VirtualBox machine=
.
> I added layers meta-intel and meta-realtime and, with a couple of small
> modifications to core-image-rt-extended.bb and to rt-app.bb, as suggested
> by some kind reader (see
> https://lists.yoctoproject.org/g/yocto/topic/103135158), and after a
> couple of restarts, I could obtain the image, prepare a .vdi from the .wi=
c
> and boot a virtual machine with that disk.
>
> Now I moved to a physical machine with Ubuntu 22.04.3. Here is the build
> configuration:
>
> BB_VERSION           =3D "2.6.1"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal"
> TARGET_SYS           =3D "x86_64-poky-linux"
> MACHINE              =3D "genericx86-64"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D
> "4.3+snapshot-b92406d2313234dccd77b05fe74c09ba9617a738"
> TUNE_FEATURES        =3D "m64 core2"
> TARGET_FPU           =3D ""
> meta
> meta-poky
> meta-yocto-bsp       =3D "master:b92406d2313234dccd77b05fe74c09ba9617a738=
"
> meta-oe              =3D "master:10f1890af03dbb804bffd4fa7eda7729e08f12cb=
"
> meta-intel           =3D "master:5cfefd9a8ff1f5a3534c1ba9d7d7f6971ed5d56f=
"
> meta-realtime        =3D "master:489e1d6b34e46f845a4bfe6461a39c6a4bcb7794=
"
>
> I am using exactly the same configuration as in the virtual Ubuntu and I
> have also applied the suggested modifications to core-image-rt-extended.b=
b
> and to rt-app.bb. So the situation should be the same.
>
> I cannot understand why I am getting error messages which look random:
> when, after the error, I rerun bitbake, I get a different error.
>
> As an instance, in the first run of bitbake core-image-extended.bb I get:
>
> |
> /home/daniele/poky/build/tmp/work/x86_64-linux/cmake-native/3.27.7/cmake-=
3.27.7/Source/cmComputeComponentGraph.cxx:139:1:
> internal compiler error: Segmentation fault
> |   139 | }
> |       | ^
> | 0x7fc36ca4251f ???
> |     ./signal/../sysdeps/unix/sysv/linux/x86_64/libc_sigaction.c:0
> | 0x7fc36ca29d8f __libc_start_call_main
> |     ../sysdeps/nptl/libc_start_call_main.h:58
> | 0x7fc36ca29e3f __libc_start_main_impl
> |     ../csu/libc-start.c:392
> | Please submit a full bug report,
> | with preprocessed source if appropriate.
> ...
> Summary: 1 task failed:
>   /home/daniele/poky/meta/recipes-devtools/cmake/cmake-native_3.27.7.bb:
> do_compile
>
> Second attempt, without any modification. I get a different error:
>
> ERROR: Task
> (virtual:native:/home/daniele/poky/meta/recipes-devtools/python/python3_3=
.11.5.bb:do_install)
> failed with exit code '139'
> NOTE: Tasks Summary: Attempted 3568 tasks of which 3518 didn't need to be
> rerun and 1 failed.
>
> Summary: 1 task failed:
>
> virtual:native:/home/daniele/poky/meta/recipes-devtools/python/python3_3.=
11.5.
>
> Third attempt, always without modifications. Still different:
>
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> ERROR: Task (/home/daniele/poky/meta/recipes-devtools/gcc/gcc_13.2.bb:do_=
compile)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 6049 tasks of which 3567 didn't need to be
> rerun and 1 failed.
>
> Summary: 1 task failed:
>   /home/daniele/poky/meta/recipes-devtools/gcc/gcc_13.2.bb:do_compile
> Summary: There were 2 ERROR messages, returning a non-zero exit code.
>
> And so on. Fourth attempt:
>
> ERROR: Task
> (/home/daniele/poky/meta-realtime/recipes-extended/images/core-image-rt-e=
xtended.bb:do_rootfs)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 6700 tasks of which 6052 didn't need to be
> rerun and 1 failed.
>
> Summary: 1 task failed:
>
> /home/daniele/poky/meta-realtime/recipes-extended/images/core-image-rt-ex=
tended.bb:
> do_rootfs
> Summary: There was 1 ERROR message, returning a non-zero exit code.
>
> How is this possible? Problems in the communication with the server, or
> what?
>
> Thank you in advance and best regards
>
> --
> Daniele Lugli
> General Logic srl
> Viale Curreno, 41
> <https://www.google.com/maps/search/Viale+Curreno,+41+%0D%0A+10133+Torino=
+Italy?entry=3Dgmail&source=3Dg>
>
> <https://www.google.com/maps/search/Viale+Curreno,+41+%0D%0A+10133+Torino=
+Italy?entry=3Dgmail&source=3Dg>
> 10133 Torino
> <https://www.google.com/maps/search/Viale+Curreno,+41+%0D%0A+10133+Torino=
+Italy?entry=3Dgmail&source=3Dg>
> Italy
> <https://www.google.com/maps/search/Viale+Curreno,+41+%0D%0A+10133+Torino=
+Italy?entry=3Dgmail&source=3Dg>
> tel +39 329 3933041
> www.general-logic.com
> www.linkedin.com/in/daniele-lugli
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#62072):
> https://lists.yoctoproject.org/g/yocto/message/62072
> Mute This Topic: https://lists.yoctoproject.org/mt/103491090/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000003d4e53060e00b909
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">What is the configuration of this system ? CPU and memory=
 specifically one likely reason is that you have oom hitting the system bec=
ause it=E2=80=99s overloaded so check the system logs for any indication of=
 this=C2=A0</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Jan 2, 2024 at 1:49=E2=80=AFPM &lt;<a href=3D"mailt=
o:daniele.lugli@gmail.com">daniele.lugli@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-style:solid;padding-left:1ex;border-left-color:r=
gb(204,204,204)">Hi all and best wishes for the new year.<br><br>I recently=
 worked with nanbield on Ubuntu 22.04.3 in a VirtualBox machine. <br>I adde=
d layers meta-intel and meta-realtime and, with a couple of small modificat=
ions to <a href=3D"http://core-image-rt-extended.bb" target=3D"_blank">core=
-image-rt-extended.bb</a> and to <a href=3D"http://rt-app.bb" target=3D"_bl=
ank">rt-app.bb</a>, as suggested by some kind reader (see <a href=3D"https:=
//lists.yoctoproject.org/g/yocto/topic/103135158" rel=3D"noopener" target=
=3D"_blank">https://lists.yoctoproject.org/g/yocto/topic/103135158</a>), an=
d after a couple of restarts, I could obtain the image, prepare a .vdi from=
 the .wic and boot a virtual machine with that disk.<br><br>Now I moved to =
a physical machine with Ubuntu 22.04.3. Here is the build configuration:<br=
><br><span style=3D"color:rgb(0,0,255)">BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;2.6.1&quot;<br>BUILD_SYS=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x=
86_64-linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quo=
t;universal&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-poky-linux&quot;<br>MACHINE=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quo=
t;genericx86-64&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br>DISTRO_V=
ERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;4.3+snapshot-b92406d23=
13234dccd77b05fe74c09ba9617a738&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D &quot;m64 core2&quot;<br>TARGET_FPU=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;&quot;<br>meta=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =C2=A0<br>meta-poky=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =C2=A0<br>meta-yocto-bsp=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =3D &quot;master:b92406d2313234dccd77b05fe74c09ba9617a738&quot;<b=
r>meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D &quot;master:10f1890af03dbb804bffd4fa7eda7729e08f12cb&quot=
;<br>meta-intel=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D &quot;master:5cfefd9a8ff1f5a3534c1ba9d7d7f6971ed5d56f&quot;</span><br>=
<span style=3D"color:rgb(0,0,255)">meta-realtime=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D &quot;master:489e1d6b34e46f845a4bfe6461a39c6a4bcb7794&q=
uot;</span><br><br>I am using exactly the same configuration as in the virt=
ual Ubuntu and I have also applied the suggested modifications to <a href=
=3D"http://core-image-rt-extended.bb" target=3D"_blank">core-image-rt-exten=
ded.bb</a> and to <a href=3D"http://rt-app.bb" target=3D"_blank">rt-app.bb<=
/a>. So the situation should be the same.<br><br>I cannot understand why I =
am getting error messages which look random: when, after the error, I rerun=
 bitbake, I get a different error.<br><br>As an instance, in the first run =
of bitbake <a href=3D"http://core-image-extended.bb" target=3D"_blank">core=
-image-extended.bb</a> I get:<br><br><span style=3D"color:rgb(255,0,0)">| /=
home/daniele/poky/build/tmp/work/x86_64-linux/cmake-native/3.27.7/cmake-3.2=
7.7/Source/cmComputeComponentGraph.cxx:139:1: internal compiler error: Segm=
entation fault</span><br><span style=3D"color:rgb(255,0,0)">|=C2=A0=C2=A0 1=
39 | }</span><br><span style=3D"color:rgb(255,0,0)">|=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 | ^</span><br><span style=3D"color:rgb(255,0,0)">| 0x7fc36c=
a4251f ???</span><br><span style=3D"color:rgb(255,0,0)">| =C2=A0=C2=A0=C2=
=A0 ./signal/../sysdeps/unix/sysv/linux/x86_64/libc_sigaction.c:0</span><br=
><span style=3D"color:rgb(255,0,0)">| 0x7fc36ca29d8f __libc_start_call_main=
</span><br><span style=3D"color:rgb(255,0,0)">| =C2=A0=C2=A0=C2=A0 ../sysde=
ps/nptl/libc_start_call_main.h:58</span><br><span style=3D"color:rgb(255,0,=
0)">| 0x7fc36ca29e3f __libc_start_main_impl</span><br><span style=3D"color:=
rgb(255,0,0)">| =C2=A0=C2=A0=C2=A0 ../csu/libc-start.c:392</span><br><span =
style=3D"color:rgb(255,0,0)">| Please submit a full bug report,</span><br><=
span style=3D"color:rgb(255,0,0)">| with preprocessed source if appropriate=
.</span><br><span style=3D"color:rgb(255,0,0)">...</span><br><span style=3D=
"color:rgb(255,0,0)">Summary: 1 task failed:</span><br><span style=3D"color=
:rgb(255,0,0)">=C2=A0 /home/daniele/poky/meta/recipes-devtools/cmake/cmake-=
native_3.27.7.bb:do_compile<br></span><br>Second attempt, without any modif=
ication. I get a different error:<br><br><span style=3D"color:rgb(255,0,0)"=
>ERROR: Task (virtual:native:/home/daniele/poky/meta/recipes-devtools/pytho=
n/python3_3.11.5.bb:do_install) failed with exit code &#39;139&#39;</span><=
br><span style=3D"color:rgb(255,0,0)">NOTE: Tasks Summary: Attempted 3568 t=
asks of which 3518 didn&#39;t need to be rerun and 1 failed.</span><br><br>=
<span style=3D"color:rgb(255,0,0)">Summary: 1 task failed:</span><br><span =
style=3D"color:rgb(255,0,0)">=C2=A0 virtual:native:/home/daniele/poky/meta/=
recipes-devtools/python/python3_3.11.5.</span><br><br>Third attempt, always=
 without modifications. Still different:<br><br><span style=3D"color:rgb(25=
5,0,0)">| ERROR: oe_runmake failed</span><br><span style=3D"color:rgb(255,0=
,0)">| WARNING: exit code 1 from a shell command.</span><br><span style=3D"=
color:rgb(255,0,0)">ERROR: Task (/home/daniele/poky/meta/recipes-devtools/g=
cc/gcc_13.2.bb:do_compile) failed with exit code &#39;1&#39;</span><br><spa=
n style=3D"color:rgb(255,0,0)">NOTE: Tasks Summary: Attempted 6049 tasks of=
 which 3567 didn&#39;t need to be rerun and 1 failed.</span><br><br><span s=
tyle=3D"color:rgb(255,0,0)">Summary: 1 task failed:</span><br><span style=
=3D"color:rgb(255,0,0)">=C2=A0 /home/daniele/poky/meta/recipes-devtools/gcc=
/gcc_13.2.bb:do_compile</span><br><span style=3D"color:rgb(255,0,0)">Summar=
y: There were 2 ERROR messages, returning a non-zero exit code.</span><br><=
br>And so on. Fourth attempt:<br><br><span style=3D"color:rgb(255,0,0)">ERR=
OR: Task (/home/daniele/poky/meta-realtime/recipes-extended/images/core-ima=
ge-rt-extended.bb:do_rootfs) failed with exit code &#39;1&#39;</span><br><s=
pan style=3D"color:rgb(255,0,0)">NOTE: Tasks Summary: Attempted 6700 tasks =
of which 6052 didn&#39;t need to be rerun and 1 failed.</span><br><br><span=
 style=3D"color:rgb(255,0,0)">Summary: 1 task failed:</span><br><span style=
=3D"color:rgb(255,0,0)">=C2=A0 /home/daniele/poky/meta-realtime/recipes-ext=
ended/images/core-image-rt-extended.bb:do_rootfs</span><br><span style=3D"c=
olor:rgb(255,0,0)">Summary: There was 1 ERROR message, returning a non-zero=
 exit code.</span><br><br>How is this possible? Problems in the communicati=
on with the server, or what?<br><br>Thank you in advance and best regards<b=
r><br>-- <br>
<div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small;color:=
rgb(80,0,80)">
<div dir=3D"ltr" style=3D"font-family:Arial,Helvetica,sans-serif">
<div style=3D"font-family:Arial,Helvetica,sans-serif">Daniele Lugli</div>
General Logic srl</div>
<div style=3D"font-family:Arial,Helvetica,sans-serif"><a href=3D"https://ww=
w.google.com/maps/search/Viale+Curreno,+41+%0D%0A+10133+Torino+Italy?entry=
=3Dgmail&amp;source=3Dg" style=3D"font-family:Arial,Helvetica,sans-serif">V=
iale Curreno, 41</a></div><a href=3D"https://www.google.com/maps/search/Via=
le+Curreno,+41+%0D%0A+10133+Torino+Italy?entry=3Dgmail&amp;source=3Dg" styl=
e=3D"font-family:Arial,Helvetica,sans-serif">
</a><div style=3D"font-family:Arial,Helvetica,sans-serif"><a href=3D"https:=
//www.google.com/maps/search/Viale+Curreno,+41+%0D%0A+10133+Torino+Italy?en=
try=3Dgmail&amp;source=3Dg" style=3D"font-family:Arial,Helvetica,sans-serif=
">10133 Torino</a><br><a href=3D"https://www.google.com/maps/search/Viale+C=
urreno,+41+%0D%0A+10133+Torino+Italy?entry=3Dgmail&amp;source=3Dg" style=3D=
"font-family:Arial,Helvetica,sans-serif">Italy</a></div>
<div style=3D"font-family:Arial,Helvetica,sans-serif">tel +39 329 3933041</=
div>
</div>
<div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small;color:=
rgb(80,0,80)"><a style=3D"font-family:Arial,Helvetica,sans-serif;color:rgb(=
17,85,204)" href=3D"http://www.general-logic.com/" rel=3D"noopener" target=
=3D"_blank">www.general-logic.com</a></div>
<div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small;color:=
rgb(80,0,80)"><a style=3D"font-family:Arial,Helvetica,sans-serif;color:rgb(=
17,85,204)" href=3D"http://www.linkedin.com/in/daniele-lugli" rel=3D"noopen=
er" target=3D"_blank">www.linkedin.com/in/daniele-lugli</a></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#62072): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62072" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62072</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/103491090/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/103491090/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000003d4e53060e00b909--

