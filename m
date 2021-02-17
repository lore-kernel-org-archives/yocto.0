Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web10.6167.1613561562126091548
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Feb 2021 03:32:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=Kv4VbPSu;
 spf=pass (domain: burtonini.com, ip: 209.85.208.169, mailfrom: ross@burtonini.com)
Received: by mail-lj1-f169.google.com with SMTP id c17so14586259ljn.0
        for <yocto@lists.yoctoproject.org>; Wed, 17 Feb 2021 03:32:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=DgFh1ovMqma/H9gnBsyYXa3IqwXFcIOp7WNaSucDWcM=;
        b=Kv4VbPSueOBzgueoPKj/beGBbP7MWtJDsMglJzEWah1KXuxq6FuJJ3Nbzx8JlMlGj/
         Br68Cj0oVgVNLMbPIToztLiCsa9W+UpciIH0LkQ8RvVzOc0Uj/Wq4WNsHV8DMcrytDCi
         Z9ZMfIqaZewVZPFKkLNWlHTKGmwoCKpflSbpaKwoKxCF+qAdy9TQTEnojbs/DPQ85eYz
         ad/BVP77m8dBGkkW3rYu/Nz4lPsda99yiDMynJpUZEZ1rTEhy7SQwKA+M2/9pSBmtKzd
         gk3cA+gc4L5zu1+jS7SZQxsj5t2KmaZokrNlRdbOHyCiJan3PiG7KAT2XmXQcDDo/+gp
         gLxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=DgFh1ovMqma/H9gnBsyYXa3IqwXFcIOp7WNaSucDWcM=;
        b=kpqwYBGtnh/T/MDrYVYbFLJKn0XnW6inMvCqqhwwmu8GoZonliE1hsNDpBrYQ9iciR
         WCb0ZncWk0jnOBfzNziaM/NkehfP3yq2OLm0dFCLL2LyTMDQbizcMTl+sq8mLZ1tiodn
         vvQMLW5Rq9qp+St5neaoEk2IaBc2W7lMJXUFczIx6RFLV1Rim1aZsSvrfyDXZ2gCFh9f
         Nsty/yXTDAopV7gOAU9hyWclHzZqLHUD9EnRxbYgYewpnD9Nz5MfB6rjf8UX6m+F9Dw2
         HH8X6ZDb33AaLsgWRv5h4uy/HZooUOVKdU1mU1lQHFrv6/wBeP+emFWCgI7YUHO9Znp9
         M65w==
X-Gm-Message-State: AOAM531WokWui83+GcwHkMp+gPnqf5lcWXBrhBobEEoRWjr0v2785vxE
	ngJKV9Uam3AVEGnYG7gpHQBYRKyRCOzqpuTqZv6+Nw==
X-Google-Smtp-Source: ABdhPJzzXi3llB4KbH3LjbRSCvG1ZyD43yag2nKhSAJzh6ibMuT/2EKgUQh3ljlCcXCSmdVEsUSaDafvqIhPtqUUPJo=
X-Received: by 2002:a2e:145d:: with SMTP id 29mr14675381lju.391.1613561560251;
 Wed, 17 Feb 2021 03:32:40 -0800 (PST)
MIME-Version: 1.0
References: <fQ55.1613419717498551221.Ltf0@lists.yoctoproject.org>
In-Reply-To: <fQ55.1613419717498551221.Ltf0@lists.yoctoproject.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Wed, 17 Feb 2021 11:32:29 +0000
Message-ID: <CAAnfSTtjHMawnARYCXrFSfhoRYja5WjLz9C2p7LJiZ3i4x0Yrg@mail.gmail.com>
Subject: Re: [yocto] Timing a recipe
To: rustyhowell@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

As said, buildstats is *exactly* what you want.  There's a forked
pybootchart in oe-core that can visualise the data too.

Ross

On Mon, 15 Feb 2021 at 20:08, <rustyhowell@gmail.com> wrote:
>
> Is there a way to automatically record build time of a recipe without mo=
difying the recipe itself?  I have a recipe that is a monster, it has many =
git URIs and produces many packages that are coupled. It should be broken u=
p but company deadlines have kept us from taking the time to do this. I was=
 talking to my boss about this. He said we really needs some concrete data =
about how much this monster recipe is costing us before green-lighting the =
massive effort to split up the recipe.  I agree with him, so I would like t=
o know how much time is spent repeatedly building this recipe.  I figure I =
could do this by adding do_fetch_prepend() and writing the time to a file, =
and then do_install_append() and writing the time to the file. So after a w=
eek or so, I would have many start/end data points to discuss.
>
> However, I did not want to modify the recipe itself. I was hoping to aug=
ment the recipe via local.conf. Another bbappend in a new layer would work =
I guess, but I was hoping there was something simpler. Thanks in advance.
>
>
>=20
>
