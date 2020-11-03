Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.1940.1604396931860504575
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Nov 2020 01:48:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=L0z3qX6y;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: richard.weinberger@gmail.com)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 946B438C08B7
	for <yocto@yoctoproject.org>; Tue,  3 Nov 2020 01:48:50 -0800 (PST)
Received: by mail-qt1-f172.google.com with SMTP id m14so11139230qtc.12
        for <yocto@yoctoproject.org>; Tue, 03 Nov 2020 01:48:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/ZNiWsfowz6161LLYF6mY1Fdfs9Ah66gVHNKW1pHnPc=;
        b=L0z3qX6yLk+ALviPJQ8Sen/f8Axw7ZBm5sVi6ZmoYb4nkRqf36lpUygyC6KPeuJYMl
         ozUGurgnz3hoVP49iwFzehTJx7dLB8zl+vrnV0b34UPaJ9+mXpxUs3ODmldeA2vYV/uM
         htgDNUxY3iDZoANIxkGjVBHNooFfihTImq+5o6wKqQ9JvetzEjNsiXmQ3caoj0YyGtKy
         EmNpBC+cB74w8Vz6CdhJLcrGKR6ZYgI7zO01jvd+v0Kib+3EkgO8DmlM5xG9Hc5zdd28
         3XvGC3tfFvUVDmAeQDj2F14w0bBAoKYN3sJpl6KWYZbMihn1EOils9fcdbVZqcjOwJf6
         J/eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/ZNiWsfowz6161LLYF6mY1Fdfs9Ah66gVHNKW1pHnPc=;
        b=r9a5Obr7UBTdWgEZzbRg7wubw5vZoL/hkHEWCUSxuC751MMwVJfVVHpfuzstofeAPm
         dWxxVicehs/566oUlAIxNjzDYO/tWnQ3iv2ZV0LSfI0CBH0K6d7zYs8qTkHnokgyf26o
         PRn/wPWkUTq79KrIW6W9YnmvKAUWHzUW91Ql6knKmAxc7lRuJl0VZ5E4TK5QLmuemBkK
         TxJEERGFe6Do7HmimBelMEuSffQ6TQwcvOr4zDUCr5X7V90qEnzl66Z/5P7gEzMXP5Gr
         Z/Ce1ffhducNerVD6c0+dHgmTIUgrzdrJ4XdDgRZhhaoYjgf/5gRwy0p7ldFQeiK188t
         qCLQ==
X-Gm-Message-State: AOAM533xFenKNP4uNPBCc5mv6SfNw9e8tayBETuj6qzBY8Tn/9gb8XI0
	ngujneCuMmWUdlZe9BnbUwwDZMHhsYQ7ISNJqW8=
X-Google-Smtp-Source: ABdhPJwQTy1cdkZ9zfRChsTN+lFkeRdT0Fo9XBhVdHWCVTAAx2wcoEnlqb1PCPAEK6Aes1y9ugCP/7eZSBf9LRdHbPQ=
X-Received: by 2002:ac8:5417:: with SMTP id b23mr17275632qtq.166.1604396929262;
 Tue, 03 Nov 2020 01:48:49 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWQnJ1yRTwPF+9kubSt6FQPxwCRYFwXcYR8RnVLs4LMb7A@mail.gmail.com>
 <2234110.ZDGxJVC3CD@ada> <CAA=hcWSAsKEcFaR1dCpCey_m2Z2zOxYT1N8NNjL6bNQxSrHj1A@mail.gmail.com>
 <3029789.gPz3SqCoUO@ada> <CAA=hcWR9gMxtCbhDdMEbzJ0okZ7aYGHeaP6j7bkfqT4EVkO=Dw@mail.gmail.com>
In-Reply-To: <CAA=hcWR9gMxtCbhDdMEbzJ0okZ7aYGHeaP6j7bkfqT4EVkO=Dw@mail.gmail.com>
From: "Richard Weinberger" <richard.weinberger@gmail.com>
Date: Tue, 3 Nov 2020 10:48:38 +0100
Message-ID: <CAFLxGvxwQmeDwC3j-HAuw2_tnjovzyWmq=bh1ogmxR-rss=b=A@mail.gmail.com>
Subject: Re: [yocto] Install Yocto image and backup
To: JH <jupiter.hce@gmail.com>
Cc: Alexander Dahl <ada@thorsis.com>, linux-mtd@lists.infradead.org, 
	Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Nov 3, 2020 at 10:17 AM JH <jupiter.hce@gmail.com> wrote:
> The reason we don't update kernel and rootfs because the size of
> kernel and rootfs is too large, it is hard to download 60MB image OTA
> via 4G CAT M1. If we are going to change to use 4G CAT1 or higher
> speed, I'll use either RAUC or SWUpdate, which one is the most popular
> for embedded system using uboot and UBFIS?

You don't need a full download.
In the past I've used binary diffs with great success.

So if the update size is your biggest concern, the tradeoff of
computing and applying
the binary diff might be worth it.

-- 
Thanks,
//richard
