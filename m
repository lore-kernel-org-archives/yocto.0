Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BC0C4332F
	for <webhook@archiver.kernel.org>; Thu, 20 Oct 2022 10:10:05 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web08.7878.1666260602177282767
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Oct 2022 03:10:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=QIwC6/bx;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id a6so25668184ljq.5
        for <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 03:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JIJxnNccfIyX9GiqhhDb0gGYxzwYAHUpIfxuVOcv20A=;
        b=QIwC6/bxr3iafWcEapBrG9pgNS726EI+5tw2TE+jEHS610TM/s+t0u/1pqr826fMVs
         tmRs/m+XCBY5ct5XUxinY+YkIZGleYQC8u6N7k4xh3zHlSJR4gYg/hh5shJXfQyRDPas
         DeDB+3lx5xNqiYZChtLlc7f9QolCCLZiEGKdPMKBHx91aBVGobGEJsUt1RdV5VOyuaph
         Y0spIUQwQ3HatnAdktQuXw1etKp237hANkBXe1RoWJA5frlDfIkZwmGeCfqNNtPrEhnl
         vVZAsl4N/59xZNx8mMp1QU8beL0eT3YSQrIWeNlVCvPJTdHQiA/eAxLEG0cgcZc9GO7y
         EQnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JIJxnNccfIyX9GiqhhDb0gGYxzwYAHUpIfxuVOcv20A=;
        b=DZv34s0iNjP7dQxbaRcti1S5ctaW6R9CRTJPJygg/1Wx7ro7br/o1m7LGOQE1tjCWq
         auB4PUYOf5zElBMaqfc4CTzhpQNKUvBDvz19Bp/aJxIoBbmuKOLT27uKCvMY6YxGk/wb
         1+XkRe+94bz5BAvoHr1vg9M7Qb/yNkd8w1gOnXqGhftcymdZvFPNQyS+jei58Pu4U7Bz
         aMhQioDbIzm9Gr0H8F/MRmUxupd2TnkSCVvf7aJuVfrKjKSnsaFtS8U0DDskkLMD16qs
         NSOdrE4KA3B9Gw3ZRVWHOfPnIvNgHTBHL/O0rotw8BJpRytU/52ITwarUgF/UYQDYk53
         xBCA==
X-Gm-Message-State: ACrzQf0/Q23H4CHZ5WGM3dpLJuwv5XoPSNCr/FjlheRa/eIx/fpbh3Ts
	uV/RGg5GdMFxEs8DLWr4sJVE0MlITJyiqYw3dZM=
X-Google-Smtp-Source: AMsMyM5E655rfOHi95nV9J+nnHQXh1P8SfL8yFGuLCqDvvPYJ+PwuBIOq74gvj//lx4SguJVZEwvzxChUt/tZ5k34SY=
X-Received: by 2002:a2e:7401:0:b0:26e:506:380a with SMTP id
 p1-20020a2e7401000000b0026e0506380amr4414569ljc.222.1666260599632; Thu, 20
 Oct 2022 03:09:59 -0700 (PDT)
MIME-Version: 1.0
References: <1028eccc021a4bf5ab2520b3c4fb82a6@amazon.de> <CANNYZj9O+UnNrdi1vU1LGw4GUDJRJW3FfGubRdjEp7VZHJZPxQ@mail.gmail.com>
 <28ffce86de204ea6969c325b97506001@amazon.de> <CANNYZj_GgqzaS22upMbw38sje5_gYT-w7giwSyZxLCfHdZ074A@mail.gmail.com>
 <a79184da26314c388bc4733b516e47a5@amazon.de>
In-Reply-To: <a79184da26314c388bc4733b516e47a5@amazon.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 20 Oct 2022 12:09:47 +0200
Message-ID: <CANNYZj_xvKFqdX1v=p3z7AeWcvQcv20T59j=Ch1e4Eu7tqqPCA@mail.gmail.com>
Subject: Re: [yocto] devtool upgrade for go recipes with git "broken"
To: "Roos, Thomas" <throos@amazon.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 10:10:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58377

Can you propose a patch to core?

Alex

On Thu, 20 Oct 2022 at 12:05, Roos, Thomas <throos@amazon.de> wrote:
>
> yes, I already did this - it's because that go.bbclass is spangly using a=
 subdir called "src" and that will break the devtool check for upgrades mec=
hanism because it's not looking into a src subdir. So git will fail checkou=
t anything in the parent dir "reference is not a tree"
>
> This simple change in the go.bbclass fix it - but I don't know if that ad=
ditional src dir is somehow necessary:
>
>
> # src folder will break devtool upgrade
> python go_do_unpack() {
>     src_uri =3D (d.getVar('SRC_URI') or "").split()
>     if len(src_uri) =3D=3D 0:
>         return
>
>     fetcher =3D bb.fetch2.Fetch(src_uri, d)
>     for url in fetcher.urls:
>         if fetcher.ud[url].type =3D=3D 'git':
>             if fetcher.ud[url].parm.get('destsuffix') is None:
>                 s_dirname =3D os.path.basename(d.getVar('S'))
> #cause problems                fetcher.ud[url].parm['destsuffix'] =3D os.=
path.join(s_dirname, 'src', d.getVar('GO_IMPORT')) + '/'
> #FIX
>                 fetcher.ud[url].parm['destsuffix'] =3D os.path.join(s_dir=
name, '', d.getVar('GO_IMPORT')) + '/'
> #FIX
>     fetcher.unpack(d.getVar('WORKDIR'))
> }
>
> # src folder will break devtool upgrade
> go_do_configure() {
> #cause problems      ln -snf ${S}/src ${B}/
> #FIX
>     ln -snf ${S} ${B}/
> #FIX
> }
>
>
> ________________________________
> Von: Alexander Kanavin <alex.kanavin@gmail.com>
> Gesendet: Donnerstag, 20. Oktober 2022 11:56:48
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
> Thanks, I do not have a quick answer to this, but would appreciate if
> you can dig deeper into the issue.
>
> Alex
>
> On Thu, 20 Oct 2022 at 11:50, Roos, Thomas <throos@amazon.de> wrote:
> >
> > yes, easy
> > - set the go-helloworld bb srcrev to an older rev - e.g:
> > SRCREV =3D "ad95e7f791d8e1e7e7ec7f7cedfc2f6b29f6c9e2"
> >
> > "devtool upgrade go-helloworld"
> >
> > INFO: Extracting upgraded version source...
> > Traceback (most recent call last):
> >   File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 5=
67, in upgrade
> >     rev2, md5, sha256, srcbranch, srcsubdir2 =3D _extract_new_source(ar=
gs.version, srctree, args.no_patch,
> >   File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 1=
83, in _extract_new_source
> >     __run('git checkout %s' % rev)
> >   File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 1=
70, in __run
> >     return _run(cmd, srctree)
> >   File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 3=
1, in _run
> >     return bb.process.run('%s' % cmd, cwd=3Dcwd)
> >   File "/home/ubuntu/yocto/poky/bitbake/lib/bb/process.py", line 189, i=
n run
> >     raise ExecutionError(cmd, pipe.returncode, stdout, stderr)
> > bb.process.ExecutionError: Execution of 'git checkout 2e68773dfca072cb8=
1f219fc3b97ad34fe9d9f94' failed with exit code 128:
> > fatal: reference is not a tree: 2e68773dfca072cb81f219fc3b97ad34fe9d9f9=
4
> >
> >
> > During handling of the above exception, another exception occurred:
> >
> > Traceback (most recent call last):
> >   File "/home/ubuntu/yocto/poky/scripts/devtool", line 338, in <module>
> >     ret =3D main()
> >   File "/home/ubuntu/yocto/poky/scripts/devtool", line 325, in main
> >     ret =3D args.func(args, config, basepath, workspace)
> >   File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 5=
75, in upgrade
> >     _upgrade_error(e, recipedir, srctree, args.keep_failure)
> >   File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 1=
34, in _upgrade_error
> >     _cleanup_on_error(rd, srctree)
> >   File "/home/ubuntu/yocto/poky/scripts/lib/devtool/upgrade.py", line 1=
26, in _cleanup_on_error
> >     if not len(os.listdir(rdp)):
> > FileNotFoundError: [Errno 2] No such file or directory: '/home/ubuntu/y=
octo/build/workspace/recipes'
> >
> >
> >
> >
> >
> > ________________________________
> > Von: Alexander Kanavin <alex.kanavin@gmail.com>
> > Gesendet: Donnerstag, 20. Oktober 2022 11:32:19
> > An: Roos, Thomas
> > Cc: yocto@lists.yoctoproject.org
> > Betreff: RE: [EXTERNAL][yocto] devtool upgrade for go recipes with git =
"broken"
> >
> > CAUTION: This email originated from outside of the organization. Do not=
 click links or open attachments unless you can confirm the sender and know=
 the content is safe.
> >
> >
> >
> > It helps if you show the exact error, and a way to reproduce this
> > using a minimal setup (ideally only poky).
> >
> > Alex
> >
> > On Thu, 20 Oct 2022 at 11:18, Thomas Roos via lists.yoctoproject.org
> > <throos=3Damazon.de@lists.yoctoproject.org> wrote:
> > >
> > > Hi,
> > > when doing a "devtool upgrade" for a recipe which inherits "go" and u=
sing a SRC_URI to a git repo this will fail. Complaining that the git revis=
ion is "out of tree" - I found that the additional "src" folder inside the =
checkout out sources is causing this problem and I wondering if this is nec=
essary. I'm not a go programmer, but when changing this the recipe seems to=
 produce the same result.
> > > I did change our go recipe to don't use this additional src folder by=
 overwriting the go_do_upack and go_do_configure method. Here: https://gith=
ub.com/aws4embeddedlinux/meta-aws/blob/942651026c7a91b9703609d7658bd1649350=
acaf/recipes-support/amazon-ssm-agent/amazon-ssm-agent_3.1.1856.0.bb
> > > Is this a bug or do anybody know why go use that additional src folde=
r?
> > >
> > >
> > > Cheers,
> > > Thomas
> > >
> > >
> > >
> > >
> > > Amazon Web Services EMEA SARL
> > > 38 avenue John F. Kennedy, L-1855 Luxembourg
> > > Sitz der Gesellschaft: L-1855 Luxemburg
> > > eingetragen im Luxemburgischen Handelsregister unter R.C.S. B186284
> > >
> > > Amazon Web Services EMEA SARL, Niederlassung Deutschland
> > > Marcel-Breuer-Str. 12, D-80807 Muenchen
> > > Sitz der Zweigniederlassung: Muenchen
> > > eingetragen im Handelsregister des Amtsgerichts Muenchen unter HRB 24=
2240, USt-ID DE317013094
> > >
> > >
> > >
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#58372): https://lists.yoctoproject.org/g/yocto/me=
ssage/58372
> > > Mute This Topic: https://lists.yoctoproject.org/mt/94449982/1686489
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanav=
in@gmail.com]
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > >
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

