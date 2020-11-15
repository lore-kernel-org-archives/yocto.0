Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
 by mx.groups.io with SMTP id smtpd.web08.23195.1605463571204052737
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Nov 2020 10:06:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=t98eEKWM;
 spf=pass (domain: linaro.org, ip: 209.85.219.177, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-yb1-f177.google.com with SMTP id w5so1189911ybj.11
        for <yocto@lists.yoctoproject.org>; Sun, 15 Nov 2020 10:06:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4yKinEdjL/nC3wEynwHwrc2wYKXkrXWMsfOW8PAzQTQ=;
        b=t98eEKWMM1Ag87VjqIfDrX/1ZtVcBEN/ieC5c7u7P8dPKObIe0jlrxRS4h4A99cbLV
         ZlZ5kBkX3C2DFxS9lhjtqU7FcmOkimy57fJakv1ygoKJ8nwT1tDqSGb0xTtuRguITM/O
         maIjyWBUzWnY2rVLlSGYvzrud/8Ddd1eiavtSlk9ALlQcXzvTNEQzATeb6bD/vKeoNTe
         dmIjCNnydlr541hsNker8scaJ4yNxYF2o3llHh22KfCkRA9t8qqD9i3sV+dMHmiwylZb
         Wh8omb3tScTCjOy4wxhvtpblPLJUQ5dwt59D3YqjeaUQC1Jn1rrBN/OM7o8GPGe5aJDO
         Mv9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4yKinEdjL/nC3wEynwHwrc2wYKXkrXWMsfOW8PAzQTQ=;
        b=jlMZloEjteYib5Lk7uT7106F00ITOhfx2D+6yCCbVC8syjWpOevpLrLcUtV+5pv4UL
         2YBKLP50Bp1salnHA8m/PI8TkBBOOQCEmZsubTaQaN7JdBz4ilThLSpt69kVLaLn9RSx
         MuxbbRY7+PSdTLLsi6/xmf5x2BYUEIg8WHMwscw6iYcCIS+WxDJbRsXlGl5j1MTMh+Ei
         yFB4TzL3oijMxunYXqf4R/8ID6Ny8UjlQtT9JzQUioxUWzXT0Idobnm3EY+IqCS4CN9H
         xR4ER53xdUO0R6hi15mX0YtnrxeDAvcu1nHHvB6gu5hQBgpW5uNQsvhksBgO+v4l816N
         RLiw==
X-Gm-Message-State: AOAM530vbpR3yFpgAMuShEF7+rCDJlkZi65ulQ2Ahmv9MXXeaPysUi/z
	7WrRWhDIc3KiJZSGxhJY8hA22ilt0AgCD4cxtNZ2Xg==
X-Google-Smtp-Source: ABdhPJxJtCDD7emG+0dULr94z1eqggwBVkT6BTiq/qYiJS++1tIflAH1ifvy5Zxp7ctAkhCVYN4Q+hZlHkYrq9hH1ks=
X-Received: by 2002:a25:b804:: with SMTP id v4mr19137382ybj.371.1605463570313;
 Sun, 15 Nov 2020 10:06:10 -0800 (PST)
MIME-Version: 1.0
References: <CAGj4m+4QE_Ujcoaq+pFgpku+sgkd8AARU5O7+W7X4MQCHHb6vw@mail.gmail.com>
In-Reply-To: <CAGj4m+4QE_Ujcoaq+pFgpku+sgkd8AARU5O7+W7X4MQCHHb6vw@mail.gmail.com>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Sun, 15 Nov 2020 19:05:59 +0100
Message-ID: <CAP71Wjwpt9QtWVEieJ-U0jimk2ZOTvrmdt9bSHLri8KwDcmBjA@mail.gmail.com>
Subject: Re: Single page view of a particular manual
To: Vasyl Vavrychuk <vvavrychuk@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

hey Vasyl,

On Sat, Nov 14, 2020 at 8:07 PM Vasyl Vavrychuk <vvavrychuk@gmail.com> wrote:
>
> Hi,
>
> Previously via https://docs.yoctoproject.org I was able to navigate to
> the single page view of a specific manual, for example "Reference
> Manual". But recently, something changed and it is only possible to
> open a single page view of all manuals (mega-manual).

Can you please describe what you are doing in the webpage? It should
still work. You need to select "All in one Mega manual" in the
dropdown menu on the top left corner of the page. When you do that, it
should bring you to this URL:
https://docs.yoctoproject.org/singleindex.html

Which contains the whole YP docs in a 'single' html page.

>
> It makes it much harder to search something on a page. Is it possible
> to return old behaviour somehow?
>
> Kind regards,
> Vasyl
