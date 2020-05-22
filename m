Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.12797.1590153961566127867
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 May 2020 06:26:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=akWyh4XG;
 spf=softfail (domain: burtonini.com, ip: 140.211.169.56, mailfrom: ross@burtonini.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BCB5E01BDF; Fri, 22 May 2020 06:26:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16CF3E01BC7
	for <yocto@yoctoproject.org>; Fri, 22 May 2020 06:25:59 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id z18so12571381lji.12
        for <yocto@yoctoproject.org>; Fri, 22 May 2020 06:25:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=4LZbQQNAVRbTAcC2Jlp7XERn3MUUfYcTlcqV64FD7MM=;
        b=akWyh4XG9mto/OWskBpxVSs+zxlU1wMfCzxJgvW3q64rHbftzdUaXUZP9SsqvWgVNK
         iqtAOq1k/x3Y3h7FY1+xxl1yhR5NN/SyGzL7txE3jVv5vyLkd26Qqexd27TvGM7FRD/8
         MSwhRltuWuCP7Gv3hNVGflYzRYPpa2Ja2ByWrzW53H9Er7VmMOjO8SYU5p62+SBW9OA8
         9YsCxUgCJmDLzXiksf7teRmvi0dvTfObYK1Z759Ldxi8C7rT8hUy9HCFhJO3EYtf9cU3
         aLc30O9gi4g/NIJPIIn5aHXgWJFxRCp56f7KLnJMbm3h1zm1sa1wCx4658+N+R5c9JJq
         vVvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=4LZbQQNAVRbTAcC2Jlp7XERn3MUUfYcTlcqV64FD7MM=;
        b=pWIvnG+nkT6luXQ6mKvg/Ail7WRL1C3rAvFf8ztazncNtVKY0AlI6OjDlKqh2K2rUs
         YOc6EExRWn/BqeqCmDjQEkx4lpYCVrQx9tT61DVK/4OJUvxLPK3fMlGG4IvCjrJ1udW6
         W8fQbt32IdqW6Fk6HnuZLWofCXDE+YrSteKrrfmKwUO+1H8G+D/zMfIKz80MBIVoim1i
         SP38lStfzbgyJ29Ccg/Qxhg6cSUTZpdoAh/wz7FXdYGjmaLBdq3SlboDaGYF6Nndlz3o
         KaaD9Ns7HcSAgj/BMX6bLyN84HQaFPxgpLwr99ob8OtCGLrAYJR7ovT6dGpsKImylHLX
         VNYQ==
X-Gm-Message-State: AOAM531/nUD8Ys+Xp5rrx6MwA8yD0ok1f8K9k0G8ASMmYMM2EKyJHPZ3
	bg1vZ79GlyHTSUxWgQ4sqVKCxgEeUfTwXcHPXBHj8g==
X-Google-Smtp-Source: ABdhPJzGfyb9bGMf11Bbk/9Hx4SAIn8w2xPWeuHlkYydmK1tkviernNPo6kZt4F6jOoq0c4eIrjYSKyNkaxepUubu4M=
X-Received: by 2002:a2e:8e36:: with SMTP id r22mr7476050ljk.186.1590153958848;
 Fri, 22 May 2020 06:25:58 -0700 (PDT)
MIME-Version: 1.0
References: <1590152009-5052-1-git-send-email-zangrc.fnst@cn.fujitsu.com>
 <CANNYZj9VT3M1-nP18j6b5zZk9NMxAAZ2TnLoPptdZabwt=VbjA@mail.gmail.com> <CAM9ZRVtS4tKmrBb9Z+L+wjAcd3pwAj5wfTYmueTsg=CW6BXdUQ@mail.gmail.com>
In-Reply-To: <CAM9ZRVtS4tKmrBb9Z+L+wjAcd3pwAj5wfTYmueTsg=CW6BXdUQ@mail.gmail.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Fri, 22 May 2020 14:25:47 +0100
Message-ID: <CAAnfSTsEXz13ngzs3=8oqWmdLcLH-dX8gPjtkW9Gb-GDA4yc0Q@mail.gmail.com>
Subject: Re: [yocto] [ptest-runner] Added output processing to pytest
To: Paul Barker <pbarker@konsulko.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, zangrc <zangrc.fnst@cn.fujitsu.com>, 
	Yocto discussion list <yocto@yoctoproject.org>, Anibal Limon <anibal.limon@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 22 May 2020 at 10:29, Paul Barker <pbarker@konsulko.com> wrote:
>
> On Fri, 22 May 2020 at 10:26, Alexander Kanavin <alex.kanavin@gmail.com> =
wrote:
> >
> > On Fri, 22 May 2020 at 05:54, zangrc <zangrc.fnst@cn.fujitsu.com> wrote=
:
> >>
> >> +               char pytest_append[] =3D "| sed -e 's/\\[...%\\]//g'| =
sed -e 's/PASSED/PASS/g'| sed -e 's/FAILED/FAIL/g'|sed -e 's/SKIPPED/SKIP/g=
'| awk '{if ($NF=3D=3D\"PASS\" || $NF=3D=3D\"FAIL\" || $NF=3D=3D\"SKIP\" ||=
 $NF=3D=3D\"XFAIL\" || $NF=3D=3D\"XPASS\"){printf \"%s: %s\\n\", $NF, $0}el=
se{print}}'| awk '{if ($NF=3D=3D\"PASS\" || $NF=3D=3D\"FAIL\" || $NF=3D=3D\=
"SKIP\" || $NF=3D=3D\"XFAIL\" || $NF=3D=3D\"XPASS\") {$NF=3D\"\";print $0}e=
lse{print}}'";
> >
> >
> > Is it possible to process the output directly, rather than tweak it via=
 sed/awk shell pipelines that are very difficult to read?
>
> Another option could be to generate the output in the correct format
> directly from Python using something like this module which I wrote a
> few years back:
> https://gitlab.com/b5/BetaTest/betatest/-/blob/master/betatest/amtest.py

Yes, this, please.

I endorsed this approach on the oe-devel list when this first came up,
and I'm really pleased you already implemented it.

We could have a recipe in oe-core with this in, or just drop it into
the python recipe directly.

Ross
