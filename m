Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D784DC83F11
	for <webhook@archiver.kernel.org>; Mon, 28 Aug 2023 08:25:37 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web11.9070.1693211136450829218
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Aug 2023 01:25:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=ijI5U9as;
 spf=pass (domain: gmail.com, ip: 209.85.167.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-4fe1b00fce2so4625732e87.3
        for <yocto@lists.yoctoproject.org>; Mon, 28 Aug 2023 01:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693211135; x=1693815935;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eDNAYOkoMuRKFzR2iTGelY1HNhwBAI7BRBp233zk3BE=;
        b=ijI5U9asjtTzdBJSq0hrc9lmWiE2OdiAgpRGoD+FuGZzjUjSIIu8tOjAHX8eL5ByPy
         ZDZmfd5lECFIKgGOBevlZWbzPHhD3jaABLU0jnYDvbyR6+99uLPYrlMK1MEeMVJuvv+T
         xaR08G05XlexUYmEZhiIQqMvdQJFKnmiJmfgjbdaSuY+0mI6l14TkB3BSxwB+43SHfj5
         G0Ya3tUTKryEgOS2sP6wc9sAMWuKlH88UEf3qr2UEEewOsUdwpuNk5wyxRfIIqyOZO45
         Jz4DrZUFuYasUevVqJxQfYXuPaIaTjpLTZlXste/5KvNJX+R3AlQ15mlNF5y5NNhPLl+
         mUfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693211135; x=1693815935;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eDNAYOkoMuRKFzR2iTGelY1HNhwBAI7BRBp233zk3BE=;
        b=eLMKPgJh8wMk7p9c/Zf7lcu9bWuTwJUK65mhPEXsaRJJJ4Yu9G/S/auqBkiM1E8Vk8
         Rv5O/GBH4BLkPSy+okkPwLdXTWAyuM5nVI8PvaPS/VjHJHvGiOSOq5rAJEr9PvleYc8g
         KSogHwWr64MBQFTtFC76bi0J0XHKlPmPyX+8P6aKYLa0JrhsbLmy4jM5+uAiWBf1MZhA
         09n9j7GALGAeqrvwMHWbLDTpQUO9EPd0GnMbTM24fAYut5py+aT/oG7C97cnv6LQrtON
         MIq7LfJDUKdBQMOWZxCbNGtBCT5dV9RXzXuncB19JCYwevCA4pAzCVaHKL/sijsU2WX1
         6WzA==
X-Gm-Message-State: AOJu0YyKWmiJvQ02uYg1eJsO8/tN8DZBdXRd7TJWMcwm2TcVYhavPEOM
	OGh97v2HTGemnqezkiVteWdseSEeTafI5t718Qs=
X-Google-Smtp-Source: AGHT+IEdAwOcedScCjrwGD+zIVq4DAT5yCavflEqq0K2q72/sbtQOFYf1m/GMdrotnvYyuX1BD5E2xn43wGHAhicOCA=
X-Received: by 2002:ac2:58e5:0:b0:500:ae85:726a with SMTP id
 v5-20020ac258e5000000b00500ae85726amr3767849lfo.50.1693211134317; Mon, 28 Aug
 2023 01:25:34 -0700 (PDT)
MIME-Version: 1.0
References: <o2S3.1692955198371059896.EMq5@lists.yoctoproject.org>
 <CANNYZj9=HgFoctp0=_soxF6Wv3R8G5Og0SpEFL0y7CbbXRxJuw@mail.gmail.com> <CA+_BhBzFjDjrmWW6y22kHc_s1EkXa7ee9REMBDTDQMP+eDXidg@mail.gmail.com>
In-Reply-To: <CA+_BhBzFjDjrmWW6y22kHc_s1EkXa7ee9REMBDTDQMP+eDXidg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 28 Aug 2023 10:25:23 +0200
Message-ID: <CANNYZj8Hv2YETSNd+uUmffSEA1Tv+q-gK7-u-WUOsrvqALr7Hg@mail.gmail.com>
Subject: Re: [yocto] "Replicating a Build Offline" not working as expected
 when Git data is removed
To: =?UTF-8?Q?Stephan_M=C3=BChlstrasser?= <stephan.muehlstrasser@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Aug 2023 08:25:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60899

On Mon, 28 Aug 2023 at 08:16, Stephan M=C3=BChlstrasser
<stephan.muehlstrasser@gmail.com> wrote:
> > The documentation isn=E2=80=99t perfect. Sometimes it becomes outdated =
and no one notices, or it may be inaccurate to begin with. Personally I wou=
ld never tamper with content of downloads and preserve it exactly as it is.=
 Doesn=E2=80=99t have to be git lfs, plain artifact storage options work to=
o.
>
> If it doesn't work as documented, could someone elaborate what is
> currently necessary to replicate a build offline? Is it possible to
> reproduce a build only with the tarballs or is it actually necessary
> to keep the cloned Git repositories in the download directory as well?

It's well possible no one knows the definite answer, and the best
advice is what I said: don't touch the downloads at all. In any case,
if the documentation is not accurate, patches to make it accurate
would be appreciated.

Alex

