Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4156E92723
	for <webhook@archiver.kernel.org>; Thu,  5 Oct 2023 18:00:41 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web11.22748.1696528832355725163
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Oct 2023 11:00:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=lkTIWpB5;
 spf=pass (domain: konsulko.com, ip: 209.85.219.48, mailfrom: scott.murray@konsulko.com)
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-65af726775eso10621796d6.0
        for <yocto@lists.yoctoproject.org>; Thu, 05 Oct 2023 11:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1696528831; x=1697133631; darn=lists.yoctoproject.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=5j0sjoIoPfzDnLoarOeLI+QsVLrGJhKOl7dKPTbTgwc=;
        b=lkTIWpB5W5oRLwX5fJW1e8QJ69gKrhtbSqGyHZ8crGZcKoQ1Uu87Pi6Rda0nebgp0L
         K3Qn6uCOIospR+jkl2yuHOFJXR23Iyo3868MgGbNIJtrzIuM6BN8PMvmjADiGj0RGeOn
         P4B5y4ogehDvUqhNtZxi6/aTNLdd4z81LQLPg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696528831; x=1697133631;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5j0sjoIoPfzDnLoarOeLI+QsVLrGJhKOl7dKPTbTgwc=;
        b=HNOV2kVxqzUdOG3ZvSqeXNR2wyxXVhlEj9th/glEGJ4E13yuy4EGrUP7e8Sy0bmTwD
         erKQ/ci12KhslVg0LlG3kTZjmZ2HxXlLntkqF5U+tdkIoE6tJviDvy/KBhutzffqVhce
         1C/h4NTTxWf1A9ZQSmn2SbiBauewQqJmsH7lMHC+g3OhcPWnW307vDQJKXZW99PYO+SR
         a86PpPx1+XYaUiHLtyuQB6kXdjmfsoPY3JsBfW8sbASg1XRPZ17C7e/rcRVZUwaVIH92
         RC+HpTrCQW+MzMoF+mnMAYlpqM0+9QYlSZrmKGkdCu2930UYxZw0elOW7dq6gGDTuEoW
         Cqdw==
X-Gm-Message-State: AOJu0YwtXJuLRWmqvOFulcHqoF5oJLJHUgIkiAubPhJ/L1gf0zcY61J+
	us0/WuMFgpwBtP1C1xDcYYZ83Q==
X-Google-Smtp-Source: AGHT+IEVK26s0lQyUM0IIlZ1/ipGJrwZK0kRin7KHw3FpUOhf5AwJEmLEMbEL4Of5pxZQ0aMB2HkDg==
X-Received: by 2002:a05:6214:da8:b0:64c:2339:ec8c with SMTP id h8-20020a0562140da800b0064c2339ec8cmr2352463qvh.13.1696528831424;
        Thu, 05 Oct 2023 11:00:31 -0700 (PDT)
Received: from godzilla ([207.136.105.90])
        by smtp.gmail.com with ESMTPSA id q11-20020a0ce20b000000b0065b13180892sm677892qvl.16.2023.10.05.11.00.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 11:00:30 -0700 (PDT)
Date: Thu, 5 Oct 2023 14:00:30 -0400 (EDT)
From: Scott Murray <scott.murray@konsulko.com>
To: Peter Marko <peter.marko@siemens.com>
cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto][meta-lts-mixins][kirkstone/rust-1.68] gitignore: add
 pyc files
In-Reply-To: <20230924212301.43891-1-peter.marko@siemens.com>
Message-ID: <fdd0f158-e5ef-ebc1-039b-75c9842570d0@konsulko.com>
References: <20230924212301.43891-1-peter.marko@siemens.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Oct 2023 18:00:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61249

Thanks, Peter, I have merged & pushed this to kirkstone/rust-1.68.
I had noticed it locally, but forgot to push something before some
travel last week.

Scott


On Sun, 24 Sep 2023, Peter Marko via lists.yoctoproject.org wrote:

> From: Peter Marko <peter.marko@siemens.com>
>
> Using this mixin layer causes dirty repository after parsing
> due to lib/mixin/rust.py compilation.
>
> Signed-off-by: Peter Marko <peter.marko@siemens.com>
> ---
>  .gitignore | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 .gitignore
>
> diff --git a/.gitignore b/.gitignore
> new file mode 100644
> index 0000000..0d20b64
> --- /dev/null
> +++ b/.gitignore
> @@ -0,0 +1 @@
> +*.pyc
>

