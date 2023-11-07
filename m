Return-Path: <logan.grosz@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CDEBC4332F
	for <webhook@archiver.kernel.org>; Tue,  7 Nov 2023 07:11:01 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.5124.1699341053903904736
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Nov 2023 23:10:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bNjlaxi7;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: logan.grosz@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2c503dbe50dso72974931fa.1
        for <yocto@lists.yoctoproject.org>; Mon, 06 Nov 2023 23:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699341051; x=1699945851; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HzdqiAcSkq12eC+Y/qwbU/vW5FjVldEN8VVuCRU692Y=;
        b=bNjlaxi7AWFG/ImZGdY7hDMRbEzI0sCHFZHU3uLgyBEWTrqQCJzUP9jF/NkgBtGQyS
         s6P+qgyD6ibHGPAhBxRMEmlPigZ769b6Au/Lq2ElExH3xPyQlZ93Uj6lwcvNO/H37EIi
         sj0pxwREtNSlUm8aPdajYzqLBoFjMRu/H783uMotMrOD32DAhZKOhIXG7XGP/2kvkM3z
         wKvUZ8DimtLPWTXahZN9eA2uXrbY9x479mKEam8+KCNSKpyKgd4/mcKZuLt6pX4vNx4n
         GvZ8kzx0z8Fm5Dsg346ZgWKsaecBZ+Z8tp4mjSAGq5qQ/Sr/1HzuxHcwvu8ygFTCrvW2
         k5hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699341051; x=1699945851;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HzdqiAcSkq12eC+Y/qwbU/vW5FjVldEN8VVuCRU692Y=;
        b=PhCX+KyNz/09NTGVuVnw5JirUlGHB/gYbKv/+ICsp+j9b3YYnEuFx08YHuxLxFrI+c
         efLIkoBVFmtUoae+RFZKapu/DbfmVTcIkyLaigbb1JtkR9eyeHnfrYHZ8BeAd/MB5RvL
         1I5r8MdED+yRxyK1KfroB85rlZlg+gBwAM5dc3bAIpf/2kCMXL0V8tD+GXRUSUokb0wm
         oXLnSMIC/pMtAYAqxUWdOctXb0L9/jKif8vKZRlOBem5nZh8myo0I27h9ZQzn3Ma5onn
         n6RcVK75PVHtnW7MzhIzFu5QZsOZoeJcUexq+iikRRJwZXL7nTHtrqieJd2xpzOnZqUy
         fpPg==
X-Gm-Message-State: AOJu0YxKuJKnIVxJDbKxYvRtvsUhzSJJc6uoyxUQfCuOpa2r8/pBPTIe
	+wQVF0GDDLa8rZB/6Ii3utQnblnIpNNQaW9/20I9rzEHRm4=
X-Google-Smtp-Source: AGHT+IEdd8ijSOjLR6yx3pK0JEVYvC2r3YRJWabjZtE9UP/liq3ZMe2oxaUmPfyb2n//rMKKiZGDXmnUbhfK8YLaQS0=
X-Received: by 2002:a05:6512:3092:b0:503:8fa:da21 with SMTP id
 z18-20020a056512309200b0050308fada21mr30173768lfd.43.1699341050937; Mon, 06
 Nov 2023 23:10:50 -0800 (PST)
MIME-Version: 1.0
From: Logan Grosz <logan.grosz@gmail.com>
Date: Tue, 7 Nov 2023 00:10:39 -0700
Message-ID: <CANn=KGgSPRd4LM_O90-dBQ9ki3joBgo2+GUo0bp7Qp5TwJ2r2w@mail.gmail.com>
Subject: Using clangd LSP for CMake project using OEToolchainConfig.cmake
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b1870206098aab73"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Nov 2023 07:11:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61630

--000000000000b1870206098aab73
Content-Type: text/plain; charset="UTF-8"

Hi, all

I am trying to use the clangd LSP server during development for my C++
CMake project. I have determined if I place the following snippet after my
project directive,

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
if(CMAKE_EXPORT_COMPILE_COMMANDS)
    set(CMAKE_CXX_STANDARD_INCLUDE_DIRECTORIES
${CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES})
endif()

then the LSP will work correctly. However, I do not wish to do this for a
few reasons..

- These steps are not pertinent to my build, only to my development
- It is not kosure to modify the CMAKE_CXX_STANDARD_INCLUDE_DIRECTORIES
<https://cmake.org/cmake/help/latest/variable/CMAKE_LANG_STANDARD_INCLUDE_DIRECTORIES.html>
.

I noticed
$OECORE_NATIVE_SYSROOT/usr/share/cmake/OEToolchainConfig.cmake.d/*.cmake is
included when specifying the
$OECORE_NATIVE_SYSROOT/usr/share/cmake/OEToolchainConfig.cmake. So, I've
added $OECORE_NATIVE_SYSROOT/usr/share/cmake/OEToolchainConfig.cmake.d/
clangd.cmake. However, this does not completely work...

- I have to cmake twice before compile_commands.json shows up..
- The clangd fails to find system includes and stl headers.

What can I do to resolve these issues?

All the best,
Logan

--000000000000b1870206098aab73
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, all<div><br></div><div>I am trying to use the clangd L=
SP server during development for my C++ CMake project. I have determined if=
 I place the following snippet after my <font face=3D"monospace">project</f=
ont> directive,</div><div><br></div><div><font face=3D"monospace">set(CMAKE=
_EXPORT_COMPILE_COMMANDS ON)<br>if(CMAKE_EXPORT_COMPILE_COMMANDS)</font></d=
iv><div><font face=3D"monospace">=C2=A0 =C2=A0 set(CMAKE_CXX_STANDARD_INCLU=
DE_DIRECTORIES ${CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES})<br>endif()</font>=
</div><div><font face=3D"monospace"><br></font></div><div><font face=3D"ari=
al, sans-serif">then the LSP will work correctly. However, I do not wish to=
 do this for a few reasons..</font></div><div><font face=3D"arial, sans-ser=
if"><br></font></div><div><font face=3D"arial, sans-serif">- These steps ar=
e not pertinent to my build, only to my development</font></div><div><font =
face=3D"arial, sans-serif">- <a href=3D"https://cmake.org/cmake/help/latest=
/variable/CMAKE_LANG_STANDARD_INCLUDE_DIRECTORIES.html">It is not kosure to=
 modify the CMAKE_CXX_STANDARD_INCLUDE_DIRECTORIES</a>.</font></div><div><f=
ont face=3D"arial, sans-serif"><br></font></div><div><font face=3D"arial, s=
ans-serif">I noticed </font><font face=3D"monospace">$OECORE_NATIVE_SYSROOT=
/usr/share/cmake/OEToolchainConfig.cmake.d/*.cmake</font> is included when =
specifying the <font face=3D"monospace">$OECORE_NATIVE_SYSROOT/usr/share/cm=
ake/OEToolchainConfig.cmake</font><font face=3D"arial, sans-serif">. So, I&=
#39;ve added=C2=A0</font><span style=3D"font-family:monospace">$</span><fon=
t face=3D"monospace">OECORE_NATIVE_SYSROOT/usr/share/cmake/OEToolchainConfi=
g.cmake.d/</font>clangd.cmake<font face=3D"arial, sans-serif">. However, th=
is does not completely work...</font></div><div><font face=3D"arial, sans-s=
erif"><br></font></div><div><font face=3D"arial, sans-serif">- I have to </=
font><font face=3D"monospace">cmake</font><font face=3D"arial, sans-serif">=
 twice before </font><font face=3D"monospace">compile_commands.json</font><=
font face=3D"arial, sans-serif"> shows up..</font></div><div><font face=3D"=
arial, sans-serif">- The clangd fails to find system includes and stl heade=
rs.</font></div><div><font face=3D"arial, sans-serif"><br></font></div><div=
><font face=3D"arial, sans-serif">What can I do to resolve these issues?</f=
ont></div><div><font face=3D"arial, sans-serif"><br></font></div><div><font=
 face=3D"arial, sans-serif">All the best,</font></div><div><font face=3D"ar=
ial, sans-serif">Logan</font></div></div>

--000000000000b1870206098aab73--

