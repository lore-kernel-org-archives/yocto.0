Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50226C4332F
	for <webhook@archiver.kernel.org>; Mon, 30 Oct 2023 13:41:12 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web10.149131.1698673268345534818
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Oct 2023 06:41:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fwTJOA1d;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-77891c236fcso351983885a.3
        for <yocto@lists.yoctoproject.org>; Mon, 30 Oct 2023 06:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698673266; x=1699278066; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yh46KbXGdhFKN/EXrlm8s5nJBhCrvlvqrc7YmBQKWBs=;
        b=fwTJOA1d5E9ptpu3wzoJKl+51A8wVfidXyg6XMKFwI6EM6ffWMBubW40v5PtWN3C2s
         oVDH+QFIJf9OgYhJrPBO0+ae+HnEMkwPJaKCHOpTi1LwPonWUWIeob4LwKDn6DyPSUSk
         n6l2uAga/iDZxXqNrtGbvgXUBcVX7qUlzsJSoaGGEgQXm82B5GyRR3FCWYdAxR7Ym8e0
         xc3VuiXS9L4l190Xe9GmU6LJOnmUOqzEC7Llf7P/QcxGn7eU2JsLVpCTmwLeZUawNWL7
         xrJlKtZZglzxq/y1GwW8bDOKtLsuU8OLPFOxbfxkmAnr9oncHqOhovsHhfO8Od1qIlr7
         F98Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698673266; x=1699278066;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yh46KbXGdhFKN/EXrlm8s5nJBhCrvlvqrc7YmBQKWBs=;
        b=rDwqhqcG55U/JJyik4W55b36Kojl9JwiJQXSYjDkbSom+936lpqYj2AxUKYKf5pv7Y
         AHD2DIy7AyEerXfJIYKdzxwKhuICLovxmTFbmWo09Nf9r5vrwA7cd1dSs+AnzmOw/xz9
         hUsMWcmSsAXrt4F7wRqyzHbYjwAAvE6KAov8dpyxaPjV8Ka7Zm2q1znChiL/0+xShlGV
         STAen4nqcj0Cq6X3kAd7uRATqVGI4B9vtPJNAPWalChXfC3gQJ+sRIw5Kc2yu/Sbfwe1
         j7g6axSNLzFmNal5Uhy+YeRfx8YerwLfTpZOVg9AXu5zrKw35m0LWMkTpiP3KrnVynci
         oDew==
X-Gm-Message-State: AOJu0YxaqTLxSyiE+ZBJ0a8Zs4lW2qLjiyitnJ8e5kyHB7dnmFm3dFGV
	IEtJVHw+JSEmN3RYdeQgpiTZM8FfCgY=
X-Google-Smtp-Source: AGHT+IGBckYsRG4xkw6ZiyZiKLt84RfVLwjjjdDVVBOR3wdB7xMUv71RG7s9s/Mlnh9tOt9augkl9Q==
X-Received: by 2002:a05:620a:1a26:b0:76f:1817:942b with SMTP id bk38-20020a05620a1a2600b0076f1817942bmr11027533qkb.28.1698673266188;
        Mon, 30 Oct 2023 06:41:06 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id q7-20020ae9e407000000b007759a81d88esm3300429qkc.50.2023.10.30.06.41.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 06:41:05 -0700 (PDT)
Date: Mon, 30 Oct 2023 09:41:03 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] nanopi-m4b: add
Message-ID: <20231030134103.GA24789@localhost>
References: <178A7071DAF57DDD.9230@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <178A7071DAF57DDD.9230@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Oct 2023 13:41:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61517

On Mon 2023-10-02 @ 08:10:38 PM, Trevor Woerner via lists.yoctoproject.org wrote:
> NanoPi M4B is a RK3399-based (dual-core A72, quad-core A53 with NEON) board
> in the same form factor as the RPi B3+ (including compatible connectors) with
> onboard 2.4/5.0 dual-band WiFi + Bluetooth 5.0 with USB type-C power from
> FriendlyElec.
> 
> https://www.friendlyelec.com/index.php?route=product/product&product_id=275
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  README                                      |  1 +
>  conf/machine/nanopi-m4b.conf                | 11 +++++++++++
>  recipes-kernel/linux/linux-yocto_%.bbappend |  1 +
>  3 files changed, 13 insertions(+)
>  create mode 100644 conf/machine/nanopi-m4b.conf

Added to meta-rockchip, master branch.

