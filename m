Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.3388.1581665580958656135
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2020 23:33:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rmGNTRVx;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72DA0E01613; Thu, 13 Feb 2020 23:33:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com [209.85.215.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54F77E00726
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2020 23:32:59 -0800 (PST)
Received: by mail-pg1-f194.google.com with SMTP id b9so4369472pgk.12
        for <yocto@yoctoproject.org>; Thu, 13 Feb 2020 23:32:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=U1hbjpd/ftEymfL6ybFDOBsUa/W+xVco3mHdFkSvy6U=;
        b=rmGNTRVxaJfm5S4EA77mKxiOVyDWX3bDjjwudlv3gjDRuOOGgkSuajWeAt2IAGSSPU
         ZveCo2ExV3HdY9EFTZSkZey9CS2t5YxpW8Blp5uO7ibpeAJrlLoim3SX0a9kLPxqMW8T
         eVoI6Xa2x7C7Q35B36iyF7WDHdiegPPIYj4l2naQAb4z36rZlS1VOSy9djX4f7DhMk8S
         C8/JXjXROzVVLkXVVvrzt/lhgYnfU2ugzf/J3EwqYEAXNFKP5P/URwneRs47C9tc08YI
         m+kdTgg9ALmlSF+uTUhlBY5PL0RL9InfnujO74fUWM4m7CyR1GE87BYsuKh3OvqeicK3
         LoLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=U1hbjpd/ftEymfL6ybFDOBsUa/W+xVco3mHdFkSvy6U=;
        b=QAz0dSiOBfc0XjxMleHflFqwtXhZXF/gQPTMpCvuiXzdDDdcVYvlnBZJHup3/if9mM
         91FI3tf82iKoRxHBvW5dlmKxCBre5EXSfII0SWWRFMHJeg6j+OXv3BzVO4Qcb75lL8l0
         XycNHUlAFmyXT8BdeLlZdBEsqAFmRjam2ULgPVFrAH75l7wfcGh5Odwt9vXKGTr00TlE
         Pxd/BDakt9dyWWh5pfWIhMeNmhapeDZkKudFYUDS6QLGLAkkpIJeWMlwJePkb+wya2+r
         ERC2WA2ji0xG0raqUJ8kiIDktFfFfL6SYAyydIqSi6i41/XsTAfmauh99dc4n0QnrX9k
         SwUQ==
X-Gm-Message-State: APjAAAVcNCl5aHMy2Tn5KPFBCQSqReOSlcCzw9NdNe8U+kjEvojJOxQu
	vufbYh1/Q6yPTDrLp3aMUkWlCsC5RFQ=
X-Google-Smtp-Source: APXvYqwASTwZB+M12bCBGBATyt0qyin0QpGmVWQ/yTf8d/VQzXVWU1b/ha72ZeijRqtelrupSMj1lQ==
X-Received: by 2002:a05:6a00:2c1:: with SMTP id b1mr2139231pft.80.1581665578222;
        Thu, 13 Feb 2020 23:32:58 -0800 (PST)
Received: from ?IPv6:2601:646:9200:4e0:e46f:82cf:7841:c431? ([2601:646:9200:4e0:e46f:82cf:7841:c431])
        by smtp.gmail.com with ESMTPSA id o14sm5593071pgm.67.2020.02.13.23.32.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2020 23:32:57 -0800 (PST)
Subject: Re: [yocto] [psplash][PATCH 1/1] psplash-fb: Avoid racing issues on reading fb0
To: Andrei Gherzan <andrei@gherzan.ro>, yocto@yoctoproject.org
References: <20200213103000.1594-1-andrei@gherzan.ro>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <6f979b87-756e-207f-0500-a83c6afa07f6@gmail.com>
Date: Thu, 13 Feb 2020 23:32:56 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200213103000.1594-1-andrei@gherzan.ro>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2/13/20 2:30 AM, Andrei Gherzan wrote:
> When starting psplash as early as possible in the boot process, the fb
> device node might not be ready. This patch adds a loop on reading the
> fb0 device with a timeout of 5 seconds.
> 
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>   psplash-fb.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/psplash-fb.c b/psplash-fb.c
> index 6603572..6700a3b 100644
> --- a/psplash-fb.c
> +++ b/psplash-fb.c
> @@ -137,6 +137,7 @@ psplash_fb_new (int angle, int fbdev_id)
>     struct fb_fix_screeninfo fb_fix;
>     int                      off;
>     char                     fbdev[9] = "/dev/fb0";
> +  int retries = 0;
>   
>     PSplashFB *fb = NULL;
>   
> @@ -156,7 +157,9 @@ psplash_fb_new (int angle, int fbdev_id)
>   
>     fb->fd = -1;
>   
> -  if ((fb->fd = open (fbdev, O_RDWR)) < 0)
> +  while ((fb->fd = open(fbdev, O_RDWR)) < 0 && retries++ <= 100)
> +	  usleep(50000);
> +  if (fb->fd < 0)

i wonder if there should be a different way to ensure this dependency 
perhaps sd_notify for systemd or udev notification maybe ..

>       {
>         fprintf(stderr,
>                 "Error opening %s\n",
> 
> 
> 
> 

