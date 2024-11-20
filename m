Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 401AED6392B
	for <webhook@archiver.kernel.org>; Wed, 20 Nov 2024 10:58:33 +0000 (UTC)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
 by mx.groups.io with SMTP id smtpd.web10.10818.1732100305539216279
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Nov 2024 02:58:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fBMv6/vS;
 spf=pass (domain: gmail.com, ip: 209.85.128.176, mailfrom: alex.kanavin@gmail.com)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-6eeafd42dd8so18525407b3.0
        for <yocto@lists.yoctoproject.org>; Wed, 20 Nov 2024 02:58:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732100305; x=1732705105; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nvXm6vM9xie+iR6KcWvmXswwkCWxC8Vo9iGrgLiO/+o=;
        b=fBMv6/vSgl46Rhb4atfzQ9zFV9d2cnMRyynTazJupoQXJ9ARQtyrKFgXE85nlWwZgB
         BRp1mhT2U3RW5pfWsu0IrCn9iI/CIrN7UXvhaeWvBhagduNRS/jsGB0iLz8Zab4i4acK
         /9qR6XuQEuOXTXBYxbgPYdIuV1KhNERiIeJRw4nes1nXLvks5dd+cplVdJtfXqrdel/T
         ispBKFb+YAUyh2lxUMUSQPykAWivdR7D3QVtGFGRWkQQsddAhJM3eeb7/buGVUrkp+G2
         UKIlyN2XJw40qwGpYZbz95bWBTceHWqZ47ky7gpY8kF6eO6i0kcIYXai7BAOaCw8sCB3
         KkZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732100305; x=1732705105;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nvXm6vM9xie+iR6KcWvmXswwkCWxC8Vo9iGrgLiO/+o=;
        b=eSmuCwffebCgn1TS2BwB+Jdjzxb5mJo2IWPpYcNZailBiJ1ewXKN6kNINjdh+KCfoT
         scoRFQPTAnmboIjgdfxKorVU1wexd5oMGWn8udwjQSAtSzXqKjfqVQ4dV5RFLiYh4GdK
         kNJO/ImYNYjKx7VDMXtiDND63tFATiENexkPC9KRrVDwJfhL7pHW4Do2ovjSYNbHM2eo
         d3KZV/Ji72KwoneU+icNQBZfo+WBR/g3CGCzQdPH81+OFLA0PnOrZLn4BWv3wK7NVxVD
         Tqj5jbisLe7dZBWFGZfe/TpwNC/3CmaamMRFHG2WBSEEFLInwCPoqt7dhU//3p9WI3zC
         tNdQ==
X-Gm-Message-State: AOJu0YxRZ1krIgzC8JO1QNCQ2UcoPDxbdCtY0FDgRQxuKsy+1nx4Sx4Y
	a14W9gfpyg4drqci0oXsM/CeCq8Xt2mO/Vbuv5vicEjxgyoU21Esk9z8XAaXndAqvkvo7J4NyKi
	dL0c6pqpkHNbtvZ7JeLaiokqc4XVWIQ==
X-Google-Smtp-Source: AGHT+IHXMV+/Z1m11sCKPipBKPSi+rArM6P6lMRZn1H9Kypw7x29fqoOu5yg5Z+6nxzSo7/LhGHtWGD1eDcT+iorlnY=
X-Received: by 2002:a05:690c:6703:b0:6ea:c741:7388 with SMTP id
 00721157ae682-6eebd2b22f7mr24025897b3.39.1732100304598; Wed, 20 Nov 2024
 02:58:24 -0800 (PST)
MIME-Version: 1.0
References: <DFqh.1732099913660193870.SnUS@lists.yoctoproject.org>
In-Reply-To: <DFqh.1732099913660193870.SnUS@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 20 Nov 2024 11:58:13 +0100
Message-ID: <CANNYZj_mD4Vnd3Vy0TPHXA4MCZMbs6vACapuiqPqjnROb1_Q4g@mail.gmail.com>
Subject: Re: [yocto] gnome desktop with kirkstone #kirkstone #gnome
To: yocto@lists.yoctoproject.org, Ankita.AN@exaleapsemi.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Nov 2024 10:58:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64305

On Wed, 20 Nov 2024 at 11:51, Ankita.AN via lists.yoctoproject.org
<Ankita.AN=exaleapsemi.com@lists.yoctoproject.org> wrote:
> The error I am facing is,
> ERROR: Task (/home/vitthal/ankita/poky/meta/recipes-sato/webkit/webkitgtk_2.36.8.bb:do_compile) failed with exit code '1'

This is not the complete error message. Please do not truncate the
messages from bitbake to just what you think the error is.

You need to look at ${T}/log.do_compile for webkitgtk.

Alex

