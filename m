Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DACC1CE7A94
	for <webhook@archiver.kernel.org>; Mon, 25 Sep 2023 14:22:32 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web10.62096.1695651742614759104
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Sep 2023 07:22:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mNwWGBUQ;
 spf=pass (domain: gmail.com, ip: 209.85.222.181, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-77411614b57so399178785a.0
        for <yocto@lists.yoctoproject.org>; Mon, 25 Sep 2023 07:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695651741; x=1696256541; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tjGdFe9Mdok0w81tWuNCOprfqaAYPy2J4xkZ4tv5VrY=;
        b=mNwWGBUQvDLJSVXRLWiCoMxE2kKeOWFq2z4IgpeYm4hx8Ug4MQrTX7hnyFhPQSAfdE
         s+9g9kfeQ22d0GD+islhWq6oRdsA9AI3Eyjp3hZVQdvOf2PHDYVEx+fSWIewnVzOPn1L
         BZ63D60srQeKtPjirDMpX64bJrcXGzZ+24dsV2ODBxpo5rXJ+yZD5gbJ/2fTOycZj+zK
         N32M87i1cdc793C/NTgkxdrIWXloIJ5acPADhS+ixuXJdjZ+SabZJsyWpRcd+c8fZPwT
         NPctWINgRce3oyZRyPISj0XClXTt+2s5b+LHn7595xGomCzJHCxqeQBJcPOAkqQZECPT
         tSCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695651741; x=1696256541;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tjGdFe9Mdok0w81tWuNCOprfqaAYPy2J4xkZ4tv5VrY=;
        b=h2KPbrs77jRxcQS4kIA3EhEmJn+9fVeZK/seeNnLOYZFKLNVE3YD0HQvJwn87c4bvb
         XpxGJ8tJ7J5yDcyvx+wftmJe1/fxSTgsotst2FIGFuU+K2IE2Gd9Tm9oBLJ9e0lOT+VJ
         gBK5t09eXYVEpklbu1Fi+XLupMcBOgioYQkw6kYQbJqqchlrGcXr42Acb68y52NOi/D4
         vvk8tB/KjEtI7ZX8sSPK8SxaKD4vcIWHieSnm4gkZuZNID/mj0sTrFmF/QHsLrhTfE/j
         U81d4CEZbOeOL2dHkbgRQXEj/ML+o+jbtZZEaauMqcifYaT1BjG3igdarKplJtOHcCKs
         5scw==
X-Gm-Message-State: AOJu0YzvVha7Rl2htcjZbKp//Lz5DlswLID/zuavx6/KPpQ8C9FclbRe
	eJ1LU0lROz4w7bq+U0bjjfI=
X-Google-Smtp-Source: AGHT+IHZUfDh9Gnw3JZLunSVLG5eMY2SAG6C3LpI/O0O5pvWbORS5DwtsjA9FXgKP0OEDoiwkxkUkQ==
X-Received: by 2002:a0c:f485:0:b0:656:4857:8fd6 with SMTP id i5-20020a0cf485000000b0065648578fd6mr7458393qvm.62.1695651741320;
        Mon, 25 Sep 2023 07:22:21 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id s11-20020ae9f70b000000b0077263636a95sm3843596qkg.93.2023.09.25.07.22.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 07:22:20 -0700 (PDT)
Date: Mon, 25 Sep 2023 10:22:18 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Anthony Davies <anthony.t.davies@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH v2] rock5b: add
Message-ID: <20230925142218.GA37849@localhost>
References: <20230922212623.8813-1-twoerner@gmail.com>
 <21416.1695600641562973144@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <21416.1695600641562973144@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Sep 2023 14:22:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61100

Hi Anthony,

On Sun 2023-09-24 @ 05:10:41 PM, Anthony Davies wrote:
> Thanks for your work Trevor, I have been waiting for this for a while.
> 
> I am new around here so forgive me if I am being impertinent but my only
> feedback would be to keep the naming of the machines consistent with the dtb
> and uboot defconfig? ie, rock-5b rather then rock5b?

In meta-rockchip we try to follow the naming that the manufacturer gives to
the product. Device-tree names come and go, get munged together, and split
apart. While the kernel might call it rock-5b today, some new board might come
along that causes a refactorisation leading to a whole bunch of renaming.

That said the manufacturer isn't 100% clear on the naming of this product. One
of the original post introducing the product,
https://forum.radxa.com/t/introduce-rock-5-model-b-arm-desktop-level-sbc/8361
shows it written both "Rock5B" and "Rock 5B".

From the manufacturer's own website, they seem to attach the "5" to the "Rock"
(without a space) when they're just saying "Rock5", but add a space when
they're distinguishing between the "A" and "B" variants:
https://wiki.radxa.com/Rock5
https://wiki.radxa.com/Rock5/5b

So the naming could go either way. Given that there are more instances of
"Rock 5B" we could go with what you suggest.

Thanks!

