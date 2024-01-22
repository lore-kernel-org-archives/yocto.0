Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AF2EC47DAF
	for <webhook@archiver.kernel.org>; Mon, 22 Jan 2024 19:44:03 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web11.2172.1705952633143849848
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jan 2024 11:43:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZRw/CU22;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-680b1335af6so39471206d6.1
        for <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 11:43:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705952631; x=1706557431; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=j4YqA1awyCZzbrhA3Isuv3W4ZsPmgw68CzvDM8oQWEY=;
        b=ZRw/CU22nDwOvPFwBxfhcWy8wst1+1iSHfKCgzPwmcBf3InVPbfA4AWwR1B8aBfx7C
         oc3pVQHyZbfE2Jfn+KoIf0g8i1X+oAKpliVGW+Z6OuwPPq1hrOh0fibUJBTiINsgnVV5
         9slXXXQLXtBITa5hivL+KRUNM2tR81SXPfRnr5RmFqM2w6fLChUQpXkrdqUNBh8L9W03
         1f3/LfKMvQPaPDzbrbtan5Ns/tIdW5bkryI3sbpJP6CBvLSi1K0HG2T8blGcJS1cZLA2
         PXclzAI0TE+jldozaSewoSjnv1NySYwFG4TWOCZ6cdDi407uAXcFHJO0/JAgX+pKiT4m
         iGHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705952631; x=1706557431;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j4YqA1awyCZzbrhA3Isuv3W4ZsPmgw68CzvDM8oQWEY=;
        b=t9J5Fnfty73LPMVC5Y6odnOJtwus2IBlkZeC9Kl3Emwy9LB1klVWc/RqbDYojN8G8T
         FkzEOyuzNhKAVRgfREWMhzdGg192iq7Tw9XKKwdMi4ZKUSiY9AZRj8FsuwReuq5Tlmyu
         ijf/kFcwyo+hv79etKvrBi7n/deYf4fqlxdQeQGAwN+JlePxjV0vk6qiUImwxC6N50ko
         8khKwyR/uAAMzV26mt0D6ObCTt4OBchSr2a8S8rS5HpWzLe1rhZyYpAi7KY58fEYLhUL
         aKbLTxF9onhxfsJG1ZDpQ0aMAYtSdelTPIsGD3gV1CxSYdC/IJsct4wB7KSPG/UNZOme
         Igmg==
X-Gm-Message-State: AOJu0Yw3WjAAIKIFXI4cIp8K2DDcQoWNcp1NWgpnhBC9M0UTuJeE4Gtc
	VU9960UhPK7QI4srHcmlKNBFC9jDQqRXvBNV3AB8nxJnWLCc+nShY9HH1zqS
X-Google-Smtp-Source: AGHT+IGgyZJqXQ4QgovPocDl6KYbN/BaBpkxp2wmYR6U2xY3zRvjbtaL4JonEbIR2AV59BKEYVQ5pw==
X-Received: by 2002:a05:6214:242a:b0:686:9d71:c808 with SMTP id gy10-20020a056214242a00b006869d71c808mr844198qvb.17.1705952631452;
        Mon, 22 Jan 2024 11:43:51 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id lv4-20020a056214578400b00681ccb63caesm2671850qvb.8.2024.01.22.11.43.50
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 11:43:50 -0800 (PST)
Date: Mon, 22 Jan 2024 14:43:48 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto][meta-rockchip][PATCH] wic: implement wic list and tweak
 description (forward)
Message-ID: <20240122194348.GB14538@localhost>
References: <20240118084203.3045582-1-git@andred.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240118084203.3045582-1-git@andred.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 19:44:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62225

(forwarding to the new mailing list)

On Thu 2024-01-18 @ 08:42:03 AM, André Draszik wrote:
> This now produces sensible output in
>     wic list images
>     wic list rockchip help
> 
> Signed-off-by: André Draszik <git@andred.net>
> ---
>  wic/rockchip.wks | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/wic/rockchip.wks b/wic/rockchip.wks
> index 1cc30aed5ec7..fac0b8f70112 100644
> --- a/wic/rockchip.wks
> +++ b/wic/rockchip.wks
> @@ -2,15 +2,17 @@
>  # Copyright (C) 2021 Trevor Woerner
>  # Released under the MIT license (see COPYING.MIT for the terms)
>  #
> +# short-description: Create a disk image suitable for booting Rockchip from SD-card
> +# long-description: Creates a disk image partitioned using GPT, suitable for Rockchip
>  # Disk layout
>  # Note that the reference documentation refers to 512 byte disk sectors, but
> -# wic uses 1KB blocks
> +# wic uses 1KB blocks. The following table uses 512 byte sectors:
>  #
>  #   Partition   Start Sector    Number of Sectors
> -#   loader1     64              8000
> +#   loader1     64              8000        (idbloader / U-Boot SPL)
>  #   reserved1   8064            128
>  #   reserved2   8192            8192
> -#   loader2     16384           8192
> +#   loader2     16384           8192        (U-Boot proper)
>  #   atf         24576           8192
>  #   boot        32768           229376
>  #   root        262144          -           (suggested)
> -- 
> 2.43.0
> 

