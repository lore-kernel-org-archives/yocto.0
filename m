Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.36482.1624211986846972230
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Jun 2021 10:59:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cVQbUgog;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: robert.berger.yocto.user@gmail.com)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A4E4E38C070D
	for <yocto@yoctoproject.org>; Sun, 20 Jun 2021 17:59:45 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id y7so16879081wrh.7
        for <yocto@yoctoproject.org>; Sun, 20 Jun 2021 10:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=FGtQHxDZnCzx6yFIhdMDmU4FbKXRzjr37OXnhpYRjnM=;
        b=cVQbUgogoIURbwWE9ZKiRqPMr9Y/vN0GcirQ26EFVAaHf/Wv4hjObGkmFhEJcCA/Gs
         rCRm/8BBhgSjEVJj91F8aqvdZCA7gRCxPUf5ROSDfYltUieUJrOWeBcX7ZfUVg/81wqq
         4wNkLSPCmJfNnLRkxZNY40J++PQuXRlE1MbtA8ESxJffw9jihCHAF9j4tOjnyVzOmaj3
         ZlYoMleRZHgzJDvV6RXJN93jZtvEYo3+kQHxIhEqp499mZqw9969dULrV1VNHhThx97W
         rZvmLQTWN14CS6VMHEGpkgre0ANcuJhv1CnmZdgSWgWhwR+rQO2O2E5Hf+uD258eit8V
         rAyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FGtQHxDZnCzx6yFIhdMDmU4FbKXRzjr37OXnhpYRjnM=;
        b=lCiHfv5mrVB+XtGpjdN5hOVGIpKQKd+EsLYSlQl0anbP6jjgjelA3WHNR7LKgz5qK1
         t8i1UohcKkuAKdVrdb+cNfxKwPaRcVV+EQqeaKGyV7G6tZY/CzPduxX4i6Mpuzr2DlDV
         lkalmoRUpYGkvISB19mOWJC9+WWkZDP596PuW03wFUXU7D0J/Wys6/qJZUNk1mVjoBn5
         bT4zXCyQki33csqvXJq4cCRafQxqDBWPl3qZ8xYrgoCd4Fmx0NdLCBCy1n+O/T4VTu7k
         mxzRnueHTlu3rCe45MbD5h1x2nJ8vQ3/sqizLVN8nOPA7xUwLhXro/vrckV1yC2dcQZA
         hXAA==
X-Gm-Message-State: AOAM531LqKUdiEFXFO953eSKADomO7xrts0ApqOvl2WNc9l8Q01MWTFj
	XLlOZAsq6Kb0MarlDKZhBujD7X1weB0=
X-Google-Smtp-Source: ABdhPJyLuJ+FT7pgy+yOK852s+W1+eIX8YoaMzR7Q5FfURXFU4Hxysp4Hk4hF8+jdI4XzOeba+8xPg==
X-Received: by 2002:adf:a2d1:: with SMTP id t17mr23714941wra.74.1624211984225;
        Sun, 20 Jun 2021 10:59:44 -0700 (PDT)
Received: from [192.168.42.52] (ppp-2-86-153-227.home.otenet.gr. [2.86.153.227])
        by smtp.gmail.com with ESMTPSA id o7sm15920838wro.76.2021.06.20.10.59.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Jun 2021 10:59:43 -0700 (PDT)
Subject: Re: [yocto] the downside of parallelism
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
 Yocto discussion list <yocto@yoctoproject.org>
References: <c9624492-1658-9e87-f680-32b891e69a7f@crashcourse.ca>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <b0f619f1-ce60-d16c-d5ac-261b05fef377@gmail.com>
Date: Sun, 20 Jun 2021 20:59:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <c9624492-1658-9e87-f680-32b891e69a7f@crashcourse.ca>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 20/06/2021 12:55, Robert P. J. Day wrote:
> 
>    refactoring existing (legacy) code base into more bite-sized
> bitbake recipes to speed up build by taking advantage of 6-core
> (12-thread) dell laptop ... end result is that i get so much
> parallelism that laptop shuts down from overheating.

Sorry for my stupid question;)

If you have 12 threads, it's 12 threads and not more.

I guess there needs to be some kind of dependency between your new recipes.

make -j can use as many cores as you like even with a single recipe.

How would it speed up builds if you break up a recipe into multiple recipes?

What is your refactoring approach?

> 
>    le *sigh* ...
> 
> rday

Regards,

Robert

> 
> 
> 
> 
> 

