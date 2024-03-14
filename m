Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB481C5475B
	for <webhook@archiver.kernel.org>; Thu, 14 Mar 2024 09:14:24 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web11.8348.1710407655813499559
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Mar 2024 02:14:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QVxgagbc;
 spf=pass (domain: gmail.com, ip: 209.85.208.176, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2d208be133bso9384821fa.2
        for <yocto@lists.yoctoproject.org>; Thu, 14 Mar 2024 02:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710407654; x=1711012454; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pAMiYlUKKnrP7iNETWW+cFsUFL5Bh1GtKPhqLXWy1d0=;
        b=QVxgagbcyT62sTWDhFBUBsQM38byiQtJcNDooyqnbmU7R0gJEDIRZswZYouOQvEsXU
         5LVnwNOEfftiwvmQUiy+TvCWyK4ippQWZJmlEE30hAsfcuTwSvTz9RmUwiyObvUfIIBC
         rBK1OPwyoP/StsueiMXVnkhwc/opnlWK0453gWnK3qC9q8eYPghIasVQPcVdxcg93l1n
         b3WGXG49tU/4CRDIiBeh7zk27BjmIi+/bEuNrX34h2bYduvQWyIZ1KtWOcFsFi7bzGeS
         TDEaTF7NVWJdQgcBgptmVH4F+jI2Yi8mswh7Qyvn+NS8LF94wL+t4qGdKjKlHgoJ+n+L
         fR9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710407654; x=1711012454;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pAMiYlUKKnrP7iNETWW+cFsUFL5Bh1GtKPhqLXWy1d0=;
        b=kpUEvipXT5shgPT9xbKrWVsGG5ZVib70TCnfRCLleKUm4VJUeqpw73AlGZwHg/A/qg
         U58pE80X3EUtvnR37hgYMRm9mExmpic+Ac5ycK42cJj+v1jP18Ps+ntDFbeG2d+TtjNC
         GB4EGYT9WIP3FAdWFZTEGAkcneKofOqDJnAxbTGIMP38kiMS25sEHFzonTJJMnwgmBUM
         /PRtf5gL6sjbzoTlTyH9z+70q+y9n/TX1j9E3LSwdU/e9tea2sa5Rn3u4skwbeo2HhDi
         UUpMqwMfRzRcYaHgInKJn4Vk122UKQx9xxYaHfH4zNhJjersNMrndeJlH43DFHR6gPYK
         KkSw==
X-Gm-Message-State: AOJu0Ywb4hlzkDDrB728wkNM5iAW0jaV0LlnqsEFYom1N2ewtIjHKkFV
	EE3YXieKRw5tlt6sB4fuyUyYbxdg9HT7HBjay7kPsoaRx8FoapO7yOvVRwML9IuNq1UyCSqXZdU
	QrvLWeSA2Dy/R5/WzXdugBH1xhXpam0kd
X-Google-Smtp-Source: AGHT+IFrIuC/afjrsHlYDilpftnJ+8QaAfpKX4wJCF/HQZZrnd5D7ShzhJnL3dmieOoaJbRe7K7YunKzDCzJBneIf/A=
X-Received: by 2002:a2e:890d:0:b0:2d4:3cf8:1843 with SMTP id
 d13-20020a2e890d000000b002d43cf81843mr760711lji.6.1710407653718; Thu, 14 Mar
 2024 02:14:13 -0700 (PDT)
MIME-Version: 1.0
References: <17BC4CBCF66B2D6B.15086@lists.yoctoproject.org> <CAKe-BNoTT6ix6c7Ec6BEDJC-=3-as_n5nZeaP9FdebL+BsvH=w@mail.gmail.com>
In-Reply-To: <CAKe-BNoTT6ix6c7Ec6BEDJC-=3-as_n5nZeaP9FdebL+BsvH=w@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 14 Mar 2024 10:14:02 +0100
Message-ID: <CANNYZj8tuTEVABAbjcyYDzhBgAh+5-F0JkfcoAw157apOkJ6Hw@mail.gmail.com>
Subject: Re: [yocto] How to use a single directory in multiple layers.
To: yocto@lists.yoctoproject.org, saswatinayak2010@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Mar 2024 09:14:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62759

On Thu, 14 Mar 2024 at 10:04, Saswati Nayak <saswatinayak2010@gmail.com> wrote:
> My scenario will be , Suppose I am having a layer meta-A and in this layer some directories structure is there such as recipes-bsp, recipes-kernel etc.
> in recipes-bsp I have a recipe atf_1.0.bb which has few keys which are stored in files directory.
> and being used in meta-A also and meta-B also having the same recipe-bsp which also need the same file to be used.
> How we can use the same files keeping it only in the meta-A/recipes-bsp directory.
> Can you suggest some idea.

You can ensure that atf recipe installs the key files via
do_install(), and then if other recipes list atf in DEPENDS, then they
will have what it installs in their sysroots under ${WORKDIR}/. There
are a few details that need to be right, but this is the overall
approach I'd take.

Alex

