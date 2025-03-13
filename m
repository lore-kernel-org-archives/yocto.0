Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E8C0C282DE
	for <webhook@archiver.kernel.org>; Thu, 13 Mar 2025 11:15:50 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web11.12064.1741864544459530478
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Mar 2025 04:15:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EzLTlIFR;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6e8f254b875so8132906d6.1
        for <yocto@lists.yoctoproject.org>; Thu, 13 Mar 2025 04:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741864543; x=1742469343; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6NTdtWOiZQB2VXV/v7p5/nvoHFEjR5yqY+qGEbbRk2Q=;
        b=EzLTlIFRQTsb4MuNbEaV5Wr1ffcalernbLSZhbpEpXr+uuS4rhv+CHKeqUG5XihMYd
         3JKhjqw/0ICdC9SAzQ6Q+0joRrABFaM0pY57hbjMdUuuHU4GpJRJOsEjR4+QwLX72rtV
         0q58G9B6bYnXv5OWz80LsILA1cHse/4K3rklW/C/ss+vXASRMvRDRsCnfsHjO8HTpd77
         2nh0HzHClCfxjeyoGWFpMGByNdKHT1JgZRzhf2oXYTBVGySTNxPGwrZ8rcyFh0DjF8eT
         Gtxu20ktbX8jVnMT7gDHukmHMKfQ0dDPNCsMAfFpWPiw17el5uwqx29sv2ihOC8vd4WN
         ml5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741864543; x=1742469343;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6NTdtWOiZQB2VXV/v7p5/nvoHFEjR5yqY+qGEbbRk2Q=;
        b=IIGGQ+lY6lFBIsPdOJpE/fjYWtMPYC+zMwcK+vUZSWcPJsG1K7BiqWJpLEhCcOu84z
         dcQVQk65WVINugss+jTOkeHd6vqEj2HD9Oc18LrSyiVzKL6y9igScglIb4wp2HQDJCI9
         pmnrYWu6Vp9rDt/qW/vAAM3mGY7yB35zrzOFgpFJiz26VF7LuRn7xkpLYelvUp6q/5Ma
         AXtg9nF1z4vB3gJ+0EJwH+LvrmyV8HrJowjhG4jYEyDYCkYTa379NVieFGoJ9N5X2yku
         CuN+skYyXQzYyqCOgVkfVHdeBmyL4WbgGIZm02KqOpzgX1F8ibP6p5Gc2oxXMRuVGCNp
         8o7Q==
X-Gm-Message-State: AOJu0YwPueueD5fu6q+ERhsMzbR+GUDWceImgJS5UPF4kR2XBgGafITe
	KTZunWF6BxmOruLTZwGe4ZVsqJnd3GQsBzjT9nHFN5sZLwxwILO1slGGKSpAMWv8MZjdPiYCO9V
	17W+iEfdqea6ZAg5RYscK49k2xSm6LtNd
X-Gm-Gg: ASbGncsX/F70f8R53FEyTtS+iXeLVpg6B3U0hzFRtTgpwXudGb8+ilBny0XiFA2p3o0
	UFic60tfAm36Y6IrWAYsR7+OCJkB2b+8o3PKaBB49gNxZ9hu/VpgGqBHvcC+YhZ94ilOVhAEPqv
	lRHPUWjXgHSZTss7c4y/IpOjXmlqGPWQMAVxs=
X-Google-Smtp-Source: AGHT+IH6rt94ICX9nErQ6WGAPpiBs3bNt4+U9AZN/cm5dIZE8weEj8HSeHCEgFQ+r4EKQMxhrKaduW1ATEvVjP4GQEU=
X-Received: by 2002:a0c:e405:0:b0:6ea:d046:bcc9 with SMTP id
 6a1803df08f44-6ead046be00mr71612386d6.40.1741864543393; Thu, 13 Mar 2025
 04:15:43 -0700 (PDT)
MIME-Version: 1.0
References: <093b7c87-b979-4f89-981f-cbc4e49e27db@berginkonsult.se>
In-Reply-To: <093b7c87-b979-4f89-981f-cbc4e49e27db@berginkonsult.se>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 13 Mar 2025 12:15:32 +0100
X-Gm-Features: AQ5f1JqnderuHRP1owT0USw8pTelQz7Z9ePSTJ3y2z0ssvMVtKhRg0XBeY5uGLw
Message-ID: <CANNYZj9pn1jOhtS-uQJ0wr6OuZYWkd34ji2kg4+1YEYPskm9fg@mail.gmail.com>
Subject: Re: [yocto] Workflow with Extensible SDK and rust project
To: yocto@lists.yoctoproject.org, peter@berginkonsult.se
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Mar 2025 11:15:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64949

On Wed, 12 Mar 2025 at 22:01, Peter Bergin via lists.yoctoproject.org
<peter=berginkonsult.se@lists.yoctoproject.org> wrote:
> But how do I proceed to upgrade my recipe and the '<name>-crates.inc'
> file? Is there any tooling or way of working around this yet or is it to
> be developed?

I am basically encouraging people to move away from esdk bundles into
'direct' esdk workflows where you set up a sdk environment from a
bitbake environment:

https://docs.yoctoproject.org/sdk-manual/extensible.html#installing-the-extensible-sdk

In such a setup you can run bitbake directly whenever needed.

Alex

