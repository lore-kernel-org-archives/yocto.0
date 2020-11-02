Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.28805.1604308620950768630
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Nov 2020 01:17:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BRJPV93W;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: jupiter.hce@gmail.com)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3124338C08E4
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2020 01:17:00 -0800 (PST)
Received: by mail-yb1-f180.google.com with SMTP id k138so4634369ybk.6
        for <yocto@yoctoproject.org>; Mon, 02 Nov 2020 01:17:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=X9zL1wGR+MgwyLTpaMDUzoIT1rjdYadNEMy6izhMtL8=;
        b=BRJPV93WryMji4ixHXlmPIdtiv8tThJx5kBMCEm2EZzYC1LK5urhqXUMujbejv++0j
         lVUVUUXi4FhWdqrb+sv3TPgNP6+D/8TRhAJZB0L70lt51MGMidUK2ERx0dmhQEvLlMCY
         t0icHsvnwR+gYI+JULN/boZ2gA2URcQUzMVyr4fOAK94Ryv2DzYMme357XgEWdMqCoeh
         4JcBTK81C0CA0XAvnWRlaVaXgRbIcCIz70WAj0WlNc2xVYjypAvf+QtsbwHuQbmzXWEy
         rD2W7tseV7z6C38Md3qJQuVdycuX+sIHuCLu2Z4AhJNH8WOVgMyPQeH9K3IVfivr5mHg
         HjuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=X9zL1wGR+MgwyLTpaMDUzoIT1rjdYadNEMy6izhMtL8=;
        b=X72WxXY755JeKpgcheyEINDVYRa9hzQZoBUtaZzwYAnvYo9CikqBjeXfYbRzGEH2Ay
         1Hqb5AF41+dGTxzIWiSMN4tLqoQzoiZPWx9oOVtEuV3Da6RHcGYQHEl8UhQ+8VwizRxl
         ZKmHpkkIYD25vgpNYDav19UgAHrmj+Y7DIAyg5Mdh0sM0fDqTZpGMe4k+F4K4RQ4WIt6
         ZRZ19YqQlYARW3llapvsPtQtAXe7UN7Hei5whkTbrsnN43fkumi9wdm1NuR8h9SzuJEk
         SqC0SwE/Q4NXREoIHyq1LIctBLP40pSm0bPqiyQBh1MKEvXLfj7mOmeVXLlFfFdQ7Rzi
         m0KQ==
X-Gm-Message-State: AOAM530Cv2udjezXxvoWqUQDw6IPcxEW8IwLXVWd1IpYvxDOHuPppcQ/
	BksZTaC5gsEcA/zlvL9dTkLTQHLJGDNBd4/pmuKZYt6ewNo=
X-Google-Smtp-Source: ABdhPJw4hj1NBlJRlAop7otOv/YQpQyridMh6qw7zHJvwMhFWEBa4mq3F5iWK2EnCqBrfulD3vLZsj1U//W/IJeFZD0=
X-Received: by 2002:a25:4cc7:: with SMTP id z190mr19805632yba.405.1604308619133;
 Mon, 02 Nov 2020 01:16:59 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a25:a16a:0:0:0:0:0 with HTTP; Mon, 2 Nov 2020 01:16:58 -0800 (PST)
In-Reply-To: <2234110.ZDGxJVC3CD@ada>
References: <CAA=hcWQnJ1yRTwPF+9kubSt6FQPxwCRYFwXcYR8RnVLs4LMb7A@mail.gmail.com>
 <2234110.ZDGxJVC3CD@ada>
From: "JH" <jupiter.hce@gmail.com>
Date: Mon, 2 Nov 2020 20:16:58 +1100
Message-ID: <CAA=hcWSAsKEcFaR1dCpCey_m2Z2zOxYT1N8NNjL6bNQxSrHj1A@mail.gmail.com>
Subject: Re: Install Yocto image and backup
To: Alexander Dahl <ada@thorsis.com>
Cc: linux-mtd@lists.infradead.org, 
	Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi Alexander,

Thanks for your advice.

> In my opinion two things are common practice:
>
> 1) Using a layer on top of raw NAND, like UBI/UBIFS nowadays, so bad blocks
> can be handled properly in a layer below your rootfs.

Yes, the UBI/UBIFS is used in NAND partitions, I guess you alluded
there is no need use the backup, right?

> 2) Using an A/B scheme for updating and using a well tested framework for
> that  (instead of self written shell scripts).  You don't need another NAND chip
> for that, just multiple partitions.  You can still have your kernel/rootfs read-only at runtime.

If I do need to use a backup, it won't need another NAND chip, it will
be another UBI/UBIFS partition. But I would like as simple as possible
if no backup is a common practice.

Thank you very much.

Kind regards,

-  jupiter
