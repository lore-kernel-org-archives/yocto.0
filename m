Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web11.10324.1618923937366550281
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Apr 2021 06:05:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oLF8jFip;
 spf=pass (domain: gmail.com, ip: 209.85.218.47, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ej1-f47.google.com with SMTP id r12so58184041ejr.5
        for <yocto@lists.yoctoproject.org>; Tue, 20 Apr 2021 06:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=W8gjdFMxrOm4/Qz3Nep3oeWwerxnXTCVLiceqnrsqCE=;
        b=oLF8jFipIFBcGFNHrcv08sOgzB2jbFYcI+c9MYqvwiFGdSoAM52v6vCH53pj4hM3BS
         d4H2vO6NZ8wkRUeQC3k1kNjmwOFSx7HKoRRdEZ2SePCo1gwgCgIcyONKFGeGyQZbhPhd
         5XCpgFZfxtWH3WqI1Nn9xYxCtwez2DEjOX3vczRVV2it4ZPlqc4EAneJV/FCZqR0IrRs
         mknkTwr8VDBSxxRxZL+tObAkWKg6HQpTdn0QW+Uv+1JXG29wsbzusK8/HnEkipueDGjW
         Pt82Unj2fo9iZ+saVoS4svqb1XgNKM+Le22OF6hH7yss29MbSVbxVRqmuU2Us+U1XNa5
         y/1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=W8gjdFMxrOm4/Qz3Nep3oeWwerxnXTCVLiceqnrsqCE=;
        b=N5jLzJv8DgegbFAQ3nzHirPENR9NLt4fPO9VkDaoAUGjfcmVCIJi+uWetPKRg7W+5Y
         wt/FWhz1cBisgoCGH0RnLIrff3mAC40bVSPj8D76jFgTU38itRgLSswrcm4Cf0n1d46b
         W8NIlaxUlJNeRkNuC9XFFU86++eLmydBDLJWYR14X1xCC3y4Tc3dxV76fryP1o+T2i+b
         +8Du1iVMrCkul6tanjkzYc0v5SbjIUS8sE3E2+oKw6OnT9jfkH+0JtuMpwdC0YEo6YGP
         BDMkduEd6cyCHZ9YWx50YUdBABGhUOikn8FDewRU4JdraEB6P0+6GgVybm5Elub80dvf
         UjNw==
X-Gm-Message-State: AOAM533EvQ7XAVXUwZ1KFn5At6UolVhZ6Nvh4DzJFvWlgXweQtThgfJX
	qTCW+f44MEBb8OcFFjCuq/EUxEPT4S9rIwSWXSY=
X-Google-Smtp-Source: ABdhPJyJHdG4mUbndsPDrrLoPH4daLG5MStHCgtoKnwaovsfRC/iuaHJbONYGs0Vq576LJ+IO5IksIN6k2M63bJOU5g=
X-Received: by 2002:a17:906:3749:: with SMTP id e9mr18233586ejc.247.1618923935854;
 Tue, 20 Apr 2021 06:05:35 -0700 (PDT)
MIME-Version: 1.0
References: <167790D9FF7CF994.30395@lists.yoctoproject.org>
In-Reply-To: <167790D9FF7CF994.30395@lists.yoctoproject.org>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Tue, 20 Apr 2021 09:05:24 -0400
Message-ID: <CADkTA4M7E-7V1e9447pnZJWZ49+rhwBwLrh3xxWtAMvNPknofQ@mail.gmail.com>
Subject: Re: [yocto] [PATCH] linux-yocto/5.4: fix arm defconfig warnings
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Obviously this is to the wrong list!

It escaped before I could stop it :D

I've already resent to oe-core.

Bruce

On Tue, Apr 20, 2021 at 8:31 AM Bruce Ashfield via
lists.yoctoproject.org
<bruce.ashfield=gmail.com@lists.yoctoproject.org> wrote:
>
> From: Bruce Ashfield <bruce.ashfield@gmail.com>
>
> A recent fix to the kern-tools promoted some previously unseen
> issues to warnings. This commit fixes them by tagging some BT
> options as non-hardware so they won't generate warnings if they
> don't appear in the final .config. These are sub BT options and
> shouldn't warn when/if their controlling option is disabled by
> a fragment.
>
>     d7fd0213b75 base: exclude some BT options as non-hardware
>
> Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
> ---
>  meta/recipes-kernel/linux/linux-yocto-rt_5.4.bb   | 2 +-
>  meta/recipes-kernel/linux/linux-yocto-tiny_5.4.bb | 2 +-
>  meta/recipes-kernel/linux/linux-yocto_5.4.bb      | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/meta/recipes-kernel/linux/linux-yocto-rt_5.4.bb b/meta/recipes-kernel/linux/linux-yocto-rt_5.4.bb
> index e52c9ebe0e..a802a570a1 100644
> --- a/meta/recipes-kernel/linux/linux-yocto-rt_5.4.bb
> +++ b/meta/recipes-kernel/linux/linux-yocto-rt_5.4.bb
> @@ -12,7 +12,7 @@ python () {
>  }
>
>  SRCREV_machine ?= "324e77d816cf6434507ab29140beb24044009efa"
> -SRCREV_meta ?= "5017570a130f142365dfdcd043d84143fdd6e255"
> +SRCREV_meta ?= "d7fd0213b75ce9b6206f63dbdd435ab326598642"
>
>  SRC_URI = "git://git.yoctoproject.org/linux-yocto.git;branch=${KBRANCH};name=machine \
>             git://git.yoctoproject.org/yocto-kernel-cache;type=kmeta;name=meta;branch=yocto-5.4;destsuffix=${KMETA}"
> diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny_5.4.bb b/meta/recipes-kernel/linux/linux-yocto-tiny_5.4.bb
> index f07375c761..1edc632de7 100644
> --- a/meta/recipes-kernel/linux/linux-yocto-tiny_5.4.bb
> +++ b/meta/recipes-kernel/linux/linux-yocto-tiny_5.4.bb
> @@ -17,7 +17,7 @@ KCONF_BSP_AUDIT_LEVEL = "2"
>
>  SRCREV_machine_qemuarm ?= "8463db325b93f0669446f68c19334cfe11ffb9c2"
>  SRCREV_machine ?= "5f54b437b6502d3febee553100b2cb2a9e0c5f8a"
> -SRCREV_meta ?= "5017570a130f142365dfdcd043d84143fdd6e255"
> +SRCREV_meta ?= "d7fd0213b75ce9b6206f63dbdd435ab326598642"
>
>  PV = "${LINUX_VERSION}+git${SRCPV}"
>
> diff --git a/meta/recipes-kernel/linux/linux-yocto_5.4.bb b/meta/recipes-kernel/linux/linux-yocto_5.4.bb
> index 4f056d6d82..3a9463af6a 100644
> --- a/meta/recipes-kernel/linux/linux-yocto_5.4.bb
> +++ b/meta/recipes-kernel/linux/linux-yocto_5.4.bb
> @@ -23,7 +23,7 @@ SRCREV_machine_qemux86 ?= "5f54b437b6502d3febee553100b2cb2a9e0c5f8a"
>  SRCREV_machine_qemux86-64 ?= "5f54b437b6502d3febee553100b2cb2a9e0c5f8a"
>  SRCREV_machine_qemumips64 ?= "996fe040c8d8d01a9af6be42dae3844d127471bf"
>  SRCREV_machine ?= "5f54b437b6502d3febee553100b2cb2a9e0c5f8a"
> -SRCREV_meta ?= "5017570a130f142365dfdcd043d84143fdd6e255"
> +SRCREV_meta ?= "d7fd0213b75ce9b6206f63dbdd435ab326598642"
>
>  # remap qemuarm to qemuarma15 for the 5.4 kernel
>  # KMACHINE_qemuarm ?= "qemuarma15"
> --
> 2.19.1
>
>
> 
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
