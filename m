Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
 by mx.groups.io with SMTP id smtpd.web12.37172.1605544045997511176
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Nov 2020 08:27:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=b/jUBdH6;
 spf=pass (domain: linaro.org, ip: 209.85.219.178, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-yb1-f178.google.com with SMTP id v92so16185413ybi.4
        for <yocto@lists.yoctoproject.org>; Mon, 16 Nov 2020 08:27:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6em7TvMHn68E0MkSXvQohjRd9t43ShjHychxNUqgNt8=;
        b=b/jUBdH6fqCry/IglcV2NGhZC2wPRXzxurq8m6ojarXaT4IOoxrt9mX+xG2jJkHBHI
         +mMrQBezykk751A1sDxp8kJqKhG/liakYBmHatKrcNPIBVP6p4Ud1TI7J5OHYPQB9lL1
         nBmy0iug9ZRlP/gENDnZ/ZApFatfR4puJbXd3605J0fyeKhJhf3s67SOHynr+hRNNXd1
         8YtBeF/v+N40uPevEtfK5GrJ/u9NytTX2Bz0oPiAKK0Xg1x5Ua+yIz/GvdNV1+x7//LG
         hVRbbTUYbda576I1I6aHspMYknwOJcWBNA7dxUNLxMmzy6uFuYbMNL+K1kNYQk+yCae2
         pXng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6em7TvMHn68E0MkSXvQohjRd9t43ShjHychxNUqgNt8=;
        b=IBxxvYMqpmdseWLKl3h4FE3xud6cfOHaGAD5arZKhXe6bRzdqDwd8WHszGvzJZU6WT
         XP2TpR5KnRHww61YWf5K8ZbLYYg2wi4Gapx81f1mtFAe/MLsq+/+uhGUrpCKSgw+SHnU
         nI+s016PG08YSBEpK7r1uBXVV40NTvlc+FAAGXyM6NHNMksFyLicy+BW/T1yRxKdhnEv
         tvNGgbagLtCtSbb1yuymj3VPH/69LP7819N5LywoRLPA4pj9jAL3iW6z0UEblxOlPoDt
         AMZBZVD1HYYh2lbqnEY1xv0DL8Ay7wTpDMSNNdmOaOf3N7YwkWCu6m0ckknzKmJALNWO
         3ZJg==
X-Gm-Message-State: AOAM533+ohRYSAqBhzojCw+SOoBnpPUKsEm9iKfP+R+pJB7CfmPcpv3W
	UZoqt9/x+E50diRcyofvxwu4FdzFUqMUNLBMswRrCg==
X-Google-Smtp-Source: ABdhPJwsDTV+wqXd3+Z6QCgYKpW8s650pni6x53kj4wIWXaeI32q0O8rqhf0XU1BVUe7nuPBLg31Ulf9ANeZt2hHZAE=
X-Received: by 2002:a25:6e8b:: with SMTP id j133mr20751689ybc.273.1605544044994;
 Mon, 16 Nov 2020 08:27:24 -0800 (PST)
MIME-Version: 1.0
References: <CAGj4m+4QE_Ujcoaq+pFgpku+sgkd8AARU5O7+W7X4MQCHHb6vw@mail.gmail.com>
 <CAP71Wjwpt9QtWVEieJ-U0jimk2ZOTvrmdt9bSHLri8KwDcmBjA@mail.gmail.com> <CAGj4m+75ODJhe9rdKZDT4fc2g-Z5mea7VLmQZM5oiMEsHGaz6Q@mail.gmail.com>
In-Reply-To: <CAGj4m+75ODJhe9rdKZDT4fc2g-Z5mea7VLmQZM5oiMEsHGaz6Q@mail.gmail.com>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Mon, 16 Nov 2020 17:27:14 +0100
Message-ID: <CAP71WjwYYYaNF3UgArcTwRsxqGKnqbuZwmwZCmGuji+-etaxjg@mail.gmail.com>
Subject: Re: Single page view of a particular manual
To: Vasyl Vavrychuk <vvavrychuk@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

hi Vasyl,

On Mon, Nov 16, 2020 at 12:55 PM Vasyl Vavrychuk <vvavrychuk@gmail.com> wrote:
>
> Hi, Nicolas,
>
> Thank you for your reply.
>
> On Sun, Nov 15, 2020 at 8:06 PM Nicolas Dechesne
> <nicolas.dechesne@linaro.org> wrote:
> >
> > Can you please describe what you are doing in the webpage? It should
> > You need to select "All in one Mega manual" in the
> > dropdown menu on the top left corner of the page. When you do that, it
> > should bring you to this URL:
> > https://docs.yoctoproject.org/singleindex.html
> >
> > Which contains the whole YP docs in a 'single' html page.
>
> But as far as I remember, previously I could have a single page view
> of a particular manual, for example "Development Tasks Manual", etc.
> It is much more useful than complete single page view of all documents
> at the same time (but this one is useful too in some cases).

Ah, you're right. It was possible with the previous docs, but not
anymore. With the Sphinx based docs the whole Yocto Project docs is
just "one set", not a collection of 'manuals'. So currently the single
html page includes the entire documentation set.

There is no 'easy' way to change that though. I am definitely
interested to gather more feedback about that. We made a conscious
choice to get this way, It's different, and if it's causing more pain,
we should know and discuss..

I heard complaints before that we had too 'many' manuals, and it was
hard to know which one to open, which is the opposite of what you are
asking ;)

let's see if we can gather more feedback.
