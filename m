Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B033E6896B
	for <webhook@archiver.kernel.org>; Thu, 31 Oct 2024 09:48:36 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web11.8665.1730368108506494881
 for <yocto@lists.yoctoproject.org>;
 Thu, 31 Oct 2024 02:48:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Wz5xvC0q;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53c78ebe580so859366e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 31 Oct 2024 02:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730368106; x=1730972906; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7G0uJXj6Zr7iLZkYMfW738M5mBgs/MzDuHWi7ft30s4=;
        b=Wz5xvC0qaEWAwQftx7fXq9nz2YjzgVLS/HDuIkxVSTpPS6rFFuPtp1Eywqz0UpOlcN
         ly+Ux+VUDO/aLmd8gRMCU5IdI69R8ucl2NKBYDSwKZ+pEoBgP/SRjksCpplzxtaVeKgn
         O4PeNfjoHnDFljnDol2NdOWzto+8WnNcSOznhpFCyu+Pi0iQZMxNulN4zkxOFuA0Tg4/
         I49VxjwpgpPNC7n/nwhDYfZs5o0ns/BdjNNhCaNHJ7tptHsqQ9BBsBU21d1DMG0bXxMX
         Rbsv9BUUEm7CGn3RVN61UTHc/FfeLgrgLdPNU8YHGy4WDtOIZAfrAXfPPdKs7Pd0VYPt
         R31g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730368106; x=1730972906;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7G0uJXj6Zr7iLZkYMfW738M5mBgs/MzDuHWi7ft30s4=;
        b=WfIxINQmwvayOxTTyNNcJDRMeRsyImZ4dP7HSt7CRqLxRluNZJ+LYsyKf6jCDKR+zY
         mwR7J/yq/8KX+7MQIJe/Lm+KQjfZpOljylicx1MbAmf6Sfr/GXqyFBXHUG46py61c5tS
         YaejC27xz0iO1qYlAk5ikg6fih0b2ogn2N3vEgslhHh1U01NP2Fn4wCxUj+ifzKMIRA7
         bRvqZJ/aA+lsHXzGwLbfnXSd+KaUn4goX1hU6xl2CRZRyRU3spVHkHGZMdF8eLwiHj5c
         snEOnZjp8i6jFH31cK2tE5KNmewzgd8LobpfWPZJZr9NxvFxc0cHIv8CuntA6KuRRwge
         NQpw==
X-Gm-Message-State: AOJu0YwEqvX9UgVhvS3C5tU1p2XnrMzUHP4jX5RQLuIQj3NHLDEhU4Q1
	l2qLdhhBI1p0fkCCfqFEN96WutlCcWV9qPouvbiXN284QnZqddmU2PP2Dxm3FGS39e9cphzOvR6
	WI5CiEa84uldss289NeECx3eGnwvy6A==
X-Google-Smtp-Source: AGHT+IGaN8fq8RrJPju5DLsrBRCYt0oMyG+hHn5SYxVWYxtok5jRAB9ENoNdhABUYz0jPZYoG7va52fT8fwKzRjVBpo=
X-Received: by 2002:a05:6512:b9b:b0:539:fd98:d87a with SMTP id
 2adb3069b0e04-53c7bbcbd93mr537334e87.5.1730368106114; Thu, 31 Oct 2024
 02:48:26 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj-dOcmY=OdgcZ14vD1Jmunyx3X_U90NDG3bumV5t3kpOA@mail.gmail.com>
 <17849.1730367514042333774@lists.yoctoproject.org>
In-Reply-To: <17849.1730367514042333774@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 31 Oct 2024 10:48:14 +0100
Message-ID: <CANNYZj_kRMKckjcLJBXqY5APZ2eHn90rhdOHSJzZSvAP6-3+yg@mail.gmail.com>
Subject: Re: [yocto] Building SDK fails after update to scarthgap
To: freddy.boman@bastec.se
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 31 Oct 2024 09:48:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64193

On Thu, 31 Oct 2024 at 10:38, freddy.boman via Lists.Yoctoproject.Org
<freddy.boman=bastec.se@lists.yoctoproject.org> wrote:
> In both cases virglrenderer is disabled (depends,extra_oeconf,packageconfig).
> But a few other things do change.
> Working
> PACKAGECONFIG="fdt sdl kvm pie slirp      "
> Not working
> PACKAGECONFIG="fdt sdl kvm pie slirp       pipewire aio vhost"
> Those settings are reflected in oeconf.
> Can only assume that one of those three have a dependency on virglrenderer.
>
> Tried adding all three of those to distro_feature:remove but that made no difference.

You can check ${T}/log.do_configure and ${T}/run.do_configure to see
the actual options passed in, and the output of qemu's configure.

It's possible that one of the three extra options re-enables virgl
without bringing in virglrenderer into the sysroot. 'vhost' is
particularly suspicious.

Alex

