Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9192DC433EF
	for <webhook@archiver.kernel.org>; Wed,  9 Feb 2022 16:17:33 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web08.28701.1644423452655721188
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 08:17:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112
 header.b=32os5WH3;
 spf=pass (domain: burtonini.com, ip: 209.85.160.169,
 mailfrom: ross@burtonini.com)
Received: by mail-qt1-f169.google.com with SMTP id j12so2239737qtr.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 09 Feb 2022 08:17:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=v4TRBTdgWHo9VdVYoLq9GyRSEZqgEXd39GwglEvPBy0=;
        b=32os5WH3aKG6244Qo6GqL9iAEIztzWqizzJwXWmUviqcoUdVi4v0BxlD5NeuFRRY9l
         bIXr0kSLgUF7gG8j/pVcQsBgCbHDbf7D+yJU2Sr7lrkx5gyxCNHDQhc4I5Z5ljhfX9ch
         mFGjgnNVqIe5N39CjU8Om3ioBSMTpXdTTfmS+PV/FVzYJV11dIczwRyNfvwnYe4u7QAp
         gNDh1/5NUdJG0CH62BV9u9++VQpFR6/Eq5q9rYHKt+1qu3vz0ldaypmcbd97k8p/UDVA
         VkCiVgM+nlLg05AOFJZtLqziSi5P1kP+TUBBkjkxnTFDutdplcAnJjq+qqtsgd2NHv3j
         XktQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=v4TRBTdgWHo9VdVYoLq9GyRSEZqgEXd39GwglEvPBy0=;
        b=m/ES6dAk1d+iMXkXf4fJp3/HNGwbUECQk1bQkGjrUyJVfNhYHRocW1IgdPMwSq++WQ
         uYiu04hSYutSfXjBZiZyjZUizo4JLwF9bJQ5GUeOTMKbXgYMmygLx3jf08cuUB25SvIw
         0MCo0tNILjCObl5stbdnAIuKeMqxnhRR5slQu4cRjMI917jRRvxOhvv0UcWWw7AyMv7o
         KkNABmREo946wygBK9uNv1w/ZyVpKyszO36TPgsJsnyY9tgWK3HFI70Dg/FovbA/4SHv
         VWccWKY5snDgfAPstQVJvTggpQuixI4+rNw4HSLBwpOiYZtmf7VhETDDeVUK3TQf5Cu5
         9GdA==
X-Gm-Message-State: AOAM5320ySLbotGgbxirhatZQiXCVc6b7WWFA+mOO9bx/Z8clgyH0ISZ
	7pEy/WSlRyIzyXl7ThwWuJXyxi1butJoy1qIt7v+HQ==
X-Google-Smtp-Source: 
 ABdhPJxJPLdybYINtndZkw8GlBHvrx7djsC5i7gYn26EGM2Z8B9tmaiPEy42AgXo/R5eiuLBl9FRe/2SR09pls2lEwI=
X-Received: by 2002:ac8:5f88:: with SMTP id j8mr1900524qta.192.1644423451688;
 Wed, 09 Feb 2022 08:17:31 -0800 (PST)
MIME-Version: 1.0
References: <90135b4d-6a37-f5d7-dbba-7d0ef47aa778@kernel.org>
 <f0fe3b45abdc3f073d3efc53d4f12fd6dd9b8951.camel@linuxfoundation.org>
In-Reply-To: 
 <f0fe3b45abdc3f073d3efc53d4f12fd6dd9b8951.camel@linuxfoundation.org>
From: Ross Burton <ross@burtonini.com>
Date: Wed, 9 Feb 2022 16:17:20 +0000
Message-ID: 
 <CAAnfSTsMXX=RBO055EFXWQtwXzrcDpXrzfbd3=J9M1Mje3Lh=w@mail.gmail.com>
Subject: Re: [yocto] Maintaining ABI Compatibility for LTS branch
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>,
 Sinan Kaya <okaya@kernel.org>,
	Paul Eggleton <bluelightning@bluelightning.org>,
 Steve Sakoman <steve@sakoman.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Feb 2022 16:17:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56120

On Tue, 8 Feb 2022 at 23:07, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> I was curious about how everyone is approaching this problem.
> There was some attempt to bring ABI checking functionality in the past
> but this has never been merged.
>
> Is everyone rolling their own solution? or never moving forward?

Relatedly, somewhere I have a branch that uses libabigail to extract
the library ABIs in an build.  The next step was doing the comparison,
but I never got that far.  I wouldn't be surprised if someone has done
the same but actually finished the effort.

Ross

