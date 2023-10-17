Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C38FCDB483
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 11:53:58 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web10.211585.1697543637396640088
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 04:53:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=vRrcL/Sa;
 spf=pass (domain: linaro.org, ip: 209.85.167.46, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5079eed8bfbso4867203e87.1
        for <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 04:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697543635; x=1698148435; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pEgooOjkKAAfDui+5szcky27hF3z/Fo7QiOJa5F39H0=;
        b=vRrcL/SapkeCyrc5sqtDriz5NaWDF4bIF7Qt/bEPsRrGPV9Q921DB4P6a/54TVGstb
         qVMG3Tqwh4V8vk2RRBy0zPIzRLkV3lNk29RhYW/tXH+1u1P3g31jW/BO05xmK8L7qkzO
         feenyyiZ/pc8oYW8beegUjwrdxW2TdTVhSGDCReXd14gkS6K/lg1t+Xs2GFMavZKe98n
         fJs5v8+ZqqDj9LdleboNTTFSP1H2w4+HUK4IEyte5z5Q0rqJhU2RYkDfd5zgjxHvf5xD
         EKavUE88VGdMNTaXRxr3ZY2MYeupiWhghVmZlF+AsF3UUJX2celrsXmLJYmPUSxpYrgR
         uJbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697543635; x=1698148435;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pEgooOjkKAAfDui+5szcky27hF3z/Fo7QiOJa5F39H0=;
        b=uLL8vXXJ4IDPMbDkrTAeOwFIVgpky+wXgjfZqeBVhj5xZV6MYekvBOUlNIHRrAnYDH
         tJrk83/2HWqQ9j7UW8S09uV/1uFEcsCbulXzYg809bvE9FRezlO0OJA2ztbPhhpePegw
         YVapfXR4NyAlrhUmCAcHBAvtU/hlXQMeq7s2oyKhZ5NE3Uu6dhgJ9M0EQXXuEpzmFgOf
         knm57I8b7DOfTnDE53jnNUBb79u/cx9c92WJqYnYIecWs1+VLCF6f1kllVjbL54+H8qe
         xqpskzve2BWtKB9tmm/y8H5mudOFHWbGpw91sR7uj0CPOoGefGBGU/Tmv5lY+EvTYKgB
         w75A==
X-Gm-Message-State: AOJu0Yz3+pNvHHU5GIgieTER7Dp+fuWPP1L4/2s8MdByhiQPmzPL3Pb6
	YvIqbtNzvEt2/X9YfKVDvTfM9Q==
X-Google-Smtp-Source: AGHT+IEHf4xzf/zoKbP/IDg43TalbR1b2A/7Nc6nno4UglcvfT9HRc0oQRIBDfnKAXCO0iDm3G85lA==
X-Received: by 2002:a19:7608:0:b0:507:9dfd:f840 with SMTP id c8-20020a197608000000b005079dfdf840mr1695891lff.68.1697543635369;
        Tue, 17 Oct 2023 04:53:55 -0700 (PDT)
Received: from nuoska (dc7g6tyyyyyyyyyyyyhbt-3.rev.dnainternet.fi. [2001:14ba:16cb:a800::183])
        by smtp.gmail.com with ESMTPSA id s19-20020a056512203300b005079a62f34esm248079lfs.281.2023.10.17.04.53.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 04:53:54 -0700 (PDT)
Date: Tue, 17 Oct 2023 14:53:53 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Dave Hitchman <dave.hitchman@kymati.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Using cmake... how?
Message-ID: <ZS510fE2Q3WeU0UT@nuoska>
References: <20231016112233.221066-1-foss+yocto@0leil.net>
 <AM9PR03MB7012E6E478F4D2899CBE0F5192D7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS4ghiXPvYDDW_LC@nuoska>
 <AM9PR03MB7012DDCF969FEAAD42A8817992D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS5ZTMlhyMdLPEQ_@nuoska>
 <AM9PR03MB70124FE13C06B022A3C0BF5F92D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <ZS5gUVkTwgjNi0Ad@nuoska>
 <AM9PR03MB7012F4837978629C7E866C8792D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <AM9PR03MB7012F4837978629C7E866C8792D6A@AM9PR03MB7012.eurprd03.prod.outlook.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 11:53:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61373

Hi,

On Tue, Oct 17, 2023 at 11:35:13AM +0000, Dave Hitchman wrote:
<snip>
> |     /usr/bin/g++   -O2 -pipe -g -feliminate-unused-debug-types -fmacro-=
prefix-map=3D/home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-cry=
pto-phytec-linux/libkymati/1.0-r0=3D/usr/src/debug/libkymati/1.0-r0        =
              -fdebug-prefix-map=3D/home/dave/Documents/Kymati/yocto/build/=
tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-r0=3D/usr/src/debug/li=
bkymati/1.0-r0                      -fdebug-prefix-map=3D/home/dave/Documen=
ts/Kymati/yocto/build/tmp/work/cortexa53-crypto-phytec-linux/libkymati/1.0-=
r0/recipe-sysroot=3D                      -fdebug-prefix-map=3D/home/dave/D=
ocuments/Kymati/yocto/build/tmp/work/cortexa53-crypto-phytec-linux/libkymat=
i/1.0-r0/recipe-sysroot-native=3D  -fvisibility-inlines-hidden  -mcpu=3Dcor=
tex-a53 -march=3Darmv8-a+crc+crypto -fstack-protector-strong  -O2 -D_FORTIF=
Y_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security  --sysroo=
t=3D/home/dave/Documents/Kymati/yocto/build/tmp/work/cortexa53-crypto-phyte=
c-linux/libkymati/1.0-r0/recipe-sysroot -o CMakeFiles/cmTC_e06e9.dir/testCX=
XCompiler.cxx.o -c testCXXCompiler.cxx
> |     g++: warning: =E2=80=98-mcpu=3D=E2=80=99 is deprecated; use =E2=80=
=98-mtune=3D=E2=80=99 or =E2=80=98-march=3D=E2=80=99 instead
> |     cc1plus: error: bad value (=E2=80=98armv8-a+crc+crypto=E2=80=99) fo=
r =E2=80=98-march=3D=E2=80=99 switch
> |     cc1plus: note: valid arguments to =E2=80=98-march=3D=E2=80=99 switc=
h are: nocona core2 nehalem corei7 westmere sandybridge corei7-avx ivybridg=
e core-avx-i haswell core-avx2 broadwell skylake skylake-avx512 cannonlake =
icelake-client icelake-server cascadelake tigerlake bonnell atom silvermont=
 slm goldmont goldmont-plus tremont knl knm x86-64 eden-x2 nano nano-1000 n=
ano-2000 nano-3000 nano-x2 eden-x4 nano-x4 k8 k8-sse3 opteron opteron-sse3 =
athlon64 athlon64-sse3 athlon-fx amdfam10 barcelona bdver1 bdver2 bdver3 bd=
ver4 znver1 znver2 btver1 btver2 native

For example here the "/usr/bin/g++" compiler will not understand -mcpu=3Dco=
rtex-a53 flags
since the compiler is on the Linux build machine and compiling natively for=
 x86_64 target
architecture, this is not the yocto/bitbake cross compiler. The correct com=
piler binary
is set via CMAKE_CXX_COMPILER variable in the toolchain file and path to it=
 is somewhere
in the recipe specific native sysroot path. CMake build scripts of libkymat=
i must use those
variables from the toolchain file. They must not overwrite them with their =
own guesses
like /usr/bin/g++.

Further details depends on what kind of CMake build scripts libkymati has.

Cheers,

-Mikko

