Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 661FBC636D6
	for <webhook@archiver.kernel.org>; Wed, 22 Feb 2023 11:27:46 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web10.6408.1677065258512033861
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Feb 2023 03:27:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=RfoPFDBi;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id o4-20020a05600c4fc400b003e1f5f2a29cso6026375wmq.4
        for <yocto@lists.yoctoproject.org>; Wed, 22 Feb 2023 03:27:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0kS0897AaQtWVinFUl/A21b5LUC5VIouIED/f1xVh6I=;
        b=RfoPFDBi2BK88THT+6RInWLTBUh8T1+szEIc9GSkBFsw95fVn8NynWVwVsWDuZVz/E
         eWflR3rLSsO8UAwABZezmEFGhEI5XZt0SZ5xosR6vmGDq0KhJYYs23Hu9qt/EuHzH2OU
         JxBLJmBWDwboWhvmknTrsi8rQ8BSWOqOggKE0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0kS0897AaQtWVinFUl/A21b5LUC5VIouIED/f1xVh6I=;
        b=YRmB5rmwNhOWFx8n2mcxEcWD2tpJBLMsJ39NQMTcJ88cXQm48w44I0rnrSWF1gPCQM
         XZ4ShP802zKUzJJCzShDuxPDpTNRPmoDX79t2AMEQQXPTL/neRUYe0uzM2ZfCrGLHH9P
         nV5OUDRNlS5Wya5J4KO6rVYHGYMiYoqcDBiK54e+BNwdORCU/B9zpjg9Rys3qIGNlY0g
         20V1vVuWInUBxWLO//vD2UAWVTvVVZPkkELEzf9Y9vNqKj4r6pHcmN5k52wskyg205PR
         iOhpcDqBkbf1ttOQ+oHU3dXpZ/2bYnKCqWK8v4dnJ6E2LNWh3mPw7l1xumu6Kf9rty8S
         OCMQ==
X-Gm-Message-State: AO0yUKVNxiS/swkM3i2V0zTwGwyjUjypvQ/xVAr5PToay1DjYk09EfLL
	dQWF7/3ig3zCB/+rRNShV9WAOA==
X-Google-Smtp-Source: AK7set8on6WDR5IL9AvA/q4fpuRAKB52i/9aAsVGjmTK1bF8lZqWs+SeyZsPwzNpjZMdnj/R1mn4Iw==
X-Received: by 2002:a05:600c:3196:b0:3da:acb1:2f09 with SMTP id s22-20020a05600c319600b003daacb12f09mr6018744wmp.19.1677065256675;
        Wed, 22 Feb 2023 03:27:36 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:d5d1:6a95:9b62:17ab? ([2001:8b0:aba:5f3c:d5d1:6a95:9b62:17ab])
        by smtp.gmail.com with ESMTPSA id n3-20020a1c7203000000b003dc522dd25esm7784735wmc.30.2023.02.22.03.27.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 03:27:36 -0800 (PST)
Message-ID: <657dc629d58e38f649b028aba7d9a614356886c7.camel@linuxfoundation.org>
Subject: Re: [yocto] AlmaLinux 8.5 support in Langdale
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kris.Chaplin@amd.com, Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org, Steve Sakoman <steve@sakoman.com>
Date: Wed, 22 Feb 2023 11:27:35 +0000
In-Reply-To: <e103fffb-2ad0-76ee-9cc9-31da580d1873@amd.com>
References: <6f655eb6-f8f1-f8c8-9c8f-0c600e28f2f0@amd.com>
	 <CANNYZj8wxntD9XZxqrd5HYGkK5nKb=+VuqOUj1cGsUmE5ivWLQ@mail.gmail.com>
	 <e103fffb-2ad0-76ee-9cc9-31da580d1873@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Feb 2023 11:27:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59275

On Mon, 2023-02-20 at 13:09 +0000, Chaplin, Kris via
lists.yoctoproject.org wrote:
> Thanks Alex,
>=20
> > Note that the list of supported host distros is set only for the poky
> > reference distro with a weak assignment, and not for oe-core or yocto
> > as a whole. If you do your own tests, and they don't show issues, you
> > can mark any distro as compatible, or install buildtools tarball to
> > insulate your build from problematic host tools (such as native gcc
> > compiler).
> That's understood - thank you.=C2=A0 As there were some changes upstream,=
 I=20
> wanted to ensure that we have as much overlap as possible, so customers=
=20
> looking to integrate our meta layers together with others would have a=
=20
> tried and tested path.
> > AlmaLinux in particular is a spinoff of RHEL and thus extremely
> > conservative within the same major version.
>=20
> Yes - my assumption is that we should be ok with 8.x, but we always test=
=20
> against a specific version / versions and document these, to save any=20
> corner cases causing unexpected failures.
>=20
> Appreciate the help.

Just to loop back, we've updated all the branches to mention 8.7 now
and tweaked some of the other entries too (thanks Steve!).

Cheers,

Richard

