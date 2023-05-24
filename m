Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5141AC77B7C
	for <webhook@archiver.kernel.org>; Wed, 24 May 2023 20:12:14 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web10.4440.1684959131222576281
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 May 2023 13:12:11 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=WbR739Gn;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-3f60b3f32b4so11342805e9.1
        for <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 13:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1684959129; x=1687551129;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wXFGTG5rmnNRYQfdbmpsPnrPcqDQXhKTsTwCKYBCMk0=;
        b=WbR739GnUY4hSbMLJ0FT+U7513V240Rhas50zeyFb9QQOg5mYN2zhZ+aW3e2VVp0i9
         bvSvqaxj58+lgfGjTVCkByOv+ptRbzMRhtBZPT6vdU9dBEqoED0gGMTtlV2I8Z+Z6Cpf
         j8rAyIh3j31pJItzGX1oiOYDz5OR63AoAOI0E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684959129; x=1687551129;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wXFGTG5rmnNRYQfdbmpsPnrPcqDQXhKTsTwCKYBCMk0=;
        b=TCYLWdVrYsdlVQmj1LPTr6fPdI3ew8WwmlJM98InYQwqSsXSo0fbYk2blX4grcG+TY
         NYut+Eq2nqORNGwLeJtRuDwCZU/g46juydtZvsZtbhVyNCDqFESSPhUzozjWiqmqRbyY
         8ybOR/i6BIY2iaj3rlvgYf0Nvv5BN538XSwFiymPCO+TVIDgMm8nY0TgF5xc5hIaXO0m
         SNXgqV3w3N4fbry60uX3cvOsiTuS3M1VkvBDXkOdcvmcgRKA68FPm+KZyuwCMP3FCF4z
         K9tymb7HXwwh5J9lJGh0quh6ljaKT1Vo03V2onRUcQVcBhkkfbRdxVyeQXPhPdHMbcoL
         5QOA==
X-Gm-Message-State: AC+VfDyLl8EbNmrYIM2eZG3tUrEq9EuYFEBR26+AP4AH7zdjo49ZNgo2
	DvKQfBfljtEM+QzBuBST05qJKw==
X-Google-Smtp-Source: ACHHUZ59dSf5q0ukIG29DOckK+vBCgWRYwopZpAVhYmel2UewbLODiccCh4BTHQsKlELr032D/56UA==
X-Received: by 2002:a1c:7718:0:b0:3f4:f4d1:5c28 with SMTP id t24-20020a1c7718000000b003f4f4d15c28mr569740wmi.24.1684959129660;
        Wed, 24 May 2023 13:12:09 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:4cab:7af6:3f6:b471? ([2001:8b0:aba:5f3c:4cab:7af6:3f6:b471])
        by smtp.gmail.com with ESMTPSA id l22-20020a1c7916000000b003f607875e5csm3415673wme.24.2023.05.24.13.12.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 13:12:09 -0700 (PDT)
Message-ID: <78d1f724267411f2456fe3108638bdcc841c6b5e.camel@linuxfoundation.org>
Subject: Re: [yocto] libstdc++.so.6: version `GLIBCXX_3.4.30' not found
 (required by bin/cmake) #hardknott
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mahendra Sondagar <mahendrasondagar08@gmail.com>, 
	yocto@lists.yoctoproject.org
Date: Wed, 24 May 2023 21:12:07 +0100
In-Reply-To: <FdMa.1684929870726192226.1anj@lists.yoctoproject.org>
References: <FdMa.1684929870726192226.1anj@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 20:12:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60116

On Wed, 2023-05-24 at 05:04 -0700, Mahendra Sondagar wrote:
> Hi.. community=C2=A0
> Hope all are doing well=C2=A0
> =C2=A0
> I'm dealing with the Yocto hardknott with my Ubuntu host=C2=A0
> The Ubuntu version is=C2=A0Ubuntu 22.04.2 LTS
> =C2=A0
> During the building of the custom image, everything goes well until
> the build process hits the below error message=C2=A0
> =C2=A0
> | make=C2=A0 -f CMakeFiles/Makefile2 preinstall
> | make[1]: Entering directory '/home/aio/AIO_Systems_Yocto/var-fslc-
> yocto/build_aio/tmp/work/x86_64-linux/cmake-native/3.19.5-r0/build'
> | make[1]: Nothing to be done for 'preinstall'.
> | make[1]: Leaving directory '/home/aio/AIO_Systems_Yocto/var-fslc-
> yocto/build_aio/tmp/work/x86_64-linux/cmake-native/3.19.5-r0/build'
> | ERROR: oe_runmake failed
> | Install the project...
> | bin/cmake -P cmake_install.cmake
> | WARNING: exit code 1 from a shell command.
> | bin/cmake: /home/aio/AIO_Systems_Yocto/var-fslc-
> yocto/build_aio/tmp/sysroots-uninative/x86_64-
> linux/usr/lib/libstdc++.so.6: version `GLIBCXX_3.4.30' not found
> (required by bin/cmake)
> | make: *** [Makefile:162: install] Error 1
> | ERROR: ExecutionError('/home/aio/AIO_Systems_Yocto/var-fslc-
> yocto/build_aio/tmp/work/x86_64-linux/cmake-native/3.19.5-
> r0/temp/run.do_install.194605', 1, None, None)
> =C2=A0
> for instance, I have also verified the installed version of the GLIBC
> via the below command=C2=A0
> strings /usr/lib/x86_64-linux-gnu/libstdc++.so.6 | grep GLIBCXX
> =C2=A0
> From where I got to know that, it's already installed!
> =C2=A0
> Can anyone help me here to resolve the issue?
> All comments and suggestions welcome=C2=A0=C2=A0

Upgrading uninative to a version from master will probably help fix
that. As Khem mentions, hardknott is know longer supported through.

Cheers,

Richard

