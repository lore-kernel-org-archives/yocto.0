Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C03DFCFD34D
	for <webhook@archiver.kernel.org>; Mon, 24 Nov 2025 18:54:09 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.24497.1764010444435852371
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Nov 2025 10:54:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hbwD7s/W;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-88249766055so56173826d6.1
        for <yocto@lists.yoctoproject.org>; Mon, 24 Nov 2025 10:54:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764010443; x=1764615243; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xF3xO9ya0xn8KtqFhlIxBxUMtsngskcFDdPO7AmUdPE=;
        b=hbwD7s/W8lZqrmFUTUqu5u//1QX3lLayBBqhpIu8npsZ+07p+e0DH1l2jhGJSEWTT2
         q/ISdf0/jf6mMEV45JsZldo3C1+aj5PTy2EMvJZ88SBRo9bDRlo6sVotxUQQyfw+d5Em
         B/5rMzeEeWM0vbyTeBIJB9vg+YKFeBADFc+g/cD1tNUiZ6p2n6ADso23rS5jSF3XHtoi
         KmwRN140GzcIrCS2haw8bGfeZ19h2DEmdP1pJtEB9Cyj45LYEikKmZK77qKNeg/Eisw0
         VkVmwAqdmTaFKElTWBrizMyTA44Ce1z2Ud1HJesRdOzKiPgf8BtNeyio576Lv88Oz66o
         Lcpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764010443; x=1764615243;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xF3xO9ya0xn8KtqFhlIxBxUMtsngskcFDdPO7AmUdPE=;
        b=FSKRLEYgVwuEMZLC3YvHbEOG5dmYkCKzVmxlZDgW6Y6Do9k07IDvEmRJQh55SEIF95
         5svzFyI9TWpumtYMe4tf9JUjxbceYRS37faGYIJ8zdG+BAfuFNlI9KtokrfHYcq7p+xB
         LsLsUemKc2YOoBSmR2PSC9HXVNgDJ/7p6nD0A8RWIJhRKjYNOWtXhYrKBMayKBGwOkvn
         JI+7ouaJo/YlPaT5p5mVI0jpmllOoFzGFM0tuTM9HjzK7M6tGSUOCKyB3vzTrqXpHGsX
         RNaS6OZRx9EDIarZrnuPbrLgeMNKTtVy2ojSYSKWhnI6eKLjXEfsnggkJBioB3EwjhgA
         aSLQ==
X-Gm-Message-State: AOJu0YyVG+m7pk/fu0kUVnNqW/X5tG+0VZrrNEgx08UM2eRrU4U2nxUZ
	HrpywWGrSf6ncZnnA76S16o6Jvri2zUraAc9eOKooQAWoWNrQzYpslZNRwaxtD/7p2eP8/UtCA/
	GG/87aRnjzzGPrkc1m0pFYjMHaLvsUsYugA==
X-Gm-Gg: ASbGncsK6iARxoTnfHeQ7HCju5IAndUhJFZ96zpB7aEoMj7Wf4l30b5IlSzPlAk+BM8
	4EZk28/2+CIt05qnSkycNhzMCItdPIQAa71xTIu2i1wtgn8hTrwT3KBKVIaz1BFk4pWNWg2t4cl
	w5D80aXuJUbf+fKImEDn2Ik/aoBmWKXxZkLp6m9z803xcgaNJuabC0q0Nft2HJcFZ+1BMih/kME
	q4lA8zYZ0jwjcMXl9y8Izbh+w0DypH6QuNG8LXnz1PPk6PA+Ym+npQibWemU7Sn7kGJTkJ59TTf
	qZTXElpxyTuqxQoEg+3Z5OxxEFdp3A==
X-Google-Smtp-Source: AGHT+IFWbCK3SwVpFagdpUsKKZWeCuTZrpoxihQHGWSjS68vNQXrUCTAiO9flvJbRPUuZl9HiPua605+wiW2ktCZX1I=
X-Received: by 2002:a05:6214:4487:b0:879:f90d:fd88 with SMTP id
 6a1803df08f44-8847c546a10mr162912926d6.66.1764010443365; Mon, 24 Nov 2025
 10:54:03 -0800 (PST)
MIME-Version: 1.0
References: <aSSUtHYFQlychNQk@osama> <CANNYZj85vK7o4KVDUtJ_DkW73bxs7UMA-bM6K2VRada-yCFpfA@mail.gmail.com>
 <aSSnE0X9kycDc60G@osama>
In-Reply-To: <aSSnE0X9kycDc60G@osama>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 24 Nov 2025 19:53:52 +0100
X-Gm-Features: AWmQ_bmdOIVZ5HSBib7cXdvKc9Ynw2UFBFEZU_XpnqjQUVXKU8KtarLe_t338T4
Message-ID: <CANNYZj9ieQUQUEEjxV7bAznc3=A0rESOSr_+hy=RFragEA1Y1A@mail.gmail.com>
Subject: Re: [bitbake-devel] [RFC] Proposal: New tool to display recipe
 dependency trees
To: Osama Abdelkader <osama.abdelkader@gmail.com>
Cc: yocto@lists.yoctoproject.org, bitbake-devel@lists.openembedded.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Nov 2025 18:54:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66050

On Mon, 24 Nov 2025 at 19:42, Osama Abdelkader
<osama.abdelkader@gmail.com> wrote:

> My motivation actually was so simple, to know why a certain package is ne=
eded in an image.
> The simple way now AFAIK is to exclude it, then bitbake prints backtrace =
e.g.
>
> dnf
>  =E2=94=9C=E2=94=80=E2=94=80 libdnf
>  =E2=94=82    =E2=94=9C=E2=94=80=E2=94=80 libsolv
>  =E2=94=82    =E2=94=94=E2=94=80=E2=94=80 json-c
>  =E2=94=94=E2=94=80=E2=94=80 sqlite3
>
> dnf -> libdnf -> libsolv
>
> libsolv is needed for dnf. so would be good to have a query command or si=
mple tool to show that?
> something like apt-rdepends output.

Yes, absolutely, and this is missing. You can deduce it from 'bitbake
-g', but it requires look at dependencies of particular tasks
(package_write_* if memory serves) and ignoring all other task
dependencies, and then making a mental dependency chain in your head
if the dependency is indirect. This could probably be post-processed
with some filtering tool to only make a tree of those dependencies,
and present it in a human friendly tree format.

One other idea is to add a task to image recipes that would produce a
tree of package dependencies. E.g. instead of making a package repo
and then constructing a root filesystem from it with a package
manager, it would use the repo to write out a tree of their
dependencies - unrolling the top level packages that the image
specifies to install. Probably it could use package managers like
dnf/apt/opkg to assist with that.

Alex

