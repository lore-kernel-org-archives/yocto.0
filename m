Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web08.5496.1624529416727658569
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Jun 2021 03:10:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=T2H5KCHM;
 spf=pass (domain: burtonini.com, ip: 209.85.221.42, mailfrom: ross@burtonini.com)
Received: by mail-wr1-f42.google.com with SMTP id a11so5960362wrt.13
        for <yocto@lists.yoctoproject.org>; Thu, 24 Jun 2021 03:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OL7yoTYwap5/HFlLqE49HgWNcuDbRzGakxj9tF8zrI0=;
        b=T2H5KCHMicLoX9spqPGSCTDs12SbVHp4P+aet87fyB11A4PrqcDpluh1kR9fhwlkbB
         CfHuFxkbghS8BLdGiDr4e5foH5rej6TrW4prMscYXhgUuJ2umnvmRAOEKMy+bYI31sxp
         1dXroPPloDhqo/9qYCSAC/7c0MBbydlcO1WfzSRyCn7/5D738w74oFdmeGcwFYFPnJ4t
         vTPLjzAfE/dBO5Xf/d6wlCWvXR5o0obG/bYL/u/SW26u1UxtFqUMoNL1KTGpXForaRjq
         HOfPa6oIYeZM6XUS1tzP3SbYA4KHpsVjnbAI3Cg4dVs/ABP+p4oycEpHw2oR3AfeweF8
         ReRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OL7yoTYwap5/HFlLqE49HgWNcuDbRzGakxj9tF8zrI0=;
        b=FNqsxhPdwoQXnn1pizi/zXX8JqUfv/qoLB3gWkKHQbHusLg4NNzHIsLxAu1t0DcWLQ
         hW70nZUwUOrD9XE+16U3Mq8kRl6ZvAbTf1kzdBgvs39CsKkTy9/Yl9jLIp2a3GMH5vkv
         cxcQWu4/N9Snyof2c32UHo8AsmxE5mE20hbhWR5Hanh5TluqKq385hu8GCGoxaCGY8OD
         nEDluvEANF3VYTcQIBiodI/gU6dFKoxYfKvlvWuDZ12OD7RtbHyr1YXa/sRIobhUzBb/
         Ddh76/U/v9gZdecvZ0AgVXhdl86uOeOvFcfu/Lxaw61rXhKv5J5cM8Iyks4j2T3ffD1Y
         /Xcg==
X-Gm-Message-State: AOAM530YPQrBCHAV05u3DdJzH//+nh7m+KDoRKJNJRA9c40aWeayQhu8
	BUoWEw/TUrlMHounlQpCULslZNlV0GwNGoZSHGX7qw==
X-Google-Smtp-Source: ABdhPJyuNE0wM2vJ4x7zHbaUCIvzRTdsCrqHWWAhmtEvBoNV1wRi6QnTMpzcAITJl0mj0Hazs2HE0GzvpIJezHEwKj0=
X-Received: by 2002:a5d:5187:: with SMTP id k7mr3513818wrv.395.1624529415205;
 Thu, 24 Jun 2021 03:10:15 -0700 (PDT)
MIME-Version: 1.0
References: <cd4f8664325c13d083ae540e75bd23e5@phytecembedded.in>
In-Reply-To: <cd4f8664325c13d083ae540e75bd23e5@phytecembedded.in>
From: "Ross Burton" <ross@burtonini.com>
Date: Thu, 24 Jun 2021 11:10:04 +0100
Message-ID: <CAAnfSTvRYWGST_oFJJGxweNY_e=ASbi5JtXZqh+HUZauGuxZ9g@mail.gmail.com>
Subject: Re: [yocto] Integration of mpg321 in yocto zeus
To: Poornesh <poornesh.g@phytecembedded.in>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

You asked this a week ago, and I answered then too.

oe-core has mpg123.  Is this not sufficient?

Ross

On Thu, 24 Jun 2021 at 10:17, Poornesh <poornesh.g@phytecembedded.in> wrote:
>
> Greetings !
>
> If anyone achieved integrating the "mpg321" in yocto , requesting you to kindly share some inputs and procedure that need to be followed.
>
> --
>
> Thanks in advance
>
>
> 
>
