Return-Path: <sean@geanix.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00E5CC36008
	for <webhook@archiver.kernel.org>; Sat, 29 Mar 2025 08:37:44 +0000 (UTC)
Received: from mail-24422.protonmail.ch (mail-24422.protonmail.ch [109.224.244.22])
 by mx.groups.io with SMTP id smtpd.web10.7124.1743237462484686444
 for <yocto@lists.yoctoproject.org>;
 Sat, 29 Mar 2025 01:37:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@geanix.com header.s=protonmail header.b=L+2G3wsB;
 spf=pass (domain: geanix.com, ip: 109.224.244.22, mailfrom: sean@geanix.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=geanix.com;
	s=protonmail; t=1743237460; x=1743496660;
	bh=atb8jBqbvl3eg6csfbGjyyoznA8i4EINMdYA8Gj5Qkw=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector:
	 List-Unsubscribe:List-Unsubscribe-Post;
	b=L+2G3wsBzEj69kT2ar3g7EaTg9Ta26x+3jIWgkmDXN+j1h3BgEEU4vvhUYm6jO1N1
	 CDfJUthXShiBOYTOm0YnEkW36KcCFCLalXQa67Fjp0kwbuBPJVOjae9YK3gWkkkqsH
	 GnqEI4mJ/HC+1frTPAz6hMxZ70SNPbMcdrwBzdWrnmxS/WonS4nJOAC6pZx6JzF1NV
	 dU2+1TEjyHWFqT1LsnhAQ/888gfWOzrhqUyf0f1hvFt3VQeoIJ5vXFzCcM2bQdf8My
	 IBkE+npnRsxXxMiA5O4EaaWO0NhtODEA5PDHD9sQWUVs2TFODbR68vOeIBb5NFaPgs
	 yp98O74EDKgNg==
Date: Sat, 29 Mar 2025 08:37:35 +0000
To: yocto@lists.yoctoproject.org
From: Sean Nyekjaer <sean@geanix.com>
Subject: [meta-lts-mixins][scarthgap/rust] rust 1.85.x
Message-ID: <5wpwzkdc7cmkaj2xqsflisupelwim4eyrvub5yqyom4agcowfw@ym4fodrxb43t>
Feedback-ID: 134068486:user:proton
X-Pm-Message-ID: 933cb8f179e2c6691ec0d8cfec855a31eec595fe
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 29 Mar 2025 08:37:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65032

Hi,

I'm using scarthgap lts for a customer and they really want to get
started with Rust 2024 edition which is included in rust 1.85.
It looks like it's close to getting into oe-core.

What is the procedure for getting this into meta-lts-mixins?

Do I need to create a new branch called scarthgap/rust-1.85 ?

Do we have to wait for a oe-core release to be able include it in
meta-lts-mixins?
scarthgap/rust is rust 1.81 which is newer than the one in styhead :)

Br,
/Sean


