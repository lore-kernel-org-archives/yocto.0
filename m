Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4297C433F5
	for <webhook@archiver.kernel.org>; Mon,  1 Nov 2021 12:03:25 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web10.43052.1635768204564031661
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Nov 2021 05:03:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112
 header.b=tFWpenB6;
 spf=pass (domain: burtonini.com, ip: 209.85.128.44,
 mailfrom: ross@burtonini.com)
Received: by mail-wm1-f44.google.com with SMTP id
 y84-20020a1c7d57000000b00330cb84834fso7729982wmc.2
        for <yocto@lists.yoctoproject.org>;
 Mon, 01 Nov 2021 05:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vk7LscZAKQTzRQAswvHgCxdFqC7DDuGXGhLp+PXXO10=;
        b=tFWpenB6ZbnxTLtTO3lzi056Plj78lAC1bDzoIwSu5ua+WU8/7oZm9zURWy+p+idJO
         DUq51yC1VCoM1ulltqf1f9oD3CyKBrbqQfHkh30UOvnarEEesC6eZ+7XIHrUUnK7a1Ln
         IvVTPRuSwARweQ+mm1jozYYtShhiyP73bzUO6gszvlmtHG3eE52HTLZysqzm6oChuvJA
         GvRWcw8IZyrP7f1YriwXRK/6zuiKz8OPilvIk9fFV3oLze2cKZvhRqeMt/cf3v9CdqHc
         9znD4RBHCId6cvCKJu60qxDohNGkEY47NDVAuSBIG8cxFhsUxibs7eHHwQncc+9YF7iw
         S6rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vk7LscZAKQTzRQAswvHgCxdFqC7DDuGXGhLp+PXXO10=;
        b=2/hCXR3BkBYebd0ZbwuPcfKYyficHUdfHJA62t8WcxZeT5QX1CC3pS9d0MRvQwyGZt
         CIHxYXNA9cQMFlDo6Ly5TaPOX+jUYBgvBvX7jBPbtqJeL4dRuhMps/JjIMvhxpdittfr
         RUp++3P3a2LMPkbEUihOgVsulRO89Ok0JXZZDURaJmYyMuO/RfCrpjy2CFbZtGwEckjn
         thZi+T33XQ6TV+mElTP7pdUuS6rxu5ypXPhoE4RUaDkhGmX9yhV3HeuwlbTenpJMbBvn
         LoGs1mYz//PNGqhh3txbJvuEmnJhuXtD9UOQechBgDCpNUf3IKYFn+6wIWS4m8KQcCO5
         mhew==
X-Gm-Message-State: AOAM532jSVvc/u+t5+/bv19x4mc/mx3MMtODz5LyPTdwD7mml/nhoqYw
	xRU/Jgdmcralb89ak7gZVakk2BaiHpC3aQXtlr5wDg==
X-Google-Smtp-Source: 
 ABdhPJwr4hyhE6Tar3j93LZz77szdUJR9lVd9eKz6QzbGRxDd6cRf3ZzH6Pgz+MPRi+HI26RghLL8bLj6AV7u5J9rqs=
X-Received: by 2002:a1c:447:: with SMTP id 68mr22395436wme.69.1635768202955;
 Mon, 01 Nov 2021 05:03:22 -0700 (PDT)
MIME-Version: 1.0
References: <e26334762f4d4b2e7f0f12a0f429da14@vivaldi.net>
In-Reply-To: <e26334762f4d4b2e7f0f12a0f429da14@vivaldi.net>
From: Ross Burton <ross@burtonini.com>
Date: Mon, 1 Nov 2021 12:03:12 +0000
Message-ID: 
 <CAAnfSTsih_GFKbzEvUpfMOVV3_JoRsrZqRwufN2-S7Wjq5n0gw@mail.gmail.com>
Subject: Re: [yocto] Specified SDKMACHINE value is not valid
To: jchludzinski@vivaldi.net
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Nov 2021 12:03:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55200

As per https://docs.yoctoproject.org/ref-manual/variables.html#term-SDKMACHINE
the value isn't a target MACHINE, but a name that is present in
conf/machine-sdk:

https://git.openembedded.org/openembedded-core/tree/meta/conf/machine-sdk

If you want to build a SDK to run on an arm host, you most likely want
aarch64.  A 32-bit Arm SDK hasn't been tested, but writing a new
configuration file for that shouldn't be that difficult.

Ross

On Mon, 1 Nov 2021 at 06:27, jchludzinski via lists.yoctoproject.org
<jchludzinski=vivaldi.net@lists.yoctoproject.org> wrote:
>
> NEWBIE question!
>
> I tried building and I get: "Specified SDKMACHINE value is not valid"
>
> pi@raspberrypi ~/p/build> bitbake core-image-minimal
> /usr/lib/python3/dist-packages/html5lib/_trie/_base.py:3: DeprecationWarning: Using or importing the ABCs from 'collections' instead of from 'collections.abc' is deprecated, and in 3.8 it will stop working
>   from collections import Mapping
> WARNING: Host distribution "raspbian-10" has not been validated with this version of the build system; you may possibly experience unexpected failures. It is recommended that you use a tested distribution.
> ERROR:  OE-core's config sanity checker detected a potential misconfiguration.
>     Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
>     Following is the list of potential problems / advisories:
>
>     Specified SDKMACHINE value is not valid
>
>
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> I've tried setting SDKMACHINE to 'arm' and 'qemuarm' but get the same message?
>
> Obviously I failed to do something (properly)?
>
> Ideas?
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55199): https://lists.yoctoproject.org/g/yocto/message/55199
> Mute This Topic: https://lists.yoctoproject.org/mt/86733811/1676615
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ross@burtonini.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

