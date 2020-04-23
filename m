Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.6378.1587649486360816456
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Apr 2020 06:44:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=iP4zbL8C;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7FDCE01A0C; Thu, 23 Apr 2020 06:44:45 -0700 (PDT)
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
	*      [209.85.128.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92328E01A0A
	for <yocto@yoctoproject.org>; Thu, 23 Apr 2020 06:44:43 -0700 (PDT)
Received: by mail-wm1-f66.google.com with SMTP id x4so6503081wmj.1
        for <yocto@yoctoproject.org>; Thu, 23 Apr 2020 06:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=ggOP+qGI195x/A6yiq3StIso6aCJ/4vqn4i58cBkjp4=;
        b=iP4zbL8CzAplDOUyDhNk2uhCi5+zA9uYoBtziSRGXEZ/v9KSj2ZXWt1V7xqPYCsq5x
         YDs/jJgWS7vF2G0/7UYEf/NO9kar0fs4+VIFAkiuy+F5/WDdKbvb/KvzaFXgK/bzUOfX
         OXOpZYgR6ZYo3QI15spm9d5bDoNVx4xIjnwdE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=ggOP+qGI195x/A6yiq3StIso6aCJ/4vqn4i58cBkjp4=;
        b=TFfO2kGbIZcUyqmJH5xHWYQ6UlyrCHCeFKG4EPlJDW0X5OdatrAFGdpXF/qwhKAdqL
         qwElRZu2i6pH/2U4XyeVgEsKlMcv0StCqt3RhFAGs8G6//7k+RaaNydhlxqMoLxKeI4J
         z/pdp55vUnylc6Z61xruagpNj2YVuuHkDHTHXt2G8JnQpQKC5erZUV7goHhDSvhPtFNu
         uAqSMsgpJGpL+PBn9ftaEwyOUwqAAzIp3OUT5m+XcKqJRptkuYMe5c4V2v6cQA/8Jzkr
         kVtOUDETUJLdjTAYBqxAAKTwbTNVSU2N4MLFUJQdi2Pr9woYkQH69J3qvvMWHS8E5Pmz
         NVrg==
X-Gm-Message-State: AGi0Puato+L/2gkbXdmJskG8mo+ZXIASby8bKkZW/jvrcpCMzWMm7QQP
	aEBRwDYEQISq4XoBHyGZ7aucsw==
X-Google-Smtp-Source: APiQypJ7lQQZYeA9+TJtsenvKsDrUDDyLZ8ojwGUEOiOCULJnGhD4QoHEVQNY7IX9tF6/gtakg9wGQ==
X-Received: by 2002:a05:600c:258:: with SMTP id 24mr4192149wmj.73.1587649482935;
        Thu, 23 Apr 2020 06:44:42 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id g25sm3681343wmh.24.2020.04.23.06.44.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2020 06:44:42 -0700 (PDT)
Message-ID: <40201b72e33a17577d2c5fd56285fcbea05f1b91.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 2/2] scripts/send-qa-email: fix bug in git push logic for yocto-testresults
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Steve Sakoman <steve@sakoman.com>, yocto@yoctoproject.org
Date: Thu, 23 Apr 2020 14:44:40 +0100
In-Reply-To: <20200423004344.29216-2-steve@sakoman.com>
References: <20200423004344.29216-1-steve@sakoman.com>
	 <20200423004344.29216-2-steve@sakoman.com>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-04-22 at 14:43 -1000, Steve Sakoman wrote:
> We were mistakenly doing a force push if the branch was in either
> BUILD_HISTORY_FORKPUSH or BUILD_HISTORY_DIRECTPUSH.
> 
> Now we force push for branches in BUILD_HISTORY_FORKPUSH, regular push
> for branches in BUILD_HISTORY_DIRECTPUSH, and no push if the branch is
> in neither list.
> 
> Signed-off-by: Steve Sakoman <steve@sakoman.com>
> ---
>  scripts/send-qa-email | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/scripts/send-qa-email b/scripts/send-qa-email
> index 205f6d1..b4d4cec 100755
> --- a/scripts/send-qa-email
> +++ b/scripts/send-qa-email
> @@ -80,10 +80,10 @@ if 'poky' in repos and os.path.exists(resulttool) and args.results_dir:
>                  extraopts = None
>  
>          subprocess.check_call([resulttool, "store", args.results_dir, tempdir])
> -        if basebranch:
> +        if comparebranch:
>              subprocess.check_call(["git", "push", "--all", "--force"], cwd=tempdir)
>              subprocess.check_call(["git", "push", "--tags", "--force"], cwd=tempdir)
> -        else:
> +        elif basebranch:
>              subprocess.check_call(["git", "push", "--all"], cwd=tempdir)
>              subprocess.check_call(["git", "push", "--tags"], cwd=tempdir)
>  

Thanks, well found!

I tweaked the first patch to use comparerepo instead of baserepo. The
confusion came from cut and paste from the buildhistory code.

Cheers,

Richard

