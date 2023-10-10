Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E15FCD8CB3
	for <webhook@archiver.kernel.org>; Tue, 10 Oct 2023 19:10:53 +0000 (UTC)
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
 by mx.groups.io with SMTP id smtpd.web10.2847.1696965051365424960
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Oct 2023 12:10:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MvZ+xtal;
 spf=pass (domain: gmail.com, ip: 209.85.160.41, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-1e141f543b2so86150fac.1
        for <yocto@lists.yoctoproject.org>; Tue, 10 Oct 2023 12:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696965050; x=1697569850; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xgcfRU9oR9XtkHxyh1TP+QE/NLQFCvgdsa+Jd7jv33U=;
        b=MvZ+xtal4bb3jwysmWIRfbhnPamQBnIAV/yBkUJ1dA51u96uDfWHA1xlucnrBY9C+v
         NrUiVZMhU74mEvLIZ0K8TD2PhJOiZlfnAm1zLzVsauCHqU85RyBHggDn4LU4Qj6wo3DE
         el49LN7+VjD5hFcHiTUyAimwcFF5Kdav3oduPjFMx5/2YtNdsD8ZSAvahc3QKiFCS+NA
         +aFwzasjCvkAs4xaTfvK8RBGlk+tBOEXvel1ZQWqCwU65MMMGcAhvLEPUCJ/5H6R8cpo
         Gl0tLmSwB51koZAp5F3nR7dcXG+ut3rW3VzgJBoYs3Y4VNa1ub1yJkj90ZtX48PzXaBC
         eMQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696965050; x=1697569850;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xgcfRU9oR9XtkHxyh1TP+QE/NLQFCvgdsa+Jd7jv33U=;
        b=OZREtHB1tkJNYrtidfw/gEl98SDp6NLO2lCCvSOE4mbDD0XofBreYUgZSTotcXm/Uv
         PqHsJCdErPr7Q40Na0gCWXiEAacPT0eEGXbiJ6Xt0N627Fn91l+qGncPByNbVk81f1Wi
         jBNeajn9twFvkYgVbTs7T5ECaCC4ocMALYYD15KCyyLpYg07EeVCRwWy5Iw7/+qvnk9s
         mAgSzWidNQkai0g/LGXlaoNt7JImzfYr6NUgCdBRMgeyztmK7mS7ACcuy88GohFU1fxc
         8hZdRcF6HECpphxKQ7CpmXuv4QL87xiBGRwXTFDb+tWP8Y1KVJhimxIv5tWUCK3ByF9j
         97OQ==
X-Gm-Message-State: AOJu0YwYU3TLCxE4bE1AChxdV9TVTDCjUNprPaxxlBMd237nMvKouDlL
	ToDaUnLoPLUzdNwSeySzhpTrszWIXNsmVQz+s90=
X-Google-Smtp-Source: AGHT+IG6Xvn/3EhmKEQbOkV2FzG2jS2Cuc1VCo30Ii4nfkrGyvbczqofOCuMla0Vrac3vvfuBAAvnwp3ftHVZOgMbg8=
X-Received: by 2002:a05:6870:7189:b0:1dd:3394:26cb with SMTP id
 d9-20020a056870718900b001dd339426cbmr9972981oah.15.1696965050587; Tue, 10 Oct
 2023 12:10:50 -0700 (PDT)
MIME-Version: 1.0
References: <lfKb.1696959113393378486.xJHM@lists.yoctoproject.org> <CAMKF1somjatyfkkAUs2A2dBmxyN+=31grQ+ni6fLLa7uP00hTg@mail.gmail.com>
In-Reply-To: <CAMKF1somjatyfkkAUs2A2dBmxyN+=31grQ+ni6fLLa7uP00hTg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 10 Oct 2023 12:10:24 -0700
Message-ID: <CAMKF1srdg6Zw9VhPZoYkZ=rks9vymdTu0+VYbD_arOGRvAcUyw@mail.gmail.com>
Subject: Re: [yocto] adjtimex #kirkstone
To: gary@missionsecure.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Oct 2023 19:10:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61311

or maybe for - https://github.com/rogers0/adjtimex

On Tue, Oct 10, 2023 at 12:08=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wrot=
e:
>
> On Tue, Oct 10, 2023 at 10:31=E2=80=AFAM Gary Huband via
> lists.yoctoproject.org <gary=3Dmissionsecure.com@lists.yoctoproject.org>
> wrote:
> >
> > I'm on Kirkstone using core-image-full-cmdline image.  Is there a way t=
o add adjtimex besides busybox?  I did not see an adjtimex recipe in kirkst=
one.
>
> there is not one. Perhaps straightforward to create from
> https://www.ibiblio.org/pub/Linux/system/admin/time/adjtimex-1.28.tar.gz
>
> >
> > Thanks
> >
> > Gary
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#61309): https://lists.yoctoproject.org/g/yocto/mess=
age/61309
> > Mute This Topic: https://lists.yoctoproject.org/mt/101880152/1997914
> > Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirk=
stone
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gma=
il.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

