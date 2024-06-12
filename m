Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B069C27C53
	for <webhook@archiver.kernel.org>; Wed, 12 Jun 2024 15:30:48 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web11.1474.1718206242634190736
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jun 2024 08:30:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=mI1wQN21;
 spf=pass (domain: konsulko.com, ip: 209.85.160.177, mailfrom: scott.murray@konsulko.com)
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-441567d352bso10207851cf.1
        for <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 08:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1718206241; x=1718811041; darn=lists.yoctoproject.org;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JeGUWkV8kmfS/yeWZYhFVp+NQ+uWaGhwDFcjc5Z/EUY=;
        b=mI1wQN21JtWIYrm24sjqklXKcG99m4xInbLrNQp44eWmmq07Qu8/ZTglgWeaUH/EEy
         x8J5PYgdL5OKW6fBwnQHctndttzSC7Jh77Xy/YWp7dC44dY30+w91wTVqL6wyQScScuj
         dSrO3FoLErhAUDUeJwW8GUDOAXv3WapB11Zl0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718206241; x=1718811041;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JeGUWkV8kmfS/yeWZYhFVp+NQ+uWaGhwDFcjc5Z/EUY=;
        b=RoWb1wNtCd+tSDpomQyfQwzfFcD1jIdg1lPku4UydAHt4UkVEkzFUm1QmUYx37d7rD
         BbwAUyxsRGb5G6iLSLRsJV6SgHaYngYTNL0P+9+JDvgSx3wP0ftVf7Z0evhIttwJVoyp
         niVdM1ySErLcPwrD9bB8FJ33rRXOUbKnC8jOnC8l/ZfxJ74alaDX+iD3XgSUOHvcjUu/
         S58YwePQAK6F/PePJ74Muf0i7HhUFHh/Dj3izkOtZF30PRfa+AaKiH1dXXNS2NsAMfOn
         AvQdPTnkHFVYUhn8DqEuBCgl62LZmGT4pM2bazUsVwVwVCeQFEF3w24rzD61mF48fPf3
         WQpQ==
X-Gm-Message-State: AOJu0YzsCaxiDbIRDbc3MicboMU43UdaYt4/zXF9xWbArGfTthWCxMkI
	fS5/jFM9+T0PdCB1m8AyHItiq197k91AXWbTsrXSazCiYm3u1jqG+XbT2UENYZ6KsdDuek3mI0+
	l
X-Google-Smtp-Source: AGHT+IERrFF+dsjIG4oOYaktU4idR/6fS0cNw/j4cEp9vCht/aPZxdRO3N1qoBYDc6F3m60OWn97oQ==
X-Received: by 2002:a05:622a:19a3:b0:441:1536:2fb2 with SMTP id d75a77b69052e-4415abad2c9mr29166961cf.5.1718206240814;
        Wed, 12 Jun 2024 08:30:40 -0700 (PDT)
Received: from godzilla (107-179-213-3.cpe.teksavvy.com. [107.179.213.3])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4405cbd8f05sm38778061cf.50.2024.06.12.08.30.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 08:30:40 -0700 (PDT)
Date: Wed, 12 Jun 2024 11:30:39 -0400 (EDT)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org, steve@sakoman.com
Subject: Re: [yocto] [yocto-autobuilder-helper] config-json: use master branch
 for meta-agl
In-Reply-To: <e9bb457701c3b1878bf236e2b13cf4d17fd5c9c8.1718202342.git.steve@sakoman.com>
Message-ID: <c304afdf-e085-d81d-c317-4d89d5823571@konsulko.com>
References: <cover.1718202342.git.steve@sakoman.com> <e9bb457701c3b1878bf236e2b13cf4d17fd5c9c8.1718202342.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 15:30:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63333

On Wed, 12 Jun 2024, Steve Sakoman via lists.yoctoproject.org wrote:

> scarthgap is no longer supported on next branch
>
> Signed-off-by: Steve Sakoman <steve@sakoman.com>
> ---
>  config.json | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/config.json b/config.json
> index fbf2e6c..2089fa9 100644
> --- a/config.json
> +++ b/config.json
> @@ -1853,7 +1853,7 @@
>          },
>          "meta-agl": {
>              "url" : "https://git.automotivelinux.org/AGL/meta-agl",
> -            "branch" : "next",
> +            "branch" : "master",
>              "revision" : "HEAD",
>              "no-layer-add" : true
>          },

Is this patch missing a "[scarthgap]"?  I ask because it makes sense for
the yocto-autobuilder-helper scarthgap branch, but master AB will need to
keep using meta-agl's next branch.

Thanks,

Scott


