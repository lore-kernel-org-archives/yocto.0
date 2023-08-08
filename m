Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E57BDC001DB
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 09:17:48 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.57358.1691486264572278399
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Aug 2023 02:17:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=LRXTHF/M;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3176a439606so4118410f8f.3
        for <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 02:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1691486263; x=1692091063;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0oZNJvrFXsfSfvJpJu495WOR+IJzdgdxz9t/F2tJT08=;
        b=LRXTHF/M1Vbxs84m/xt65oCWTeVWjc98UKo7vOt64mouo+G7QjjmZmUT9Jg1i6DzCW
         naUO3Llb+GQjRbJKzSqNa3pw99et8cvl2ReghB1rdW1AV6vF5HFDNvuEDQGur9tVzRuG
         bWm7OjoNVsTDwKZQCXN3rtHReFqwc/3AJBti0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691486263; x=1692091063;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0oZNJvrFXsfSfvJpJu495WOR+IJzdgdxz9t/F2tJT08=;
        b=j0vd9XRlRVewtPdbNhSd/yEM/OPhQevLIne49V5VpU920KkVhM3SgdGcbaSBex/dAt
         yNuQ/QadkdgtDfry4b2B4V0jblJh7VjA6mJpQFldZ/ssnzht+dSmSS+051CT64F5yiR9
         oU8mJ0flsE3sYmoMHp5NP++uzZ5ozuc2YpDYUk4Dj6W2+x11YuxMvQnVq3QhmPaX+EU1
         D6xf961s/2nRYXRbK3SmjLXwIdvTxfDfS59p/aFGeNbwOOrZgiJ2ZLLRHHFb5kNXCEA5
         vBA7UhoPWU5NB4hPrOvfk/qz2CYwQB78/yj6KUmyf9GIXwKzW9ogUbIEDk7RiC2qiVQL
         GQrw==
X-Gm-Message-State: AOJu0YwOM2yS1YQMaidMRXApbSXDaZP9CjcnRgSNyDQLy5Qlb8l6U7Iq
	ji1E6s3rWDA94PozQkbd8pxqmQ==
X-Google-Smtp-Source: AGHT+IF4YcSoh2tXrVG1cgDqeI/p9Zdlq/H3eX2Gw492WNCeRb9/eF4XCh3Q0cOBKl9o3LJcZFiMKg==
X-Received: by 2002:a5d:564d:0:b0:316:f25c:d0b3 with SMTP id j13-20020a5d564d000000b00316f25cd0b3mr6986527wrw.22.1691486262898;
        Tue, 08 Aug 2023 02:17:42 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:8c9a:4256:d8e9:42e2? ([2001:8b0:aba:5f3c:8c9a:4256:d8e9:42e2])
        by smtp.gmail.com with ESMTPSA id b17-20020a056000055100b00314374145e0sm12810075wrf.67.2023.08.08.02.17.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Aug 2023 02:17:42 -0700 (PDT)
Message-ID: <c9cc305944c70a7f59e881e39d020d5e216197e3.camel@linuxfoundation.org>
Subject: Re: [yocto] Intermittent build failure where dwarfsrcfiles doesn't
 exist
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tom Isaacson <tom.isaacson@teknique.com>, 
	"<yocto@lists.yoctoproject.org>"
	 <yocto@lists.yoctoproject.org>
Date: Tue, 08 Aug 2023 10:17:41 +0100
In-Reply-To: <CA+EiEZ+k3eSZENj_ORU+-7rx99ed__pu7Ger2JpGm1U8gZ2WRg@mail.gmail.com>
References: 
	<CA+EiEZ+k3eSZENj_ORU+-7rx99ed__pu7Ger2JpGm1U8gZ2WRg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 09:17:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60734

On Tue, 2023-08-08 at 18:10 +1200, Tom Isaacson wrote:
> We've been using Dunfell for a while but recently I've started getting
> an intermittent build failure from an app:
>     ERROR: my-app-1.0.52-213f116 do_package: Fatal errors occurred in
> subprocesses:
>     [Errno 2] No such file or directory: 'dwarfsrcfiles':
> 'dwarfsrcfiles': Traceback (most recent call last):
>      File "/var/lib/jenkins/workspace/la_meta-my-layer_check-build/my-yoc=
to-sdk/poky/meta/lib/oe/utils.py",
> line 280, in run
>        ret =3D self._target(*self._args, **self._kwargs)
>      File "/var/lib/jenkins/workspace/la_meta-my-layer_check-build/my-yoc=
to-sdk/poky/meta/classes/package.bbclass",
> line 405, in splitdebuginfo
>         sources =3D source_info(file, d)
>      File "/var/lib/jenkins/workspace/la_meta-my-layer_check-build/my-yoc=
to-sdk/poky/meta/classes/package.bbclass",
> line 353, in source_info
>        output =3D subprocess.check_output(cmd, universal_newlines=3DTrue,
> stderr=3Dsubprocess.STDOUT)
>      File "/usr/lib/python3.7/subprocess.py", line 395, in check_output
>        **kwargs).stdout
>      File "/usr/lib/python3.7/subprocess.py", line 472, in run
>        with Popen(*popenargs, **kwargs) as process:
>      File "/usr/lib/python3.7/subprocess.py", line 775, in __init__
>        restore_signals, start_new_session)
>      File "/usr/lib/python3.7/subprocess.py", line 1522, in _execute_chil=
d
>        raise child_exception_type(errno_num, err_msg, err_filename)
>     FileNotFoundError: [Errno 2] No such file or directory:
> 'dwarfsrcfiles': 'dwarfsrcfiles'
>=20
> I assumed this was a race condition, so following
> https://docs.yoctoproject.org/3.1.26/dev-manual/dev-manual-common-tasks.h=
tml?highlight=3Dparallel_make#debugging-parallel-make-races
> I added:
>     PARALLEL_MAKE =3D ""
> to the app recipe, but it didn't seem to help. However, setting:
>     PARALLEL_MAKE =3D "-j 20"
> does seem to make it fail every time (rather than intermittently).
>=20
> dwarfsrcfiles is being built and I can run it after the build fails.
> I've upgraded to Kirkstone but I'm seeing the same problem. The recipe
> isn't doing anything to the package step so I'm not sure why it's
> running before dwarfsrcfiles is built. I can see =C4=ABt's included in
> poky/meta/classes/package.bbclass but since it's a dependency I would
> have thought it has to be built before the packaging step can be done?

Rather than a make race, it is probably a task race and something like
a missing task dependency.

Run something like "bitbake my-app -c package -g" and have a look at
task-depends.dot that is generated, see if there is a dependency
between my-app:do_package and dwarfsrcfiles-native:do_populate_sysroot.
It should come from PACKAGE_DEPENDS in package.bbclass.

Cheers,

Richard



