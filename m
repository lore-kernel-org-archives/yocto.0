Return-Path: <mehmet.fide@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA09EE77197
	for <webhook@archiver.kernel.org>; Tue,  7 Jan 2025 08:39:55 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web10.16302.1736239185946695316
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jan 2025 00:39:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QLAFBwSS;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: mehmet.fide@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-304d760f0dfso39712201fa.2
        for <yocto@lists.yoctoproject.org>; Tue, 07 Jan 2025 00:39:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736239183; x=1736843983; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6Crut/9HQncxAR3THP3Pnx8VTf+kcEu3+lmT4LB8fDs=;
        b=QLAFBwSSVPdFZfiqiAQuq8EKdnWIK8J0APYoHLi9isHTmrDV9cHDgntZMzZ+YfY8pj
         l4t9lRyaqvbRfwfmqdruD1DEAmY2M0HmKkP4yc0ikXd7A10VXG0vMNmghLz+66sspnoI
         ICueBnNcu23P6uc+eC6k+hSbAyIX7j086hf/yIaqpk1nKFbHBfMNUn6qnGA/Pg/ruZj1
         KXC4KDUyPIN3fe/UvQ8/3iv3NYHx9/42PyR7H+eNBANCfuR+WhKfgl/qQWth0ZI8VFSm
         G/HdrEnFIWceOGs4OGlymmghFVB/EwhTsvevQfqovv6/tB6y7vJuxA8twW8yix0v+L/t
         pQig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736239183; x=1736843983;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6Crut/9HQncxAR3THP3Pnx8VTf+kcEu3+lmT4LB8fDs=;
        b=CMX9jOsj9SBUi8dzlvYJ7gLGFTHtybz+dD/TWfxvueqZ4zWrAZraWhdhUyKiw/H7kB
         2/Fc5wefbfb91azXy0M7TTIM+Q5g4P3VWK6PbxfgFoZzwHCzQfNJtDTfH2kvCQqxxEtl
         rKMZxFYZU9gHyu27zP4P7ia91XmMJF0isnGYcoY0ySUlU1TyMVj8nICl2sG6DGc4cRh/
         yojn+vNfKNA+/Ga3k4SF5+7EjxE1VWIFhX/8H+SpY73DGhDHyQpnhkrMUp/1KgCGrS2A
         2wFH2K642kuaGTS7KOjaExwTXO9e40Su/pbHbb/OMnzKrkl7oIAwvjNPesB9Vin1UTIU
         ot1w==
X-Gm-Message-State: AOJu0YxsOgzS+zbgrKsCa2tzsPbdIoxLT/F9e+pNmLhOlHS/zOOnDrDx
	lR7ee6wTqL/chLZJmM9WiIAqyxihcu6a6mXLnTq67JVdmH5JZkRijuYfPBrN2vvl5yXhoUttnGs
	i+PSCZa8SXGg/d1OplonFsiMUO7ONgX3DfxY=
X-Gm-Gg: ASbGncsgkkOhEFG/bpc848FQpw5eZpjSwx0jOfO4L5ESClKrI0qwgkFGp3D8foCz1QL
	Y/FKEDCf+1xYANeSl9XZqRdZZHG6pKv5vyWGpBw==
X-Google-Smtp-Source: AGHT+IFg3q+HiyhGLdxJHS48ORqQ6DM9Sg1wwajA3y7YgEpxeg02ZpJ/EI1s/bCMz5VO7UWozzyGvZBXueDztEdDCTQ=
X-Received: by 2002:a2e:be94:0:b0:302:3abc:d9e2 with SMTP id
 38308e7fff4ca-30468607cbcmr221525641fa.29.1736239182628; Tue, 07 Jan 2025
 00:39:42 -0800 (PST)
MIME-Version: 1.0
References: <phLW.1736233959568435861.zoJL@lists.yoctoproject.org>
In-Reply-To: <phLW.1736233959568435861.zoJL@lists.yoctoproject.org>
From: Mehmet Fide <mehmet.fide@gmail.com>
Date: Tue, 7 Jan 2025 09:39:06 +0100
Message-ID: <CAA7J33UqTYL9Fj2s8SF--D26Wo-YSp9LbsJrRkixkuK2_bCCiQ@mail.gmail.com>
Subject: Re: [yocto] RISC-V QEMU populate_sdk fails for core-image-minimal
 #sdk #yocto
To: yocto@lists.yoctoproject.org, pratikfarkase94@gmail.com
Content-Type: multipart/alternative; boundary="000000000000b9d160062b19af27"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jan 2025 08:39:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64506

--000000000000b9d160062b19af27
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I've just cloned poky master repo on my Ubuntu 24.04 machine, all produced
successfully.
1. Try removing  meta-micro layer that you have
2. Use poky master without any modification (in my case the commit hash
was1f6cda305..)
3. Be sure that your host machine is supported by yocto and has enough ram
and disk space.

~/development/yocto-risc-sdk-test/build$ bitbake -c populate_sdk
core-image-minimal
Loading cache: 100%
|##########################################################################=
###########################################################################=
##############################|
Time: 0:00:00
Loaded 1873 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           =3D "2.9.1"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "riscv64-poky-linux"
MACHINE              =3D "qemuriscv64"
DISTRO               =3D "poky"
DISTRO_VERSION       =3D "5.1"
TUNE_FEATURES        =3D "riscv64"
meta
meta-poky
meta-yocto-bsp       =3D "master:1f6cda30547a78a5e8c839890fd4f2aacf13bfda"

Sstate summary: Wanted 1117 Local 0 Mirrors 0 Missed 1117 Current 1785 (0%
match, 61%
complete)##################################################################=
#####################
                 | ETA:  0:00:00
Initialising tasks: 100%
|##########################################################################=
###########################################################################=
#########################|
Time: 0:00:03
NOTE: Executing Tasks
NOTE: Tasks Summary: Attempted 6250 tasks of which 4123 didn't need to be
rerun and all succeeded.


On Tue, Jan 7, 2025 at 8:12=E2=80=AFAM pratikfarkase94 via lists.yoctoproje=
ct.org
<pratikfarkase94=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hi,
> I am trying to build the SDK for qemuriscv64 machine. I am using the
> master branch of poky. The build fails at do_compile while populating the
> SDK using the command "bitbake -c populate_sdk core-image-minimal"
>
> The build configuration looks like the following :
>
> ~/riscv-yocto/build$ bitbake -c populate_sdk core-image-minimal
> Loading cache: 100%
> |########################################################################=
################################|
> Time: 0:00:00
> Loaded 1879 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
> Build Configuration:
> BB_VERSION           =3D "2.9.1"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal"
> TARGET_SYS           =3D "riscv64-poky-linux"
> MACHINE              =3D "qemuriscv64"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D "5.1"
> TUNE_FEATURES        =3D "riscv64"
> meta
> meta-poky
> meta-yocto-bsp       =3D "work:3de3bda4c4b72ca21ad91c81db57bf07760e0a3b"
> meta-micro           =3D "main:91d5ff6138bc0f630c864543a40fc4e34b6fea40"
> WARNING:
> /home/pratik/riscv-yocto/poky/meta/recipes-kernel/linux/linux-yocto_6.10.=
bb:do_compile
> is tainted from a forced run | ETA:  0:00:00
> Sstate summary: Wanted 24 Local 0 Mirrors 0 Missed 24 Current 2878 (0%
> match, 99% complete)#######################           | ETA:  0:00:00
> Initialising tasks: 100%
> |########################################################################=
###########################|
> Time: 0:00:02
> NOTE: Executing Tasks
> ERROR: gcc-cross-canadian-riscv64-14.2.0-r0 do_compile: oe_runmake failed
> ERROR: gcc-cross-canadian-riscv64-14.2.0-r0 do_compile: Execution of
> '/home/pratik/riscv-yocto/build/tmp/work/x86_64-nativesdk-pokysdk-linux/g=
cc-cross-canadian-riscv64/14.2.0/temp/run.do_compile.323463'
> failed with exit code 1
> ERROR: Logfile of failure stored in:
> /home/pratik/riscv-yocto/build/tmp/work/x86_64-nativesdk-pokysdk-linux/gc=
c-cross-canadian-riscv64/14.2.0/temp/log.do_compile.323463
>
> Full log in the attached file :
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64505):
> https://lists.yoctoproject.org/g/yocto/message/64505
> Mute This Topic: https://lists.yoctoproject.org/mt/110473646/5914458
> Mute #sdk:https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> mehmet.fide@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000b9d160062b19af27
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve just cloned poky master repo on my Ubuntu 24.04 m=
achine, all produced successfully.<div>1. Try removing=C2=A0

meta-micro layer that you have</div><div>2. Use poky master without any mod=
ification (in my case the commit hash was1f6cda305..)</div><div>3. Be sure =
that your host machine is supported by yocto and has enough ram and disk sp=
ace.</div><div><div><br></div><div>~/development/yocto-risc-sdk-test/build$=
 bitbake -c populate_sdk core-image-minimal<br>Loading cache: 100% |#######=
###########################################################################=
###########################################################################=
######################| Time: 0:00:00<br>Loaded 1873 entries from dependenc=
y cache.<br>NOTE: Resolving any missing task queue dependencies<br><br>Buil=
d Configuration:<br>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot=
;2.9.1&quot;<br>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quo=
t;x86_64-linux&quot;<br>NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D &quot;unive=
rsal&quot;<br>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;riscv=
64-poky-linux&quot;<br>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;qemuriscv64&quot;<br>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION =C2=A0 =C2=A0 =C2=
=A0 =3D &quot;5.1&quot;<br>TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &qu=
ot;riscv64&quot;<br>meta<br>meta-poky<br>meta-yocto-bsp =C2=A0 =C2=A0 =C2=
=A0 =3D &quot;master:1f6cda30547a78a5e8c839890fd4f2aacf13bfda&quot;<br><br>=
Sstate summary: Wanted 1117 Local 0 Mirrors 0 Missed 1117 Current 1785 (0% =
match, 61% complete)#######################################################=
################################ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0| ETA: =C2=A00:00:00<br>Initialising tasks: 100% |#####=
###########################################################################=
###########################################################################=
###################| Time: 0:00:03<br>NOTE: Executing Tasks<br>NOTE: Tasks =
Summary: Attempted 6250 tasks of which 4123 didn&#39;t need to be rerun and=
 all succeeded.</div><div><br></div></div></div><br><div class=3D"gmail_quo=
te gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan=
 7, 2025 at 8:12=E2=80=AFAM pratikfarkase94 via <a href=3D"http://lists.yoc=
toproject.org">lists.yoctoproject.org</a> &lt;pratikfarkase94=3D<a href=3D"=
mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv><span style=3D"color:rgb(222,226,230);font-family:system-ui,&quot;Segoe =
UI&quot;,Roboto,&quot;Helvetica Neue&quot;,&quot;Noto Sans&quot;,&quot;Libe=
ration Sans&quot;,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Sego=
e UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;f=
ont-size:16px;font-style:normal;font-variant-ligatures:normal;font-variant-=
caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-ind=
ent:0px;text-transform:none;word-spacing:0px;white-space:pre-wrap;backgroun=
d-color:rgb(36,37,38);text-decoration-style:initial;text-decoration-color:i=
nitial;float:none;display:inline">Hi,</span><br style=3D"box-sizing:border-=
box;color:rgb(222,226,230);font-family:system-ui,&quot;Segoe UI&quot;,Robot=
o,&quot;Helvetica Neue&quot;,&quot;Noto Sans&quot;,&quot;Liberation Sans&qu=
ot;,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quo=
t;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;font-size:16px;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fo=
nt-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;word-spacing:0px;white-space:pre-wrap;background-color:rgb(36=
,37,38);text-decoration-style:initial;text-decoration-color:initial"><span =
style=3D"color:rgb(222,226,230);font-family:system-ui,&quot;Segoe UI&quot;,=
Roboto,&quot;Helvetica Neue&quot;,&quot;Noto Sans&quot;,&quot;Liberation Sa=
ns&quot;,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoj=
i&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&quot;;font-size:=
16px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;word-spacing:0px;white-space:pre-wrap;background-color:r=
gb(36,37,38);text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline">I am trying to build the SDK for qemuriscv64 machi=
ne</span><span style=3D"color:rgb(222,226,230);font-family:system-ui,&quot;=
Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,&quot;Noto Sans&quot;,&quo=
t;Liberation Sans&quot;,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quo=
t;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;Noto Color Emoji&q=
uot;;font-size:16px;font-style:normal;font-variant-ligatures:normal;font-va=
riant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;te=
xt-indent:0px;text-transform:none;word-spacing:0px;white-space:pre-wrap;bac=
kground-color:rgb(36,37,38);text-decoration-style:initial;text-decoration-c=
olor:initial;float:none;display:inline">. I am using the master branch of p=
oky. The build fails at do_compile while populating the SDK using the comma=
nd &quot;bitbake -c populate_sdk core-image-minimal&quot;</span></div>
<div><br style=3D"box-sizing:border-box;color:rgb(222,226,230);font-family:=
system-ui,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,&quot;Noto=
 Sans&quot;,&quot;Liberation Sans&quot;,Arial,sans-serif,&quot;Apple Color =
Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&quot;No=
to Color Emoji&quot;;font-size:16px;font-style:normal;font-variant-ligature=
s:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:pre-wrap;background-color:rgb(36,37,38);text-decoration-style:initial;t=
ext-decoration-color:initial"><span style=3D"color:rgb(222,226,230);font-fa=
mily:system-ui,&quot;Segoe UI&quot;,Roboto,&quot;Helvetica Neue&quot;,&quot=
;Noto Sans&quot;,&quot;Liberation Sans&quot;,Arial,sans-serif,&quot;Apple C=
olor Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;,&qu=
ot;Noto Color Emoji&quot;;font-size:16px;font-style:normal;font-variant-lig=
atures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norma=
l;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;whi=
te-space:pre-wrap;background-color:rgb(36,37,38);text-decoration-style:init=
ial;text-decoration-color:initial;float:none;display:inline">The build conf=
iguration looks like the following : </span></div>
<div>=C2=A0</div>
<div>
<div>~/riscv-yocto/build$ bitbake -c populate_sdk core-image-minimal<br>Loa=
ding cache: 100% |#########################################################=
###############################################| Time: 0:00:00<br>Loaded 18=
79 entries from dependency cache.<br>NOTE: Resolving any missing task queue=
 dependencies</div>
<div>Build Configuration:<br>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D &quot;2.9.1&quot;<br>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D =
&quot;universal&quot;<br>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D =
&quot;riscv64-poky-linux&quot;<br>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D &quot;qemuriscv64&quot;<br>DISTRO =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION =C2=A0 =
=C2=A0 =C2=A0 =3D &quot;5.1&quot;<br>TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=
=A0=3D &quot;riscv64&quot;<br>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0<br>meta-poky =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0<br>meta-yocto-bsp =C2=A0 =C2=A0 =C2=A0 =3D &quot;work:3de3bda4c4b72ca21=
ad91c81db57bf07760e0a3b&quot;<br>meta-micro =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =3D &quot;main:91d5ff6138bc0f630c864543a40fc4e34b6fea40&quot;</div>
<div>WARNING: /home/pratik/riscv-yocto/poky/meta/recipes-kernel/linux/linux=
-yocto_6.10.bb:do_compile is tainted from a forced run | ETA: =C2=A00:00:00=
<br>Sstate summary: Wanted 24 Local 0 Mirrors 0 Missed 24 Current 2878 (0% =
match, 99% complete)####################### =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | ETA: =C2=A00:00:00<br>Initialising tasks: 100% |#####################=
###########################################################################=
###| Time: 0:00:02<br>NOTE: Executing Tasks<br>ERROR: gcc-cross-canadian-ri=
scv64-14.2.0-r0 do_compile: oe_runmake failed<br>ERROR: gcc-cross-canadian-=
riscv64-14.2.0-r0 do_compile: Execution of &#39;/home/pratik/riscv-yocto/bu=
ild/tmp/work/x86_64-nativesdk-pokysdk-linux/gcc-cross-canadian-riscv64/14.2=
.0/temp/run.do_compile.323463&#39; failed with exit code 1<br>ERROR: Logfil=
e of failure stored in: /home/pratik/riscv-yocto/build/tmp/work/x86_64-nati=
vesdk-pokysdk-linux/gcc-cross-canadian-riscv64/14.2.0/temp/log.do_compile.3=
23463</div>
<div>=C2=A0</div>
<div>Full log in the attached file :=C2=A0</div>
<div>=C2=A0</div>
</div>
<div>=C2=A0</div>
<div>=C2=A0</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64505): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64505" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64505</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/110473646/591=
4458" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/110473646/5914458</a><br>
Mute #sdk:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk=
" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yoc=
to/mutehashtag/sdk</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/yocto</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:mehmet.fide@gmail.com" target=3D"_blank">mehmet.=
fide@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000b9d160062b19af27--

