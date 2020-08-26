Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
 by mx.groups.io with SMTP id smtpd.web11.4450.1598475042942480569
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 13:50:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=fTXSK+vC;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.68, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f68.google.com with SMTP id d10so2322016wrw.2
        for <yocto@lists.yoctoproject.org>; Wed, 26 Aug 2020 13:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=aLvSQR5gJwCoggiF0B0XLrf6MyrLTUwM7PpkJ6DnVV0=;
        b=fTXSK+vCLMOBm9wLUnrqN7V+6N65oFn9RbQyM76ntFUqfjL7Q/A3edI8A0E+7SyAw5
         ygalMx8kWKcOXMqfVPatGkqOxmVI3G5p3onKu3XHq5roGCG31mOKiOMJa3KRJg7ejarr
         qqeUZsJGZGy9zRGpkCb0j5km2IwizYtr7xCH0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=aLvSQR5gJwCoggiF0B0XLrf6MyrLTUwM7PpkJ6DnVV0=;
        b=GoJA17FC7jZAhE/VgpAfLEql4EmecMnU2o3EJV3qbsk3ZTPTTFeN7Pkimx+XoCfypj
         I1GbhUAmcPVv4Pd9odRrjIj7DMgiVAmBhz64vQIAWLGzRsydADIIWm/BYba7zDPMF5WN
         WgfWjs0zyzDSjLWhKC6hSvH/w8VIm7zIOCUW+RPrjM1Ko+Aa0IsfpA82pI+tsFP6ye7e
         XbeIQ/B6Z74UvGMERYMaIY390dRvNHQ8lfx5X1BGMBsppib4KDQnuJVcecuIg4GcdfmT
         E0S0pzUropkOW7LGV2V0hAmme2Nm286fRJIGlt3SVUORcnYrnuhhdz9YV2aXHmFbgK0u
         x6Jw==
X-Gm-Message-State: AOAM531libf7rpQhwHLma4RftJRWXtmwCZ8DRc5sE7BXMS0k4nVM4O1H
	fhmsTuvQyC76Z4UElLFR2mB4bA==
X-Google-Smtp-Source: ABdhPJw9KUmSFKdJhQBbSfm8KM3UWrS1k50NkWQD/tXjXCOz0IzeIFc+K1tYZ/ATgMjefVqKWJYt9A==
X-Received: by 2002:adf:80cb:: with SMTP id 69mr18138740wrl.313.1598475041286;
        Wed, 26 Aug 2020 13:50:41 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from d.9.b.8.7.0.d.0.8.3.5.0.7.0.4.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (d.9.b.8.7.0.d.0.8.3.5.0.7.0.4.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:c407:538:d07:8b9d])
        by smtp.gmail.com with ESMTPSA id i6sm445169wrp.92.2020.08.26.13.50.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 13:50:39 -0700 (PDT)
Message-ID: <75a92bc5a9b597f0610987d5ab4b7de9b53f79ba.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] config.json: add binutils to images where it's required by tests
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
Date: Wed, 26 Aug 2020 21:50:38 +0100
In-Reply-To: <20200826155433.16346-1-alex.kanavin@gmail.com>
References: <20200826155433.16346-1-alex.kanavin@gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-08-26 at 17:54 +0200, Alexander Kanavin wrote:
> Previously it was pulled in implicitly via poky default config.
> 
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  config.json | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/config.json b/config.json
> index b78cba7..25be864 100644
> --- a/config.json
> +++ b/config.json
> @@ -452,6 +452,7 @@
>              "step2" : {
>                  "SANITYTARGETS" : "core-image-sato:do_testimage",
>                  "extravars" : [
> +                    "IMAGE_INSTALL_append = ' binutils'",
>                      "TEST_SUITES_append = ' x32lib'"
>                  ]
>              }
> @@ -501,7 +502,7 @@
>                      "MULTILIBS = 'multilib:lib32'",
>                      "DEFAULTTUNE_virtclass-multilib-lib32 = 'x86'",
>                      "RPM_PREFER_ELF_ARCH = '1'",
> -                    "IMAGE_INSTALL_append = ' lib32-connman-gnome gdk-pixbuf-loader-jpeg lib32-gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-png  lib32-gdk-pixbuf-loader-png pango-module-basic-fc lib32-pango-module-basic-fc'"
> +                    "IMAGE_INSTALL_append = ' binutils lib32-connman-gnome gdk-pixbuf-loader-jpeg lib32-gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-png  lib32-gdk-pixbuf-loader-png pango-module-basic-fc lib32-pango-module-basic-fc'"
>                  ]
>              },
>              "step4" : {
> @@ -514,7 +515,7 @@
>                      "MULTILIBS = 'multilib:lib32'",
>                      "DEFAULTTUNE_virtclass-multilib-lib32 = 'x86'",
>                      "RPM_PREFER_ELF_ARCH = '1'",
> -                    "IMAGE_INSTALL_append = ' lib32-connman-gnome gdk-pixbuf-loader-jpeg lib32-gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-png  lib32-gdk-pixbuf-loader-png pango-module-basic-fc lib32-pango-module-basic-fc'"
> +                    "IMAGE_INSTALL_append = ' binutils lib32-connman-gnome gdk-pixbuf-loader-jpeg lib32-gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-png  lib32-gdk-pixbuf-loader-png pango-module-basic-fc lib32-pango-module-basic-fc'"
>                  ]
>              },
>              "step5" : {

I suspect we need binutils-symlinks instead of binutils?

Also, thinking about this more, why aren't these tests scp'ing the file
to the host system and running readelf there? That would remove the
need for the dependency?

Cheers,

Richard

