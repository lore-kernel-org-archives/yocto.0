Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44D3BC32793
	for <webhook@archiver.kernel.org>; Wed, 18 Jan 2023 14:50:24 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.17230.1674053420056172514
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Jan 2023 06:50:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=YJWzcQxD;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id h16so34177044wrz.12
        for <yocto@lists.yoctoproject.org>; Wed, 18 Jan 2023 06:50:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AaBLSMb/uz974QxsOGQhY6vxHV7m92c8zC+5dcwi1oU=;
        b=YJWzcQxDbvwDT8878PSZoozas8Kj+1184bycCfiScdoY+qmd+8tS0uUStoBJ6T9QUp
         MzF06vsUwkGb6vZcGSDbe0PmZs/z6Yrjow1UcgUJNBpNENDazLAZ0Ah6InLBpqZE5IFO
         XKqFEJz8IjTbfTftl3arOdowNS7hBY2r+4fzQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AaBLSMb/uz974QxsOGQhY6vxHV7m92c8zC+5dcwi1oU=;
        b=bZnZeppF6FV7E9rQT+y56qmjpw/Cxkh7+Xu82Y9ENB13if5aPKlqRxxhMuphkcYE+F
         yhzYyb9Xfkft1VRo9lYwEMvTuTy1dP+YhZAwAgol07tB9xSzomP7COZvCgczwD6BhG9O
         wRap7RPp8SgTakl+BFwA7YMrHK0YYD+BMaQeknEa0gKm3jZtuBUA+Ne3g0ifFbr2PV7i
         01etR1Ln9eFkKVGlWMS/mbpPcIAUE9T19ULtFM1PzHLp8km5TTjRiKrqnb1k+6JymQG4
         jTP6IgGFhgbqa2r/FteCoRg3mPYfFAht5zHmFmqHsgAXmrJ+ySAKERp1peAoLPRifFPU
         YDsQ==
X-Gm-Message-State: AFqh2krUjL4317i0gaEX3ihr4ykEv6y+vF/eQY+A21OXUvPqBsnYLirj
	/GAfaaynKShltogppAcdCUpX5g==
X-Google-Smtp-Source: AMrXdXvgE/htyTIlCqHPSGED5XsgMhUjfy/5TdUv8u0SAab60no2YVmjSKu5roMvWfON5XEGjXTBhg==
X-Received: by 2002:adf:e645:0:b0:242:bef:80a1 with SMTP id b5-20020adfe645000000b002420bef80a1mr13760516wrn.2.1674053418386;
        Wed, 18 Jan 2023 06:50:18 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:54cb:642:5dda:e3f7? ([2001:8b0:aba:5f3c:54cb:642:5dda:e3f7])
        by smtp.gmail.com with ESMTPSA id by12-20020a056000098c00b002bdd8f12effsm16128727wrb.30.2023.01.18.06.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 06:50:18 -0800 (PST)
Message-ID: <fa6c1e3f95c9f60e0303ee3914246fe8173d638b.camel@linuxfoundation.org>
Subject: Re: [yocto] [meta-gplv2][PATCH] readline: add config file for
 pkgconfig
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Yu, Mingli" <mingli.yu@eng.windriver.com>, yocto@lists.yoctoproject.org
Date: Wed, 18 Jan 2023 14:50:17 +0000
In-Reply-To: <a9a02594-cf52-8c2f-758a-4f0cf2bb3ec1@windriver.com>
References: <16E4FF25202E130D.32496@lists.yoctoproject.org>
	 <a9a02594-cf52-8c2f-758a-4f0cf2bb3ec1@windriver.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Jan 2023 14:50:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59017

On Wed, 2023-01-18 at 16:43 +0800, Yu, Mingli wrote:
> Ping.
>=20
> Thanks,
>=20

It is no longer maintained.

https://git.yoctoproject.org/meta-gplv2/commit/?id=3D43bf0e8d5985945d19d01f=
94bfbbda420c4435f3

Cheers,

Richard

