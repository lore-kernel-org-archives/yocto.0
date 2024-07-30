Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9435C3DA49
	for <webhook@archiver.kernel.org>; Tue, 30 Jul 2024 17:16:51 +0000 (UTC)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
 by mx.groups.io with SMTP id smtpd.web11.23133.1722359807328308320
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jul 2024 10:16:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iXDBng8y;
 spf=pass (domain: gmail.com, ip: 209.85.160.50, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-26827ec5235so492590fac.2
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 10:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722359806; x=1722964606; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6TxPlmcXOi+NyLMrVy+hH+JdcgwW5xdPLkPKDoVoCvE=;
        b=iXDBng8yOgB/SZoL09OsP+tEr9yJ2NQJiNgFDTjcs10G8rGw2gRY7CJoDRS1uNNFLo
         MrfPUwnLOQU40xuqc2Y9PTnXQCCbrz9V+FMf3A3LRZ/5iE6E2Uu1mRCfrRs7Nlss7sZr
         6SWc5FYJ54ZJlDFoGOrLAduqfeqzKtBuRjNEGn0H2LCBd0+SATYGXNyty6VUF5GUePNd
         IR28nWX+CmGHAu0cWxd3Z++wsS5W7lWw+LhtLuBwv7eX7F2ILntRMn/wEaZwDom1GY9O
         B19dDldGTeIVP5IY3cfKR9Dqt13lVEVX62FC+8XYvMcrIGIdvBiQlqHorVmGWdCLooQB
         eJXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722359806; x=1722964606;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6TxPlmcXOi+NyLMrVy+hH+JdcgwW5xdPLkPKDoVoCvE=;
        b=CeE+dyraLHlymTZ0SLhkKubV4jXcScSPWnUelTsnA/7bAG+BxORf4LHXoGIgvr63da
         WZ/jC5O9smap/i1ta3SB0Dp6QlRIJ2AINA1XagMFYB1/RUXU8wtUjCI3i+CGE5qaYA8/
         EkEGA7/zsEgk1SJ4+ZO0nJ9Ui+Bz2HRacRK6lxmMqrybxLtGgRJdTJXnsLUsCSycwhaJ
         U+R3C3qUY5rnHvNZzxys4uZWBD7QH6M/q6a+HnwjMBgjkL/eqzY399dtAR9dQjMdiRtp
         OoGyju936mM/iXtf3l453MyxO0ZlHqr4wXUrgoo6bgpnjpUj64GlOSwnsBivFu0G6pPA
         xIPA==
X-Gm-Message-State: AOJu0Yyge3mja5sgS+mthm+rCGk2Pbi3SfgL18Kc1wtFBa/gbs5dhVCR
	TYkHbk1Gw7L/nKhbfZvDctTzki1gOUebnXPfSVtYWv6zuP37RuCvQEodGWvROOiLyWxz5zrGSoB
	aMHLAk35+7X8jZ2FUfOZohJC5avI=
X-Google-Smtp-Source: AGHT+IGvHF1F36B+KpjLmxNoik4SOuO9WJs/SKI21V7DqbooARdExD9Wo08Oe8fW4kaickz8Fs/xSmGDtVAbcCaxmXM=
X-Received: by 2002:a05:6870:9216:b0:261:1046:66fc with SMTP id
 586e51a60fabf-267d4cde19fmr14022898fac.4.1722359806542; Tue, 30 Jul 2024
 10:16:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAHUKmYbbd_LgaHVaHzZt_JqHFVvaMDr25ZouS=Nnw6jrZxnCGg@mail.gmail.com>
In-Reply-To: <CAHUKmYbbd_LgaHVaHzZt_JqHFVvaMDr25ZouS=Nnw6jrZxnCGg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 30 Jul 2024 10:16:19 -0700
Message-ID: <CAMKF1so_L5CHdVyYbyo7Ut3XM3JvFGqxrfQ0Pqot9dpn27rjNw@mail.gmail.com>
Subject: Re: Meta-gplv2 replacement
To: Etienne Cordonnier <ecordonnier@snap.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 17:16:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63609

Hi Etienne

Thanks for the suggestion and I agree, it's a good alternative for
coreutils tools, we must mention it in page.

On Tue, Jul 30, 2024 at 10:04=E2=80=AFAM Etienne Cordonnier
<ecordonnier@snap.com> wrote:
>
> Hi,
> I saw in the latest yocto-status email that this page was created regardi=
ng meta-gplv2 replacement:
>
> https://wiki.yoctoproject.org/wiki/Meta-gpl2_layer_replacement (thanks Kh=
em)
>
> I'd like to remind of the option to use uutils-coreutils from meta-openem=
bedded/meta-oe/recipes-core/uutils-coreutils as a replacement of GNU coreut=
ils (using PREFERRED_PROVIDER_coreutils =3D "uutils-coreutils"). It is much=
 easier than transitioning from coreutils to e.g. busybox, because the opti=
ons used are the same in GNU coreutils and uutils-coreutils, while busybox =
uses different options.
>
> The caveat at the moment is that uutils-coreutils is still in beta phase,=
 so some flags are still buggy. However the vast majority of the common fla=
gs work without any issue.
>
> =C3=89tienne

