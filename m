Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1657E6FE49
	for <webhook@archiver.kernel.org>; Sun,  8 Sep 2024 13:46:25 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.30216.1725803184255957744
 for <yocto@lists.yoctoproject.org>;
 Sun, 08 Sep 2024 06:46:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QbVx+VRA;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5365b71a6bdso2305767e87.2
        for <yocto@lists.yoctoproject.org>; Sun, 08 Sep 2024 06:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725803182; x=1726407982; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=m2Jug62NZ+6JGPZkUsynAPXPy0o0vj+zl9OvhJBt0yo=;
        b=QbVx+VRAROOGV1fuTXvt2Q/5ozyk0+uViK4VolE18W8MblPTIezBczAvuqr4kO4ADb
         0XOZ4GEIi7WOvRoTBIjgR9Z1vEt4vjpBI7jGxK/+yowJnQezqOjV1eZCZmxo6YU/r+dA
         vrsUMXgEsoU1SGiVtdG09sTGWYD2v/GjdLmu4C16g8V00jBE7OkYZJNGp6OwmHFTbX2o
         0tN2vSq/EfwZw4JLKqa2nx5dl6gxbkBCe860IdMmSSVMqGzyqNndd7fV2waxu2uYfypM
         iuV2Dgq5tWJ59VCZ7c6Rx2gVhDtBVJQFyrwEBRLU1MQ3hrTPaHiGq/4lJpwdgN3mmmme
         txqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725803182; x=1726407982;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m2Jug62NZ+6JGPZkUsynAPXPy0o0vj+zl9OvhJBt0yo=;
        b=bO3dYgjNsCN2r2Qjg9xxTnot6OPSJ8qGXBsDGAhjcwNB7lW1uSI4DsOWXnJjFjhqz4
         Gm0Z2W4UV54cmamUePRFds8JwSEXducxVEslvwI6vwEUuZvNn6287uiWQycavBdFpDEp
         fI5PM9jJ8pKTxlrD2FGdQqXfOjTCA+4d0M7i09TtJuPSMH7yPPylIgKdLAR9gcOXqk6E
         QEDAsjkKE9VUE8hCmn73X3elInyoSCulpmaFumJj2HGHECEMzarcpEr6YFOpE/RQTaNR
         6k5r34ZnxdC3i+rrSjWf/UusrjEAuCchUMmqwjduQ2B4406sVg6W4ZEKFTay8Cs+4HNs
         ZqKA==
X-Forwarded-Encrypted: i=1; AJvYcCUSHdZvNYVbHCQAxK171KhMyslk88pXORosoZFuOqIrHSCZ1PvMTeFgdZeX+WxIM9UF8OFDQg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yw4jxGxo/V3CH36uXko+/YgP2oLEofWfdmlUt9w6DdX4D+DYI3o
	C4p2mMA+Cwr3nvweROFdRng2+EU3xrp4uPL5XZh6Fz7V1psHM4/wyZDxFuQIhcniCHj+suiBdhr
	laICpvm5tS6F2Cc6z+4/Q11+eAWk=
X-Google-Smtp-Source: AGHT+IFxljlCERWrLNGJZ8sVuooq2WL9+KPnkGxAWabmHdxpSFU++p0dzoGgW6yo4/eBwM+OluVSW2yXaUyeGO20H3E=
X-Received: by 2002:a05:6512:1388:b0:535:6a84:68df with SMTP id
 2adb3069b0e04-536587b5421mr5575854e87.27.1725803181389; Sun, 08 Sep 2024
 06:46:21 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_MOsO3Vu2YRfB3njTS-RZBmnzduCS3QMtcMdnZOoaswg@mail.gmail.com>
 <2927.1725630876196244404@lists.yoctoproject.org> <CANNYZj-7uC6enmSrjuq24A+UBOSuUJF=puW_RBqN8CcP9BN8fw@mail.gmail.com>
 <d3de9f84fdb01cfde504eb19489a61ff96736cbc.camel@gmail.com>
In-Reply-To: <d3de9f84fdb01cfde504eb19489a61ff96736cbc.camel@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 8 Sep 2024 15:46:09 +0200
Message-ID: <CANNYZj_LQ0x-EE20V06dD6gaKFj7LC_=bcHpPo254-KkB5HgtQ@mail.gmail.com>
Subject: Re: [yocto] esdk devtool finish workflow
To: Adrian Freihofer <adrian.freihofer@gmail.com>
Cc: radoslav.pesek@microstep-mis.com, yocto@lists.yoctoproject.org, 
	Adrian Freihofer <adrian.freihofer@siemens.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 08 Sep 2024 13:46:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63800

On Sun, 8 Sept 2024 at 15:24, Adrian Freihofer
<adrian.freihofer@gmail.com> wrote:
> It is true that we have replaced our eSDK-based setups with Direct SDK-
> based setups. A year ago, I had the opportunity to talk about this
> topic at Yocto Sumit: file:///home/adrian/Downloads/yocto-summit-
> 2023.11-devtool-i_S04eDYy.pdf
> One year after this presentation, I can summarize that it works much
> better than what we had with the static eSDK installers.

You also need to provide a link that can be opened :)

> The second thing you need is a shared sstate-cache. This feature is now
> available officially in Yocto. We do not use this so far because we do
> not have a shared hash equivalence server yet. We use a simple, a bit
> hacky script which downloads all sstate-cache artifacts before we call
> bitbake.

You can switch off hash equivalence in local.conf or distro conf or
site conf. Then sstate signature calculations will work 'as they used
to', and you can provide only the sstate, without having to set up a
hashequiv server as well.

The downside is that it needs to be switched off in CI as well, and
that can lengthen CI builds significantly, if they no longer benefit
from hashequiv shortcuts.

> @Alex: We should discuss this issue in Vienna. I think there has been
> great progress in many areas. But I don't think there is yet a complete
> concept for operating a complete infrastructure for distributing layers
> and ssate-cache, which also provides security and scalability. It's
> definitely doable with enough knowledge and maybe some helper scripts
> and compromises as we do it internally or with a CDN without security
> as the Yocto Project does it.

We're working on it. You can find the oe-replicate-build prototype here:
https://git.yoctoproject.org/poky-contrib/log/?h=akanavin/sstate-for-all
(commits 3 to 5 from the top)
and bitbake-setup prototype here:
https://github.com/kanavin/bitbake/commits/akanavin/bitbake-setup/
https://github.com/kanavin/bitbake-setup-configurations

We should certainly discuss in Vienna, but you can also play with
these beforehands.

Alex

