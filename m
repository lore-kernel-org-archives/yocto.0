Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F120EC61DA4
	for <webhook@archiver.kernel.org>; Fri,  3 Feb 2023 12:41:19 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web11.9462.1675428076224152233
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Feb 2023 04:41:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Rs4DG1zU;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id q5so4580764wrv.0
        for <yocto@lists.yoctoproject.org>; Fri, 03 Feb 2023 04:41:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=csF4rAr6EF4W+l6oiuomlQbmUl8+m0txV3Ia2mXwgNY=;
        b=Rs4DG1zUMIR9ILaZbXF98joNriDuRWaJb2/q0RAd+YrY/bbcGRO8UJxBNTE37GQg/i
         y96LMLJ1mNNHkXe6tq/k7ZUlUSNA8OS5zxhFjJZqklU1sfQAjb3ZlY7/Gu3MJki2iUOP
         3hhJ1SYOfZd7SB7YRWVXAirpPoWjudChG5mOE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=csF4rAr6EF4W+l6oiuomlQbmUl8+m0txV3Ia2mXwgNY=;
        b=7rk8w5Ro3sD9ShpFLbGf4TcdYMkNxZl7QNAoiJArD4V1yW9WmZTGTWMf1kzhs/vxPZ
         xp3GWxcArI8qnMREvOCGAXNYZMKwqKec8jJSBjiC49skCYCXZ6l9KQC5+LJGHwNVXMJO
         /CauGyJMk3GBmfMg9MDvAbHWe9ykPHfalWHWjWCu2SJv/cxOZqY4ePYwn8eh5AMSF8z0
         tAjbcrCuYcvNpdBhNEcGD88APoZJxaWoFFtHtpEHLSSZQvucwhGSZwPLybloKW8I6aw7
         +u4GQQz9nOLIVSEwSeLPobcsxz23PLr42/lx5v0bepW70lbgKSuUdHlP5RmKM70GLu2l
         70VA==
X-Gm-Message-State: AO0yUKWRFGdYe/16Qfj20vqKzBoO6OMuIq7S9jftg2ivuM1lyMJuEbQ+
	E9dNNnww/9Q+Yj8kywv/utPV7Q==
X-Google-Smtp-Source: AK7set+Rihqh5i22Y1ud9gBKoxe637Ru/LVu7fzJwXuTNN9oMUWBd86mhApvJDGyQt6/v+i44gqjTg==
X-Received: by 2002:a5d:64ed:0:b0:2be:3501:3645 with SMTP id g13-20020a5d64ed000000b002be35013645mr10558819wri.38.1675428074572;
        Fri, 03 Feb 2023 04:41:14 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:a52f:3f73:91fb:2c5a? ([2001:8b0:aba:5f3c:a52f:3f73:91fb:2c5a])
        by smtp.gmail.com with ESMTPSA id m10-20020a5d624a000000b002c3ce97ec38sm1696512wrv.115.2023.02.03.04.41.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 04:41:14 -0800 (PST)
Message-ID: <f61a5a2c2ec2b7a0bded02ce888fc04105e8c796.camel@linuxfoundation.org>
Subject: Re: [yocto] Questions about some functions
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: wangmy <wangmy@fujitsu.com>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Fri, 03 Feb 2023 12:41:13 +0000
In-Reply-To: <OSBPR01MB18451177EC228A31345778F4DCD69@OSBPR01MB1845.jpnprd01.prod.outlook.com>
References: 
	<OSBPR01MB18451177EC228A31345778F4DCD69@OSBPR01MB1845.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Feb 2023 12:41:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59155

On Thu, 2023-02-02 at 06:57 +0000, wangmy wrote:
> I see the following two items on the page of 2022 Yocto Project Weekly St=
atus Archive:
> 1. A tool, used for collaboration on the creation of release notes,
> git-refinery-web has been made publicly available by Intel, thanks!
> We may not be able to use it for 4.1 due to the timescales but the
> hope is to use it in the future for collaboratively creating the
> release notes.

You can find the code here:

https://git.yoctoproject.org/git-refinery-web/

We've had a few issues deploying an instance of it unfortunately.

> 2. Thinking about the idea of variable =E2=80=9Cfilter=E2=80=9D functions=
 to help
> implementation of recipe class extensions (like native and
> nativesdk).
>=20
> Where can I find relevant content about "variable filter function" and "g=
it-refinery-web"?

There are some examples of filter functions here:

https://git.yoctoproject.org/poky-contrib/log/?h=3Djpew/bb-filters

It is very much a work in progress idea.

Cheers,

Richard

