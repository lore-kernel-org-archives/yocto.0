Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.31778.1606115756444220639
 for <yocto@lists.yoctoproject.org>;
 Sun, 22 Nov 2020 23:15:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hkFhK3TO;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9125C38C0532
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2020 07:15:55 +0000 (UTC)
Received: by mail-qt1-f169.google.com with SMTP id l7so6428234qtp.8
        for <yocto@yoctoproject.org>; Sun, 22 Nov 2020 23:15:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=64nb7TyDf3lxScMXeXOyXd6kVy8QOPsRfpE3iFEQSnQ=;
        b=hkFhK3TONSR7x0OxlnJHE5YwKVs4Q3OefhfeXNC3lnUA6yfmGq0VqbFSYA72bUamPP
         ShD3w2ca+bNAFSKlm4J390HLkpllrC8JKtYUQygJ50usJREf7uDttSN+D1giyB51KRYr
         8/A3vfKrcEfClzlRKAmmkQBmT0vpAyLuIMsOSsOYAxpaBs9VLjvxti+TjU7Xao82312j
         DxvV8uATvXcYvgmMdlgFcywAI1lUGw5KNsXKCktT8pXoJlE98u0DMTkIP2H5JiK9l8i/
         JMgXXfpgpayCcE9jurkcFrgEyhTjvaqBhfskUKPh/jRojntMyQG4cdUEMTpFIc6s4d8e
         qPlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=64nb7TyDf3lxScMXeXOyXd6kVy8QOPsRfpE3iFEQSnQ=;
        b=c4SpDu9FmprLovvEEJxVL+FSKrlfkwYRJlH0kWzobFZ5eqzopUWW7HU+0agsJnpewR
         WcmtJsGfFw2I8it89+6d9pEQwogep9Aui/pjK+GOsDiRTptzYxOm0BKBdvJwm0AOo/aT
         1b7ggTTck0p0pQhzNfidueY31JJbpJVKTnzRa9sDpe7yC4GuXABFrdlSIjqpWT5tteaH
         bHtetk0HPBWRhMDiWJ1pq1Y1a1XdW+saHEth5exJpcQyXSq9F0ML3ZBlsKRiyrbghn2J
         /JKGhqOl/SDMFymGhyI4zXx9Kbr6Au0JhYxw+jIyepQcBP4MtRou6i8VxkbK+eD+EkIg
         DCtA==
X-Gm-Message-State: AOAM532ReLmFbydTiXzV+6kPKQJMsesAVOCOoBd02JHB+jFCbCQcVpsC
	wYZJ91CUz2nHCkSOjvL+VU2UMUbE5pRcxzGDHdfrZ96TC9M=
X-Google-Smtp-Source: ABdhPJxLZ2CFdhkmmAhYXlf/9Nyl2MvhEkOincsAgJoZTXHyh8wPhgcgXOwu0/wAgmW1UwJo4hYKpSL8v5WUMNNu+jE=
X-Received: by 2002:ac8:3417:: with SMTP id u23mr26357550qtb.80.1606115754524;
 Sun, 22 Nov 2020 23:15:54 -0800 (PST)
MIME-Version: 1.0
References: <0fefb48d-4531-5424-796f-ffd02c40dd0d@ibeeto.com>
In-Reply-To: <0fefb48d-4531-5424-796f-ffd02c40dd0d@ibeeto.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sun, 22 Nov 2020 23:15:27 -0800
Message-ID: <CAMKF1sp+xvERYiPsYcPfppovhuWMMdugXtWxY+GjA5nYx2ed3g@mail.gmail.com>
Subject: Re: [yocto] Hardware video decode on RPi3
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 19, 2020 at 7:38 PM Rudolf J Streif
<rudolf.streif@ibeeto.com> wrote:
>
> I am trying to play back mp4 video (venerable Big Buck Bunny at this
> time) on RPi3.
>
> I added gstreamer1.0, gstreamer1.0-omx and the plugins to the image.
>
> libgstomx.so is installed in usr/lib/gstreamer-1.0 on target.
>
> However, gst-inspect-1.0 | grep omx does not return any results.
>
> Consequently,
>
> gst-launch-1.0  filesrc
> location="/home/root/kiosk/kiosk/videos/bunny.mp4" ! qtdemux ! h264parse
> ! omxh264dec ! kmssink
> WARNING: erroneous pipeline: no element "omxh264dec"
>
> I guess I am missing something somewhere but I don't know what.
>

are you using userland for graphics or vc4 ?

> Thanks,
> Rudi
>
>
> 
>
