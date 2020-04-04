Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web11.3764.1586026605359477270
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Apr 2020 11:56:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=KW3ZQq6H;
 spf=pass (domain: burtonini.com, ip: 209.85.167.52, mailfrom: ross@burtonini.com)
Received: by mail-lf1-f52.google.com with SMTP id l11so1089698lfc.5
        for <yocto@lists.yoctoproject.org>; Sat, 04 Apr 2020 11:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FP4MhsQ5czwANOLq8olRIJerHSXvUaDqAt2d8JTFs2Y=;
        b=KW3ZQq6HqMsyPONpRZMSbcxIVLSLGXLUVpxPJ9CQR8xp1s74dWfsL9CvAC3X+nJwes
         fjaY/+KLGkeK+tZOBEkTbWce82quyszqYsTxC6Jo79BtXi/5QGWDdommu6ROxZcSGxLW
         gkKTg/avqvXNSrRfVvVqAsZetx2Z9zYqcV/0fEjzoe71AXy5TMcLJwsN/rQOKN0M2T0/
         etTN6jVowKKqyrJZoewG6gA4PMipxqzQB0sOz7Eb2HJgiXyLVKeKvJoDRdyNOOy5fAOf
         oh9UTQOd47UQTorZ+750HV7q/cgzSN+W38Xr4yfsvo+8GebqLV9nyQRqD/IiYn53ZciZ
         Y7dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FP4MhsQ5czwANOLq8olRIJerHSXvUaDqAt2d8JTFs2Y=;
        b=lx7SVIBN2/xheQQB8Dv5iwB5ZD4fWAJK2jt14Q+6UWOfdF0vMgjr30dAXlKF6NdnYG
         fKJc8nqNiWQxWtmDc13LQg+Q2SKxQEsUJdEiEkfrfEILT5OCIgZIOuKyeuxnodLbdtrW
         x7kBGgovGGn+OytIZbxWPtqDc18ZFVGJfLXrmeg8fy3bq0OrqcQflkaJj7LzAp37oxNG
         PIX7KooaG2ZOWQWAEZklGfxsTfgabuvmacIssTScFtxzrxjLGp7afuh0J4R6Wt2zgyAw
         T4hmaz9irm468jO3CibDz+1MYGRbwcA1s2m53yArmxd6uil6HX9sMCMIvbwHRdXmKJ3X
         S60w==
X-Gm-Message-State: AGi0PuaNAw5md0Iw67BLxkdZhSlUoU3Rf7kEc+NMhP7tHgooQ99rl1VJ
	8nsD9uk5PSC7zW9AvW8I1u9wd5EFeGP650Xx8V+POA==
X-Google-Smtp-Source: APiQypIIf2qzCoPQG/5JxaI4YrWF16VWRPJGz5SYZ6w+P2GPKzQy7VwdAn89sL4Kr+niW9ruVUl1b2I8NxUfQfOgGa0=
X-Received: by 2002:a19:c515:: with SMTP id w21mr8616558lfe.72.1586026603495;
 Sat, 04 Apr 2020 11:56:43 -0700 (PDT)
MIME-Version: 1.0
References: <9WRZ.1585975244346687298.cmsV@lists.yoctoproject.org>
In-Reply-To: <9WRZ.1585975244346687298.cmsV@lists.yoctoproject.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Sat, 4 Apr 2020 18:56:32 +0000
Message-ID: <CAAnfSTv+RNVFkydtmd6y5Go2OkOFz7Mq7KBUvRN7Xj1XfyomYA@mail.gmail.com>
Subject: Re: [yocto] Zeus - Post Build folder corruption #yocto
To: Joel Winarske <joel.winarske@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

That's not random, that's pieces of Py that presumably were not expanded.

Can you replicate this with just plain oe-core, or what layers/classes
do you have?  I'm guessing something failed to do Python-expansion
correctly so the Py passed through to the shell.

Ross

On Sat, 4 Apr 2020 at 05:40, Joel Winarske <joel.winarske@gmail.com> wrote:
>
> Has anyone seen this post build?  Where there are folders created of random items?  Some folders have a path deep of 5+.
>
>
> joel@hammer:/media/joel/SolidState/rpi/rpi4-64$ ls
> '!='                       'os.path.join('\'''
>  bitbake-cookerdaemon.log  'os.path.normpath(d.getVar('\''S'\''))'
>  cache                     'os.path.normpath(d.getVar('\''WORKDIR'\''))'
>  conf                      ''\''patches'\'')}'
> '${@d.getVar('\''S'\'')'    sstate-cache
>  else                       tmp
>  if
> 
