Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97711EA4FB8
	for <webhook@archiver.kernel.org>; Mon, 23 Feb 2026 12:40:05 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.34133.1771850393345464443
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Feb 2026 04:39:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lMErg9o6;
 spf=pass (domain: gmail.com, ip: 209.85.160.177, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-50336cffef9so32335881cf.0
        for <yocto@lists.yoctoproject.org>; Mon, 23 Feb 2026 04:39:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771850392; cv=none;
        d=google.com; s=arc-20240605;
        b=H2SEOCFCNnnIPSGzlWUrot0y3R1VpRnzWbnVUVAmbUx70/m7qnSsWYxk3aT58WW2rV
         /441woq2e4Awn9h1v/IqsleiFe5Oq3qMnStSre6m3ChA7lNfSq3ec4Jq1q8ks8MA/+oY
         erykdJQ8cUYW6Db7v45tNydEF9ieCntk3QsNO2Z4TaPYmbUYYXifJ4qqHzevG5jhM1xK
         /cKqdyyDYvADTkQJAmk9SHXJkZGMR7A0BxJok1MSAcvuwcdnAqtcUgx4XXn3hDsbLjcw
         LCnunheh55wXBnB3/R/zj3O49bkj82aeostp/2WuMSzie7dqUQo5jS1Mk2/q57ZFyxBe
         Kxzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2I4F4xBlrTkl9jxEK3qHpAwng6100xtZaHOTdrhQRL8=;
        fh=Yp08uElwWuZv5aqPw0vUEzfH48XZ72m7m8WqcEerqqY=;
        b=QpG+xvzySR6mISDf7i/Kh8VS4u19rPEb1mE9s+5DGMgQYmvey5v4hM/V+pnxyJskzo
         u7WBOSaXlqgfKsGBlmzFxs0lAaAbYBQI4rqeqmLfdMnnOIe5Jx0L2K5rREGsiM1RrDJZ
         OdO0knbB91OlYHtOum3W1xRY3VA0eFlJb8hD4qoE1AYdzw6se/TC4y1cTaloKhYXKcah
         d0zdI+9i/cWY5FYkui8sEWaFe4fdnaQODpxWTkkAsWTxABB6T7bRiOuTI0bk+hNcFYdY
         tpbYM0Gs6Bzzs6XAbRi8I7YbIQudA7Px3LECG9qjvsTWV/S4XyVcucQHDF9aKkcduwAV
         WRPw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771850392; x=1772455192; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2I4F4xBlrTkl9jxEK3qHpAwng6100xtZaHOTdrhQRL8=;
        b=lMErg9o60fFtDCAGC6hJ4C2yWwO3IojvUADGzDuBPSpMRuhbCM1CjMb+dJkUrISOP/
         8Sc/B3VVEfRE7RZyq4l/f7bHHmfoX8SVYI8A0uIZu70OGbfFX65zIyTrbp6UoxeHxrtk
         5g/MY84dWkTKBn8j3FPu3NnUI7ucVZwTPtWVK48FpXO6xIYyNDOyNvrUE3glyRbLCPLb
         PcY07RKg21z4//xU9s7Awv1Y342P4VuOT00tjeax7giTg8vOoKknfm24scNaSQ3VDbvP
         jCEm3S4ll+iRTd7e65/3EBKE5nlsSO05aJu7BjKhSYQql2ZJGrPm1Zkv63jOgbdek7YH
         UVBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771850392; x=1772455192;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2I4F4xBlrTkl9jxEK3qHpAwng6100xtZaHOTdrhQRL8=;
        b=Q/+GytzvYe9arQKMqtviEICS7GlCZFY0QHhaeuLAOCs6qL4k93NOZE/XTWKQ1d8iZ2
         3QSSXvR+NjY6S7PHKAI9dF841yKhqh+kWw8RaEDjIawdlrTIYdjfMbBye5sZrqeUcyAY
         i4swW4qxihwhZZdFcE3UtCtEDNk2cP4G6brsM0J6j6hyHVWK42xq7r9KS/jgWtr1D6Hp
         lgTUUn3QqLifqbEPejvpcJTWCJQFSkUJDK0hb5lQFG8rTFXQKz++xkFP/SIJbH1AJ9IP
         zzyN/QwwlKWSr7frAYPPzXTLwaBLwiLpGLrm72ofJFe4XdGpmNtx7WnGlnIlH+5EAp6c
         r8YA==
X-Gm-Message-State: AOJu0YxKr+pod/bHUUoc+GPBTJ1i6sVDhrMv9dSeaMn+RlwoKV1UtRbw
	WixzvbwRsGHfb5ya19lsGF+Drl28TV0oBjmHc4ce96C7AbURwGv0U9vq9FwOMo/IizSZxhnB3vj
	/QQ9dSkQc4lawDsCm/m/+c/iaFcXIItQ=
X-Gm-Gg: AZuq6aIZzCcXt6CCP3UNOvTxnPGxH7by1HKFpcmlcp6AXWBUqVcGfbmPlPTBGs+cR10
	CKoTFu8jDh8/rR68A68MMiOOqZy3yuNK/2axD8AglN/E6Bv/rW8zzGHydU6CeMpdsMPwtZq8v+E
	yC89UdpYKq4rCmIMSaE92OTe2izImbfJonV5Mqfi0ES8em5t4rmZK4a5um/8yCRgB9udPyyr0kK
	E0Jx0ssnI4UNLnwljTxxtGhOogq6Clla1bskXrnXKMJwmv/OPZ9mcRlrgpbigcCY5plyLNpN+kM
	+rqFpxcEZOxBm2lNzA5xZUDDdUdvYIuPvMqGqXUo4g==
X-Received: by 2002:a05:622a:14ce:b0:501:3b29:dc25 with SMTP id
 d75a77b69052e-5070bcdb4a7mr114822941cf.60.1771850392282; Mon, 23 Feb 2026
 04:39:52 -0800 (PST)
MIME-Version: 1.0
References: <8286fd3b-1b05-47bf-95e4-0b9f0f5411cb@app.fastmail.com>
In-Reply-To: <8286fd3b-1b05-47bf-95e4-0b9f0f5411cb@app.fastmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 23 Feb 2026 13:39:41 +0100
X-Gm-Features: AaiRm52lihzMb8MPzIL82JpOZFcPXVI6g4hxaKwhkQeFDGlKT9Ty2YZhFfyBYnA
Message-ID: <CANNYZj9ZpAVVKKu_QvhHq=W-DVnzZ067jHW64zS2rRBCwm+vjw@mail.gmail.com>
Subject: Re: [Openembedded-architecture] RFQ: Yocto Project Reference Containers
To: paul@pbarker.dev
Cc: yocto@lists.yoctoproject.org, 
	openembedded-architecture@lists.openembedded.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Feb 2026 12:40:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66270

On Mon, 23 Feb 2026 at 13:10, Paul Barker via lists.openembedded.org
<paul=pbarker.dev@lists.openembedded.org> wrote:
> New recipes must be defined for an initial set of reference container images, using the `image-oci` bbclass in meta-virtualization. The initial set should focus on software which is commonly deployed via containers, such as:
>
> A minimal image (based on core-image-minimal)
> A Python 3 base image
> A sample web application written in Python
> A PostgreSQL database server
> A multi-service container using systemd to manage services
>
> The above list is not intended to be prescriptive - we appreciate input on appropriate reference container images. The final list of approximately 3-5 reference container images will be agreed with the Yocto Project TSC.

An image containing bitbake-setup and everything else (e.g.
buildtools-extended) needed to set up and run yocto builds?

Alex

