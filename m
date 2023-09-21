Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB007E7071E
	for <webhook@archiver.kernel.org>; Thu, 21 Sep 2023 11:12:04 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.13816.1695294717283250065
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Sep 2023 04:11:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YqS+MMl1;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2bff7d81b5eso13706621fa.0
        for <yocto@lists.yoctoproject.org>; Thu, 21 Sep 2023 04:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695294715; x=1695899515; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hnUEYAY9fFitD3R9QWynmbf070MIEmrpPJMaWHMT/Fk=;
        b=YqS+MMl19zenA0NAL5UBoaYAbEDHo81pX8DhwYcLecSWva1N5TfBDQCpJl69Li8hlf
         HS/zX2I33QT1mEMAuFtu5tJq8LQwDGuUKU/TGqnZpFHO0N0NscyR/7Q9EWIGof59TwYg
         5aiygKRDw1+Jb0QPmHFAqrUxpAqT9NEApDI4QcgbJVoIughytwOamjZoN9ASO0RxGSLf
         wyhCyTVs/hTCNpWbMUIBnZY5uHmMxDkqeCJWBOsbfwCCGj+E6RzTZEYAxGsskqSiGGsP
         6wAHKF5sAuzgdse68Jg4UDtmx4vmvrHfvrzO5yDkPYYhugK6/oZffmQEGgPWJslbb39g
         na8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695294715; x=1695899515;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hnUEYAY9fFitD3R9QWynmbf070MIEmrpPJMaWHMT/Fk=;
        b=CxA0SSMTG+ozWvCMY0Q++k5KfJrNDuKpUpci+axnMo0BsZLXbjB2h4cJQUFl5YG9ZE
         HQjcxicxIExfsi+C8SHwY//pXRFxfI/uOYVcwIIVCwHdD3NHlH/EPq5mcRJ/jOJDrOV1
         XpGf8fm8UXrP7HYvha4wsrsiBsTaqmgylgqKRQl/9oFYpbmr3SOBDBSKFkA0waWwnLjZ
         sxvX48IapWQNot4op5Xk5+gfEdRv+k4FCedVYEsVz+KiicOsaOC8yT4mD/0C6p/ZYB3i
         FewlmqPyZOOXWIA+4qHvPb3+LcmYJiiIcnEsKygU0YpOgqsEvlr2RdPBGXogAFBmum3R
         lmog==
X-Gm-Message-State: AOJu0YzXEJOCgplFhuMX3FPwCt3vmgxzVc/4hrchl8q+8HfYtjDxIWMf
	E/e/tjltusOh98Cy1EPXYrdScNS6eT1gETPWO5c=
X-Google-Smtp-Source: AGHT+IG8w5HEu/Ny0dWMsX0ZcQiELNZFk15PU5TGH/EQ23iVCui2Y6jIwzBBqVO7mYSxRmgv/YEe+S9eOmzgp9P5yGY=
X-Received: by 2002:a2e:8908:0:b0:2bd:a85:899e with SMTP id
 d8-20020a2e8908000000b002bd0a85899emr4565007lji.3.1695294714932; Thu, 21 Sep
 2023 04:11:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
 <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com>
 <81f4c191fe6dead1feec6bfc0d36aa328af1f7d4.camel@linuxfoundation.org>
 <CANNYZj_uSknujoQUK2yV7U4N+WW_RkUH=sJnFDBfZgV0G5fv7Q@mail.gmail.com> <5ef99df95ab74e74df6f1e07ef4877487230d9fe.camel@linuxfoundation.org>
In-Reply-To: <5ef99df95ab74e74df6f1e07ef4877487230d9fe.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 21 Sep 2023 13:11:43 +0200
Message-ID: <CANNYZj8RAvj=sJtQuH9J_zKKAsUbhcdKe0hiA2JJy1wwxuzDNQ@mail.gmail.com>
Subject: Re: Core workflow: sstate for all, bblock/bbunlock, tools for why is
 sstate not being reused?
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	Julien STEPHAN <jstephan@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Sep 2023 11:12:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61065

On Thu, 14 Sept 2023 at 21:54, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> The tools are already supposed to support doing this with local file
> sstate sources, they just do a bad job at getting the diffs right. One
> intent of this work item was to try and understand why they don't work
> and address that so at least for filesystem sstate mirrors, you can get
> better results. I don't know how we solve the remote http issue as yet.

I ran a few experiments with bitbake -S printdiff, and so far I
haven't yet seen an unhelpful result. Here's the most impressive one:

$ bitbake libsolv-native (uses cmake-native)
$ git revert <latest cmake version update>
$ rm -rf build/tmp/
$ bitbake -S printdiff libsolv-native
...
The differences between the current build and any cached tasks start
at the following tasks:
/srv/work/alex/poky/meta/recipes-devtools/cmake/cmake-native_3.27.4.bb:do_recipe_qa
NOTE: Writing task signature files
Writing locked sigs to /srv/storage/alex/yocto/build-sstate/locked-sigs.inc

Task cmake-native:do_recipe_qa couldn't be used from the cache because:
  We need hash 5e649a49c4f0de2e62bc8fa4215df1021b9772762065352ef0d204d2d72f4efb,
closest matching task was
85c73eadca06d0e92fcea130ae6e23e902c96314ef1c38c60a14ed3445d24ed7
  basehash changed from
7d4adf817d99893a30a94330803a0eb1c00652ab217c21599944f81f023af6cd to
7e93631376ed159c11460647bf7f4178cb260d44f367d0858c2cd96ae2256b09
  Variable PV value changed from '3.27.5' to '3.27.4'
  Variable SRC_URI[sha256sum] value changed from
'5175e8fe1ca9b1dd09090130db7201968bcce1595971ff9e9998c2f0765004c9' to
'0a905ca8635ca81aa152e123bdde7e54cbe764fdd9a70d62af44cad8b92967af'

That's pretty good, isn't it? It does print both what needs to be
re-run, and *why* as well.

I have no idea yet what kind of magic it does to find the 'closest
matching task' in sstate, but if this breaks down in some other
scenarios, we need to find them to get a starting point for making the
tools better. Ideas? I'm ready to try them :)

Alex

