Return-Path: <tom.isaacson@teknique.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23D94C001DB
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 06:10:18 +0000 (UTC)
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com [209.85.222.194])
 by mx.groups.io with SMTP id smtpd.web10.55762.1691475009468700998
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Aug 2023 23:10:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@teknique-com.20221208.gappssmtp.com header.s=20221208 header.b=FjXFelO5;
 spf=none, err=SPF record not found (domain: teknique.com, ip: 209.85.222.194, mailfrom: tom.isaacson@teknique.com)
Received: by mail-qk1-f194.google.com with SMTP id af79cd13be357-76cded293e8so380141785a.2
        for <yocto@lists.yoctoproject.org>; Mon, 07 Aug 2023 23:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=teknique-com.20221208.gappssmtp.com; s=20221208; t=1691475008; x=1692079808;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3HdyMzVAK4cO7T4t/gl0x8MlZNQPQsDkk1+ooMGXi0A=;
        b=FjXFelO5c3plPo17NZwqjs8FrCw6sLOd8Hw4twqY07yU720feG2Kp1gta5p8/EokyE
         yh0HYUFyS43zX3UM3PnUUhDHsbJ9gCqHgg0HDJFYzRq8riiKO3Df/ihOh2yNBCQwg18I
         B3vS6qV6NkkGaDEffFYHwRA3lzRZtiIiWu7QI6b3113is76xn/0p0sJbOHN+dT1OgVHB
         D5BKS1kFKXcAwAJkoVrIV1D6ZiZclezzMzLtOzxtDfu8Tz3KtUI35IVK8/C9CXfMHWEe
         0nrYDahISLKKYKkbljbYVXtVj7k+pr+B4CYlWrVXwHFT9FUmpRlxGKhY2t0VXGM0TUJr
         iKbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691475008; x=1692079808;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3HdyMzVAK4cO7T4t/gl0x8MlZNQPQsDkk1+ooMGXi0A=;
        b=lIV36iVdFqjNwap3M5dwuDE5Dm3VfY8lrVl7xwaxMF4W3D61QA20k36sa69QWWUuGK
         Fcfcc83J7tBtXTuHDSEtHx4jnxeMKFsDcte8dhIysPCXklHFpm27u8OEqqPYKOfC0VEp
         VByraFcXZb+XcvUXAGjFs3ayIrOkbbIy9fVdQFbzulxnSEPuV6aWTSbNQ7X9cjT7I0rs
         ZsjY9sWuxdtca2bSY7raMctt/RyFPivDEi8Uqm43liOlEL2BXJLvf9urIKbpgbO9pzSZ
         tOYMip2HK+iGwIQS5/ACDXofovvRyPFSUpZA8jOYQ1MqvHBKIcbenztziiuNUOjI8qSA
         MQAA==
X-Gm-Message-State: AOJu0YztbTTB2CA76zwENJ97m0kHrnho77nGEif2R7H8/Ij1v1dF13jb
	GpSBoXNbpMgh2mQkDXNJnw9C2+ddEVRTky0YEoC0rNvZ4evIZsfNENyhOum9
X-Google-Smtp-Source: AGHT+IEA9DlPMyk48fvwtxPrZUnrFgfcft6sHK8Iwvei4Ka9BmsKpuReryCEvTWwRL1fspfg5t0JH8rkGk4tZaJszDY=
X-Received: by 2002:a05:620a:4691:b0:768:efd:2685 with SMTP id
 bq17-20020a05620a469100b007680efd2685mr14586619qkb.33.1691475008209; Mon, 07
 Aug 2023 23:10:08 -0700 (PDT)
MIME-Version: 1.0
From: Tom Isaacson <tom.isaacson@teknique.com>
Date: Tue, 8 Aug 2023 18:10:00 +1200
Message-ID: <CA+EiEZ+k3eSZENj_ORU+-7rx99ed__pu7Ger2JpGm1U8gZ2WRg@mail.gmail.com>
Subject: Intermittent build failure where dwarfsrcfiles doesn't exist
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 06:10:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60733

We've been using Dunfell for a while but recently I've started getting
an intermittent build failure from an app:
    ERROR: my-app-1.0.52-213f116 do_package: Fatal errors occurred in
subprocesses:
    [Errno 2] No such file or directory: 'dwarfsrcfiles':
'dwarfsrcfiles': Traceback (most recent call last):
     File "/var/lib/jenkins/workspace/la_meta-my-layer_check-build/my-yocto=
-sdk/poky/meta/lib/oe/utils.py",
line 280, in run
       ret =3D self._target(*self._args, **self._kwargs)
     File "/var/lib/jenkins/workspace/la_meta-my-layer_check-build/my-yocto=
-sdk/poky/meta/classes/package.bbclass",
line 405, in splitdebuginfo
        sources =3D source_info(file, d)
     File "/var/lib/jenkins/workspace/la_meta-my-layer_check-build/my-yocto=
-sdk/poky/meta/classes/package.bbclass",
line 353, in source_info
       output =3D subprocess.check_output(cmd, universal_newlines=3DTrue,
stderr=3Dsubprocess.STDOUT)
     File "/usr/lib/python3.7/subprocess.py", line 395, in check_output
       **kwargs).stdout
     File "/usr/lib/python3.7/subprocess.py", line 472, in run
       with Popen(*popenargs, **kwargs) as process:
     File "/usr/lib/python3.7/subprocess.py", line 775, in __init__
       restore_signals, start_new_session)
     File "/usr/lib/python3.7/subprocess.py", line 1522, in _execute_child
       raise child_exception_type(errno_num, err_msg, err_filename)
    FileNotFoundError: [Errno 2] No such file or directory:
'dwarfsrcfiles': 'dwarfsrcfiles'

I assumed this was a race condition, so following
https://docs.yoctoproject.org/3.1.26/dev-manual/dev-manual-common-tasks.htm=
l?highlight=3Dparallel_make#debugging-parallel-make-races
I added:
    PARALLEL_MAKE =3D ""
to the app recipe, but it didn't seem to help. However, setting:
    PARALLEL_MAKE =3D "-j 20"
does seem to make it fail every time (rather than intermittently).

dwarfsrcfiles is being built and I can run it after the build fails.
I've upgraded to Kirkstone but I'm seeing the same problem. The recipe
isn't doing anything to the package step so I'm not sure why it's
running before dwarfsrcfiles is built. I can see =C4=ABt's included in
poky/meta/classes/package.bbclass but since it's a dependency I would
have thought it has to be built before the packaging step can be done?

--=20
Tom Isaacson

