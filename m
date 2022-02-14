Return-Path: <akshay.bhat@timesys.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A185C433EF
	for <webhook@archiver.kernel.org>; Mon, 14 Feb 2022 17:05:56 +0000 (UTC)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com
 [209.85.217.51])
 by mx.groups.io with SMTP id smtpd.web08.37359.1644858354461691026
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 09:05:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@timesys-com.20210112.gappssmtp.com header.s=20210112
 header.b=LO4HivER;
 spf=pass (domain: timesys.com, ip: 209.85.217.51,
 mailfrom: akshay.bhat@timesys.com)
Received: by mail-vs1-f51.google.com with SMTP id g20so7426411vsb.9
        for <yocto@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 09:05:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=timesys-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bcir5zcjTGP/a2rJqkKIG+wbDP+/XLbntRGgyWSqou8=;
        b=LO4HivERr7JCfoAM04pNxK5KXoQNQFiJ4UccqHNAl7bLBFbjyiQDWy+DnF9n0FiHC2
         9kkPfRThkmoYQFoI+J00twGu62+anHZfu18QEQHhKKlQrhLUvQi/agxf9qkvOFN2zxhY
         alUopffQXONVvNLPqq/3z9JM8rrko+VOTa5pGN42/tmkeOfMQFg4si+QJJJ/mEgJiEAa
         37AJK1ZCUwOcbGKWq3ipxv8VVehpD9n3j2HZpkZmpjXcwYMd/hgtj+KfkZut9WRHgWju
         +jr9upI54N+F+R3A4EqU9QnxcVbC4UsU8xFB9v/LzAIqAwplfVmz3o63jCTyeUHxsG3c
         T34Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bcir5zcjTGP/a2rJqkKIG+wbDP+/XLbntRGgyWSqou8=;
        b=FQbKHQfQNHLitdLOtNP3O6pv1fqWd+T85CutBM++9O52KcVbDZPlmlC0VNn1DI5JnY
         6fnAnpAbBwjc2BQEu+DT6BJmBRBIBywjoxHfT+2AFM7T78ocp8MCWssPURdxLB15DO6a
         nxlgKayisCsvGA7u0UWYPLq37kS+yUszsr/eYuJ7oTUtbOz7QG30PbSjwPbVoVwnmVy3
         vQjNX//WbKOWEJyVcSmgXhyGZkmim942MLqKbwBmYRfLwzlSrV7yrQL00AdXeH7x3WJE
         ANW0RAZdao3h9kp8TD8ftxkTgKFHfso/bJ8qrZ7XaG/fOrrwV5OsuRH4j5z5nVTkAKFx
         Harw==
X-Gm-Message-State: AOAM533xL+24sXO8py+wrXXbOrpOzlHcGpJ1La9884Oje1cfdqq+oUfF
	tNACOf3hCzf4693fNsjN5NYfuxYWhWTGEU+2qUiO5w==
X-Google-Smtp-Source: 
 ABdhPJyK6qXgxfTAe5EyhQmo1IeQQpAHvkKDFB3qgTLhMYU1pTdO1N8f1BEb/9vAc9mC49ID9siuIVXljJxoH3kaD7E=
X-Received: by 2002:a67:b043:: with SMTP id q3mr166022vsh.33.1644858353476;
 Mon, 14 Feb 2022 09:05:53 -0800 (PST)
MIME-Version: 1.0
References: <20220121163239.1922917-1-akshay.bhat@timesys.com>
In-Reply-To: <20220121163239.1922917-1-akshay.bhat@timesys.com>
From: Akshay Bhat <akshay.bhat@timesys.com>
Date: Mon, 14 Feb 2022 12:05:17 -0500
Message-ID: 
 <CACrMeVCYE5-2925VKW4x_a0AOhj7a+8OorGBRxiS0+vhq=aXBQ@mail.gmail.com>
Subject: Re: [meta-hardening][PATCH] meta-hardening: Fix override syntax
To: Akshay Bhat <nodeax@gmail.com>
Cc: yocto@lists.yoctoproject.org, akuster808@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Feb 2022 17:05:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56186

On Fri, Jan 21, 2022 at 11:33 AM Akshay Bhat <nodeax@gmail.com> wrote:
>
> Commit 352e6498a missed updating the override syntax for the
> "harden" distro override.
>
> Fixes: 352e6498a ("meta-hardening: Convert to new override syntax")
>
> Signed-off-by: Akshay Bhat <akshay.bhat@timesys.com>
> ---

Ping... any feedback on the patch? If not can it be applied? Thanks :)
<snip>

