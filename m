Return-Path: <tom.isaacson@teknique.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9BE8C001B0
	for <webhook@archiver.kernel.org>; Thu, 10 Aug 2023 21:22:28 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web10.29693.1691702543157948518
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Aug 2023 14:22:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@teknique-com.20221208.gappssmtp.com header.s=20221208 header.b=tTCYDc3V;
 spf=none, err=SPF record not found (domain: teknique.com, ip: 209.85.219.52, mailfrom: tom.isaacson@teknique.com)
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-63cf9eddbc6so12363346d6.0
        for <yocto@lists.yoctoproject.org>; Thu, 10 Aug 2023 14:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=teknique-com.20221208.gappssmtp.com; s=20221208; t=1691702542; x=1692307342;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vL9wwYBgKlVQEkhyvmcTRyWv64hXtIS7SWAJV5vtZ64=;
        b=tTCYDc3VNfaKdQQ1yZ9iKKIXsw6v/Jw0o5hwfiTBpajc+UsRCWWXYboVQxplwYHaba
         zLVblX+3a6Q2Ko6dJ/4pjjavFIsOuB5BrmWK7YrBbtN0EVwIZGonXWu6uEpArZH3pKcd
         Hmo4MnpBwKzX1YErYGBJB8r82FLaf06of0paYN4IfEvEbEAcCnGD/YUtbGaLk4ZiXwwk
         GTJJFj1hksUgIcCCXKkVzWU7Sh8d4GVAz5h8RrB96uiRqiUarxyDfa9iKVHEbhW084aa
         0HfzMCTDpX3d5ykQlDYLeQbhsLgdNEHHTBEM7m64MPWEwofRskAecKrWrMR0xcB3vu60
         qFjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691702542; x=1692307342;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vL9wwYBgKlVQEkhyvmcTRyWv64hXtIS7SWAJV5vtZ64=;
        b=Ar+RpGaZ66cCAl95GW6AlAnIQmD0UEAMMnxepsbf9b44v851b1EAJKLJLpOIdCYycs
         Faky62WbceK1NaoOZZapVLH3YQ4yZctKtc51gT6tSaFk8iqEBTKq1JAx4A9P65LJm0wZ
         kopGcQX30ZTLE3YB/DO8yVbyIlK0SHkIsK2Dx81lAAlcq5FWpwgoyAVZEAKwmOxcAe7i
         2gExYC3+wi4z5H8fIjJFRn9oNlLUfhA7+oqUq+HyqAYGs37YGT3N/uyH8UvFIr2Gckq2
         E8xu3Qp3xea4+Wmy+5j1ikZy73/PI5GN5Kis3tBMyX8cEucJ+WKMZ3ptKlsBfpr93C/B
         wgnQ==
X-Gm-Message-State: AOJu0Yz3LM7+QNP+suJlgW1VQhdpdHYNfLGU7xVyU8hdwIoWGx3qaYnJ
	5qkOkTesemAQP9ZT2UYzg/pGegcHweq7UojjtFv46A==
X-Google-Smtp-Source: AGHT+IFx6G7+qv405psTmvHfpKYjqB2ueCd+f6JJcgOTKAMjY89ioJ4abkMgfEn+Ljk1Nrscj9wKgHQ4zCPpoBQREl8=
X-Received: by 2002:a0c:f4c6:0:b0:63d:3333:1d3 with SMTP id
 o6-20020a0cf4c6000000b0063d333301d3mr76909qvm.30.1691702542004; Thu, 10 Aug
 2023 14:22:22 -0700 (PDT)
MIME-Version: 1.0
References: <CA+EiEZ+k3eSZENj_ORU+-7rx99ed__pu7Ger2JpGm1U8gZ2WRg@mail.gmail.com>
 <c9cc305944c70a7f59e881e39d020d5e216197e3.camel@linuxfoundation.org>
In-Reply-To: <c9cc305944c70a7f59e881e39d020d5e216197e3.camel@linuxfoundation.org>
From: Tom Isaacson <tom.isaacson@teknique.com>
Date: Fri, 11 Aug 2023 09:22:10 +1200
Message-ID: <CA+EiEZLbtCfDGyxA8kjwQkPjeJJ9vzwpKMKGSW6ABGq2uogg2Q@mail.gmail.com>
Subject: Re: [yocto] Intermittent build failure where dwarfsrcfiles doesn't exist
To: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	"<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Aug 2023 21:22:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60775

I tried the dependency graph but it was enormous and too hard to read.
I can see in log.do_package for my app:
NOTE: Direct dependencies are
['poky/meta/recipes-devtools/dwarfsrcfiles/dwarfsrcfiles.bb:do_populate_sys=
root']
and it doesn't make any difference if I add "dwarfsrcfiles-native" as
a dependency in my app's recipe so I don't think it's a dependency
problem.

I've been trying to debug this (on Dunfell) but I've run into
something strange. I was trying to figure out which function was
responsible for copying the dwarfsrcfiles binary to my app's
recipe-sysroot-native directory (because that's what is missing when
it fails):
poky/build/tmp/work/oclea_cv25-oclea-linux/my-app/1.0.53-8c74bcd/recipe-sys=
root-native/usr/bin/dwarfsrcfiles

I've added some logging and I noticed in
poky/build/tmp/work/x86_64-linux/dwarfsrcfiles-native/1.0-r0/temp/log.do_po=
pulate_sysroot
that when rpath_replace() is called by
relocatable_binaries_preprocess() it does this:
DEBUG: Executing python function relocatable_binaries_preprocess
NOTE: relocatable_binaries_preprocess(): d =3D <bb.data_smart.DataSmart
object at 0x7fbb6b755e40>
NOTE: rpath_replace(path =3D
/home/tom/Documents/Bitbucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_6=
4-linux/dwarfsrcfiles-native/1.0-r0/sysroot-destdir,
d =3D <bb.data_smart.DataSmart object at 0x7fbb6b755e40>)
NOTE: Processing directory
/home/tom/Documents/Bitbucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_6=
4-linux/dwarfsrcfiles-native/1.0-r0/recipe-sysroot-native/usr/bin
DEBUG: Checking
/home/tom/Documents/Bitbucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_6=
4-linux/dwarfsrcfiles-native/1.0-r0/sysroot-destdir//home/tom/Documents/Bit=
bucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_64-linux/dwarfsrcfiles-n=
ative/1.0-r0/recipe-sysroot-native/usr/bin
for binaries to process
NOTE: Processing directory
/home/tom/Documents/Bitbucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_6=
4-linux/dwarfsrcfiles-native/1.0-r0/recipe-sysroot-native/usr/sbin
DEBUG: Checking
/home/tom/Documents/Bitbucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_6=
4-linux/dwarfsrcfiles-native/1.0-r0/sysroot-destdir//home/tom/Documents/Bit=
bucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_64-linux/dwarfsrcfiles-n=
ative/1.0-r0/recipe-sysroot-native/usr/sbin
for binaries to process
NOTE: Processing directory
/home/tom/Documents/Bitbucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_6=
4-linux/dwarfsrcfiles-native/1.0-r0/recipe-sysroot-native/sbin
DEBUG: Checking
/home/tom/Documents/Bitbucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_6=
4-linux/dwarfsrcfiles-native/1.0-r0/sysroot-destdir//home/tom/Documents/Bit=
bucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_64-linux/dwarfsrcfiles-n=
ative/1.0-r0/recipe-sysroot-native/sbin
for binaries to process
NOTE: Processing directory
/home/tom/Documents/Bitbucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_6=
4-linux/dwarfsrcfiles-native/1.0-r0/recipe-sysroot-native/bin
DEBUG: Checking
/home/tom/Documents/Bitbucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_6=
4-linux/dwarfsrcfiles-native/1.0-r0/sysroot-destdir//home/tom/Documents/Bit=
bucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_64-linux/dwarfsrcfiles-n=
ative/1.0-r0/recipe-sysroot-native/bin
for binaries to process
NOTE: Processing directory
/home/tom/Documents/Bitbucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_6=
4-linux/dwarfsrcfiles-native/1.0-r0/recipe-sysroot-native/usr/lib
DEBUG: Checking
/home/tom/Documents/Bitbucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_6=
4-linux/dwarfsrcfiles-native/1.0-r0/sysroot-destdir//home/tom/Documents/Bit=
bucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_64-linux/dwarfsrcfiles-n=
ative/1.0-r0/recipe-sysroot-native/usr/lib
for binaries to process
NOTE: Processing directory
/home/tom/Documents/Bitbucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_6=
4-linux/dwarfsrcfiles-native/1.0-r0/recipe-sysroot-native/usr/lib
DEBUG: Checking
/home/tom/Documents/Bitbucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_6=
4-linux/dwarfsrcfiles-native/1.0-r0/sysroot-destdir//home/tom/Documents/Bit=
bucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_64-linux/dwarfsrcfiles-n=
ative/1.0-r0/recipe-sysroot-native/usr/lib
for binaries to process
NOTE: Processing directory
/home/tom/Documents/Bitbucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_6=
4-linux/dwarfsrcfiles-native/1.0-r0/recipe-sysroot-native/usr/libexec
DEBUG: Checking
/home/tom/Documents/Bitbucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_6=
4-linux/dwarfsrcfiles-native/1.0-r0/sysroot-destdir//home/tom/Documents/Bit=
bucket/my-app/my-yocto-sdk/poky/build/tmp/work/x86_64-linux/dwarfsrcfiles-n=
ative/1.0-r0/recipe-sysroot-native/usr/libexec
for binaries to process
DEBUG: Python function relocatable_binaries_preprocess finished

This seems totally wrong - two full paths are being combined to make a
path that can't possibly exist. Is this something to do with my setup?

I've just been doing this by adding debug output, but is there a guide
on how to debug this directly? I use VSCode.

Thanks.

On Tue, Aug 8, 2023 at 9:17=E2=80=AFPM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Tue, 2023-08-08 at 18:10 +1200, Tom Isaacson wrote:
> > We've been using Dunfell for a while but recently I've started getting
> > an intermittent build failure from an app:
> >     ERROR: my-app-1.0.52-213f116 do_package: Fatal errors occurred in
> > subprocesses:
> >     [Errno 2] No such file or directory: 'dwarfsrcfiles':
> > 'dwarfsrcfiles': Traceback (most recent call last):
> >      File "/var/lib/jenkins/workspace/la_meta-my-layer_check-build/my-y=
octo-sdk/poky/meta/lib/oe/utils.py",
> > line 280, in run
> >        ret =3D self._target(*self._args, **self._kwargs)
> >      File "/var/lib/jenkins/workspace/la_meta-my-layer_check-build/my-y=
octo-sdk/poky/meta/classes/package.bbclass",
> > line 405, in splitdebuginfo
> >         sources =3D source_info(file, d)
> >      File "/var/lib/jenkins/workspace/la_meta-my-layer_check-build/my-y=
octo-sdk/poky/meta/classes/package.bbclass",
> > line 353, in source_info
> >        output =3D subprocess.check_output(cmd, universal_newlines=3DTru=
e,
> > stderr=3Dsubprocess.STDOUT)
> >      File "/usr/lib/python3.7/subprocess.py", line 395, in check_output
> >        **kwargs).stdout
> >      File "/usr/lib/python3.7/subprocess.py", line 472, in run
> >        with Popen(*popenargs, **kwargs) as process:
> >      File "/usr/lib/python3.7/subprocess.py", line 775, in __init__
> >        restore_signals, start_new_session)
> >      File "/usr/lib/python3.7/subprocess.py", line 1522, in _execute_ch=
ild
> >        raise child_exception_type(errno_num, err_msg, err_filename)
> >     FileNotFoundError: [Errno 2] No such file or directory:
> > 'dwarfsrcfiles': 'dwarfsrcfiles'
> >
> > I assumed this was a race condition, so following
> > https://docs.yoctoproject.org/3.1.26/dev-manual/dev-manual-common-tasks=
.html?highlight=3Dparallel_make#debugging-parallel-make-races
> > I added:
> >     PARALLEL_MAKE =3D ""
> > to the app recipe, but it didn't seem to help. However, setting:
> >     PARALLEL_MAKE =3D "-j 20"
> > does seem to make it fail every time (rather than intermittently).
> >
> > dwarfsrcfiles is being built and I can run it after the build fails.
> > I've upgraded to Kirkstone but I'm seeing the same problem. The recipe
> > isn't doing anything to the package step so I'm not sure why it's
> > running before dwarfsrcfiles is built. I can see =C4=ABt's included in
> > poky/meta/classes/package.bbclass but since it's a dependency I would
> > have thought it has to be built before the packaging step can be done?
>
> Rather than a make race, it is probably a task race and something like
> a missing task dependency.
>
> Run something like "bitbake my-app -c package -g" and have a look at
> task-depends.dot that is generated, see if there is a dependency
> between my-app:do_package and dwarfsrcfiles-native:do_populate_sysroot.
> It should come from PACKAGE_DEPENDS in package.bbclass.
>
> Cheers,
>
> Richard
>
>


--=20
Tom Isaacson

