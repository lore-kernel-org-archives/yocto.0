Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C82AC433F5
	for <webhook@archiver.kernel.org>; Tue,  7 Dec 2021 14:35:27 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web08.67745.1638887726362238725
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Dec 2021 06:35:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=TmHtZFk2;
 spf=pass (domain: gmail.com, ip: 209.85.160.170,
 mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f170.google.com with SMTP id l8so14415526qtk.6
        for <yocto@lists.yoctoproject.org>;
 Tue, 07 Dec 2021 06:35:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qZG3KrHzs63VAqLuRehH1fdv6dRsdiwmyj4gQC5ND/U=;
        b=TmHtZFk2DL2w1Nx5bA5SEemU6n0Lt93wBCzVRq+5PlayUxcd5CZ6bD5ZnvaC7+8+iP
         0kvbuDNAzqtG8YYwiHd8iyIomGtmeWUgnzJgckl/C40KRgFquYrlWI+aQ+uC5XaP+qXx
         ufu7xXcB9iXFcOMoCvMF5KMTXKb/nnu8FL70IPL6h7ifxtSg+uuInQbsa31ca2skYHGw
         s0NOgH7l+5L8WLQJJTyan4awHrR1ap95VhYMG/D0FyI61RSbV5E29JTjPlKn0RXe+fGU
         Ep4htcYqU/4qd2B6ZZBlykZ/KWclUH8tVaC0B+JqEh/79FMc190EitYM+t4kxM03Ld+N
         0Opw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qZG3KrHzs63VAqLuRehH1fdv6dRsdiwmyj4gQC5ND/U=;
        b=AGJWbngxiQKvP/XU52FelZIFW7RU9UN2GiP/M+3cN3/OjiT4OR/S3tgkWwq9ZF2RII
         uKeHGOXOO+0h/nKXp6eS+ctmEJS+W9kE4mxzOJSEjdXE+201WS89/VB8kWLHDF6Shs5R
         0rTsZ8xxoHHr/UwxW+z9pWAgRsh3LP8Rue+JLDeZCDw7VL3ggU8dr8guIHfawe9l21cI
         Y5KbAtpwnA8GC/g14o+n6j9U1OvZM8gkt2zxW1OK6ERhuFl6VABYdFNljMTf/Sen8gGl
         0Fv3gNCwmE+unsEgCwnOqz31asukb/IHBqpUFlR0eva5roamrK75gtcY7ePn/8CWc9xb
         v4tg==
X-Gm-Message-State: AOAM533QFC2VjrJuoIV6v+b4DCeL7mInOa+TbYzbprnHjzrZfBKuft7w
	fC832NU8iV1/yvlrPVy/cng=
X-Google-Smtp-Source: 
 ABdhPJw1nrjHMh93hnOvvsZon8EvYI6abDhvOGKENqkD6ZNqYj1tRidFdhazAzLHorVIyq/Y8pqrhw==
X-Received: by 2002:a05:622a:248:: with SMTP id
 c8mr48272724qtx.248.1638887725519;
        Tue, 07 Dec 2021 06:35:25 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 n6sm9423588qtx.88.2021.12.07.06.35.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Dec 2021 06:35:24 -0800 (PST)
Date: Tue, 7 Dec 2021 09:35:22 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] README: Add intstructions to add patch
 template
Message-ID: <20211207143522.GA23398@localhost>
References: <20211201022753.1091843-1-raj.khem@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211201022753.1091843-1-raj.khem@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Dec 2021 14:35:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55501

On Tue 2021-11-30 @ 06:27:53 PM, Khem Raj wrote:
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  README | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)

Applied to meta-rockchip master branch. Thanks!

