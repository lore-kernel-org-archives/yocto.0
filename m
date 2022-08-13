Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E69CC19F2D
	for <webhook@archiver.kernel.org>; Sat, 13 Aug 2022 14:31:04 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
 [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web11.5272.1660401060720043611
 for <yocto@lists.yoctoproject.org>;
 Sat, 13 Aug 2022 07:31:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=d41MJ3cz;
 spf=pass (domain: gmail.com, ip: 209.85.208.171,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id w15so3475226ljw.1
        for <yocto@lists.yoctoproject.org>;
 Sat, 13 Aug 2022 07:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=3Tp4kB3GpfECBHiNfvnISyAsMdbM0riKBfUke7mEFSg=;
        b=d41MJ3czVkgpCIw3a7tMAHhG25fIpHyzARmXrJVVnH4mX2BXsuu2nxINJad1URla+u
         DlH39pSOV6yq23M1L7Io95wXfMOK13wCC82R5sYakarVHgCVRx7CiRXLLnS2gJviluld
         Ps6JE2m6aRzovWfr4YLijko2jhaGZct7AzkbbDHJ6Mit/+avhXqc2WdJQTvrRPDhoi1G
         aPr2z0c9MSUocqNOOh0uC5ZCrd/fDcy9Z6eP8u9aw7YUflEe4KbwbOOVHEwDce+Suzys
         C04pmqjNCnfqGCYJUC5+nzl4/UMcGS5NtWRVsin0bNeoVnnMd/QYBqb/brcEAp/5Nkas
         BMCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=3Tp4kB3GpfECBHiNfvnISyAsMdbM0riKBfUke7mEFSg=;
        b=aOTsn0pzQatVokXBKd7P7GkDU9imk0NdOwi5PsM38xeI9NnnE1mA2JyH/UaatatJyU
         r6nseMwq1583jSat7yBt0NVTfIc6uieogLxTizaZXnkFrNQGgbJfT8ktPMRBFsvlVn3c
         Una7NTAcNtpa8h6uHKdr1owUdIXT0Nl4V0opdrQr0QieQln4iUlRfY/3KOWppHP2fhw3
         V8pXxFQBPSOsFsgsUatzMVlzNMy3P5D5knPbAKS5wuXY3eGiGX9LIahm6FM3xCGxm1xB
         z35zEPQpgTRjlPFq+FTaykq3oHMN9uuqmFrmHw5xKx4tCJFTEPe+1tYL5N+AHv09rdRQ
         /6+A==
X-Gm-Message-State: ACgBeo3yd+B1D8I/ohrwqFG39K4aeLEoawhGGTHp/M2Oytl7xR+j/kwG
	PNmdFnWRIQ42etZepcklYCNHmIVZVhm1svenguc=
X-Google-Smtp-Source: 
 AA6agR6aJlZ39JT/5EDCi+w1N9/sMCO7HrZeugLHQHho40KQ/dObQpR9i+RIgFW4XM8991dXW5NOpmBb/7jjdAg9IIM=
X-Received: by 2002:a2e:7d12:0:b0:261:81ae:f804 with SMTP id
 y18-20020a2e7d12000000b0026181aef804mr85286ljc.56.1660401058792; Sat, 13 Aug
 2022 07:30:58 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAPDLWs8nYdGznhKH4EQwj77giZ79VxmAGXx4sDwXqaf0aBZT0w@mail.gmail.com>
In-Reply-To: 
 <CAPDLWs8nYdGznhKH4EQwj77giZ79VxmAGXx4sDwXqaf0aBZT0w@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 13 Aug 2022 16:30:46 +0200
Message-ID: 
 <CANNYZj9n=xNjxdp2uOGubVG5ESSpMXYTrBk5q+Mv=dckY9qrQw@mail.gmail.com>
Subject: Re: [yocto] A bitbake error caused by "Variable BB_ENV_EXTRAWHITE"
 #bitbake
To: Kaiwan N Billimoria <kaiwan.billimoria@gmail.com>
Cc: lucky33newman@gmail.com, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Aug 2022 14:31:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57839

Then you need to check the output of 'env'
a) when you start the shell
b) when you use oe-init-build-env
and figure out how the incorrect variable gets into the environment.
Are you using oe-init-build-env from an old yocto?

Alex

On Sat, 13 Aug 2022 at 15:02, Kaiwan N Billimoria
<kaiwan.billimoria@gmail.com> wrote:
>
> >Hello,
>
> >you probably need to exit the shell and then restart it and
> >re-initialize your environment (with oe-init-build-env), as it
> >contains the obsolete variable.
>
> >Alex
>
> Hi,
> I'm using the kirkstone release (4.0.2, Poky) and face the very same issue...
> Exiting the shell and sourcing oe-init-build-env didn't help..
>
> Any help is appreciated,
>
> Thanks,
> Kaiwan.
>
> On Sat, 13 Aug 2022 at 05:13, <lucky33newman@gmail.com> wrote:
> >
> > Hellow everyone, this is Yan. I am new to Yocto Project, still, I am learning.
> >
> > There is a question, when I bitbaked my image I found this ERROR:
> >
> > yanxk@yanxk-Ubuntu:~/Yocto/poky/build$ bitbake core-image-sato
> > ERROR: Variable BB_ENV_EXTRAWHITE has been renamed to BB_ENV_PASSTHROUGH_ADDITIONS
> > ERROR: Variable BB_ENV_EXTRAWHITE from the shell environment has been renamed to BB_ENV_PASSTHROUGH_ADDITIONS
> > ERROR: Exiting to allow enviroment variables to be corrected
> >
> > How can I do a quick fix, and why is it working wrong?
> >
> > By the way, I check the link https://git.openembedded.org/bitbake/commit/?id=87104b6a167188921da157c7dba45938849fb22a , which most likely the main cause.
> >
> > Waiting for a help.

