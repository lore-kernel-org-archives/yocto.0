Return-Path: <jebr@google.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03F2BECAAA1
	for <webhook@archiver.kernel.org>; Fri, 16 Sep 2022 22:40:36 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
 [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web12.338.1663368027341242268
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Sep 2022 15:40:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20210112 header.b=M+jW/xDG;
 spf=pass (domain: google.com, ip: 209.85.218.42, mailfrom: jebr@google.com)
Received: by mail-ej1-f42.google.com with SMTP id sb3so22875652ejb.9
        for <yocto@lists.yoctoproject.org>;
 Fri, 16 Sep 2022 15:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=Et9KvMHPF5T/WVzP6Crf90zdAcswYjwJhm452tTKn04=;
        b=M+jW/xDGooeMLNg99FU0Z4V2W7VtwRMJdVAuj+P+3kTPLrRBs5NfcdTQCv+fBJpmzU
         kF1YczWK8oJ+NgsiTceXl0coOxMxrQEG69U9Nd6hl/qqK8SUiit907xIpn3XjttCVm/k
         PF9XPkrCIvRsadG37uiHCwkABiY2nCpxIKe8HxlzftOEN2IZYcX+LtTRtfjmqfCobD5B
         4Hi4kKBK87LkOyagz+5Tmpypm0OlMPDkUidEVzmmb12TUO8f6i7shFi4JuqXPhv8aMaw
         JZMh8OGjGrrNQOh4ymbArSprrvuaZtbcwv4QZGaLkNhsF62k5Z78l51dLmYud/kuHlVD
         5dig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Et9KvMHPF5T/WVzP6Crf90zdAcswYjwJhm452tTKn04=;
        b=D/AppNXMXhM90vDqiARiGVsJA27Q2dr0oYdRR66qHbkvEgbjzug0M2GG+lLXAB4Sr9
         BosohN1izKSSy4SZwyZdYpGV0KCceyRHDA4Vm0e0OA/Wa177unc96WcukDn0/TsBnFQj
         pdDDBknml26/YNn9aaKFsKS+cI8L67N7d9ba6WLz0HFWACaLmYaipcAj+jUFlxwN99BL
         4jmb6YMkJyHsiWMbrS0dONGzriF2dRXi5AA7LPk127b9erBKYnfxFBvCJU1+7en89lP6
         4obIgbzrDLi+pqzJbio44iFtfwqf/n8+XQxIyw3bP2BOemTBaYxhQBdXV/qTFPJOB37d
         Q2Rw==
X-Gm-Message-State: ACrzQf3+xNjP8Hv2y4ZjxrGvO0onGxjcGbbR3UPr5DDtjFeopb74t56Y
	bZ74rUj4PwXfYcEQxkR2a8ZdFXkarib1eRcXf5bE5g==
X-Google-Smtp-Source: 
 AMsMyM6l3BD/y1cA2QJsjuPo+UTg9Il4Xm4/Hw16pviwZzGlSlTWqU523UZYVMai15cy+4uB6chusF+uK3szh8abfh4=
X-Received: by 2002:a17:906:ef90:b0:77c:280b:93a1 with SMTP id
 ze16-20020a170906ef9000b0077c280b93a1mr4943083ejb.709.1663368025473; Fri, 16
 Sep 2022 15:40:25 -0700 (PDT)
MIME-Version: 1.0
References: <20220915184338.2868657-1-jebr@google.com>
 <e63d2044-90b1-1643-44e6-d0cf26400a09@theobroma-systems.com>
In-Reply-To: <e63d2044-90b1-1643-44e6-d0cf26400a09@theobroma-systems.com>
From: John Broadbent <jebr@google.com>
Date: Fri, 16 Sep 2022 15:40:14 -0700
Message-ID: 
 <CAPw1Ef_S7-mOF00w25sdi+=TQ5GPh6sO=xpNJ=NrzyE4yoDaVA@mail.gmail.com>
Subject: Re: [yocto] [meta-oe][PATCH] externalsrc:git submodule--helper list
 unsupported
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
 Carson Labrado <clabrado@google.com>,
	Ed Tanous <edtanous@google.com>, Emily Shaffer <emilyshaffer@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Sep 2022 22:40:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58062

On Fri, Sep 16, 2022 at 1:16 AM Quentin Schulz
<quentin.schulz@theobroma-systems.com> wrote:
>
> Hi John,
>
> On 9/15/22 20:43, John Broadbent via lists.yoctoproject.org wrote:
> > From: John Edward Broadbent <jebr@google.com>
> >
> > Git has removed support for "git submodule--helper list".
> > https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_git_g=
it_commit_31955475d1c283120d5d84247eb3fd55d9f5fdd9&d=3DDwIBaQ&c=3D_sEr5x9kU=
Whuk4_nFwjJtA&r=3DLYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-1=
72IIy1t&m=3DdPWGp0K5l_YXiJ9CQ0xgD9h8jzFwJf2ZGppZSv2ZZUvg_DVFfKt3g2SwAJdk6AT=
E&s=3DrTfHjnsYf5vusiYA_lI3L24FBLE9jU_hmbGFPELpuAg&e=3D
> >
> > This change provides an alternate method for gathering the submodules
> > information.
> >
> > Tested:
> > Build recipes with and without submodules
> >
> > Signed-off-by: Carson Labrado <clabrado@google.com>
> > Signed-off-by: John Edward Broadbent <jebr@google.com>
> > ---
> >   meta/classes-recipe/externalsrc.bbclass | 19 ++++++++++---------
>
> meta layer is part of openembedded-core, so please re-send to the
> correct mailing list following the docs here
> https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded
>
> >   1 file changed, 10 insertions(+), 9 deletions(-)
> >
> > diff --git a/meta/classes-recipe/externalsrc.bbclass b/meta/classes-rec=
ipe/externalsrc.bbclass
> > index ce753fce76..06a9548a20 100644
> > --- a/meta/classes-recipe/externalsrc.bbclass
> > +++ b/meta/classes-recipe/externalsrc.bbclass
> > @@ -230,15 +230,16 @@ def srctree_hash_files(d, srcdir=3DNone):
> >               env['GIT_INDEX_FILE'] =3D tmp_index.name
> >               subprocess.check_output(['git', 'add', '-A', '.'], cwd=3D=
s_dir, env=3Denv)
> >               git_sha1 =3D subprocess.check_output(['git', 'write-tree'=
], cwd=3Ds_dir, env=3Denv).decode("utf-8")
> > -            submodule_helper =3D subprocess.check_output(['git', 'subm=
odule--helper', 'list'], cwd=3Ds_dir, env=3Denv).decode("utf-8")
> > -            for line in submodule_helper.splitlines():
> > -                module_dir =3D os.path.join(s_dir, line.rsplit(maxspli=
t=3D1)[1])
> > -                if os.path.isdir(module_dir):
> > -                    proc =3D subprocess.Popen(['git', 'add', '-A', '.'=
], cwd=3Dmodule_dir, env=3Denv, stdout=3Dsubprocess.DEVNULL, stderr=3Dsubpr=
ocess.DEVNULL)
> > -                    proc.communicate()
> > -                    proc =3D subprocess.Popen(['git', 'write-tree'], c=
wd=3Dmodule_dir, env=3Denv, stdout=3Dsubprocess.PIPE, stderr=3Dsubprocess.D=
EVNULL)
> > -                    stdout, _ =3D proc.communicate()
> > -                    git_sha1 +=3D stdout.decode("utf-8")
> > +            if os.path.exists(".gitmodules"):
> > +                submodule_helper =3D subprocess.check_output(["git", "=
config", "--file", ".gitmodules", "--get-regexp", "path"], cwd=3Ds_dir, env=
=3Denv).decode("utf-8")
> > +                for line in submodule_helper.splitlines():
> > +                    module_dir =3D os.path.join(s_dir, line.rsplit(max=
split=3D1)[1])
> > +                    if os.path.isdir(module_dir):
> > +                        proc =3D subprocess.Popen(['git', 'add', '-A',=
 '.'], cwd=3Dmodule_dir, env=3Denv, stdout=3Dsubprocess.DEVNULL, stderr=3Ds=
ubprocess.DEVNULL)
> > +                        proc.communicate()
> > +                        proc =3D subprocess.Popen(['git', 'write-tree'=
], cwd=3Dmodule_dir, env=3Denv, stdout=3Dsubprocess.PIPE, stderr=3Dsubproce=
ss.DEVNULL)
> > +                        stdout, _ =3D proc.communicate()
> > +                        git_sha1 +=3D stdout.decode("utf-8")
>
> Are those git commands supported in 1.8.3.1 version of git? I'm asking
> because this is the minimal version of git we currently advertise as
> supported. If it is not, then we need to bump this requirement in the
> docs and check that all currently supported distributions have this new
> minimal version in their package feed or remove them from the list
> (which will also impact whether dunfell and kirkstone can receive this
> patch).
>
> Cheers,
> Quentin


Thanks for looking over this change.

> Are those git commands supported in 1.8.3.1 version of git?

They appear to be:
config is defined here
https://github.com/git/git/blob/362de916c06521205276acb7f51c99f47db94727/gi=
t.c#L331
and get-regexp is also defined here
https://github.com/git/git/blob/36f8e7ed7d72d2ac73743c3c2226cceb29b32156/bu=
iltin/config.c#L789

I was not able to build and test the behavior of 1.8.3.1, without changing =
my
openssl headers.

Thanks



> which will also impact whether dunfell and kirkstone can receive this pat=
ch

