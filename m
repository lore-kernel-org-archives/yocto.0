Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B17DC83030
	for <webhook@archiver.kernel.org>; Mon, 30 Jun 2025 23:18:35 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
 by mx.groups.io with SMTP id smtpd.web11.966.1751325512009417723
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Jun 2025 16:18:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MvT/DXPB;
 spf=pass (domain: gmail.com, ip: 209.85.219.181, mailfrom: raj.khem@gmail.com)
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e8187601f85so4326554276.2
        for <yocto@lists.yoctoproject.org>; Mon, 30 Jun 2025 16:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751325511; x=1751930311; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YbtFJmlYX0YJ8AX//3lKeFSfVFJlU0Ae80/LxcktEMo=;
        b=MvT/DXPBEzd16/izbPXuOnoj2vWz2MuBJDs7/aqAYyh1yLszgrnBTR0pk86UCsxWu4
         XDd8/64Ajdb/2vwtJmKOG+CvaH82EEjlfeNoSsR/kUAPxOUtl5TK/5yTHguRFU2VLksC
         Up/Bd7AX8cuq3nDKd9W65xBuiboAZdDPSpI5AHNcVm83wC8gTam1GlB5XOI+a2ln4i99
         z54OjP4UooW6ha2HnAs9KoobpK+FXTL3W0ZZE8vL5Y0toQL06XTlVXqh3jYIeYj4Lv1F
         BZQOjAyIhJ6p4Yrb72LOb+zK3DoMWwVIQbaHsphJqjDotcCtOYWK4G7pvh+IepjTVSO5
         SS6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751325511; x=1751930311;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YbtFJmlYX0YJ8AX//3lKeFSfVFJlU0Ae80/LxcktEMo=;
        b=UVeNM0FRIPZo9IHbBXpwlPy0nWp8V0opY//Lw9B0DDDpEvuk5chWPSBtxdVivw+C1c
         6tJk2sU+MkSEA/xefais/AsGsrZhT1GDyN1OaPMbNWvSHV1vh6YPSs0x5DqJfKwMaZf8
         syyWS5knfHLMk0Q+B8JLXSedVy31TJ7Sl1LMBO96xfEMlzlCkyW8rf3d8BH22JO9VXX0
         QltI351sxsODFP9RpnaIZrt4r/b5oz49JflD4xEWnQ97c64d/HYM2blKNQBfW03LaWmp
         rnvggao4feWCkbDTjvYN/413GPGRXBqh/ii9vWVPPRPanRlMUZlZiYHkF4OV5KJ342nv
         wSIA==
X-Gm-Message-State: AOJu0YyYuVF+9LX12v4xrpdlJ+FNKqKyCewQPuuoxA9uUNejlgeFGI1r
	rD7XlYUIccDImuItYSnI9chi1cqqYmWQ52nEZ6cRPTOw6A961bCdgoJUypTyFDYapSsmY7+hdcU
	siClDow44O/7WwYavaHTa5UgdDJRnrncA3w==
X-Gm-Gg: ASbGnctR+DFxU41S5Swj5QRjZ2VyOqmMW/ctZ9pGWEkRNGoCQGQ8UZk/eD2kkFTsT+L
	9/iPOoSOkM16UqIZZQ3E6C4+xi/R4e9uGHy75NTE9oPryxT2WeqXzLGs0t5eWLWf38XL19FVEWa
	+2j5+qEKu3i/HhV0hev4Zoc2c8rRahNmBsoJwBFRP3xN0XHoieE+bAlbNdIpJmpib/pQFPYzSjB
	ZvY
X-Google-Smtp-Source: AGHT+IHnDeWMOyltzKe23MXM6iUZHSoHySWdFcd+gNO2TXwC0GLwlC4OHqgABQeVP4ah+gtXOXmrZ+1s6OnxA/SNhPk=
X-Received: by 2002:a05:690c:85:b0:710:e7ad:9d41 with SMTP id
 00721157ae682-71517160c45mr227104737b3.12.1751325510558; Mon, 30 Jun 2025
 16:18:30 -0700 (PDT)
MIME-Version: 1.0
References: <XvTD.1751319152243986321.2PNW@lists.yoctoproject.org>
In-Reply-To: <XvTD.1751319152243986321.2PNW@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 30 Jun 2025 16:18:19 -0700
X-Gm-Features: Ac12FXxnQvVmjB4_U6jiyJRUujUhstcFgaquhucAIQ0uJ_zu4Q1WZGwX8aZpErs
Message-ID: <CAMKF1sq9JBGFxZQs18cF4o-hfPUfGReu9AL=P4FHmEob1Xui9g@mail.gmail.com>
Subject: Re: [yocto] CMake + native devtool recipe seems lost #cmake #devtool
To: yocto@lists.yoctoproject.org, joseph.maniaci@seagate.com
Content-Type: multipart/alternative; boundary="000000000000f1694e0638d23e18"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Jun 2025 23:18:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65570

--000000000000f1694e0638d23e18
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 30, 2025 at 2:32=E2=80=AFPM joseph.maniaci via lists.yoctoproje=
ct.org
<joseph.maniaci=3Dseagate.com@lists.yoctoproject.org> wrote:

> Here is my recipe, configured to build natively with cmake
>
> *# We only need to build langLookupUtil natively*
> *BBCLASSEXTEND =3D "native"*
> *# We want to do 'make' in a cmake-style*
> *inherit cmake*
> *LICENSE =3D "Apache-2.0 & Unknown"*
> *SRC_URI =3D
> "git://git@somewhere/Joseph-Maniaci/mclinux_yocto.git;protocol=3Dssh;bran=
ch=3Dmain"*
> *# Modify these as desired*
> *PV =3D "1.0+git"*
> *SRCREV =3D "${AUTOREV}"*
> *S =3D "${WORKDIR}/git"*
> *do_compile () {*
> *    echo "FIRST" && ls -l && echo "SECOND" && ls -l .. && . sourceme.env
> ${MC_APP_ARGS} && oe_runmake langLookup*
> *}*
>

Where is this env file placed ? Maybe you need to source it using S

>
> OUTPUT:
>
> *DEBUG: Executing shell function do_compile*
> *| FIRST*
> *| total 0*
> *| SECOND*
> *| total 40*
> *| drwxr-xr-x 2 user user  4096 Jun 30 20:44 deploy-source-date-epoch*
> *| drwxr-xr-x 2 user user  4096 Jun 30 21:11 lang-lookup-util-1.0+git*
> *| drwxr-xr-x 4 user user  4096 Jun 30 21:11 recipe-sysroot*
> *| drwxr-xr-x 8 user user  4096 Jun 30 21:03 recipe-sysroot-native*
> *| drwxr-xr-x 2 user user  4096 Jun 30 20:44 source-date-epoch*
> *| drwxr-xr-x 2 user user  4096 Jun 30 21:20 temp*
> *| -rw-r--r-- 1 user user 12529 Jun 30 20:44 toolchain.cmake*
> *|
> /home/user/eps-yocto/build/exos-x-vanadium-bmc/tmp/work/armv7ahf-vfpv4d16=
-openbmc-linux-gnueabi/lang-lookup-util-native/1.0+git/temp/run.do_compile.=
213836:
> line 141: .: sourceme.env: file not found*
> *| WARNING:
> /home/user/eps-yocto/build/exos-x-vanadium-bmc/tmp/work/armv7ahf-vfpv4d16=
-openbmc-linux-gnueabi/lang-lookup-util-native/1.0+git/temp/run.do_compile.=
213836:141
> exit 1 from '. sourceme.env -t ARM -v VAN000'*
> *| WARNING: Backtrace (BB generated script):*
> *|       #1: do_compile,
> /home/user/eps-yocto/build/exos-x-vanadium-bmc/tmp/work/armv7ahf-vfpv4d16=
-openbmc-linux-gnueabi/lang-lookup-util-native/1.0+git/temp/run.do_compile.=
213836,
> line 141*
> *|       #2: main,
> /home/user/eps-yocto/build/exos-x-vanadium-bmc/tmp/work/armv7ahf-vfpv4d16=
-openbmc-linux-gnueabi/lang-lookup-util-native/1.0+git/temp/run.do_compile.=
213836,
> line 180*
> *ERROR: Task
> (/home/user/eps-yocto/build/exos-x-vanadium-bmc/workspace/recipes/lang-lo=
okup-util-native/lang-lookup-util-native_git.bb:do_compile)
> failed with exit code '1'*
> *NOTE: Tasks Summary: Attempted 449 tasks of which 448 didn't need to be
> rerun and 1 failed.*
>
>
> Earlier today cmake was definitely in the right directory, I was playing
> around with AUTOREV/PV  being broken(I can only use the code repo as it
> existed when the recipe was created) and now I got myself in this pickle.=
 I
> saw the 'toolchain.cmake' file and thought, "Well at least I can see if
> native-related flags are being set right" and that doesn't appear to be t=
he
> case either. I even deleted my entire workspace and build directory and
> regenerated the recipe with 'devtool add', hasn't made a difference.
> sourceme.env is just a legacy thing I'm hoping to get rid of later. Can
> confirm that from the source directory of the repo, I can target
> this...target with cmake and successfully build.
>
> Upper portion of
> ../exos-x-vanadium-bmc/tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/l=
ang-lookup-util-native/1.0+git/toolchain.cmake
>
>
> *# CMake system name must be something like "Linux".*
> *# This is important for cross-compiling.*
>
> *set( CMAKE_SYSTEM_NAME Linux )*
> *set( CMAKE_SYSTEM_PROCESSOR arm )*
> *set( CMAKE_C_COMPILER arm-openbmc-linux-gnueabi-gcc )*
> *set( CMAKE_CXX_COMPILER arm-openbmc-linux-gnueabi-g++ )*
> *set( CMAKE_C_COMPILER_LAUNCHER  )*
> *set( CMAKE_CXX_COMPILER_LAUNCHER  )*
> *set( CMAKE_ASM_COMPILER arm-openbmc-linux-gnueabi-gcc )*
> *find_program( CMAKE_AR arm-openbmc-linux-gnueabi-gcc-ar DOC "Archiver"
> REQUIRED )*
>
> *set( CMAKE_C_FLAGS " -march=3Darmv7-a -mfpu=3Dvfpv4-d16 -mfloat-abi=3Dha=
rd
> -fstack-protector-strong......*
> *....*
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#65569):
> https://lists.yoctoproject.org/g/yocto/message/65569
> Mute This Topic: https://lists.yoctoproject.org/mt/113916891/1997914
> Mute #cmake:https://lists.yoctoproject.org/g/yocto/mutehashtag/cmake
> Mute #devtool:https://lists.yoctoproject.org/g/yocto/mutehashtag/devtool
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000f1694e0638d23e18
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote gmail_quote_container"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 30, 2025 at 2:32=E2=80=AFPM=
 joseph.maniaci via <a href=3D"http://lists.yoctoproject.org">lists.yoctopr=
oject.org</a> &lt;joseph.maniaci=3D<a href=3D"mailto:seagate.com@lists.yoct=
oproject.org">seagate.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><div>Here is my recipe, configured to build na=
tively with cmake</div>
<div>=C2=A0</div>
<div>
<div><em># We only need to build langLookupUtil natively</em><br><em>BBCLAS=
SEXTEND =3D &quot;native&quot;</em><br><em># We want to do &#39;make&#39; i=
n a cmake-style</em><br><em>inherit cmake</em></div>
<div><em>LICENSE =3D &quot;Apache-2.0 &amp; Unknown&quot;</em></div>
<div><em>SRC_URI =3D &quot;git://git@somewhere/Joseph-Maniaci/mclinux_yocto=
.git;protocol=3Dssh;branch=3Dmain&quot;</em></div>
<div><em># Modify these as desired</em><br><em>PV =3D &quot;1.0+git&quot;</=
em><br><em>SRCREV =3D &quot;${AUTOREV}&quot;</em></div>
<div><em>S =3D &quot;${WORKDIR}/git&quot;</em></div>
<div><em>do_compile () {</em><br><em>=C2=A0 =C2=A0 echo &quot;FIRST&quot; &=
amp;&amp; ls -l &amp;&amp; echo &quot;SECOND&quot; &amp;&amp; ls -l .. &amp=
;&amp; . sourceme.env ${MC_APP_ARGS} &amp;&amp; oe_runmake langLookup</em><=
br><em>}</em><br></div></div></blockquote><div dir=3D"auto"><br></div><div =
dir=3D"auto">Where is this env file placed ? Maybe you need to source it us=
ing S=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div><div><br>OUTPUT:</div>
<div>=C2=A0</div>
<div><em>DEBUG: Executing shell function do_compile</em><br><em>| FIRST</em=
><br><em>| total 0</em><br><em>| SECOND</em><br><em>| total 40</em><br><em>=
| drwxr-xr-x 2 user user =C2=A04096 Jun 30 20:44 deploy-source-date-epoch</=
em><br><em>| drwxr-xr-x 2 user user =C2=A04096 Jun 30 21:11 lang-lookup-uti=
l-1.0+git</em><br><em>| drwxr-xr-x 4 user user =C2=A04096 Jun 30 21:11 reci=
pe-sysroot</em><br><em>| drwxr-xr-x 8 user user =C2=A04096 Jun 30 21:03 rec=
ipe-sysroot-native</em><br><em>| drwxr-xr-x 2 user user =C2=A04096 Jun 30 2=
0:44 source-date-epoch</em><br><em>| drwxr-xr-x 2 user user =C2=A04096 Jun =
30 21:20 temp</em><br><em>| -rw-r--r-- 1 user user 12529 Jun 30 20:44 toolc=
hain.cmake</em><br><em>| /home/user/eps-yocto/build/exos-x-vanadium-bmc/tmp=
/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/lang-lookup-util-native/1.0+g=
it/temp/run.do_compile.213836: line 141: .: sourceme.env: file not found</e=
m><br><em>| WARNING: /home/user/eps-yocto/build/exos-x-vanadium-bmc/tmp/wor=
k/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/lang-lookup-util-native/1.0+git/t=
emp/run.do_compile.213836:141 exit 1 from &#39;. sourceme.env -t ARM -v VAN=
000&#39;</em><br><em>| WARNING: Backtrace (BB generated script):</em><br><e=
m>| =C2=A0 =C2=A0 =C2=A0 #1: do_compile, /home/user/eps-yocto/build/exos-x-=
vanadium-bmc/tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/lang-lookup-u=
til-native/1.0+git/temp/run.do_compile.213836, line 141</em><br><em>| =C2=
=A0 =C2=A0 =C2=A0 #2: main, /home/user/eps-yocto/build/exos-x-vanadium-bmc/=
tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/lang-lookup-util-native/1.=
0+git/temp/run.do_compile.213836, line 180</em><br><em>ERROR: Task (/home/u=
ser/eps-yocto/build/exos-x-vanadium-bmc/workspace/recipes/lang-lookup-util-=
native/lang-lookup-util-native_git.bb:do_compile) failed with exit code &#3=
9;1&#39;</em><br><em>NOTE: Tasks Summary: Attempted 449 tasks of which 448 =
didn&#39;t need to be rerun and 1 failed.</em></div>
<div>=C2=A0</div>
<div>=C2=A0</div>
<div>Earlier today cmake was definitely in the right directory, I was playi=
ng around with AUTOREV/PV=C2=A0 being broken(I can only use the code repo a=
s it existed when the recipe was created) and now I got myself in this pick=
le. I saw the &#39;toolchain.cmake&#39; file and thought, &quot;Well at lea=
st I can see if native-related flags are being set right&quot; and that doe=
sn&#39;t appear to be the case either. I even deleted my entire workspace a=
nd build directory and regenerated the recipe with &#39;devtool add&#39;, h=
asn&#39;t made a difference. sourceme.env is just a legacy thing I&#39;m ho=
ping to get rid of later. Can confirm that from the source directory of the=
 repo, I can target this...target with cmake and successfully build.</div>
<div>=C2=A0</div>
<div>Upper portion of ../exos-x-vanadium-bmc/tmp/work/armv7ahf-vfpv4d16-ope=
nbmc-linux-gnueabi/lang-lookup-util-native/1.0+git/toolchain.cmake<br><br><=
br>
<div style=3D"color:#cccccc;background-color:#1f1f1f;font-family:Consolas,&=
#39;Courier New&#39;,monospace;font-weight:normal;font-size:14px;line-heigh=
t:19px;white-space:pre-wrap">
<div><em><span style=3D"color:#6a9955"># CMake system name must be somethin=
g like &quot;Linux&quot;.</span></em></div>
<div><em><span style=3D"color:#6a9955"># This is important for cross-compil=
ing.</span></em></div>
<br>
<div><em><span style=3D"color:#569cd6">set</span><span style=3D"color:#cccc=
cc">( CMAKE_SYSTEM_NAME Linux )</span></em></div>
<div><em><span style=3D"color:#569cd6">set</span><span style=3D"color:#cccc=
cc">( CMAKE_SYSTEM_PROCESSOR arm )</span></em></div>
<div><em><span style=3D"color:#569cd6">set</span><span style=3D"color:#cccc=
cc">( CMAKE_C_COMPILER arm-openbmc-linux-gnueabi-gcc )</span></em></div>
<div><em><span style=3D"color:#569cd6">set</span><span style=3D"color:#cccc=
cc">( CMAKE_CXX_COMPILER arm-openbmc-linux-gnueabi-g++ )</span></em></div>
<div><em><span style=3D"color:#569cd6">set</span><span style=3D"color:#cccc=
cc">( CMAKE_C_COMPILER_LAUNCHER =C2=A0)</span></em></div>
<div><em><span style=3D"color:#569cd6">set</span><span style=3D"color:#cccc=
cc">( CMAKE_CXX_COMPILER_LAUNCHER =C2=A0)</span></em></div>
<div><em><span style=3D"color:#569cd6">set</span><span style=3D"color:#cccc=
cc">( CMAKE_ASM_COMPILER arm-openbmc-linux-gnueabi-gcc )</span></em></div>
<div><em><span style=3D"color:#569cd6">find_program</span><span style=3D"co=
lor:#cccccc">( </span><span style=3D"color:#9cdcfe">CMAKE_AR</span><span st=
yle=3D"color:#cccccc"> arm-openbmc-linux-gnueabi-gcc-ar </span><span style=
=3D"color:#569cd6">DOC</span><span style=3D"color:#cccccc"> </span><span st=
yle=3D"color:#ce9178">&quot;Archiver&quot;</span><span style=3D"color:#cccc=
cc"> REQUIRED )</span></em></div>
<br>
<div><em><span style=3D"color:#569cd6">set</span><span style=3D"color:#cccc=
cc">( CMAKE_C_FLAGS </span><span style=3D"color:#ce9178">&quot; -march=3Dar=
mv7-a -mfpu=3Dvfpv4-d16 -mfloat-abi=3Dhard -fstack-protector-strong......</=
span></em></div>
<div><em><span style=3D"color:#ce9178">....</span></em></div>
</div>
</div>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#65569): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/65569" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/65569</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/113916891/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/113916891/1997914</a><br>
Mute #cmake:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/c=
make" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/cmake</a><br>
Mute #devtool:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/devtool" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/devtool</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000f1694e0638d23e18--

