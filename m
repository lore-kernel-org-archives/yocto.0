Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web08.31057.1610355398751416554
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Jan 2021 00:56:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nNIpt5kj;
 spf=pass (domain: gmail.com, ip: 209.85.208.41, mailfrom: vvavrychuk@gmail.com)
Received: by mail-ed1-f41.google.com with SMTP id c7so17938077edv.6
        for <yocto@lists.yoctoproject.org>; Mon, 11 Jan 2021 00:56:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pMy/aeq/pU2NgiHJ62qguvHjZ2oZpbzwW+0akPd8eyE=;
        b=nNIpt5kjr/72YhM8sa1EPdIAzAAL9BvzSYV1N7+IG9P0wzSr51yGNxfaPj0VJsENf3
         714gsm7NmVaLMaJCxYNbf3vyKqE7M3RbgN8zJjdPOgmRZHe0Mob9hKv8vL+Jp89fJoXU
         uOtpCZ4usje1R9oR6k4IU/AtAFsH63treOgT7NffuX9wuXjnE+z3K8w7+rr2d+3TBBlq
         mltVtvhShmLiTfKfnUNYDXinAckBckYKsFtmvYsxEzLS4E2lJqVZHzbs9cGqKVHIruMj
         t/LN6ThOh4qRnCVJC2FAK4i0OTB+F2r95/7W+4hPVAoPLWvFjoasXRcPPp6uPwRit+wI
         ycnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pMy/aeq/pU2NgiHJ62qguvHjZ2oZpbzwW+0akPd8eyE=;
        b=pt7yjqvjR8J0uTPtaIvCViNrkpB5tB4dStbiVah4mOmN723ikT0HdTYxDApNT024/A
         VoWhP9OmJLAszpjS3LgCd59BjLaariGqpo32qyezlJJ1fZ05+F5rV1+Pn44IXXK9Sydp
         tDunB48FOsRZKEWknRkx5hQC+YvBSlgotqkMR8zV42y8g1OD4w9nfv0RV0xXi9pNEWSs
         oYOB9kdRk99F0+N3Wlj6HIa8wMeLYTUAgy8juVvKMD83iIEvkWC7n7X7ze7UEwhKHY5K
         zO48KPtLTGmB8lcYAKrp3MqjhxkqUfNrmhqeqDdrr3E43YueEl/aZg1s72NcwFI7r9FU
         cvbA==
X-Gm-Message-State: AOAM532ZcMlavDWGDIm49R1Bk7q6W85SGkAZ4M/1QUwtVA2TvH4ETiYZ
	gUUyROGAi40EfgqhN1ChwfyMizdnQ+HFu/zU9a8=
X-Google-Smtp-Source: ABdhPJyIY7u89yAmiB31mXUubHACsxMEc3zpQ2Gl9QQMJy12IgLFgr/3d18SMGW/2RNPZxv0z53KKMxPP0HJmV5NnT4=
X-Received: by 2002:aa7:df91:: with SMTP id b17mr13869182edy.272.1610355397079;
 Mon, 11 Jan 2021 00:56:37 -0800 (PST)
MIME-Version: 1.0
References: <CAGj4m+4QE_Ujcoaq+pFgpku+sgkd8AARU5O7+W7X4MQCHHb6vw@mail.gmail.com>
 <CAP71Wjwpt9QtWVEieJ-U0jimk2ZOTvrmdt9bSHLri8KwDcmBjA@mail.gmail.com>
 <CAGj4m+75ODJhe9rdKZDT4fc2g-Z5mea7VLmQZM5oiMEsHGaz6Q@mail.gmail.com> <CAP71WjwYYYaNF3UgArcTwRsxqGKnqbuZwmwZCmGuji+-etaxjg@mail.gmail.com>
In-Reply-To: <CAP71WjwYYYaNF3UgArcTwRsxqGKnqbuZwmwZCmGuji+-etaxjg@mail.gmail.com>
From: "Vasyl Vavrychuk" <vvavrychuk@gmail.com>
Date: Mon, 11 Jan 2021 10:56:24 +0200
Message-ID: <CAGj4m+7r5maFzEVr4mwy66KuGpmDeAV6Pt_9kz-12GAWDfNBZQ@mail.gmail.com>
Subject: Re: Single page view of a particular manual
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi, Nicolas,

Now, it looks like something changed.

Opening https://docs.yoctoproject.org/bitbake/, then choosing
"All-in-one 'Mega' Manual" leads to what I need: single page BitBake
User Manual - https://docs.yoctoproject.org/bitbake/singleindex.html

But there are few more issues.

1. Open https://docs.yoctoproject.org/bitbake/index.html. Select on
the top has entries "Individual Webpages" and "All-in-one 'Mega'
Manual". The problem is that entry "All-in-one 'Mega' Manual" now does
not reflects to the current behavior. Suggest to replace "All-in-one
'Mega' Manual" with "Single Webpage".

2. Open https://docs.yoctoproject.org/bitbake/. Version select at the
top with options "3.2.1", "3.1.4", etc. are not working.

Thanks,
Vasyl

On Mon, Nov 16, 2020 at 6:27 PM Nicolas Dechesne
<nicolas.dechesne@linaro.org> wrote:
>
> hi Vasyl,
>
> On Mon, Nov 16, 2020 at 12:55 PM Vasyl Vavrychuk <vvavrychuk@gmail.com> wrote:
> >
> > Hi, Nicolas,
> >
> > Thank you for your reply.
> >
> > On Sun, Nov 15, 2020 at 8:06 PM Nicolas Dechesne
> > <nicolas.dechesne@linaro.org> wrote:
> > >
> > > Can you please describe what you are doing in the webpage? It should
> > > You need to select "All in one Mega manual" in the
> > > dropdown menu on the top left corner of the page. When you do that, it
> > > should bring you to this URL:
> > > https://docs.yoctoproject.org/singleindex.html
> > >
> > > Which contains the whole YP docs in a 'single' html page.
> >
> > But as far as I remember, previously I could have a single page view
> > of a particular manual, for example "Development Tasks Manual", etc.
> > It is much more useful than complete single page view of all documents
> > at the same time (but this one is useful too in some cases).
>
> Ah, you're right. It was possible with the previous docs, but not
> anymore. With the Sphinx based docs the whole Yocto Project docs is
> just "one set", not a collection of 'manuals'. So currently the single
> html page includes the entire documentation set.
>
> There is no 'easy' way to change that though. I am definitely
> interested to gather more feedback about that. We made a conscious
> choice to get this way, It's different, and if it's causing more pain,
> we should know and discuss..
>
> I heard complaints before that we had too 'many' manuals, and it was
> hard to know which one to open, which is the opposite of what you are
> asking ;)
>
> let's see if we can gather more feedback.
