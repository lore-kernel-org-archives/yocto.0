Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F293EE49A4
	for <webhook@archiver.kernel.org>; Sun, 10 Sep 2023 20:18:52 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web11.43931.1694377125384472857
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Sep 2023 13:18:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=bvyCfSse;
 spf=pass (domain: gmail.com, ip: 209.85.160.181, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-4121788397fso22211901cf.0
        for <yocto@lists.yoctoproject.org>; Sun, 10 Sep 2023 13:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694377124; x=1694981924; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V6RXhqANmJ5U3muWwAfPO0vKfOxVkK3M6pKfx+4Eyjo=;
        b=bvyCfSsed8PivgjPEgOJ+0nJ/2D5tP61TS4KUu/di7v/x3kGWo+n5bd4fmj54lf+TC
         BOyrq/+dHFZkebAdCvlwS2fykArEAo6i4qWfqbqFJ48lJljAdxVwSXXgmwu2mdjyxZaK
         xeERLRwVFEmll0ivicj506KBJlOI8dbxJSzLobHnzKV822ygTgi+QMWSqZy9usUdSVh4
         j0bMhcHqg7RZpI48odcvG3bB3xyut2j1vhcnyLobwZO4dDnpL4toYnjDddRqYFyi8O90
         5jIZlKsvWVXGheg3+SV8Gz5yFCwDsGe9hD9ouKIVVbjYZNAKlGf6ney4NIcld1upAgS2
         VymA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694377124; x=1694981924;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V6RXhqANmJ5U3muWwAfPO0vKfOxVkK3M6pKfx+4Eyjo=;
        b=vRkuz3Fm0wzko6mlK6TKySlEITLwwzZsxwsRMsvn0PSdZkOZFvpRXmwPRVmv74i3DK
         8EZXZ5zIiHTsb+HMLaDjxKQ7g06kRXN4JqKndfhkqfelY8XgBvHEv2ieSrgaArYIanfj
         3Yv/jK2Pkt8M1E5XLEy+ya70skaRLh62UpbQr+trvspLcYf4MnwJlSiQ4+asmCJynrzy
         hsitWIS6kBYT4zgA7VUg/WeiHc7VPO2/iPiOsYIVfagCKT4liAxF3L8oyfPLkS0V1/Xq
         ltcxju/Igx0M7tbtGVy7TxPLjb+obRDE2tN++1p5HFCbc2MKKpbwRA9wSD/ue6c03a6R
         dZSg==
X-Gm-Message-State: AOJu0YzZVT6STVcz1bk6DWzncbts9pflzMhtBlVZ6BYX8t4sBipjay5I
	Kq6HzWzccGIG2ybOoAZel8s=
X-Google-Smtp-Source: AGHT+IEJoQQReqzpbQLRSS8jpWTT2AamPjgGysQ5B/RWis0wl78Pz13gxbQ8hxp9kVcXDwbOMFJRbg==
X-Received: by 2002:ac8:7d0d:0:b0:403:d440:2f99 with SMTP id g13-20020ac87d0d000000b00403d4402f99mr14390059qtb.27.1694377124437;
        Sun, 10 Sep 2023 13:18:44 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id e23-20020ac86717000000b004033c3948f9sm2144002qtp.42.2023.09.10.13.18.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Sep 2023 13:18:43 -0700 (PDT)
Date: Sun, 10 Sep 2023 16:18:41 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip] [PATCH] layer.conf: update LAYERSERIES_COMPAT
 for nanbield
Message-ID: <20230910201841.GA28051@localhost>
References: <20230910163415.3899620-1-martin.jansa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230910163415.3899620-1-martin.jansa@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 10 Sep 2023 20:18:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60958

On Sun 2023-09-10 @ 06:34:15 PM, Martin Jansa wrote:
> * oe-core switched to nanbield in:
>   https://git.openembedded.org/openembedded-core/commit/?id=f212cb12a0db9c9de5afd3cc89b1331d386e55f6
> 
> Signed-off-by: Martin Jansa <martin.jansa@gmail.com>
> ---
>  conf/layer.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to meta-rockchip master, thanks!
(I added a kernel-style "fixes" line to the commit message)

