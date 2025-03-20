Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6471C36001
	for <webhook@archiver.kernel.org>; Thu, 20 Mar 2025 19:30:54 +0000 (UTC)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
 by mx.groups.io with SMTP id smtpd.web10.3702.1742499044763724313
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Mar 2025 12:30:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BpXAT810;
 spf=pass (domain: gmail.com, ip: 209.85.167.172, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3fbaa18b810so325173b6e.2
        for <yocto@lists.yoctoproject.org>; Thu, 20 Mar 2025 12:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742499043; x=1743103843; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OqVvCqErroqTh/ZW/vUeAqHcNnzRgZF+hKuLMMDns4o=;
        b=BpXAT810gxj9i0wPfLZRlXmK2GunpcStvJEbKjKAkGH2klma7n0oBGiN6O9dcrSzhM
         lcIWTn0dTHeQ7u7a4dOEpATXZKK480ciRYasyvZvmqBwoMZazexixQ+vTHOxgDN0XEod
         3MyF6Ycg4a+lDyqCRN1Pz3tG3f/e8j6uHPrJw95HPHzbCnI0/eHSVq+07zgEK7F/g2aq
         EXy47vU8MgV0IwNXx3OSk639+0kLxXDJeyiJsUn/ExE8bSNs4VfzBOMFO59S6WCpIEsC
         RKdBR9h5qmErvyZq0mTAkZnMDHzV7NLcY0lfMu+1Q0JmOUx7DttZpO/6dng/Ybs9qD6D
         WYGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742499043; x=1743103843;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OqVvCqErroqTh/ZW/vUeAqHcNnzRgZF+hKuLMMDns4o=;
        b=W4FvvcAqR9BzxPLX4L9zlGx1KzXciXKrapG/daQYMh925vffVs/Z0F9017U5r+jr1/
         iBMo+fjqUVt8plGRIVN7EqmU9vNslC9oKpF81NCPBobQ8aK1s+jOaHhjjV8pw029/pzU
         iAFPc4FZjzvjIfb3BeWNYD6RqqQHZHmPIBqmybC+QGbcQFybbfHOz7DZuok9kvI994Ka
         l9Dx1cpGEaKiwuifZXbP473aYw9tgTh5SkX0eXNufFvSLrZkIt6WMRfI8x/UxHwbiRfO
         uvphz/v6LoOgboxk9JZfAhMIMMWGXmuHaQgx5G4c3jBLfNcgfvCFCALGNYlK250sPAoa
         +GVA==
X-Gm-Message-State: AOJu0YyRCbVrXsH04CZtVtek0CBHACx6JDZfp6RtoT0f3naLOpAOs5b8
	y9KAdSiFgQt0jlh5fuQpDxDMWtK0uFYO72YK5xTxY013sLfIyEpOSSFygO14K6iVV5OuyPIJ+Oq
	w9GQQ+oc4tp7FzXUNdApC8NZkciL8GHaW
X-Gm-Gg: ASbGnct/+DYnu940elLP8O5R96JCr782Err0RDBf29FG2KJAqJQsCtAQik7OSHXax8i
	4AKVVbV2OvN4igZC/jx4YPJyCVT6E4YnEjNX1lWrAeguKjegrUnwgv2sluPQB558OVEkEWU0VbY
	Q235Sla4w+WGGyqcjQr6q/Ot1OG61sRJritZsnVVF0jvaLkC/Uf5eHIMc=
X-Google-Smtp-Source: AGHT+IGDgukhPTwD0J+X1qmFaSZETzM6HBBQBNG7EBUmQayPIw7nq1Wfw7qUHTCtvdWJ295xZnRG8A707tKofvE8Yb4=
X-Received: by 2002:a05:6808:15a8:b0:3fa:d6c:cdbe with SMTP id
 5614622812f47-3febf791ffbmr268436b6e.32.1742499043557; Thu, 20 Mar 2025
 12:30:43 -0700 (PDT)
MIME-Version: 1.0
References: <3311f3fd48ab25e96d99b89aa804f3571b13f0ac.camel@vrag.ch> <4474D02F-CA52-4A58-A8A5-8413584297D5@arm.com>
In-Reply-To: <4474D02F-CA52-4A58-A8A5-8413584297D5@arm.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 20 Mar 2025 12:30:17 -0700
X-Gm-Features: AQ5f1JoJyqKEM03uPCkEELbK1UGxTLPR7yGlvcwoXXggdZMK1aSu4O0vcBKlLhE
Message-ID: <CAMKF1srmDjAgPK2ZCXg2XQfbdnhuHhc3kafhagkCJvug2tOT4A@mail.gmail.com>
Subject: Re: [yocto] Failure expanding variable GITPKGVTAG in libusbmuxd_2.1.0.bb
To: yocto@lists.yoctoproject.org, ross.burton@arm.com
Cc: "david.daniel@vrag.ch" <david.daniel@vrag.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Mar 2025 19:30:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64996

On Thu, Mar 20, 2025 at 8:31=E2=80=AFAM Ross Burton via lists.yoctoproject.=
org
<ross.burton=3Darm.com@lists.yoctoproject.org> wrote:
>
>
>
> > On 20 Mar 2025, at 14:23, David Daniel via lists.yoctoproject.org <davi=
d.daniel=3Dvrag.ch@lists.yoctoproject.org> wrote:
> > I can't find anything wrong in the libusbmuxd_2.1.0.bb recipe - has any=
one an idea what is causing this?
>
>
> oe-core master changed and https://lore.kernel.org/openembedded-devel/202=
50319164511.832211-1-richard.purdie@linuxfoundation.org/T/#u hasn=E2=80=99t=
 yet been merged.  You can apply that locally until it has.

Its in now, so please update your meta-openembedded checkout to latest
on master branch

>
> Ross
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#64993): https://lists.yoctoproject.org/g/yocto/messag=
e/64993
> Mute This Topic: https://lists.yoctoproject.org/mt/111809199/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

