Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06344C27C6E
	for <webhook@archiver.kernel.org>; Fri, 14 Jun 2024 09:27:58 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.7499.1718357267598557525
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Jun 2024 02:27:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bCXK2KWj;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52c85a7f834so2556584e87.0
        for <yocto@lists.yoctoproject.org>; Fri, 14 Jun 2024 02:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718357266; x=1718962066; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FGxJxiNaklisw6ZPSZlEk2vPsS/hgjAA8V4y9vZW5YU=;
        b=bCXK2KWj1o22dkzXRJznI9bUxqRoO9PTH6tDUV6qt2Utk+nZimaLrWHdtu2BH7HTC3
         ixv+MyiipXQG/1VRbYSNVRDteZJYBQe652Xn/qx8PBrDF02gIHyr2OcAWRAxCMKXaiAX
         Ls7GEcgkGHGGvDfguwTgWggtzHa5vHPNomYCGJcS2wr+elKL9ZmWsVH6TWqeUMfocvBo
         2bgKl2riCO/kYBvY1VfJb/DnHoF8ke0zrD4cFZp4bIYUwHr3oa/XTfa1KlIrlp3IaiCr
         fDdDC3YsX5IQ7EEHpxu4WTuAF5K5FXCX3POpID6udPV6+H5kELl+8JsuXHa80aedgpnJ
         OPvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718357266; x=1718962066;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FGxJxiNaklisw6ZPSZlEk2vPsS/hgjAA8V4y9vZW5YU=;
        b=qMJJj5mELyHeEHHzs3ETfrP+cJShmSQ7WmJOmTAeTjXN+GVOIYVdLLY6BXmFYmnTil
         8bjIig0hE8Am7wICUbzzjjbziDWea1Alc5t3N9ZOEBGLT6KcGqOqeTlTP9dU7nBU1R13
         TCtLx5vE/bKNovm94D/nl3gkTzQt5HzkFfonZzQyOl/8NsxYa9MupK8sVioD71DxcE2X
         cbF1J9H4JcrYeN5H0hwLNHgKXMYplMUPL7Ep6yPOdj7ge+k9eAZQj6U+RoPr7mCado1W
         W/VZ2saxlurlZaN2n9kn6UfRA1C1fOz8r1PQt6nS7z2OmeAmYG5jwVLzrEp4N8URsTxS
         tmEQ==
X-Gm-Message-State: AOJu0YycTY9issmcJ2fXVX0w/msj5ZloW8SBqzNKwOyX3rTnyomJ+iA+
	FSA8xW3Gx2vFF8jexqUZXfDgfararXOW5+mQUA9FSqWn/83/cbe1dZtHqbSsMPRz47zJf00r1Ak
	2x6iXFvjjKkRJB1S7QBbywtr0NIFTlw==
X-Google-Smtp-Source: AGHT+IE48JTQOtaF0kVwkJVyfdCuoyDn4jLPpTtVN8bZIBbekxVlxe916zmspZv/ANPV8DkVV2tx5VTSJPl7+DlJoX4=
X-Received: by 2002:a05:6512:692:b0:52c:a88b:9992 with SMTP id
 2adb3069b0e04-52ca88b9a22mr1332423e87.52.1718357265513; Fri, 14 Jun 2024
 02:27:45 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9PxY1kQAxRvPXGj4F=sroDpVvjKeFjsyPZrP-5mpgMJg@mail.gmail.com>
 <7491.1718342116951942235@lists.yoctoproject.org>
In-Reply-To: <7491.1718342116951942235@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 14 Jun 2024 11:27:34 +0200
Message-ID: <CANNYZj-bWHAtgOSQf3v7GxKEfVL=O2BtDHRBxziGOQBijtGtuw@mail.gmail.com>
Subject: Re: [yocto] [scarthgap] Failure with python + ncurses combination
 with Yocto 5.0 (and even 4.3) upgrades #yocto
To: pandeymayank96@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jun 2024 09:27:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63348

On Fri, 14 Jun 2024 at 07:15, Mayank Pandey via Lists.Yoctoproject.Org
<pandeymayank96=3Dgmail.com@lists.yoctoproject.org> wrote:
> Thanks for the input. The thing is, the issue is not coming in the plain =
poky build, that I had tried already. In the custom build that we have, the=
 issue is coming. We don't get this in kirkstone (4.0) but beyond that we a=
re getting the problem with the upgrades. Any pointers as to where we shoul=
d look at to fix this? I read a suggestion on a forum that we can disable W=
implicit-function-declaration for this specific case, but that is pretty mu=
ch a hack and won't be building the curses module with Python.
> Any other suggestions on where to look for?

You need to narrow down the difference between working build and
broken build. Start with the working build: inspect the build
directory of python3 and find out where setupterm() is declated, and
how that declaration is picked up by the compiler when it builds
_cursesmodule.c. Or maybe _cursesmodule.c isn't built at all?

Then look at the broken build and find out what is happening there. Is
there a difference in how the compiler is invoked (log.do_compile)?
Are the includes conditional and the condition for the needed one is
false? Or curses is enabled in the broken build and disabled in the
working one?

Investigating build failures like this are a necessary skill with
Yocto, you have to develop it. Formulate a set of questions, then
answer them in order, eliminating possibilities. Or hire a consultant.

Alex

