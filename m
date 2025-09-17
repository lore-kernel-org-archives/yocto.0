Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D93CAC599
	for <webhook@archiver.kernel.org>; Wed, 17 Sep 2025 09:19:21 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.web11.18596.1758100755876663846
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Sep 2025 02:19:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VIxc2Ye+;
 spf=pass (domain: gmail.com, ip: 209.85.219.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-78f15d58576so1985586d6.0
        for <yocto@lists.yoctoproject.org>; Wed, 17 Sep 2025 02:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758100755; x=1758705555; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N3zVOjbrHnGuHcOtactysngzhhGelECyp0+gfGpvJd4=;
        b=VIxc2Ye+mnNC8s0jbcsdT1+Ld9t7sLMk6NjI7wcIrA4E7kIAyJSL1f0jBxQghn6Dd0
         pBc3YX+vi5QwByOHu8u/cLp7OoSdcDj7jbQsBBp3qed5yAHZjCot9LgDezhHG2XkyLvA
         AKffA/jS/tZT6shIzkXhx5tpuOW+5q4+XAyynwGAB15D9sC4FxqXwplSRXp6q3Wm1EY2
         /j9LZnwAeUgZgUzEbiANdIQChyG2gBZeYZKlZUrfcWVta/arIYPKuRqMAbXWkhQ+WNZf
         QP4LrhqeiNSJxhEweBZw50sTV8llRnJXurrEKGljmIRR4T22E0zN2MPA+jTTmqbmFvPP
         oIeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758100755; x=1758705555;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N3zVOjbrHnGuHcOtactysngzhhGelECyp0+gfGpvJd4=;
        b=PkDtTwObiC3HwgUSoaRGHZ/bZ84b6jXeCIs3Zfj3Y4exSTwHS4oX/JsBYBsUWE2k4d
         Trdx8oRzGK15h67yAwYamAI7jHDcCWfOgu0Db1rxsOosf6UMb42pmzhnkh3rJn7lBO5C
         6PAx4qvxW+JqihAOiG8wRKDOtK5UtL+UnUi9+HNJP/tmiGsE5U1GTyPT+ceOgPYstFIj
         wdJHqyFkwqCNoC4w/FvwCVh9ZTY732YVIrZykgOSiNh4xixXioyWg9dKur7TgF20x74T
         DD5IHySriLsOQs8UsSDhIY2zwekfgZLc8VselJ8TG2JwuA1sadzsZumcsU8YozcwE7eb
         sFHA==
X-Gm-Message-State: AOJu0Yyd6DKMXTu0xhFh+5mvaGQn8KhJXoToDfAo/6DjilMRP7OI+LBt
	uwTrQlWYShTwUxtrFHcVJhbM7rYJbpQUfLNpdPu5x5QN9bVF8z3lEAF+lccuN7WXVbzHfPyLFFP
	zQkpNodIZQqcwqNyStXFn29DPCdJTWm82BA==
X-Gm-Gg: ASbGncvcnhAxBvs1fMMnMStBdiM0JpaYyfiiuFX/RXkshM/42NSuWjub2kJrbtky509
	u2O/Y6go03sPCu5St64MrXUQui3nfV9Wxen+qKNnNm6k9YhuoICb6JkoJ8yNbN/i/7CQFkGwZFR
	ZQjsSMfF41xRCWj6TMY29eI57WVX8M2n3NZxtBAKx3DDsWJLETjzouD3uJNV/pFMDJEtCX8mZ5X
	38IgvA2jX3U3cyLCzLfyh5VXH+dpMd0eIxuFMzsn95czZUaU8OY+euHvGguxk0VZ5PGdF4buJG6
	DZbw91gPtQi0Va0=
X-Google-Smtp-Source: AGHT+IHY31oKyenDaLmdqjxkRyzU5wWP+AanC5ulSpG2gBeq6abHRkY2Spigl+4wA//L2mNUzKUtFYOVltw+NI7T7ps=
X-Received: by 2002:a05:6214:29c9:b0:765:5347:57ce with SMTP id
 6a1803df08f44-78ec7125870mr13874826d6.34.1758100754758; Wed, 17 Sep 2025
 02:19:14 -0700 (PDT)
MIME-Version: 1.0
References: <tEoU.1758053094260077183.1RYf@lists.yoctoproject.org> <9EEFEABC-1B2A-4C76-B0CC-0E0CADAEB744@arm.com>
In-Reply-To: <9EEFEABC-1B2A-4C76-B0CC-0E0CADAEB744@arm.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 17 Sep 2025 11:19:03 +0200
X-Gm-Features: AS18NWC3Sk-BkhfVNZejhhheIhwyx2CCTepjXx-PL8C7d-HPdOCn5SGsEu5d17U
Message-ID: <CANNYZj-Sk_VEMa8--q-s3G6KP1zih5KqZC4uv5WJzAd7sQrzzQ@mail.gmail.com>
Subject: Re: [yocto] Documentation around adding custom fetchers to layer
To: yocto@lists.yoctoproject.org, ross.burton@arm.com
Cc: "seth.raymond@matrixspace.com" <seth.raymond@matrixspace.com>, 
	bitbake-devel <bitbake-devel@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Sep 2025 09:19:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65851

On Wed, 17 Sept 2025 at 11:15, Ross Burton via lists.yoctoproject.org
<ross.burton=3Darm.com@lists.yoctoproject.org> wrote:
> > I'm not seeing any documentation on how to add a custom fetcher to a la=
yer, and the fetchers in poky don't provide enough information on how to re=
gister these fetchers. Is this functionality supported, or will we have to =
fork poky and keep it up-to-date to add a new fetcher?
>
> This is a bitbake issue, so I=E2=80=99ve copied in the bitbake list.
>
> There=E2=80=99s no standard way to add out-of-bitbake fetchers, as you sa=
y you need to add the fetcher instance to bb.fetch2.methods.
>
> I guess you might be able to write a do_fetch prefunc that creates an ins=
tance of your fetcher and adds it to the list, but I would not be surprised=
 if there were more places where that would be needed.
>
> python use_my_fetcher() {
>   bb.fetch2.methods.append(MyFetcher())
> }
> do_fetch[prefuncs] +=3D =E2=80=9Cuse_my_fetcher=E2=80=9D

To be honest, I was going to say that custom fetchers are not
supported. Doing that would fragment the ecosystem and make people
invent all kinds of private magic in their builds, and subvert the
promises that standard fetchers make.

Perhaps it would help to step back and look at what this customer
fecher does. Can we see its source? Or an extended description of how
the password manager is used, what data it takes and produces, and how
that data is used in actual fetching? Then we'd think of how to do
this with regular fetchers.

Alex

