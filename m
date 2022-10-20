Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F738C4332F
	for <webhook@archiver.kernel.org>; Thu, 20 Oct 2022 09:57:05 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web08.7793.1666259822624499636
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Oct 2022 02:57:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=E4tOsbVa;
 spf=pass (domain: gmail.com, ip: 209.85.167.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id o12so24161820lfq.9
        for <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 02:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/CIpTnDtfka8MlFfEEbeuAjD8HvmRyg/EGFb0dD1n10=;
        b=E4tOsbVaJJGtjky/gwCXFNB83sGQMxGnqj1JPksTVv+hNYsmiy1YGiJar29UY/O67u
         /qpyDtjA3+MdJRY5h0BcvJgk34srJcZjibGzO/bhKgnN4skuoNzzhv+AhVTqWMRiQwp9
         0AwroHD1cDwkXuuHAjgmTqlXxnmkgS1WmdfD9N+iGwJWu0Blk49CCrCc0j6lORaWjRIk
         CQZ6nURb6VsOrWsZ0vkjscAAzHSxWyrd2F3YaovJenXtlPZwFA/2hdwN3+IilAjjcUL/
         Hz8yi/gAcxP9pi0T7wpyk6PIJ5nXP+logUKvpTzJmwU8TUqJmMMf8opf9h7ZUhJ0DTgY
         yBtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/CIpTnDtfka8MlFfEEbeuAjD8HvmRyg/EGFb0dD1n10=;
        b=xZfSSOyxWpcuIqMGHztcVPWZRvh6lcC8Ga9SebW6fdJyqEpWG/L+mojjYejKDH65Gm
         JKPh2vgkfs43nKwU6kg+qaSMB1VtTY+VlhF5Fw/my7l1j3wLmiUVNtk+xM/kCVIX44Mw
         z0KlG23Z0utDoXS+dS6t+rZ+8Q0aKLZc2D+WI1aAml/+oxYIZ9wD4leOs97AXIgdyhsQ
         tsgQsnZ6RVrQsXUm1/N1ZjwnWEyHfviPscycdCoaXBUAJmIRMljIQBKfquuacx21NPyU
         ZUfrh4iRG8dJeVPPYKwVlVMFDIEszNtIrjvihcGeL4LerBO7NjX26MROvKUIol3O5n5r
         nMiw==
X-Gm-Message-State: ACrzQf0C+oVmHunB22FChsVFMRmR/zW3J0hbR4WoWRYvlxYNIWKXZvO1
	q99LwD3ZbeNRDT9yEL2enUcVVE0NsfVsWdcdBD8=
X-Google-Smtp-Source: AMsMyM5VBue/Rkm/BlwBBPLLLMr29hsPy4KfSWdxLlPUUiwMnIpm/msVVeOCF6xXbndeWVXSU8oeRP7wnAIdnpm6Y2w=
X-Received: by 2002:a05:6512:398d:b0:4a2:7d72:8629 with SMTP id
 j13-20020a056512398d00b004a27d728629mr4234408lfu.445.1666259820673; Thu, 20
 Oct 2022 02:57:00 -0700 (PDT)
MIME-Version: 1.0
References: <1028eccc021a4bf5ab2520b3c4fb82a6@amazon.de> <CANNYZj9O+UnNrdi1vU1LGw4GUDJRJW3FfGubRdjEp7VZHJZPxQ@mail.gmail.com>
 <28ffce86de204ea6969c325b97506001@amazon.de>
In-Reply-To: <28ffce86de204ea6969c325b97506001@amazon.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 20 Oct 2022 11:56:48 +0200
Message-ID: <CANNYZj_GgqzaS22upMbw38sje5_gYT-w7giwSyZxLCfHdZ074A@mail.gmail.com>
Subject: Re: [yocto] devtool upgrade for go recipes with git "broken"
To: "Roos, Thomas" <throos@amazon.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 09:57:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58375

Thanks, I do not have a quick answer to this, but would appreciate if
you can dig deeper into the issue.

Alex

On Thu, 20 Oct 2022 at 11:50, Roos, Thomas <throos@amazon.de> wrote:
>
> yes, easy
> - set the go-helloworld bb srcrev to an older rev - e.g:
> SRCREV =3D "ad95e7f791d8e1e7e7ec7f7cedfc2f6b29f6c9e2"
>
> "devtool upgrade go-helloworld"
>
> INFO: Extracting upgraded version source...
> Traceback (most recent call last):
>   File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 567=
, in upgrade
>     rev2, md5, sha256, srcbranch, srcsubdir2 =3D _extract_new_source(args=
.version, srctree, args.no_patch,
>   File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 183=
, in _extract_new_source
>     __run('git checkout %s' % rev)
>   File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 170=
, in __run
>     return _run(cmd, srctree)
>   File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 31,=
 in _run
>     return bb.process.run('%s' % cmd, cwd=3Dcwd)
>   File "/home/ubuntu/yocto/poky/bitbake/lib/bb/process.py", line 189, in =
run
>     raise ExecutionError(cmd, pipe.returncode, stdout, stderr)
> bb.process.ExecutionError: Execution of 'git checkout 2e68773dfca072cb81f=
219fc3b97ad34fe9d9f94' failed with exit code 128:
> fatal: reference is not a tree: 2e68773dfca072cb81f219fc3b97ad34fe9d9f94
>
>
> During handling of the above exception, another exception occurred:
>
> Traceback (most recent call last):
>   File "/home/ubuntu/yocto/poky/scripts/devtool", line 338, in <module>
>     ret =3D main()
>   File "/home/ubuntu/yocto/poky/scripts/devtool", line 325, in main
>     ret =3D args.func(args, config, basepath, workspace)
>   File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 575=
, in upgrade
>     _upgrade_error(e, recipedir, srctree, args.keep_failure)
>   File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 134=
, in _upgrade_error
>     _cleanup_on_error(rd, srctree)
>   File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 126=
, in _cleanup_on_error
>     if not len(os.listdir(rdp)):
> FileNotFoundError: [Errno 2] No such file or directory: '/home/ubuntu/yoc=
to/build/workspace/recipes'
>
>
>
>
>
> ________________________________
> Von: Alexander Kanavin <alex.kanavin@gmail.com>
> Gesendet: Donnerstag, 20. Oktober 2022 11:32:19
> An: Roos, Thomas
> Cc: yocto@lists.yoctoproject.org
> Betreff: RE: [EXTERNAL][yocto] devtool upgrade for go recipes with git "b=
roken"
>
> CAUTION: This email originated from outside of the organization. Do not c=
lick links or open attachments unless you can confirm the sender and know t=
he content is safe.
>
>
>
> It helps if you show the exact error, and a way to reproduce this
> using a minimal setup (ideally only poky).
>
> Alex
>
> On Thu, 20 Oct 2022 at 11:18, Thomas Roos via lists.yoctoproject.org
> <throos=3Damazon.de@lists.yoctoproject.org> wrote:
> >
> > Hi,
> > when doing a "devtool upgrade" for a recipe which inherits "go" and usi=
ng a SRC_URI to a git repo this will fail. Complaining that the git revisio=
n is "out of tree" - I found that the additional "src" folder inside the ch=
eckout out sources is causing this problem and I wondering if this is neces=
sary. I'm not a go programmer, but when changing this the recipe seems to p=
roduce the same result.
> > I did change our go recipe to don't use this additional src folder by o=
verwriting the go_do_upack and go_do_configure method. Here: https://github=
.com/aws4embeddedlinux/meta-aws/blob/942651026c7a91b9703609d7658bd1649350ac=
af/recipes-support/amazon-ssm-agent/amazon-ssm-agent_3.1.1856.0.bb
> > Is this a bug or do anybody know why go use that additional src folder?
> >
> >
> > Cheers,
> > Thomas
> >
> >
> >
> >
> > Amazon Web Services EMEA SARL
> > 38 avenue John F. Kennedy, L-1855 Luxembourg
> > Sitz der Gesellschaft: L-1855 Luxemburg
> > eingetragen im Luxemburgischen Handelsregister unter R.C.S. B186284
> >
> > Amazon Web Services EMEA SARL, Niederlassung Deutschland
> > Marcel-Breuer-Str. 12, D-80807 Muenchen
> > Sitz der Zweigniederlassung: Muenchen
> > eingetragen im Handelsregister des Amtsgerichts Muenchen unter HRB 2422=
40, USt-ID DE317013094
> >
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#58372): https://lists.yoctoproject.org/g/yocto/mess=
age/58372
> > Mute This Topic: https://lists.yoctoproject.org/mt/94449982/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin=
@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>
>
>
> Amazon Web Services EMEA SARL
> 38 avenue John F. Kennedy, L-1855 Luxembourg
> Sitz der Gesellschaft: L-1855 Luxemburg
> eingetragen im Luxemburgischen Handelsregister unter R.C.S. B186284
>
> Amazon Web Services EMEA SARL, Niederlassung Deutschland
> Marcel-Breuer-Str. 12, D-80807 Muenchen
> Sitz der Zweigniederlassung: Muenchen
> eingetragen im Handelsregister des Amtsgerichts Muenchen unter HRB 242240=
, USt-ID DE317013094
>
>

