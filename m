Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
 by mx.groups.io with SMTP id smtpd.web11.6281.1610014079863878426
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jan 2021 02:08:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eq82Kw9+;
 spf=pass (domain: gmail.com, ip: 209.85.219.177, mailfrom: jupiter.hce@gmail.com)
Received: by mail-yb1-f177.google.com with SMTP id k78so5580856ybf.12
        for <yocto@lists.yoctoproject.org>; Thu, 07 Jan 2021 02:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=BHi2xIkopXVi55tCH+LNUAGVzisZjGkXAaLpGtu0sZY=;
        b=eq82Kw9+NrSHB69OUIw0cUUBJM4sbdiqthxypFUxe6pRp9SRcW2nD6zTIlXXOHk2lV
         n/cjOKN8oUTrN8D8LDKSXbjhscqO0prIe73Nz+jEKXZkTZdz0uHH1eASI9XU/18ABmQC
         Nn5V5jrshVLVtySHettpkIdJ5EYYWeeFF/xRe2Std63Tm+H2yZZTOf6ZGXhug/d7puRk
         f4AaCXTpskU0NNelZfCZKeprGO9EBQSCkkdbR8D3CU/+AfEKWevdUA1t24/ovmTPy1cP
         Q5Z+zrMn3AaEhSCSIi8ZZhLOISkP9GfqhAINeFQnKDpw9odw6mTsskB2vTnSptEgw39g
         4t3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=BHi2xIkopXVi55tCH+LNUAGVzisZjGkXAaLpGtu0sZY=;
        b=qAPZjyOQy5DFvYqFvo2JRICSdBpLswDVzhb2/j+rzPCPXVVt4tbIZSI58aVOILQEPf
         gSFswYOoNNW68RU1YsKTht/+rC8ShlvXCBVnhsb13+hyaQB8wpXLUHOPE9prp7Jypobq
         7QVkMitGqHAL1wzNw4BgC2ubRcDs+d+zA+CfIpJLV/EwXuVkyXRFFEaQgTxjDYulSkMl
         2j9EkT47ItFt7JhKz8E8BUyEF7M/5Kd5UzvUQY8snUCut+cZK3Nne+MO6pbYj5YkiQmG
         vghtIHIPbGi69gXjNnUBuYszCKeLENnNIQb423oajhDREEsGwEoab6JXCitrh3yoshpx
         YEAw==
X-Gm-Message-State: AOAM5331Mq8U7wedQVYo1m5Cdt8Z1fBoxKbYWKN6F5u7thfAC9Z6GyUO
	McG82Jz20Ek2ZSBWlTWoa+6z4O1ZW//P+cHGm+4=
X-Google-Smtp-Source: ABdhPJwwJJXVBLb5EmtkaGwrSYHJaoIASJ573cex7R0bjTZtZI/t0LXIzIxH6LSSZwjx5+CFVGr1DhQgv+OjMigV074=
X-Received: by 2002:a25:580a:: with SMTP id m10mr12608588ybb.74.1610014079001;
 Thu, 07 Jan 2021 02:07:59 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a25:e705:0:0:0:0:0 with HTTP; Thu, 7 Jan 2021 02:07:58 -0800 (PST)
In-Reply-To: <32166.1610008905321916245@lists.yoctoproject.org>
References: <CAA=hcWRgT3j9cwhHu4r-+x3_G8E_Yv3qPVKaFOn67-GOSRJh8Q@mail.gmail.com>
 <32166.1610008905321916245@lists.yoctoproject.org>
From: "JH" <jupiter.hce@gmail.com>
Date: Thu, 7 Jan 2021 21:07:58 +1100
Message-ID: <CAA=hcWT=s8VBLkbEkd9mVdCRrScxhNta_Yf+SvqBiMm1ZjGfyw@mail.gmail.com>
Subject: Re: [yocto] How to select Linux kernel version?
To: kapllaj.elvis@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Thanks kapllaj.

> On meta-freescale, you find this on
> meta-freescale-distro/conf/distro/include/fsl-base.inc:

Yes I use imx6ull, I've looked those config files, nothing set to run 4.19.

> Now, go to meta-freescale/recipes-kernel/linux folder, and take a look to
> see what kernels are available for your machine. Note that the linux-imx
> kernel provides currently on master branch the 5.4 version!
> For you to select the 5.10 (assuming you are on master branch) you should
> set:
>
> PREFERRED_PROVIDER_virtual/kernel = "linux-fslc"

I setup PREFERRED_PROVIDER_virtual/kernel = "linux-yocto", I have to
say, it has been running for a year for 4.19 kernel.

> Yocto will automatically select the highest available version, but if you
> would also like to fix the version, provide also that information:
> PREFERRED_VERSION_linux-fslc = "5.%"

I know iit should automatically select the highest available version 5.10.

I set up following in local.conf:

PREFERRED_PROVIDER_virtual/kernel="linux-yocto"
PREFERRED_VERSION_linux-yocto="5.10.%"

But it was still running 4.19, the question is why didn't the Yocto
ignore the setting?

Thank you.

- j
