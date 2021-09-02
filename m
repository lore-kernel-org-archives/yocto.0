Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web08.7460.1630591770474749348
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Sep 2021 07:09:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=0as8ErOg;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.52, mailfrom: steve@sakoman.com)
Received: by mail-wm1-f52.google.com with SMTP id c8-20020a7bc008000000b002e6e462e95fso1566688wmb.2
        for <yocto@lists.yoctoproject.org>; Thu, 02 Sep 2021 07:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8lgvlq6OyCzJ7GG3nWCtqILG+XdsGtvys7Fn3FeFcho=;
        b=0as8ErOgfO7COPiOpDWiHrlxfNCTWUt3JE28PDw6aBPWBYP7GZoWJuRFaIjZ8jX59r
         8JRzTsoKOZKVldN6Ow6sgRnnJYAQJT4QC82JKJiLMGSYntT8saq3UNox4/7af/3XDR46
         4Pj/aamEgHIB3DW0Aru2pWiYdxyQG2g33FQQ/PwmooP7CPgYcfEZcpGbWTtfclrsC6y+
         4gYIxrkHJhNObJhYQCbaqQHgnFL+IlKwlUkJBWWJWjPwBVT7Nc5i3/uHyyENu+zK2ua4
         IcVuJ37YS50THNHmhVJwIk8YTtW1vsop4RLB3WjjRmJywD52a+F3vqjEJ9I6IseT5B6Z
         XfJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8lgvlq6OyCzJ7GG3nWCtqILG+XdsGtvys7Fn3FeFcho=;
        b=UjSbX0oVJh6kvXOurIRp/y35er5m2T/enXeOoGe5dPF7B08kPY3M25aMQkec6lBkf6
         51EYavp5wfq1uml04jNN2O1bM7pGFuNpT2VIquq/CdO7wuYvdnISQYg9EyV3w6BDAn1S
         6QXS468Zgk33JUddql4qIhK3jP+u69PmYIOuUYXptEUynYU/moUpFpTuj8b4YtmmnG11
         VThiJ45itGA9FP5wtV/7rFP/LB98DSL0zNLWiwskMo+2jwTSh6eh0IG/YzPmqb3teNmm
         ySp/ecp1mawtKH14SVPDj2BxUJLqbB6/U2xHcQPTDMAdcss+ViSFNbuUWcW8gnfShmYG
         eYjw==
X-Gm-Message-State: AOAM530zuRx2w430jn36yqHuS01rxOEqTmG9kzjJkgo8cauYCFlk7cqy
	H9zfhkvVL5XUlWDOEKazmlunRcG2s3nUOeOl9HFJSg==
X-Google-Smtp-Source: ABdhPJwk+/zDJ9d6scLTL5mrrWZ7Kj2umZ+jvir/ffHoezqN0uFwbhm70IA7skyAvLbtsF0zj0AmtI8t0P6nlk+Lhk8=
X-Received: by 2002:a05:600c:2189:: with SMTP id e9mr3458748wme.12.1630591768727;
 Thu, 02 Sep 2021 07:09:28 -0700 (PDT)
MIME-Version: 1.0
References: <AM0PR10MB3107CEBBE29A9972AAD796D799CE9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AM0PR10MB3107CEBBE29A9972AAD796D799CE9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Thu, 2 Sep 2021 04:09:16 -1000
Message-ID: <CAOSpxdYp6h9AAjMngMQvpwk+JegjS=RxHPGup7Rb5OaVX8HX1A@mail.gmail.com>
Subject: Re: [yocto] Bug in dunfell branch because of commit "sdk: fix relocate symlink failed"?
To: Matthias Klein <matthias.klein@optimeas.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 2, 2021 at 2:55 AM Matthias Klein
<matthias.klein@optimeas.de> wrote:
>
> Hello,
>
> the following commit needs the variable SDK_BUILD_PATH which doesn't seem to exist in the dunfell branch: https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/files/toolchain-shar-relocate.sh?h=dunfell&id=d6f40be29bf56a835f5825692a22365f04aeb6c3
> This leads to countless messages being displayed during the installation:
>
> sed: -e expression #1, char 0: no previous regular expression

It appears that dunfell also should have:
https://git.openembedded.org/openembedded-core/commit/?id=bc4ee5453560dcefc4a4ecc5657df5cc1666e153

Could you see if this resolves the issue?

Steve

> Shouldn't the process be aborted with an error message at the first problem?
>
> Many greetings,
> Matthias
>
>
> 
>
