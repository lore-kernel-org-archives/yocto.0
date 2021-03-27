Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web12.362.1616880002456317052
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Mar 2021 14:20:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=Z8j6RvX3;
 spf=pass (domain: burtonini.com, ip: 209.85.221.53, mailfrom: ross@burtonini.com)
Received: by mail-wr1-f53.google.com with SMTP id o16so9045122wrn.0
        for <yocto@lists.yoctoproject.org>; Sat, 27 Mar 2021 14:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZmhAaamch4RkOaSlIGskRFqJL4yzHVsXVJH+ygis8RQ=;
        b=Z8j6RvX38B7xyt5p60nPvBQ1m+1d/jMDhTL1ZjZ3fuwrS4UXYHoRQ73mMJGhOTrl7P
         lohvxY18ECq+X1RRXeP4OHhPRpHHIri8BBPWGT0yXE0BZzgLrWyWjqMc2XjpZPV7WEAA
         OaonvIZuqDBGU6RH1fuiIHvFvHbDIJ74eX93J3lyCpn8kvDti5EIjyoNcDftY3JjzSfz
         Sv5snDSvon1i/vKl58kit7WhV9909OqBRPE3eip8kf+jCLChURXjojOuBKKZc2s9t1JM
         M9nZi5WJpvrjoyKMqj0jAFEGxv8MOopAW3yrrMTTa61+NpqJqzES8akCPpXNWfQoLUyW
         H4JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZmhAaamch4RkOaSlIGskRFqJL4yzHVsXVJH+ygis8RQ=;
        b=aRRZ1JWXplggFLCyVk/2IyOm6JDb4p+5LiT1nrdcRgCP26VGjJHHGkpm8qHs3pEVo1
         Mcmyb642q3S6kb06dwyQza4wLyjJJAUetK3qaDjtgUJvRkJuEHIR5kfXSAwJ6logizG3
         pIyLBElfzq5/4iy0BsbInVKVTPu8ftRNNCWqNR1GpAVCKqxJ293nFemiaz0cMl0bF/LT
         Pq7R6VI0b4Eq4uI54rlrR/LlKT6mRJvUOrdbBb+K+rissV1VtWls5+8Mufm0eKKwWT7Y
         leUeyTfYBERJfr4wk70HOSy1eMGj9CS2QX2fnPuIGNpPYxIPK2Qwixm53ghvHlnZgN0R
         Kx6Q==
X-Gm-Message-State: AOAM532wNbnAq0nAXkGA72hn5mtyXNJokdd0dEVdPcLixnPnDeJ4urjj
	NK5S8a9gQAx3Ios/WXwaWMlBoNdl+g4roTxnabkFbw==
X-Google-Smtp-Source: ABdhPJxiNDCqfc6wDLhl7NzfEekE2AwIk7cqyYoW8Qd6f/Fbq64B3x+Ap/hAoHyGDEFZxYY0Ukp1b6MenovczXT+UqA=
X-Received: by 2002:adf:dd4f:: with SMTP id u15mr21491379wrm.260.1616880000938;
 Sat, 27 Mar 2021 14:20:00 -0700 (PDT)
MIME-Version: 1.0
References: <PR0P264MB0889619029EC3D585324E10BE1619@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
In-Reply-To: <PR0P264MB0889619029EC3D585324E10BE1619@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
From: "Ross Burton" <ross@burtonini.com>
Date: Sat, 27 Mar 2021 21:19:50 +0000
Message-ID: <CAAnfSTsD-5QfBYueQsUF6BLwxD6rXX9evxvn1NKX9q65b3mkig@mail.gmail.com>
Subject: Re: [yocto] To burn 'bitbake package-index' into build process
To: keydi <krzysztof.dudziak@thalesgroup.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=ross/index
is close to what you want, but I didn't quite finish it off!

Ross

On Fri, 26 Mar 2021 at 16:45, keydi <krzysztof.dudziak@thalesgroup.com> wrote:
>
> Should it be feasible to burn execution of 'bitbake package-index' into distribution/image build process
> by conducting an adaption of meta-data ?
> I mean high-level script is used to spawn Bitbake environment then start Bitbake image target.
> I am unhappy to mess up high-level script to add that step to build process.
> I am unhappy to make detail that level be visible in high-level script.
> Rather I prefer to modify meta-data.
>
> 
>
