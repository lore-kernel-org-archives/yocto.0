Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
 by mx.groups.io with SMTP id smtpd.web10.46792.1617569446920802343
 for <yocto@lists.yoctoproject.org>;
 Sun, 04 Apr 2021 13:50:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=i8Hl15aD;
 spf=pass (domain: gmail.com, ip: 209.85.166.47, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f47.google.com with SMTP id v26so10258707iox.11
        for <yocto@lists.yoctoproject.org>; Sun, 04 Apr 2021 13:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LXoWMHswAX0oCy1aYicZJh0t+sx4P8p/PTkL6VRYpSE=;
        b=i8Hl15aDTSGPib1rKDZlpWrM0eJ15qlM+10c36duO5yKWAONkOsnbvRKVtBCE7J5qH
         8u00ozwAJZQ4IC3hjEF9IuBWK82jsodAK2PQ9jidU7b3jAsGUtSe7YiateUz0v8lWuDr
         mruz/JkzbIrnRmQN7xCS09Kce9zg+vmrVUNrG7s5f4moyECZwLhPmE6gl7iffmvI/Ttd
         Wdg3Jj5RQ+K0QaPx3v2Fj8UQUMgoPK5xXjFZ27VzuJ2Q+FEkYXoS1JBwps+q1Msthsq0
         VWavn7VOTwZSbjW1Q3dij2vSp8UQ00McmIfun3Bg7FnUV6A6v6lrzDfjxzfTSWwBlKTY
         yD2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LXoWMHswAX0oCy1aYicZJh0t+sx4P8p/PTkL6VRYpSE=;
        b=Xls0JJIJ7SULBm+W8W+D/jpkNb47aHkuLMkWmhIlJMsnajXgLNrsSywzhw9h7Dsh1n
         N+dj7Gw+F7yXnnjBU23ji8iajZDisTA/oIHzjGktryrdZ/x8aZZLOVLFmrKhnFzTlnxY
         rHGKCSLCk29B1gGG3Zh4jFg4KcDHaKB5P9BrY/9VCSItXLYyBKCkh8kCgktFDQqkXeoV
         u2o0OtZJO7LIgQWMtJ960wmj2agRTebETSAb4lAcqwECumJi3drHUtaFwFvlVADba4Ca
         isONRncYZlfOXTyGHCkWTL5daa88i9Gi/nX3vthHP0EDEm69xp7BbNvF3CWRhxuOJN5k
         XZnA==
X-Gm-Message-State: AOAM530A6DtWT6XQe4l7hPrV2Fr8/XQkfovtZUVwsUIQxZLyjvwFbmTP
	5woz9PvwcXak2eyl1fdsls9tXqnYVP0uxhMQ5zo=
X-Google-Smtp-Source: ABdhPJxx9J17LmkwGitktVYN9ALAPkuD5D+yTgl95x7lRC/+0r/em/+x+mI5B3yMMbvsTA8nsiy3zhxBhQV7MCTCba0=
X-Received: by 2002:a02:9645:: with SMTP id c63mr21085897jai.84.1617569446319;
 Sun, 04 Apr 2021 13:50:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210401085213.1209080-1-yann@blade-group.com> <20210401085213.1209080-2-yann@blade-group.com>
In-Reply-To: <20210401085213.1209080-2-yann@blade-group.com>
From: "Trevor Woerner" <twoerner@gmail.com>
Date: Sun, 4 Apr 2021 16:50:35 -0400
Message-ID: <CAHUNapQ3169SniA9LDu-Gf9PqEqAb-uTjA5mkS2Ma=mOfDe82w@mail.gmail.com>
Subject: Re: [meta-rockchip][PATCH v2 1/4] linux-yocto: reduce bbappend duplication
To: Yann Dirson <yann.dirson@blade-group.com>
Cc: Yann Dirson <yann@blade-group.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi Yann,

I've added this one to master, thanks!
I'm still playing around with the others, thanks for your patience :-)

On Thu, Apr 1, 2021 at 4:52 AM <yann.dirson@blade-group.com> wrote:
>
> From: Yann Dirson <yann@blade-group.com>
>
> Signed-off-by: Yann Dirson <yann@blade-group.com>
> ---
>  ...{linux-yocto-dev.bbappend => linux-yocto%.bbappend} |  0
>  recipes-kernel/linux/linux-yocto-rt_%.bbappend         | 10 ----------
>  recipes-kernel/linux/linux-yocto-tiny_%.bbappend       | 10 ----------
>  recipes-kernel/linux/linux-yocto_%.bbappend            | 10 ----------
>  4 files changed, 30 deletions(-)
>  rename recipes-kernel/linux/{linux-yocto-dev.bbappend => linux-yocto%.bbappend} (100%)
>  delete mode 100644 recipes-kernel/linux/linux-yocto-rt_%.bbappend
>  delete mode 100644 recipes-kernel/linux/linux-yocto-tiny_%.bbappend
>  delete mode 100644 recipes-kernel/linux/linux-yocto_%.bbappend
>
> diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-kernel/linux/linux-yocto%.bbappend
> similarity index 100%
> rename from recipes-kernel/linux/linux-yocto-dev.bbappend
> rename to recipes-kernel/linux/linux-yocto%.bbappend
> diff --git a/recipes-kernel/linux/linux-yocto-rt_%.bbappend b/recipes-kernel/linux/linux-yocto-rt_%.bbappend
> deleted file mode 100644
> index 7702e3f..0000000
> --- a/recipes-kernel/linux/linux-yocto-rt_%.bbappend
> +++ /dev/null
> @@ -1,10 +0,0 @@
> -COMPATIBLE_MACHINE_marsboard-rk3066 = "marsboard-rk3066"
> -COMPATIBLE_MACHINE_rock2-square = "rock2-square"
> -COMPATIBLE_MACHINE_radxarock = "radxarock"
> -COMPATIBLE_MACHINE_firefly-rk3288 = "firefly-rk3288"
> -COMPATIBLE_MACHINE_vyasa-rk3288 = "vyasa-rk3288"
> -COMPATIBLE_MACHINE_tinker-board = "tinker-board"
> -COMPATIBLE_MACHINE_tinker-board-s = "tinker-board-s"
> -COMPATIBLE_MACHINE_rock-pi-4 = "rock-pi-4"
> -COMPATIBLE_MACHINE_nanopi-m4 = "nanopi-m4"
> -COMPATIBLE_MACHINE_nanopi-m4-2gb = "nanopi-m4-2gb"
> diff --git a/recipes-kernel/linux/linux-yocto-tiny_%.bbappend b/recipes-kernel/linux/linux-yocto-tiny_%.bbappend
> deleted file mode 100644
> index 7702e3f..0000000
> --- a/recipes-kernel/linux/linux-yocto-tiny_%.bbappend
> +++ /dev/null
> @@ -1,10 +0,0 @@
> -COMPATIBLE_MACHINE_marsboard-rk3066 = "marsboard-rk3066"
> -COMPATIBLE_MACHINE_rock2-square = "rock2-square"
> -COMPATIBLE_MACHINE_radxarock = "radxarock"
> -COMPATIBLE_MACHINE_firefly-rk3288 = "firefly-rk3288"
> -COMPATIBLE_MACHINE_vyasa-rk3288 = "vyasa-rk3288"
> -COMPATIBLE_MACHINE_tinker-board = "tinker-board"
> -COMPATIBLE_MACHINE_tinker-board-s = "tinker-board-s"
> -COMPATIBLE_MACHINE_rock-pi-4 = "rock-pi-4"
> -COMPATIBLE_MACHINE_nanopi-m4 = "nanopi-m4"
> -COMPATIBLE_MACHINE_nanopi-m4-2gb = "nanopi-m4-2gb"
> diff --git a/recipes-kernel/linux/linux-yocto_%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
> deleted file mode 100644
> index 7702e3f..0000000
> --- a/recipes-kernel/linux/linux-yocto_%.bbappend
> +++ /dev/null
> @@ -1,10 +0,0 @@
> -COMPATIBLE_MACHINE_marsboard-rk3066 = "marsboard-rk3066"
> -COMPATIBLE_MACHINE_rock2-square = "rock2-square"
> -COMPATIBLE_MACHINE_radxarock = "radxarock"
> -COMPATIBLE_MACHINE_firefly-rk3288 = "firefly-rk3288"
> -COMPATIBLE_MACHINE_vyasa-rk3288 = "vyasa-rk3288"
> -COMPATIBLE_MACHINE_tinker-board = "tinker-board"
> -COMPATIBLE_MACHINE_tinker-board-s = "tinker-board-s"
> -COMPATIBLE_MACHINE_rock-pi-4 = "rock-pi-4"
> -COMPATIBLE_MACHINE_nanopi-m4 = "nanopi-m4"
> -COMPATIBLE_MACHINE_nanopi-m4-2gb = "nanopi-m4-2gb"
> --
> 2.30.2
>
