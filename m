Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2063C433FE
	for <webhook@archiver.kernel.org>; Tue, 29 Mar 2022 20:44:47 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web12.1970.1648586686666066477
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Mar 2022 13:44:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Nrgv+2lX;
 spf=pass (domain: gmail.com, ip: 209.85.167.49,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id w7so32363024lfd.6
        for <yocto@lists.yoctoproject.org>;
 Tue, 29 Mar 2022 13:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=y+a4tGxzqUKGciNwlBLvvs1SdFAQAcpm8tNhGPjQgV4=;
        b=Nrgv+2lXLJGjKVmPChj+xWZEyOnYucpJtBKjqdF/aP9FDVg+2XpAwtXD1wahy54/fd
         H9iljro/UDtCLcrYzUpbA5zkM3HwVP+6E/nZ2cvlPb/jAliOtRDEdhXpdtYY6v1E6rnu
         iWy+jAfIm5hH+57JgNjXUqM4+KY6CUEVhbKITI9i6bQE2KqZFyGQxdOt+CJ5RwB/3pAO
         fMTAEwor4BobMsIaPITnlSmbnmB6ybUGZyYDOVqrHUYMuGSXyV41RkgofkoYGvdXCZVg
         G8ABVpg5BqB25A31aiCdW9dE24ViKGkDc6LH7xq1nc9Wrqmi+eqFO6oUO1D+zDnB5XiQ
         J9gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=y+a4tGxzqUKGciNwlBLvvs1SdFAQAcpm8tNhGPjQgV4=;
        b=7b36bLtSYcpECY02y5hoLac9PX0PWmKmAoLGtVgJhUzbCApboGGtc4tLSVEZDC5bih
         /3rRw1DFUFopOlpBp42yEnqPu0h0AHpCHHV/0e8BsvG93oIFl3pYtkyuG9ne9n4Ve83G
         s3ZkpAZpVekIgbvRFkJwLe7Tm3l5GmRiH1cW5F9FNH7k0AJcOoZs+Iu9d48qNZSnVJmU
         qYDJIFd2khXqyfRtnFa5CYvaf8GzT01mHuCO7TV6QruAgthwQxqYC1oNLh/TPLfysaJC
         2PLiZZlJEsJQfgj5oNkdLgzA5KoZ/XoN+GQeT/sttG97uqlvtvQv7EYTHovchDkHIGis
         ImIg==
X-Gm-Message-State: AOAM531QCzQ2IDmrZMsepo1wKmA07seicmMjM8ZflHvv4hW3/p9+2TET
	Ya7zNKRiegula7c41qfZjWodbO6cTbixU8LH5Lw=
X-Google-Smtp-Source: 
 ABdhPJxkTlG1PlQE2PLFrkbjrNm32OY67AKVPsiaSCUMmrSdOT5p6Nm4N0C+aWlCvyxJ7nzBcBGuvfJF96XpVwRuNiU=
X-Received: by 2002:a05:6512:2244:b0:44a:5fab:5ac4 with SMTP id
 i4-20020a056512224400b0044a5fab5ac4mr4124552lfu.665.1648586684802; Tue, 29
 Mar 2022 13:44:44 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAFWETVK+Q10Fby6WH75FAobmeSc7Sr7ZKuh1mvsuBjgaFisOwQ@mail.gmail.com>
In-Reply-To: 
 <CAFWETVK+Q10Fby6WH75FAobmeSc7Sr7ZKuh1mvsuBjgaFisOwQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 29 Mar 2022 22:44:33 +0200
Message-ID: 
 <CANNYZj_iBdWq2HcsQ0_9P3RKM8zrYtCTLPATC3nnxNEpVOQgDQ@mail.gmail.com>
Subject: Re: [yocto] Yocto poky/meta/recipes-devtool/perl
To: Mike Ulan <mausvt@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Mar 2022 20:44:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56585

Can you please attach log.do_patch where the problem can be seen?

Alex

On Tue, 29 Mar 2022 at 15:11, Mike Ulan <mausvt@gmail.com> wrote:
>
> Hi,
> I have the question: is anybody aware that patches in a recipe are not fu=
lly applied?
>
> When retrieved the archive for package unpacked.
> =D0=90ttributes of multiple files are set as readonly.
>
> For 5.30.1 https://www.cpan.org/src/5.0/perl-${PV}.tar.gz;name=3Dperl
> or for 5.22.1 and 5.22 and 5.20 http://www.cpan.org/src/5.0/${BP}.tar.xz
> lots of read only files in archives.
>
> Form  man of Patch behavior --read-only=3Dwarn by default.
> So files to be patched with read only attributes remain unchanged.
>
> For override patch default behavior on --read-only, i placed in poky/bitb=
ake/bin file with name patch and content:
> #!/bin/sh
> /usr/bin/patch --read-only=3Dfail "$@"
> exvar=3D$?
> echo "patch wraper readonly fail" "$@"
> perror $exvar
> exit $exvar
>
> And as a clearly predictable result, the build of perl failed.
> To fix problem and apply all patches and particularly my patch to backpor=
t issue for my host environment
> I added to perl_${PV}.bb recipe this:
> do_patch_prepend() {
>     os.system('chmod -R +rw %s' % d.getVar('S'))
> }
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56577): https://lists.yoctoproject.org/g/yocto/messag=
e/56577
> Mute This Topic: https://lists.yoctoproject.org/mt/90107596/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

