Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.7187.1580385889931097622
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2020 04:04:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Z4LV+npF;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id f129so3938803wmf.2
        for <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2020 04:04:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=4K2o/80bFULoet5T7mB+V6KRvS+/SBNXtJQUb9/j6Gw=;
        b=Z4LV+npFpIJRGPIl7zN8+4NLA6WLHvE8ELrB2r6mxVg4d4XrgtB0C6M60PB5NQ/uYr
         snKErSiDtiU8ZDez6WwL4MsBEGKtheNm014jI+E5+1L25PYmQ8L9FFhQiwJGex4bgG/t
         bJP4IJEsb1Ff5tdU+KakJXzG2cY0NzJEciAqk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=4K2o/80bFULoet5T7mB+V6KRvS+/SBNXtJQUb9/j6Gw=;
        b=QOGIekYv64VzVJZDNWtb6R/vZUyKURo2IyVDCK5L3zW1retmIsjOghc5zlWWHcshdf
         Wn75hFZUmaiZYUa32D28pnnS79i06mDD50FpQWZt15kPjB1qe3nWW4zx5m0mCZKe1HKi
         QNRrJ2VOxruj2hBbSVZxSKW4RcXx7Z53mmFqe/0Buy20IGwnlTCe+AxhLo++lsbbfWNj
         ny5QFrQuGtgplAurJlNYheYCZAlH1yWNH6M5II/wYKeC6jlMpUY0i9SSGhbno5uCfjru
         wOl1dAkr6ePWJWI+vW92OQAQvxPmveuBp5C0L8IPQv+m94hCm6a1xQAAHAyHtFAKvVe0
         VQIg==
X-Gm-Message-State: APjAAAXX2GBzuOypmnfxhEuDRecONmM+RjnvMWOx44KaXQViwxQg0yMM
	Xbubc/xEfHl93gs45D22n5ravA==
X-Google-Smtp-Source: APXvYqwOotyhdRI7vFqkfjnfzxK+SElYZJMpZLKXI8TmfFwWOk9V9lNYKPKSjlCTIh9idYpMjLz3ng==
X-Received: by 2002:a05:600c:2c50:: with SMTP id r16mr5221566wmg.74.1580385888350;
        Thu, 30 Jan 2020 04:04:48 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id v17sm6787954wrt.91.2020.01.30.04.04.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2020 04:04:47 -0800 (PST)
Message-ID: <4911dfd590168072b2f4f8e7437c7c8d8229418f.camel@linuxfoundation.org>
Subject: Re: [yocto] Bitbake immediate assignment behavior
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Alexandru N. Onea" <onea.alex@gmail.com>, yocto@lists.yoctoproject.org
Date: Thu, 30 Jan 2020 12:04:46 +0000
In-Reply-To: <CAJgSc4xZ9Jhyqba1dufKh5h2WHidw5evus5Yo_obr2vdrxDOPQ@mail.gmail.com>
References: 
	<CAJgSc4xZ9Jhyqba1dufKh5h2WHidw5evus5Yo_obr2vdrxDOPQ@mail.gmail.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

On Thu, 2020-01-30 at 13:32 +0200, Alexandru N. Onea wrote:
> Let's consider the following example in a bb file:
> 
> X = "1"
> A := "X is '${X}' and Y is '${Y}'"
> B = "X is '${X}' and Y is '${Y}'"
> X = "2"
> Y = "3"
> 
> According to the bitbake user manual, section 3.1.7 [1], the expected
> values for A and B after parsing is done, are 
> 
> A="X is '1' and Y is ''"
> B="X is '2' and Y is '3'"
> 
> meaning that, since Y is not defined at the time of parsing the
> assignment to A, it is replaced with blank, while X is substituted
> with the value that it had at that time. On the other hand, B will
> substitute the last defined values for both X and Y.
> 
> However, if I run the following example through bitbake, I get the
> following result:
> 
> A="X is '1' and Y is '3'"
> B="X is '2' and Y is '3'"
> 
> Although unexpected and a bit counter-intuitive at first, the result
> is easily explained by the fact that, according to section 3.1.4 [2],
> an undefined variable expansion results in keeping the actual literal
> string in place, in our case "${Y}", which probably leads, at the end
> of the parsing, to a re-evaluation of A and, since now Y is defined,
> the substitution of that literal with the last value that has been
> assigned to Y (i.e. 3).
> 
> Question: is this behavior intentional? Or is it a bug? The
> documentation for the immediate assignment states that we should
> expect undefined variables to be substituted with blank while in
> practice they obey the rules of the simple assignments.

I'd say bitbake is behaving as it was written to behave. I'm not sure
its ideal but we probably do rely on it in places.

> Should at least the documentation be updated?

Yes, and we should add some tests for it to better "document" it.

There is a patch on the bitbake list which tweaks the docs already but
I'd like to fix the example too.

Cheers,

Richard

