Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDBEC47DB3
	for <webhook@archiver.kernel.org>; Tue, 30 Jan 2024 02:46:13 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
 by mx.groups.io with SMTP id smtpd.web11.9836.1706582771087588917
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Jan 2024 18:46:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YOXpI0s2;
 spf=pass (domain: gmail.com, ip: 209.85.160.174, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-429d7896d35so35715441cf.3
        for <yocto@lists.yoctoproject.org>; Mon, 29 Jan 2024 18:46:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706582769; x=1707187569; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gJKJo7mmGkPi+j4JUcaKCeBZlhbGqooJloWG6H2/OVw=;
        b=YOXpI0s2Fq+LjSYO+7PItFOvR9bzCVYKXhxr0zUnTTinPG/0d7pieJceDYbi4DN/6z
         +ak970bIcJ8YSgarG7apMI8pwH3AARrfdwj4vhkMq0Jg9zNn23V+xxoZUP395Y4PYIOA
         KW6V26haFRA41f8EY7h/fln60nd0GMbUd3X78+3zW50cmD9D20r9h86+84MjoKJHdH5y
         s++YXPA4CjueycWJ/TzcuS46yqAjNHieXsOpFD8B8kTuj8wE5BVQf5U4txwEo1n/y2VA
         eSs+DMoT16WTPfI5ZoofSS/wgZvFWLKUt+Cg0oX680TpmC+HV/LFvMmnQ+wdZ3XCAyUC
         SzOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706582769; x=1707187569;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gJKJo7mmGkPi+j4JUcaKCeBZlhbGqooJloWG6H2/OVw=;
        b=SKD+xQAi2vAEVYwHaIHZ09NJ2rpYjGbKq3cI4mtYm0jjCBgJb9045POFqwq1yZQj0z
         xk/MHvwC960WIuwV3+M6RDsi2vf2A3bnVr9JjIpFA3VwNneBWLMI643vxXmrbXxFHfxd
         E/6kVIk2mdzvABSmhyKjLMNBgE0zXJ74B0kW4V0oCijuHZX8ijk+/jM7IXvIU7WYmwWz
         Z8WOLVf+xb8Ie/VBAW6HcrJSk9YYZRuXmdyF33AQER37YEDzqW4dcj+dS9ej1QZj8X3b
         EhWpv8zM4+moZxhHWz5NF35RIbEUuU9skNLpK7paYaME43JVzOssWQe2JTB2IEUjv8Iv
         dw0w==
X-Gm-Message-State: AOJu0YzGAuKlYozIVWtBh9ghkibQqqd95edVFrHVjeiPx+d0SW6NuKVZ
	LtkmSmk+xXBQ54uout1nUHBIR0gtttKWmu5vuhjF6RUL3WjFbycUDYCfk0gG
X-Google-Smtp-Source: AGHT+IEPkfK3Q0VU4aAc3nN0MJM59UFdzj15bKgGpLuoNI7SedHBixLTqzh4VWLB0BPI0TOaN20sQw==
X-Received: by 2002:a05:622a:14c8:b0:42a:60d0:d4f2 with SMTP id u8-20020a05622a14c800b0042a60d0d4f2mr6982379qtx.114.1706582768506;
        Mon, 29 Jan 2024 18:46:08 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id hf21-20020a05622a609500b0042a233d21c2sm4106020qtb.80.2024.01.29.18.46.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 18:46:07 -0800 (PST)
Date: Mon, 29 Jan 2024 21:46:05 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH 1/2] allow user-provided WKS_FILE
Message-ID: <20240130024605.GA15911@localhost>
References: <17AEAD3850A85E53.21687@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <17AEAD3850A85E53.21687@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 02:46:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62327

On Sun 2024-01-28 @ 08:29:19 PM, Trevor Woerner via lists.yoctoproject.org wrote:
> Allow the user to provide their own WKS_FILE in situations where they want a
> different layout (e.g. to support A/B updates).
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  conf/machine/include/rockchip-wic.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to meta-rockchip, master branch.

