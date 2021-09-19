Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web10.9060.1632047861581111386
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Sep 2021 03:37:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=C4CNUlq5;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id d207-20020a1c1dd8000000b00307e2d1ec1aso9977683wmd.5
        for <yocto@lists.yoctoproject.org>; Sun, 19 Sep 2021 03:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=TBqBDhthpnkvi2g5f9HKa8ceJl1X97y8xxpheSo34Oo=;
        b=C4CNUlq56On3plBGYMXfTtNNYAxKnts2UBujY/8FElVWM+oR8N1owhIybH/0RLnRT7
         dzantBR9mkMR5OOT3ThZmu2Xgsy974LCsVm7nVL4/QMM/cNfcY/e2l1nrMLutqcvnhhu
         +pUethPQAcLOy9r4vV10swRmq+lVBHw8fkGCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=TBqBDhthpnkvi2g5f9HKa8ceJl1X97y8xxpheSo34Oo=;
        b=2kKJEf6OxtlOv/0rqBZ0C9wX6meVOeCl+G4f0pfQIcPTgjCcxSbIlNX+nyD7bBbNfa
         MMlR3v1o7VIWpXN1Kte1FnKiPCoX7jYBshKQlRr0EjfXD/1/+fm6WmrfdnGpeqCZQPbW
         F7FfgSZyNGUHlvJNPxC+VzoHqxEfw2cy0nPzUAa9IyYU4Taa70vt+q+LHda79q4z7Y6P
         +2bsdO9aAEHAuSoiZQ/X6XsL8nb6tsaUQQCzWcBqtreFyR+qb91pKcTH/XyKboTDg2yS
         lcmcaQ4mI36lqjDjms3y6+Ieqonk8xGJYzHGZhYmAwRdWXZlHqJbbyyMNGTwC0c+QgnM
         v9WA==
X-Gm-Message-State: AOAM532UomR7Q53dZPiEtJflXJuiYDkSLapZ4wuENmSY6U6FWEC+Zhmr
	y3PCRtR4JlQzI4z6XRt4ZYou3A==
X-Google-Smtp-Source: ABdhPJxVulYExv3z+7smG+k44P+nJSXoSBrSlBWhCW9x8HeFM4+leBjFX20aKLD85br3EqS8S4rCNw==
X-Received: by 2002:a1c:9dd2:: with SMTP id g201mr23787917wme.46.1632047859944;
        Sun, 19 Sep 2021 03:37:39 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:f583:326e:a3bb:7da1? ([2001:8b0:aba:5f3c:f583:326e:a3bb:7da1])
        by smtp.gmail.com with ESMTPSA id u2sm11959983wmj.29.2021.09.19.03.37.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Sep 2021 03:37:39 -0700 (PDT)
Message-ID: <ea5b24e80be3fbec544e1259e5f5684646417e3c.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] scripts/collect-results: copy everything out of tmp/log/oeqa
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Date: Sun, 19 Sep 2021 11:37:37 +0100
In-Reply-To: <20210917133800.2436736-1-alex@linutronix.de>
References: <20210917133800.2436736-1-alex@linutronix.de>
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2021-09-17 at 15:38 +0200, Alexander Kanavin wrote:
> There are additional logs there (such as task log or qemu
> console output), which can be useful for debugging test failures.
> 
> [YOCTO #14518]
> 
> Signed-off-by: Alexander Kanavin <alex@linutronix.de>
> ---
>  scripts/collect-results | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/scripts/collect-results b/scripts/collect-results
> index 93834d6..3663330 100755
> --- a/scripts/collect-results
> +++ b/scripts/collect-results
> @@ -3,11 +3,9 @@ WORKDIR=$1
>  DEST=$2
>  target=$3
>  
> -RESFILE=$WORKDIR/tmp/log/oeqa/testresults.json 
> -
> -if [ -e $RESFILE ]; then
> -    mkdir -p $DEST/$target
> -    cp $WORKDIR/tmp/log/oeqa/testresults.json  $DEST/$target/
> +mkdir -p $DEST
> +if [ -e $WORKDIR/tmp/log/oeqa/ ]; then
> +    cp -rf $WORKDIR/tmp/log/oeqa/ $DEST/$target
>  fi
>  
>  if [ -e $WORKDIR/buildhistory ]; then

I'm not sure about this since it has the potential to add a lot of files to the
release directories and I suspect that will confuse the releases and people
looking at them. At the very least we need to think about layout here...

When I proposed we improve the logging on the autobuilder, I was thinking more
about printing the logfiles on the console in the failure case. That way the
logs are immediately visible on the autobuilder log output people are looking at
and you don't have to go digging for the files. I can see pros/cons to both
approaches though.

Cheers,

Richard

