Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D41BC4332F
	for <webhook@archiver.kernel.org>; Fri,  3 Nov 2023 09:44:44 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web10.47190.1699004677153117345
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Nov 2023 02:44:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kGGgLBNM;
 spf=pass (domain: gmail.com, ip: 209.85.208.180, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2c6efcef4eeso21609451fa.1
        for <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 02:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699004675; x=1699609475; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QVX339YJoHfBSZYr/D9iMjxFa18UMVuJOiukzt0v3rE=;
        b=kGGgLBNMju6cK2Ce/kKMwuT5czYG88QA2XeEeYjEPylzv+HF/0QA46HWAVSWfCAcXG
         6V9w2MkxX9d/OQ+CjbSLubOpeyi6q8hL9pYRu8meDVDjAoyZBz1+Vzo3+We1M6j3HyEG
         eknEyhIWAOk0srOqMtg4AdrnZ6tx7jkeW6efCdBXo85aEQiHjbhR62KRYJzJIy5BGajG
         duWY6Es0PIm7TDAZijjzsrcRIfouOsCqWdFPIghvVCLYeqtAvKw4S1F7Ja0QlB5cHeb7
         LJBeSW0AUbPYZv5non/BhlceJctloX7sl1qppR1XKhoLtNtIu2meTwrBZ5T3Utb3Q6Go
         PE4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699004675; x=1699609475;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QVX339YJoHfBSZYr/D9iMjxFa18UMVuJOiukzt0v3rE=;
        b=hSkopVW1sY3W6uMw6D5t3sYk4kf8Oc9m0MFZqrxX4g+ltg2tJ75trMy6gedugsCz1h
         1su5GYJQneErCn5eWEuXmxXHkjbo4FCrKXAaBa0+Ouk1OVwcTI0RL/2FxacIFdklv97i
         BpMk+Edkac4mIPtrC1d1q6JlpoFogTlTdZvCkYABIcHgdgfyGstpo5a737pWGArdvCgC
         ka+bQWvIo6pghxIMYn+5kEbdMcjpjEZLQJ7RyxCZxsX111sEFEWcbkICl4mu9B4+XEVl
         mvbtOmYojQIcEXgao4DS7rtKnKXKE78PZg23Gn5jV39hx2qbRT6qTfgvMxWqo86pSJsJ
         TPHw==
X-Gm-Message-State: AOJu0YwYs/pFF5CNL8W3GE/Y+OBEs82rUhGpHBZncZ94E9TcgbnhsuNe
	6j2w7pPjJ+Q3r0fkT6Fb9O5shbOeCfQGjZ9N3GtRw66jM/U=
X-Google-Smtp-Source: AGHT+IGC5zLIdRLqQfjN3LBHlK/vLAF7gTF3TnyP9JTJkW9lDAgWeuyQ5qKTPPMyi2rYOvK/Z6wHqNYkUMfgTyjKPEk=
X-Received: by 2002:a2e:8e32:0:b0:2bc:b54b:c03f with SMTP id
 r18-20020a2e8e32000000b002bcb54bc03fmr15768071ljk.5.1699004675013; Fri, 03
 Nov 2023 02:44:35 -0700 (PDT)
MIME-Version: 1.0
References: <20231102152044.3433589-1-yoann.congal@smile.fr>
 <20231102152044.3433589-2-yoann.congal@smile.fr> <1794135837F88140.3650@lists.yoctoproject.org>
In-Reply-To: <1794135837F88140.3650@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 3 Nov 2023 10:44:23 +0100
Message-ID: <CANNYZj8=2XpXLSQxhv4=3V3nTbYNOhB639mZY12zLru+EyC93A@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v4 1/2] config.json:
 Move AUH from custom scripts to config.json
To: Yoann Congal <yoann.congal@smile.fr>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 09:44:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61589

On Fri, 3 Nov 2023 at 10:37, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
wrote:
>
> Ka-boom:
> https://autobuilder.yoctoproject.org/typhoon/#/builders/130/builds/59

"
ERROR: Command . ./oe-init-build-env; bitbake-layers add-layer
/home/pokybuild/yocto-worker/auh/build/auto-upgrade-helper failed with
exit code 1, see errors above. (1699003823.8)
"

I'm not exactly sure, but I think this should be addressed by adding
an entry in config.json with "no-layer-add" : true (there are examples
there).

Alex

