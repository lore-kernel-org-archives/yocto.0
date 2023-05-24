Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60EBEC77B7C
	for <webhook@archiver.kernel.org>; Wed, 24 May 2023 16:44:13 +0000 (UTC)
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
 by mx.groups.io with SMTP id smtpd.web10.2073.1684946651996694740
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 May 2023 09:44:12 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=i1XdwkTO;
 spf=pass (domain: gmail.com, ip: 209.85.160.52, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-195ee1be418so407858fac.2
        for <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 09:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684946651; x=1687538651;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PS+Q8bXEWt6q1cPIOzEM5zVe+D416Rw50idzjra3Nl8=;
        b=i1XdwkTOEledDpUeCk82x0lcDd8703sUeWrx2e65Hy2eWAezC40k4krDCdPRYbgRsn
         LD78L5DHl7wGzWH1Tt4zOh0zKu1dM7ax9T+QRUM69EDWt943727SCdTritdeS6w5oOTq
         aU/paCoj3UKP57W6Ixxl/2AWli/jwSwD5EdA25SO8TdWd0jYTVs9o6dOcyvDMKGNTj+S
         PJSf5QfE4Pk8f3GtaFTRLjnpz+DwZMswv1v9rTMXnLNaO4Vt8PieDXp0E6rELOIXBBo1
         ksKDnOAKOhyki1dZwTYu64YK08L41q2HFVpROsu0Q0kvpMN6CjVSiqt7Cc+QtGhc92rK
         o7wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684946651; x=1687538651;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PS+Q8bXEWt6q1cPIOzEM5zVe+D416Rw50idzjra3Nl8=;
        b=De+XZYdXq0VcIFZpxe5+0gTHv2nwh1OT4P1Mw0TPomHHAVH9v07qBAH0z5LJKj6Zuu
         h/+z7QDlx65v+mDT+dyreWhsgE2piG5OBkHEp8rnanPOwFvUqA2+fBQfFc/+G+OB+9Je
         5uvPVXNqIGPBjRiiJdvC/8Qz8aOuChldkx2/1wK3Uga7vOCjH47eCN4jbs/DHBNNyUnt
         2BajhiM4iHsEUXXkQrXPq47kQtF1f8ppb1GjqGl/IeXH1X6aRZe1Y3RXBeYN4ksr59I4
         zvTlHY0icb2Ai9PdMmMO5Hq2/Qed+PmbfVq7v2KhqxmNKfjwIXsxOONzbITjSjeLG2qy
         eqZA==
X-Gm-Message-State: AC+VfDxel4FPq3zzjxseoYnRHEJ032Oreg3HAqKaum0GjsMrp9fQBehF
	EeV7ap1bnrmwgZTLY0Yt8T9g0cuES5WBoWyDReY=
X-Google-Smtp-Source: ACHHUZ5VCFXO/Vg0fRwhr2he/8xCx+BKjEE3syMUZ7ttCHXWinpcsY5v2V47y2dQcvH9tPFo3BhJe04RbhjdvulovU0=
X-Received: by 2002:a05:6871:4c4:b0:192:550f:9c6e with SMTP id
 n4-20020a05687104c400b00192550f9c6emr288006oai.0.1684946651029; Wed, 24 May
 2023 09:44:11 -0700 (PDT)
MIME-Version: 1.0
References: <FdMa.1684929870726192226.1anj@lists.yoctoproject.org>
In-Reply-To: <FdMa.1684929870726192226.1anj@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 24 May 2023 09:43:44 -0700
Message-ID: <CAMKF1srvuTHg=FVcZC_-PkqJxPDn2NY50saQgyXTV9etiKadFQ@mail.gmail.com>
Subject: Re: [yocto] libstdc++.so.6: version `GLIBCXX_3.4.30' not found
 (required by bin/cmake) #hardknott
To: Mahendra Sondagar <mahendrasondagar08@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 16:44:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60111

22.04 is too new for hardknott which was EOL'ed a year ago. Always
check the tested distributions sections in manual for a given release.
In your case

https://github.com/yoctoproject/poky/blob/hardknott/documentation/ref-manua=
l/system-requirements.rst#supported-linux-distributions

On Wed, May 24, 2023 at 5:04=E2=80=AFAM Mahendra Sondagar
<mahendrasondagar08@gmail.com> wrote:
>
> Hi.. community
>
> Hope all are doing well
>
>
>
> I'm dealing with the Yocto hardknott with my Ubuntu host
>
> The Ubuntu version is Ubuntu 22.04.2 LTS
>
>
>
> During the building of the custom image, everything goes well until the b=
uild process hits the below error message
>
>
>
> | make  -f CMakeFiles/Makefile2 preinstall
>
> | make[1]: Entering directory '/home/aio/AIO_Systems_Yocto/var-fslc-yocto=
/build_aio/tmp/work/x86_64-linux/cmake-native/3.19.5-r0/build'
>
> | make[1]: Nothing to be done for 'preinstall'.
>
> | make[1]: Leaving directory '/home/aio/AIO_Systems_Yocto/var-fslc-yocto/=
build_aio/tmp/work/x86_64-linux/cmake-native/3.19.5-r0/build'
>
> | ERROR: oe_runmake failed
>
> | Install the project...
>
> | bin/cmake -P cmake_install.cmake
>
> | WARNING: exit code 1 from a shell command.
>
> | bin/cmake: /home/aio/AIO_Systems_Yocto/var-fslc-yocto/build_aio/tmp/sys=
roots-uninative/x86_64-linux/usr/lib/libstdc++.so.6: version `GLIBCXX_3.4.3=
0' not found (required by bin/cmake)
>
> | make: *** [Makefile:162: install] Error 1
>
> | ERROR: ExecutionError('/home/aio/AIO_Systems_Yocto/var-fslc-yocto/build=
_aio/tmp/work/x86_64-linux/cmake-native/3.19.5-r0/temp/run.do_install.19460=
5', 1, None, None)
>
>
>
> for instance, I have also verified the installed version of the GLIBC via=
 the below command
>
> strings /usr/lib/x86_64-linux-gnu/libstdc++.so.6 | grep GLIBCXX
>
>
>
> From where I got to know that, it's already installed!
>
>
>
> Can anyone help me here to resolve the issue?
>
> All comments and suggestions welcome
>
>
>
> Thanks
> Mahendra
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60109): https://lists.yoctoproject.org/g/yocto/messag=
e/60109
> Mute This Topic: https://lists.yoctoproject.org/mt/99106807/1997914
> Mute #hardknott:https://lists.yoctoproject.org/g/yocto/mutehashtag/hardkn=
ott
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

