Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CAFDCAC59A
	for <webhook@archiver.kernel.org>; Thu, 18 Sep 2025 07:58:40 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web10.8415.1758182312384093493
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Sep 2025 00:58:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=A30DGfG0;
 spf=pass (domain: gmail.com, ip: 209.85.160.170, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-4b38d4de6d9so4545261cf.1
        for <yocto@lists.yoctoproject.org>; Thu, 18 Sep 2025 00:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758182311; x=1758787111; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pwcfup/7jOfn7NzEaPv4OkIrwJVHZNSInmsPqPEj5GI=;
        b=A30DGfG0Cnr20chTCXhnAPvBP3odU5B/FhQ989Oa2G+IJvAVLt/0Xjkk6LU9txd+rM
         GbYoqKRMb72suIae605ZUZSNgYckyyn/F1+7loW/LJtriJ4PnAwD3DTvHVze8pwJcgcc
         BLHcGgkBnSWwiBARNXoKC0ewcbiptIqplyDQ2wemKglaLKleVW9GTNAl1O/h4K/yB5Dv
         JZG3BtERJv3rvP9dstHoMn1n7dto/8lL3rbB7NfeenJOKKYpSuWf6cP91fcX7TwkeTAe
         yiiMBLVwZDsh07OIaf9rl+dp/epqYYeQPaVbE0oZdbUKkfCy7TVjnSVl3MOR/a/yHuIS
         zZ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758182311; x=1758787111;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pwcfup/7jOfn7NzEaPv4OkIrwJVHZNSInmsPqPEj5GI=;
        b=nMozOZfI3+LgNJYkf+42GHLSDbwVGRN2dVED0i+N1blmwyIN5FSJWl2cX6IaKaoUXH
         ucH2Dfwbr2gWFDc5BklhMbj3GBBiHLJk1oii/v+RmI94BgYPfBO6o3d3FD8r/xNLToFk
         XA0WyWqe8Cvzv3XQAl/zE5KyWJrurU7gswXIRlKGREx+/p1qahc9/Jb+D/KKC+QM9aV0
         ekAPYZAZBBPsa5i0KKyHBD+upi75GUo9cEknFr/mMeKVjubAOEOHupb8sY3uTzaFlLs4
         aD4MpcLsWY5kNzI8WdixWpAdwXp93RRIoTPUpvRNLKwwbWmy/OWzFmGSlGYitqKFn+Ss
         GkFA==
X-Gm-Message-State: AOJu0Yz7dE9NS2SOpZpsIn6I+5f2QqKpXLWOdgh4+aIKlAw1U5a0RXVT
	TTSviLUBswyiGBpb0uk9f0C0B6D5tUi39pHVtIQEOoMlGM0GMAjyF4KA73fRf/7AQqqYN+lXHPR
	7H7RHp8gh9v5St5Wm4DSk7K7NAEPIex4=
X-Gm-Gg: ASbGnctviIbnnZ6CdMXaO+9u+//DGeLrSRQJVIquYLe8QD1aA2gZQ3qrEpDlpTOeJWQ
	GSvQ/WPo6f3cY337OmN+hh7JA2Vvuwrb/SelQqdLjM5if2utmM4RmPnnqyHeZjdguAdWBWCSSzz
	75tKD6s1A3LAq/MGqyq4LtyfW3eg6J68Qd49TV5MS1u35l1uOsbuog5OKKq2cvWIIqwNZCHeQOP
	bvo4qLbV2y4RWATkZK7OYKWDuOvQr9HILfb266Rk3SHqf/UdxY0Q6pRIJuU9S+998rrPjPZkb5x
	p9J/sGOD/lK/ZcJDq4Syj27+XbfccAYAf8TPFQkDko1Nz++foK7BJMq36fk=
X-Google-Smtp-Source: AGHT+IFWWnLwaddySWAI5yTbzRWmXD/MyUR3APUFUoZHntapWjX9H4j1oBRkWvMNWjuE743AlQpTiH9AaMxyY/8k3Vs=
X-Received: by 2002:ad4:4ee3:0:b0:711:75c9:1766 with SMTP id
 6a1803df08f44-78ecec2a4f1mr50265866d6.40.1758182311113; Thu, 18 Sep 2025
 00:58:31 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj-Sk_VEMa8--q-s3G6KP1zih5KqZC4uv5WJzAd7sQrzzQ@mail.gmail.com>
 <27586.1758120354644994131@lists.yoctoproject.org>
In-Reply-To: <27586.1758120354644994131@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 18 Sep 2025 09:58:20 +0200
X-Gm-Features: AS18NWASZdwpbDHjvCofO1l0wbRVGHXEPe6y67KD3-tX6Wx_57Qpf6mgLrjq8uM
Message-ID: <CANNYZj96qN23jkWg_pKoP1aBbR7KPXeSa4kYypQ_Om+9QffX5g@mail.gmail.com>
Subject: Re: [yocto] Documentation around adding custom fetchers to layer
To: seth.raymond@matrixspace.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Sep 2025 07:58:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65855

On Wed, 17 Sept 2025 at 16:45, seth.raymond via Lists.Yoctoproject.Org
<seth.raymond=3Dmatrixspace.com@lists.yoctoproject.org> wrote:
> Sure, I can share the source. It grabs secrets from our password manager =
(1Password) and injects them into the build system. We currently have two u=
se cases for this:
> 1. We use AES keys for encrypting/decrypting our SWU payloads. Those key/=
iv pairs are held in our password manager, so we need to take one of them o=
ut at build-time and hand it to the swupdate bbclass to encrypt the payload=
. We do the same thing for a signing .pem key
> 2. We want to install an SSH key into our OS so that we can SSH into our =
devices. 1Password also acts as an SSH agent, so it makes life seamless whe=
n we store the keys in there.
>
> My source is attached. The use case in a recipe would be:
>
> SRC_URI =3D " \
>     op://MyVault/SSHKey/public%20key;output=3Dssh_key.pub \
>     optemplate://aes_key.tpl;output=3Daes_key \
> "
>
> The output would be:
> 1. The content of the MyVault > SSHKey > public key dumped into a file ca=
lled ssh_key.pub in the $WORKDIR
> 2. Depending on the template (https://developer.1password.com/docs/cli/se=
crets-template-syntax/), ${WORKDIR}/aes_key would be filled in with referen=
ced secrets

But this doesn't require a fetcher implementation. You can do it in a
task, put the task into a class, and write recipes that inherit the
class. The meat of the fetcher is this:

        cmd =3D f"/usr/local/bin/op read --out-file {dest} '{ud.path}'"

and this can simply write directly into ${S} from a task.

Alex

