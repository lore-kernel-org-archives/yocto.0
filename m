Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7937C47422
	for <webhook@archiver.kernel.org>; Thu, 18 Jan 2024 22:53:02 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web11.7832.1705618375133123594
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Jan 2024 14:52:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WSn+9w2z;
 spf=pass (domain: gmail.com, ip: 209.85.222.174, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-7831e87ba13so15812585a.0
        for <yocto@lists.yoctoproject.org>; Thu, 18 Jan 2024 14:52:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705618373; x=1706223173; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W7pL6YZI/1WA0w6VKtorWgrjK2IxlubOwIWmtpmlnug=;
        b=WSn+9w2zts4UWh+JMMsINh7B+IVH1pFZKcod78LxG166n8DRCOk0ZbFqUVulPwaKK8
         dX+pS0HMs7w7McKD4Ls3O7H08wvlRjTAK6Y++Ozvc3bEOFY+LnwkwjAoBJI98IMe/qyH
         R8lly9jSKipxTL9MMUej/l1exT8ccBgc/d1E7ykr362RaJsxGyr74iPLnlByn8TVDnyt
         dLjeB6d6LqhzIlK1E77eVB509z4fuutE89pGg91nSz6Dh6tnzIIfDttAFwxRHB58kx4J
         tHs+ffNVnA1arkxuhKoFfU07Npst5mpjTfLUelJa/8P4Pb+od0MCTZeVg6+mm7OA4Uyn
         s7Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705618373; x=1706223173;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W7pL6YZI/1WA0w6VKtorWgrjK2IxlubOwIWmtpmlnug=;
        b=Ya40rncuAflTT5iQEsgIOr5aCdyxgo1QjH4fWpPBK2J+vXFi6eZ5jsmywzXY9aGOOg
         S4Jswe8LgVLhNu0l3osyw93dsAtS4OjCiJwsNArEoHtmOASIPw/G0i01j//aCTJCO+VD
         eTit7Np6VAqqVgBYEq4hKkPVkCDp+sWeL2tJ4RcEmhMtNoydg+yIbTCK1WVHeFvhpHTC
         TT12+LnOBdJ0M1BdWKE5tlmSrhrTzD1tHneLKDwioIEqBRGGhV0LwPC7CtTTDB586Pi/
         XQwJ6db84pOB7ktEVoq2iYhCE+inlpTK64C9UCQnhOXAAQQj6alXG4Dno1Ovv+pB78ec
         YR9A==
X-Gm-Message-State: AOJu0YxhcsVbOVoo82MmA8i0e5FccwViNgSw19hNjhJhG3U+Sep2jZ0n
	EpUNOQfg7pNhDCxzoH4ZD2pWUrsCCpwrccK9kJVIJWuE84PrTuDU3PMJ8Usc
X-Google-Smtp-Source: AGHT+IHmuQDdaOw4527vpkxZX/ufDWCJ7yESYqQQpRMpwi/cnJtvmG9FdOlUStabXTvQ+LkVAFgzmw==
X-Received: by 2002:a05:620a:1378:b0:783:22f5:f4af with SMTP id d24-20020a05620a137800b0078322f5f4afmr356628qkl.157.1705618373584;
        Thu, 18 Jan 2024 14:52:53 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id z25-20020a05620a261900b00781ae860c31sm5612176qko.70.2024.01.18.14.52.52
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jan 2024 14:52:52 -0800 (PST)
Date: Thu, 18 Jan 2024 17:52:51 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] roc-rk3308-cc: add
Message-ID: <20240118225251.GC15819@localhost>
References: <17AB0DC892520A46.13112@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <17AB0DC892520A46.13112@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Jan 2024 22:53:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62192

On Wed 2024-01-17 @ 01:13:53 AM, Trevor Woerner via lists.yoctoproject.org wrote:
> The T-Firefly ROC-RK3308-CC is a miniature and compact main board which is
> equipped with a cost-effective RK3308 Core Processor and a high-performance
> CODEC.
> 
> Features:
> - Rockchip RK3308, 64-bit, quad-core, Arm Cortex-A35 processor @ 1.3GHz
> - 100M ethernet
> - PoE
> - USB 2.0 and Type-C (OTG and power)
> - 802.11 b/g/n WiFi and Bluetooth 4.2
> 
> https://en.t-firefly.com/product/rocrk3308cc
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  README                                      | 24 +++++++++++----------
>  conf/machine/roc-rk3308-cc.conf             | 12 +++++++++++
>  recipes-bsp/u-boot/u-boot%.bbappend         |  2 +-
>  recipes-kernel/linux/linux-yocto_%.bbappend |  1 +
>  4 files changed, 27 insertions(+), 12 deletions(-)
>  create mode 100644 conf/machine/roc-rk3308-cc.conf

Applied to meta-rockchip, master branch.

