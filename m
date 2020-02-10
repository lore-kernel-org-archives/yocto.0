Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.23712.1581350195564733741
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Feb 2020 07:56:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=N0WyYjsW;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CC10E01446; Mon, 10 Feb 2020 07:56:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF32EE013DB
	for <yocto@yoctoproject.org>; Mon, 10 Feb 2020 07:56:32 -0800 (PST)
Received: by mail-wr1-f50.google.com with SMTP id w15so8412124wru.4
        for <yocto@yoctoproject.org>; Mon, 10 Feb 2020 07:56:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=fMLUl+O/TJN3xKHEyp6bArXrs/dQ/8XWeb3n/KGKhJ4=;
        b=N0WyYjsWKcrQxgHWRQKUIxLNyLJCrG0TnXyXc+sCpHYxN46tEGAYbhtzemby3gBYoL
         qb0FrDiFENMIW9NfCxjxEjrV7Lor8Rt5iT9LmWfbTqLlPC91HaFf2dv7BY8OQKL6XSIA
         8gv2fmSXWIOQnJKDOdfv/bXJ7Kc9BEfYK229A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=fMLUl+O/TJN3xKHEyp6bArXrs/dQ/8XWeb3n/KGKhJ4=;
        b=gd1B0Dg5kWHH5zI6X+Id1SaYyKp+4AlfKwLcVbeW5cCyl0Vfq7GTuP9PlmgOVkcDRx
         dW7iKZqmQQDcENuoKXCs0MwAHsmiaSNEkr0Y0clgsGd4i/slvBeUbHunylPtxrG0aGct
         hxV19+YEdQZN7WotNEdJ5Qih5KJjlfRaIi6MWHKMbCon+Vl7k/a8P6SNuf9GuL4qHGgX
         8xiyPoc/DtIXSX3wvKHvqSPlJU/gS7zF/diHu64hFwyKqkskcWrVBbOUHJ1IW9nyhy4k
         Gj8AwBJjKiU+8Z+3uwXJDmoQm7bFYb0B3l9MQi95jNIyAnzRrBXa1FT/LMI1ky0s5UME
         kULw==
X-Gm-Message-State: APjAAAU0Lz+9EGMVCI9U9pXzlZkeVwPfOApJHvyCb9T/WuFJPzxtn5Ui
	IeGC/vBPDRuI5gspQgERKotH2vEygyg=
X-Google-Smtp-Source: APXvYqxqNdQTNzm21qsl8ZQ5ETA8CXHWdLkAj8HWY+i5g1UlPiqxSs4jklIdI2m6TX9X5NUz4By42g==
X-Received: by 2002:adf:f1cb:: with SMTP id z11mr2528651wro.375.1581350192038;
        Mon, 10 Feb 2020 07:56:32 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id g128sm1051880wme.47.2020.02.10.07.56.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2020 07:56:31 -0800 (PST)
Message-ID: <5226999e05d864ef31151472162f48942af1d4a1.camel@linuxfoundation.org>
Subject: Re: [yocto] more nitpicky pedantry: question about DEFAULT_PREFERENCE
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>, Yocto discussion list
	 <yocto@yoctoproject.org>
Date: Mon, 10 Feb 2020 15:56:28 +0000
In-Reply-To: <alpine.LFD.2.21.2002081322430.2157404@localhost.localdomain>
References: <alpine.LFD.2.21.2002081322430.2157404@localhost.localdomain>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2020-02-08 at 13:31 -0500, rpjday@crashcourse.ca wrote:
>   (part of the nitpickiness of some of these questions stems from
> that, in my updated courseware, i want to use actual examples out of,
> say, the openembedded layer, and not just contrived examples
> involving
> packages like "foo" and "bar". to that end, i want to be able to
> explain why some recipes are written the way they are and,
> conversely,
> to explain why some recipes might look weird.)
> 
>   the bitbake manual has a reasonable explanation of
> DEFAULT_PREFERENCE but there are examples in the OE layer that seem
> to
> not be written as cleanly as they could be.
> 
>    consider under recipes-devtools the two directories "pkgconfig"
> and
> "pkgconf", and the respective .bb files:
> 
>   - pkgconfig_git.bb
>   - pkgconf_1.6.3.bb
> 
> the pkgconfig recipe file does *not* contain a PROVIDES setting,
> while pkgconfig_1.6.3.bb does:
> 
>   PROVIDES += "pkgconfig"

The above looks superfluous at a glance. 

> so, given that, one expects that other recipes should have a
> DEPENDency on "pkgconfig", which could be satisfied by either of
> those.
> 
>   however, oddly, the file pkgconf_1.6.3.bb contains the line:
> 
>   DEFAULT_PREFERENCE = "-1"
>
> which seems odd as there don't appear to be any other recipes that
> provide pkgconfig, and AIUI, the default provider for any recipe is
> the recipe with *exactly* the same name as the target -- in this
> case, "pkgconfig".

DEFAULT_PREFERENCE works against versions, not providers.
I'm not sure what that line is trying to do but I also suspect its superfluous.

>   so while that DEFAULT_PREFERENCE line doesn't hurt anything, in
> this specific case (assuming i haven't overlooked any other recipes
> that provide pkgconfig), that DEFAULT_PREFERENCE line is superfluous,
> correct?

For different reasoning, yes :)

Cheers,

Richard

