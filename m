Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 532DAC3ABD8
	for <webhook@archiver.kernel.org>; Wed, 14 May 2025 12:49:40 +0000 (UTC)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
 by mx.groups.io with SMTP id smtpd.web10.101077.1747226979347177516
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 May 2025 05:49:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nIwVx1pI;
 spf=pass (domain: gmail.com, ip: 209.85.167.172, mailfrom: alex.kanavin@gmail.com)
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3feb0db95e6so4447703b6e.1
        for <yocto@lists.yoctoproject.org>; Wed, 14 May 2025 05:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747226978; x=1747831778; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HqMjyZ5/x/9fi4xG0oUtzbqNwvcQebspLf+edAROs48=;
        b=nIwVx1pIBqb2uVvyWpLgKdamL+OOe/u6zhGDob1MXnIG4KveNkdO0kLm3/fNcadUXO
         yxhzso+zWlf8QWSNKLF8o8k2kgpUKAKzkqqxLL31xp13jX0svNToRw2DQNlSNhA2fwXa
         FKm0Z98foruf4HS7uOy7+5sLwnB6uPpejJNovQZ3AGe17adnpwr+Esl/u0bo49G5DSlm
         sJAnv3nUtD6cvHTlOf3jbQSRIgcCwBpu5puxxhArnS33LAorhISUjaQZNExOt+Ijmod9
         WXAGWJ2/YZzOKzo6HlDTKHpUvOGw2EDSXa0Gd59X5VGv5cQogHJIUpi2ISIisbgyH21L
         c6kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747226978; x=1747831778;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HqMjyZ5/x/9fi4xG0oUtzbqNwvcQebspLf+edAROs48=;
        b=Rp9jSR9Bss6cUlJOjB6HmocWfKeJ31YuEmwd+CwvGERl4DpgeVl8zNMNwlMeG4F7D2
         oIWNxEvawINUTpVkxbqKWIWNPY9JsDmnb4UGZuOReyRCgXigMqAHHpcZKPHscjHwhsKU
         Q4fljPCOh+fDQNlDOHLZRcMA3+FwYwkvCUed5qyfFt2lKUtYPGpICBPZBfXXs8PrsmYA
         8UVMPsXXxoMTN+PrbQci+C6CzwLi5+6EwSHCu9XRggnhBIzJE6p/3woLp9FIF+bBWMos
         MfCLEwHiU/8IRBT6ErxCuRjm5zbYOy1hf1sCbq/acdQkSJQCCIjvHHJHOBKscJJCD2CU
         v6Eg==
X-Gm-Message-State: AOJu0YxjZBLEEw34L3XGjFvw81xAiwB6nZs98PHFxoSvg0cLgIUfdo+0
	mMBVv/YkEkUKRXEXzBUYvVsd1pKPdHPVp0MrohI/chkfdVST0mk2YY2MiegeWXd0rtEaZytPz3M
	1W/Q3A1GYVAzVmyfQMJrE1CllRXJhY/R1v8M=
X-Gm-Gg: ASbGncv4njfDG2jUq7fQROU9Rgyq4P/EMHeMqnc3rBqNKuWWZEWUSGWtsegjQ6OpUC1
	qbT670vOWUCBVTzRF/jrS0bDrv1NG9vufkQbWccE0gzYZft3BkKDZ804Crb/Z8iuh03UJFzOO9x
	0zctAXn1IBjBMWhyTOxcNhM4VeZfFtabzpjwZdAobFi9o=
X-Google-Smtp-Source: AGHT+IHPNPyaUxU6SrzCCSxPvg+qkhxrpa0iFrBgR22I9r9QMJdKg3Y6XJClU45AplixW1e/xh3ifo1+yco+PgdyeTQ=
X-Received: by 2002:ad4:5948:0:b0:6f6:e400:45d5 with SMTP id
 6a1803df08f44-6f896e41872mr50311486d6.17.1747226967197; Wed, 14 May 2025
 05:49:27 -0700 (PDT)
MIME-Version: 1.0
References: <fRbk.1747071838718951014.U6ma@lists.yoctoproject.org>
In-Reply-To: <fRbk.1747071838718951014.U6ma@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 14 May 2025 14:49:19 +0200
X-Gm-Features: AX0GCFt5lhjxQtUD4zJlhO5nj5zq_xbZlzcj6XrqfH4uFgz_8DkgL5AM2hH2f9s
Message-ID: <CANNYZj9uPw+U6fMq54QPWPyY1LwrS84NOjpYGzmV9ZH-jE=-rQ@mail.gmail.com>
Subject: Re: [yocto] bb.fetch2.ParameterError....Unsupported dependency....
 #bitbake #devtool #npm
To: yocto@lists.yoctoproject.org, joseph.maniaci@seagate.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 May 2025 12:49:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65338

You probably need to try this with latest yocto master? Npm support
has had plenty of fixes over time, and it isn't clear if you're on
something outdated.

Alex

On Mon, 12 May 2025 at 19:44, joseph.maniaci via
lists.yoctoproject.org
<joseph.maniaci=3Dseagate.com@lists.yoctoproject.org> wrote:
>
> Full error: bb.fetch2.ParameterError: URL: 'npmsw:///home/user/eps-yocto/=
build/exos-x-vanadium-bmc/tmp/work/recipetool-uizo5dj0/source/git/npm-shrin=
kwrap.json' has invalid parameters. Unsupported dependency: @babel/helper-s=
tring-parser
>
> I have a 15 year plus code base that my group wants me to try to get goin=
g in another team's yocto setup. I'm pretty sure this issue mostly boils do=
wn to this codebase being very incompatible with how yocto/bitbake does thi=
ngs? It reaches out to install npm for example and various other web relate=
d libraries. It's an old Makefile(I want to use these issues as an excuse t=
o port to CMAKE) project.
>
> I'm trying to use https://wiki.yoctoproject.org/wiki/images/f/f3/DD9_Devt=
ool_NA20.pdf and  https://www.youtube.com/watch?v=3DCiD7rB35CRE to even do =
a handful of steps and I fail to accomplish even that.
>
> I can bitbake what is currently in our repo, I can bitbake the sdk(non-ex=
tended). I successfully added a workspace, and when I try to execute 'devto=
ol add' to either remotely collect the git repo of my app, or a fresh local=
 version, both fail with the following backtrace. I know very little about =
bitbake and to be honest, the documentation feels like trying to get a sip =
of water from a fire hydrant. It wasn't until seeing devtool that it seemed=
 there was something that allowed someone to actually just dive in and I gu=
ess that was wrong. All I know is that I was attempting to use devtool to p=
rogrammatically generate my .bb for me, or at least get me started.
>
> This npm-shrinkwrap.json doesn't exist in the repo permanently and appear=
s to be something that gets created/destroyed as part of our npm check-out.
>
> Full trace:
> Traceback (most recent call last):
>   File "/home/user/eps-yocto/scripts/recipetool", line 111, in <module>
>     ret =3D main()
>   File "/home/user/eps-yocto/scripts/recipetool", line 100, in main
>     ret =3D args.func(args)
>   File "/home/user/eps-yocto/poky/scripts/lib/recipetool/create.py", line=
 758, in create_recipe
>     handler.process(srctree_use, classes, lines_before, lines_after, hand=
led, extravalues)
>   File "/home/user/eps-yocto/poky/scripts/lib/recipetool/create_npm.py", =
line 264, in process
>     fetcher =3D bb.fetch2.Fetch([url_local], d)
>   File "/home/user/eps-yocto/poky/bitbake/lib/bb/fetch2/__init__.py", lin=
e 1794, in __init__
>     self.ud[url] =3D FetchData(url, d, localonly)
>   File "/home/user/eps-yocto/poky/bitbake/lib/bb/fetch2/__init__.py", lin=
e 1346, in __init__
>     self.method.urldata_init(self, d)
>   File "/home/user/eps-yocto/poky/bitbake/lib/bb/fetch2/npmsw.py", line 2=
10, in urldata_init
>     foreach_dependencies(shrinkwrap, _resolve_dependency, ud.dev)
>   File "/home/user/eps-yocto/poky/bitbake/lib/bb/fetch2/npmsw.py", line 6=
9, in foreach_dependencies
>     callback(name, package_infos, package)
>   File "/home/user/eps-yocto/poky/bitbake/lib/bb/fetch2/npmsw.py", line 1=
92, in _resolve_dependency
>     raise ParameterError("Unsupported dependency: %s" % name, ud.url)
> bb.fetch2.ParameterError: URL: 'npmsw:///home/user/eps-yocto/build/exos-x=
-vanadium-bmc/tmp/work/recipetool-uizo5dj0/source/git/npm-shrinkwrap.json' =
has invalid parameters. Unsupported dependency: @babel/helper-string-parser
> ERROR: Command 'script -e -q -c "recipetool --color=3Dalways create --dev=
tool -o /tmp/devtooli6tqqg15 'https://lco-sw-github-prod.colo.nlah.com/Syst=
ems-FW/mclinux.git'  -x /home/user/eps-yocto/build/exos-x-vanadium-bmc/work=
space/sources/devtoolsrc6qxi_qjz --srcbranch main" /dev/null' failed
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65316): https://lists.yoctoproject.org/g/yocto/messag=
e/65316
> Mute This Topic: https://lists.yoctoproject.org/mt/113075220/1686489
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #devtool:https://lists.yoctoproject.org/g/yocto/mutehashtag/devtool
> Mute #npm:https://lists.yoctoproject.org/g/yocto/mutehashtag/npm
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

