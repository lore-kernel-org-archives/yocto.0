Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4061.1581166370998999599
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Feb 2020 04:52:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=otcOYHDf;
 spf=softfail (domain: sidebranch.com, ip: 140.211.169.56, mailfrom: leon@sidebranch.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82B8EE016EC; Sat,  8 Feb 2020 04:52:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50730E015F8
	for <yocto@yoctoproject.org>; Sat,  8 Feb 2020 04:52:49 -0800 (PST)
Received: by mail-ua1-f44.google.com with SMTP id 59so858502uap.12
        for <yocto@yoctoproject.org>; Sat, 08 Feb 2020 04:52:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DJ33+ZmT0itRvZy2SB4Rx6yyd1noMGhc/FtSIFuR3PE=;
        b=otcOYHDf3UfA18JWOBVs9ZsDLqcs/w55CCvgDKF+bor6v/qqrQwUyqjq1UlbEvMq9h
         Y25M16o4r7aJUdc7uvAXtL74ldA1bOpIGI/DjoDRvzAC7UVly582ApG+y9TtpeO4I2DR
         xSJZRn5MgUPhadEHzZKqs1W2sfHFJIrfFAVs8w5sBjvEY5E/RkDF2wKDy3wioKecVunC
         Zqhhrwmluv7kOBheQe0Smj6ppfgBdha1VAIf9e0NAJIUOEWtgyg/reiZ2m/kyk2HSRLr
         fxSgVkcchhCXzNUxh/8dmPsFXzm//v3BGysN09IrQiB7nibL9lFqk9th7Ep4RTmez/EM
         5R/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DJ33+ZmT0itRvZy2SB4Rx6yyd1noMGhc/FtSIFuR3PE=;
        b=MYzpriEPyoQzAWzls/GJhZeTrh7izMEypo70AdyEIxoJ+o8PRupMjwRvTPGmAUOcp3
         EQQFRibAh83B5LZYTb/5ygcEcuD6yT4J2aKDiybhxRNl78jh5rqfEzrBTdoGIaldTKI5
         mKOpbifydoR4Jxu3YtrXxFAXTbKtZ5dAEyBlKRFw+R3uUpjA7tiD7SPa4vhgXuFumxw+
         I5OsNZD2rc3n05O9MkLCfuGzG3eitzh3yNHxV2IMzM9YJf6rLK9gpQ/WqYLuo7NWh1uv
         LT3ECnCdiq38S+vXYNoSTeB5qeVcCg+1HZrxw1qQxEBhdn9J2gBMjPSUbEAcDx7jXkhC
         rt+w==
X-Gm-Message-State: APjAAAUz7uW5CyhsSxUWKP0Grwo1eO7JU6l6LsZ70NZzieTRh/s2ms62
	DkSGmptTJssOsiGP8N2WzL5YCGnfhtb+HAggBFTXXRQhDz8=
X-Google-Smtp-Source: APXvYqx7R3sRbdJC/AJcO2SIHpdhtghf+uuf+9zQ+aRNy6wpa0XjeYV8e7I0cdpwARs+vetUcmerjziyz12vKZxkMwA=
X-Received: by 2002:ab0:6258:: with SMTP id p24mr1773888uao.24.1581166368355;
 Sat, 08 Feb 2020 04:52:48 -0800 (PST)
MIME-Version: 1.0
References: <alpine.LFD.2.21.2002080611100.2136874@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.2002080611100.2136874@localhost.localdomain>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Sat, 8 Feb 2020 12:52:38 +0100
Message-ID: <CAMjhiJh7Q7NNhw_LnTOr86mOEtBz2K7rGBHvCPYxCV7vm=YYBQ@mail.gmail.com>
Subject: Re: [yocto] clarifying "PROVIDES =" versus "PROVIDES +=" (pedantic stuff)
To: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello Robert,

>   i am *assuming* that, in the absence of a compelling reason, the use
> of "+=" instead of "=" in this context is harmless, but unnecessary,
> correct?
>
My understanding is that:

> meta/recipes-support/libpcre/libpcre_8.43.bb:PROVIDES += "pcre"

means "I provide both "libpcre" as well as "pcre". I am assuming that
PROVIDES = "${PN}" is already set by a core BitBake rule somewhere.
(Didn't check...)

So I think it might be harmful to replace it with "=", as it would no
longer provide libpcre.

Regards,
-- 
Leon Woestenberg
