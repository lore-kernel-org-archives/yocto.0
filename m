Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web10.839.1602089905466888414
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Oct 2020 09:58:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EhEvBAuj;
 spf=pass (domain: gmail.com, ip: 209.85.160.172, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f172.google.com with SMTP id j22so2489045qtj.8
        for <yocto@lists.yoctoproject.org>; Wed, 07 Oct 2020 09:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i3KvwHDsJ52c+iP0TtvN+mHgWlCD0DfTsQjXAMfnR/w=;
        b=EhEvBAuj/BhWPBmabCL6sZQkLiya6yaKorOWXhpyZ6ImgnBgYgYISJltShUKrru8jV
         ijbI8EoZK8s8rzVtMIZK3fciT8jru5xLF6DO90EAtDx+PXg6P9j1K55JTdf4nNsU4axi
         6yMqwL6rWvzOJRn8sDnhYq7cpOIH3VqgnG1ye4YNPd9OqK5A7t78OBNp0+0CuGpRz7B8
         TX+4+9QfkI4GuooivOa2E5sKKCPgvfErp2Ls6SKXwd5CjF3eM86txYJQN9C6VzMHaCdr
         E1QWCkx+TXwAIZnA5Gn1mjPqO9Y4lYcAkgG/kwEMHRdFTRpz8aabbRDniAWBKZGD/a1i
         wG2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i3KvwHDsJ52c+iP0TtvN+mHgWlCD0DfTsQjXAMfnR/w=;
        b=DQ2QoF+2SppvhW36KZlSKbGOZpIP9A7XpY3+cNw3BtKPkxEv9A4gjp5Zn1rSVJUq6k
         uOPyv9TmQuEVTlr1DbrUlW6MFTvLswl/ZPG8ckZk8QKMZOx+ZMSVDcSn+7nxvCLz7TK3
         UZset/kOZ5KYpW5hNM3CXNwcLKnnrUQDoKmJISRA02dS4kM5qfyt3kYGJmWXrD2CfbOL
         Kl6afChGuv9C2QGKt547Bk+1MsWrqtlVlQ+fDRRMVZOMoQq6TpsSkKgcvh7U01ZZm3eM
         dL+Ax79Yemn/EZsI5PzM5+YAZEDkcAFqEFf8CAjXONMU0KoJH421FSpi32ApjE343a5r
         X+zg==
X-Gm-Message-State: AOAM531LUj0qnj4/ww3IVAiht+aasgwyK+nIefF7X/uio8a2pjKur0hm
	9G+YOK0T0ICH6mXXf6rl+NLstIdulAJtD+UK3Nc=
X-Google-Smtp-Source: ABdhPJzjAJ48y9hiDptqaaZA74aYPhG5wNzI9IA+w33DbsOOnYKMX7ymod3JMruEWuBE69XfMLVN7hXz0diB8IX6UBQ=
X-Received: by 2002:ac8:3975:: with SMTP id t50mr4208742qtb.53.1602089904385;
 Wed, 07 Oct 2020 09:58:24 -0700 (PDT)
MIME-Version: 1.0
References: <9Lrh.1602088730896348466.Aw6g@lists.yoctoproject.org>
In-Reply-To: <9Lrh.1602088730896348466.Aw6g@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 7 Oct 2020 09:57:58 -0700
Message-ID: <CAMKF1sp4kkYGx71M2Qkk8PbL7MsTEj=tbA2B1Jvh52f+NcUOuQ@mail.gmail.com>
Subject: Re: [yocto] Introduction #yocto #python #linux
To: idadelm@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Welcome Ida, Hope you find the project interesting, Feel free to reach
out to this community if you need help or have any questions

On Wed, Oct 7, 2020 at 9:41 AM <idadelm@gmail.com> wrote:
>
> Hello, I'm Ida Delphine and I'm new to the Yocto Project. Excited to contribute to the Yocto project and hopefully become an outreachy intern.
> 
>
