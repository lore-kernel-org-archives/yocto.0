Return-Path: <t.f.g.geelen@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C50AC369A1
	for <webhook@archiver.kernel.org>; Tue,  8 Apr 2025 19:16:26 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web10.4502.1744139779332406815
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Apr 2025 12:16:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SGFdH3gk;
 spf=pass (domain: gmail.com, ip: 209.85.215.172, mailfrom: t.f.g.geelen@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-af519c159a8so5407228a12.3
        for <yocto@lists.yoctoproject.org>; Tue, 08 Apr 2025 12:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744139779; x=1744744579; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bJoUh65DSOvJzphKlb0IXPG08xq1TvHkTYNcC2WesYc=;
        b=SGFdH3gkjEreGDWJHEj4kxyhas6WamcuUtCKR2/Gx32PooG1u4HNC1ZFRauZndFe41
         nDMZESNbOTEQWoOFA1j6Qq6CLY0LPsDbsxnKAvQYi6Tz5AjAO3fIlLwx/pRS2pq4vYoc
         KH0Q/dFs6EfJKO1MhKeYfxwpeyaxtsPzJ1TofeN+f5MG6hkURdMHJvgJ2vM0xKmbcJam
         wS7ELrmk115O1Lh1Jg6Gx7kcO/AFNdKi7jL2xpQYGL/W5NF8eL2VShUKqxnyS9B1z7gq
         TxjVpeBWtSKwqVW8cL1eUtw8YGxNJrUg8TJ9jwWk11mc/0S0pDxW5y8TNPRNJfy4y3M/
         jWPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744139779; x=1744744579;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bJoUh65DSOvJzphKlb0IXPG08xq1TvHkTYNcC2WesYc=;
        b=qlnU1mGGRmhHXdlALsUrMOhhiBugqDKXpcI1Rc9ZoMdTDeyjQmoXT96r6+3mUOyQRc
         76piAUNv47o7zFSssQXJoaUotUoLcUeqVvtzc+YkjOsl5bUGNY5yMDgq/a+36KiebqxR
         VirUL997LdqX95joBMQmfqXuz9G//98gRJ9gQLhNfGAefwY529hRgwDRsy1TYLpln4mz
         A8M6fMCwqs59ByEI7xLTODq5kgXx3VDsb3n/QHVm4wNaIv6FZz5hclUDGFl3+FUENUpw
         ORXYsRAZibqYAGO7p0FnxbcTOVlQP2oTL/5B6rmOe7wjiR2+QG4iHSySsT+EOY4nP8/q
         /sVw==
X-Gm-Message-State: AOJu0YyB1HS836/8aQlDSj89FPOtGgij/drZZMPuJ+pczXH0I01e8Mx5
	Lnbn3liAGC44wICgs4JLtrwotJ8TsSsT/xTFJghvLitgV23SmmSyAD5OL1cVTKc9objBosgBk12
	FLfIWvRTTunjeG+UD89H3GgXyNqg=
X-Gm-Gg: ASbGnctY/MPivKx5q19fTEjvaIu6CdJiAipTnTgayKb22cmiX+UctjrFHG2DqbpScW6
	bZYWYZZOLWN3Ez5y0Tsdb76UGk2XcLV93DGmW4x5iz88h3W/0bqomLx9yOjoMTgNMQt2AAa9WzL
	zIX51CkxMVaPQySyTB8MQ9qK9m0LvqDgpb5wM=
X-Google-Smtp-Source: AGHT+IHzSRt59SclK1RhitvKdEBOem8cuF6K8tZa5efGQSGslZFXL93w+A6EnyBKZFMfwCKl5Viq5EihsclER3v76Ds=
X-Received: by 2002:a17:90b:582f:b0:2fc:b40:339a with SMTP id
 98e67ed59e1d1-306dbb90e5emr527783a91.10.1744139778728; Tue, 08 Apr 2025
 12:16:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAJo0Az5-Wy8RyJMcNG=0XynEaJ30YUr9eRXno0ZC6yKB4bQYLg@mail.gmail.com>
 <183447646FA7BED4.31078@lists.yoctoproject.org> <183447EA8991BD5A.31078@lists.yoctoproject.org>
 <CANNYZj9ZEiVebtxiaXEsFSR_2EmYDq5Qx4M3wskpKdL0mZMvXg@mail.gmail.com>
In-Reply-To: <CANNYZj9ZEiVebtxiaXEsFSR_2EmYDq5Qx4M3wskpKdL0mZMvXg@mail.gmail.com>
From: Tom Geelen <t.f.g.geelen@gmail.com>
Date: Tue, 8 Apr 2025 21:16:17 +0200
X-Gm-Features: ATxdqUHvYfDdSlE4nNgdXVlNksYwpKm_Ppz7SboNAxrPdWk12e18YTf82Zi4ynI
Message-ID: <CAJo0Az703ob3hXzqYGHCxVQ=L9RLpc_yYf2uOsTskkZ3g3JZ+A@mail.gmail.com>
Subject: Re: [yocto] [auh] Setting up AUH for non pypi recipes
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Apr 2025 19:16:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65127

Ah nice additional thing indeed. I will keep it as UNPACKDIR as I
believe that is now the preferred place.

Other than that, does anyone have a clue on why devtool (via AUH)
always seems to throw a git error when it tries to upgrade a github
based recipe?

On Tue, Apr 8, 2025 at 12:01=E2=80=AFPM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> On Tue, 8 Apr 2025 at 09:40, Alexander Kanavin via
> lists.yoctoproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.org>
> wrote:
> > On second thought, maybe it's actually ok, and the bug is in devtool
> > upgrade. I'll look into why it gets confused.
>
> For the record, devtool was never updated to handle S pointing to
> inside UNPACKDIR properly, particularly here:
>
> meta/classes/devtool-source.bbclass
>     if os.path.dirname(srcsubdir) !=3D workdir:
>         # Handle if S is set to a subdirectory of the source
>         srcsubdir =3D os.path.join(workdir, os.path.relpath(srcsubdir,
> workdir).split(os.sep)[0])
>
> scripts/lib/devtool/standard.py
> def get_real_srctree(srctree, s, workdir):
>     # Check that recipe isn't using a shared workdir
>     s =3D os.path.abspath(s)
>     workdir =3D os.path.abspath(workdir)
>     if s.startswith(workdir) and s !=3D workdir and os.path.dirname(s) !=
=3D workdir:
> ...
>
> I'll see if I can tweak them without too much pain.
>
> Alex

