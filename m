Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.3599.1614041946115467231
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 16:59:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UhTQDHCU;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7E09838C05F5
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2021 00:59:05 +0000 (UTC)
Received: by mail-qt1-f172.google.com with SMTP id c1so10792425qtc.1
        for <yocto@yoctoproject.org>; Mon, 22 Feb 2021 16:59:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nqC6A8zrEjaWwUou4t7SleFY9VWrZEv/bYKEC/W3Zdk=;
        b=UhTQDHCUe4htg0FctLDkxLbUdCRw9mLLDv4pke2auSGrH5TDM/kd0k3etY06K7wsuj
         PcQ95YO62fZG5r8H4uwuL9vwg22kbnwSI0vlGuadGkW4v2hr37ub7AMDDjRae8YlNVuv
         iCqrZAYE+bPjwJGZeqwUIM94itubWVnMUIFrrkINrrPWTwTqXW9W8/GlfvjqUT3ZAVjx
         f0u44FZ9kMVSyL5h3iBZrckxyn5RV7OilTkiDs8LTV6pd71+2G5axMJ32QF9RZB3VVNh
         bDBqToBC5yOMoP0PEyCkg7QiSRelOy2JMyCfpy9CEjN/d9zg8Zd1YbRNH2B8tAdab5h+
         SVKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nqC6A8zrEjaWwUou4t7SleFY9VWrZEv/bYKEC/W3Zdk=;
        b=U5KOHrBU+WZP1QxN9oAv2yf7ZhQKWqxqPcWGROfPwtnZ5SYFr7TXuzsTzGePp0hGNy
         He9fUANBnphUUkSOm4IukJyokJnmxxg3AfuJSa+KHn6QpXEGBGKABD2OPTXUfrkfFo8R
         cvz6tWJHdXKruJv71TZPnQS5NCC9I81yxinf2EK74u8iZfjdKIdL3ou++WSJGkwrcC3Y
         3AHugFRq35smFG+5jcYQdCLfh0iAtw+mwCKP1SsDHVXWERhhnNb8jZ1RnDWmOq8x2GSu
         GkGT5vLT5KBhp6gdp2npSCO4QBw9pTHHo70bMp8W/JkI7IVgTMvd2lBvbWPb5XhoI0YW
         6vWA==
X-Gm-Message-State: AOAM530ctjj7riPY/HohTrsyhCtCQFT1eT4cA/suIbt7JiLyVQwb6NPa
	fD9B0kF6gMQYwH2focb03lAjJBQCbZNIdjRZ1qo=
X-Google-Smtp-Source: ABdhPJykHy0WJ5twIWs9IEDWM1YaJx5781CvgzsJ1Mnsl4nwt2bRos88o1MtanXX5/CQVdi3m68qda8FaOHI0efGyek=
X-Received: by 2002:ac8:3aa5:: with SMTP id x34mr11723313qte.299.1614041944386;
 Mon, 22 Feb 2021 16:59:04 -0800 (PST)
MIME-Version: 1.0
References: <CAFP0Ok-UOjo3n1CYtg+k1C8QHz6L+4RMDcOLPnnWGJ6Oxd+azQ@mail.gmail.com>
In-Reply-To: <CAFP0Ok-UOjo3n1CYtg+k1C8QHz6L+4RMDcOLPnnWGJ6Oxd+azQ@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 22 Feb 2021 16:58:38 -0800
Message-ID: <CAMKF1sooCLFHMEMydKCw68agp0Txq_iUCu=y3LJor5-GqBWksA@mail.gmail.com>
Subject: Re: [yocto] Kernel Header UAPI Issue
To: Karthik Poduval <karthik.poduval@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Feb 22, 2021 at 4:52 PM Karthik Poduval
<karthik.poduval@gmail.com> wrote:
>
> I have a 5.4 kernel where I applied a patch (using a .scc file) from
> kernel 5.6 which brings in dmabuf heaps.
>
> The patch exports a uapi header
> include/uapi/linux/dma-heap.h.
> I am trying to write an application that uses dmabuf with a recipe (no
> special DEPENDS).
>
> It is able to find
> #include<linux/dma-buf.h>
> but not
> #include<linux/dma-heap.h> (this file is introduced in the patch)
>
> I looked at the recipe's sysroot
> recipe-sysroot/usr/linux/include
> and  dma-buf.h is there but not  dma-heap.h
>
> Why is the header not being imported ?
>

What does patch look like? just adding the file is not enough, it
should be added to makefiles to be exported as UAPI header

> --
> Regards,
> Karthik Poduval
>
> 
>
