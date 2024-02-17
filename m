Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0ABDC48BC4
	for <webhook@archiver.kernel.org>; Sat, 17 Feb 2024 20:27:17 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web11.3665.1708201629596496382
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Feb 2024 12:27:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cJsM5NyZ;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-68f5bc1fc37so315026d6.1
        for <yocto@lists.yoctoproject.org>; Sat, 17 Feb 2024 12:27:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708201628; x=1708806428; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3g9ad8AtPhD/M3cVXPVpMNj1JtQvzA3wdxPWuPej33Q=;
        b=cJsM5NyZI7DT85u1qyxGiu7Y1b9OT+8WFoVwhlRyjfoPN3iBBpe7IlUf3SmANVveNE
         I8PwN6HC8BW3/TKMJPpqIe1EGsz3I5ujHTLMb4PKh3hQkzUHWHI7revJcyf4XfNNf3k7
         l3UWJe/GlBo6Nu4JpIX/fnPzXLKgs1sf0mGqCxIJufeCqwm4yw9fPBxrKMQc2i4R3j8R
         mlgeMllaSwPx8ddVT8jVEq+hJgUVt7ZerUA8stDXBNenpfcBpUFlocF80VkAVx92r5cV
         MgrM3QKsJjS9S2SBJ0Ad8YASn9pcnnAuBGRlhaUykAcr2DkLcFwxx+DrB9n1gwz0hauD
         ESbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708201628; x=1708806428;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3g9ad8AtPhD/M3cVXPVpMNj1JtQvzA3wdxPWuPej33Q=;
        b=pqvkXi2ZuL2kYDsYgH0upYSHvQYvPHlJMBca1zUhW3xwWzCVIvC/RW0N8NmlqUxOz2
         HH9RqClC5w5YGFQp7RV11qPRcdS2z/WwikND3PmP6u/yhEdgGJ9XjLlZZDmxgsLMymCk
         3f5KAbEug1y0/PiMjuix4Ts793Q/915NppByLpZ7Z4MuW7OJ1b1AWHB4k/pwBibdF/w2
         7nRbJnClaMgXg4HLUgo8kK8R7gXNxhK9m32MAGUBRB65GOtWFfQujBrN6/f9XDvSMVYy
         aJck/N8Ymw6WOwm4wEwl0kt3ODSHW/6ONbS27PWHREwY79ds3LTfOuAH2bCsVOh2VSIW
         YRiA==
X-Gm-Message-State: AOJu0YxlRlJcWjFQ+3zO6TOGcUXJv5eQiii7+WfL2Nk9sp4ckmFtO83O
	p4YK1Rlsgb+xz18wmx5VwOlWUGUbLlp400XuJON0pgvHnambozcn
X-Google-Smtp-Source: AGHT+IFesAUpMrimDZwxRls+WUSCDS7/7BFyjUBvIdokgybauDohBYrhJyEsE4g6BD8PLe6ttCmJRQ==
X-Received: by 2002:a05:6214:3992:b0:68f:4c2c:b04a with SMTP id ny18-20020a056214399200b0068f4c2cb04amr2617571qvb.22.1708201628586;
        Sat, 17 Feb 2024 12:27:08 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id ks16-20020a056214311000b0068cea7fd1a1sm1362576qvb.27.2024.02.17.12.27.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Feb 2024 12:27:07 -0800 (PST)
Date: Sat, 17 Feb 2024 15:27:05 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Stephen Chen <stephen@radxa.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH v2 2/4] rockchip.wks: add all
 Rockchip partitions
Message-ID: <20240217202705.GA20190@localhost>
References: <20240216082922.7873-2-twoerner@gmail.com>
 <32626.1708181907426742112@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <32626.1708181907426742112@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 17 Feb 2024 20:27:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62528

On Sat 2024-02-17 @ 06:58:27 AM, Stephen Chen wrote:
> On Fri, Feb 16, 2024 at 04:29 PM, Trevor Woerner wrote:
> 
> > 
> > +# atf 24576 8192 (trusted OS e.g. ATR, OP-TEE, etc)
> 
> Is it a typo? Use ATF instead of ATR?

Oops yes! Good catch, thank you.

