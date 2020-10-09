Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com [209.85.215.194])
 by mx.groups.io with SMTP id smtpd.web12.14991.1602253461902885831
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Oct 2020 07:24:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AFP4XFyl;
 spf=pass (domain: gmail.com, ip: 209.85.215.194, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f194.google.com with SMTP id o25so7318272pgm.0
        for <yocto@lists.yoctoproject.org>; Fri, 09 Oct 2020 07:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=eKprgSBJpcGJ6dsyFLD0h9grL18+ODv23B4zgubEr2Y=;
        b=AFP4XFylbxCo28GCpaCGrUdvzUK0p/N7ZHKMyrDdCaaZ0A8n/NfMFtTQaDBVcuMVpr
         9O7UuPh6XUXcEtQffLt82WHVN9IsWNf3QXU/N5jYzgOoD/MXZwFLPPcmBuy0Q25VWbOp
         6at44hOFKTe32j84qQZMvfWGOKKKyBE8ko9kD389iE9ywGEEU6k4xPoj7qv60wQ4N2xX
         /2Iu2i1GCevg9Oe45zZqbuWr0LQTtBgXFLKJvP0FzEuOMW6dDsUyI6CSAhFXC8ef+wi7
         ko8FXI9VPvAtAi5DYbvmUIePS9PuFcFiDb5naApOfnyL3lI8QMIndrnD5NuOHD+qfUYn
         mcvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=eKprgSBJpcGJ6dsyFLD0h9grL18+ODv23B4zgubEr2Y=;
        b=I5II4VogHA+6RIvrD3JPOybCI63/kTsAmxN+dXnFfKGjbPZg0+NZPeoYStTELxAz12
         N34VGQC+bNFk3WWqlP7nHWjCi4mwwqmUwDCSJ27dO+lLw//u9m2w6VJ9h6jx6ema5N7s
         Zod3lZYTKDIZMk9xdIY1lJXtjw7GEMfLspNZTCVtkrL+ZhE0dYltfEX/qJqj7uj5UbFU
         RVHDbpax3OSS8coLBBgubfZW5P5sY4s98VMvdET9U/Oa853DTJXj2bQ4ghwiZfPHa0XF
         HEZrH/ldFAu5pD42zvN6CvkM1dL8pR/VHZfnMhJtZhQug/wYVUQyUXt0bD6gjjAVFKJw
         JXFw==
X-Gm-Message-State: AOAM533LbqO6Qz9zCp757ii/mrZKGwENIWVdRw3yU87dk/bBBLJ0JsnA
	zLQKf06hwHEta9eET2Yi+vgA0DBEY78=
X-Google-Smtp-Source: ABdhPJx74ccQvTBy8X10TVIzyzBHWx3BAT1IHlR+lEWVROKqEVBq7+j0+m6Br1pML/MFcFTCzThfNg==
X-Received: by 2002:a17:90a:62c4:: with SMTP id k4mr4859999pjs.174.1602253460848;
        Fri, 09 Oct 2020 07:24:20 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:f1c6:e45a:6950:664b? ([2601:202:4180:a5c0:f1c6:e45a:6950:664b])
        by smtp.gmail.com with ESMTPSA id q135sm2937799pfq.135.2020.10.09.07.24.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 07:24:19 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH 1/3] initramfs-framework/dmverity: add retry loop for slow boot devices
To: Naveen Saini <naveen.kumar.saini@intel.com>, yocto@lists.yoctoproject.org
References: <20201002025352.18830-1-naveen.kumar.saini@intel.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <d4c64563-e92b-5632-3a71-ec059cc060c1@gmail.com>
Date: Fri, 9 Oct 2020 07:24:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201002025352.18830-1-naveen.kumar.saini@intel.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 10/1/20 7:53 PM, Naveen Saini wrote:
> Detection of USB devices by the kernel is slow enough. We need to
> keep trying for a while (default: 5s seconds, controlled by roottimeout=<seconds>)
> and sleep between each attempt (default: one second, rootdelay=<seconds>).
>
> Fix is based on https://git.yoctoproject.org/cgit.cgi/poky/commit/meta/recipes-core/initrdscripts/initramfs-framework/rootfs?id=ee6a6c3461694ce09789bf4d852cea2e22fc95e4
>
> Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
> ---
>  .../initramfs-framework/dmverity              | 64 +++++++++++--------
>  1 file changed, 37 insertions(+), 27 deletions(-)

series merge.

thanks
>
> diff --git a/recipes-core/initrdscripts/initramfs-framework/dmverity b/recipes-core/initrdscripts/initramfs-framework/dmverity
> index bb07aab..888052c 100644
> --- a/recipes-core/initrdscripts/initramfs-framework/dmverity
> +++ b/recipes-core/initrdscripts/initramfs-framework/dmverity
> @@ -10,33 +10,43 @@ dmverity_run() {
>  
>      . /usr/share/misc/dm-verity.env
>  
> -    case "${bootparam_root}" in
> -        ID=*)
> -            RDEV="$(realpath /dev/disk/by-id/${bootparam_root#ID=})"
> -            ;;
> -        LABEL=*)
> -            RDEV="$(realpath /dev/disk/by-label/${bootparam_root#LABEL=})"
> -            ;;
> -        PARTLABEL=*)
> -            RDEV="$(realpath /dev/disk/by-partlabel/${bootparam_root#PARTLABEL=})"
> -            ;;
> -        PARTUUID=*)
> -            RDEV="$(realpath /dev/disk/by-partuuid/${bootparam_root#PARTUUID=})"
> -            ;;
> -        PATH=*)
> -            RDEV="$(realpath /dev/disk/by-path/${bootparam_root#PATH=})"
> -            ;;
> -        UUID=*)
> -            RDEV="$(realpath /dev/disk/by-uuid/${bootparam_root#UUID=})"
> -            ;;
> -        *)
> -            RDEV="${bootparam_root}"
> -    esac
> -
> -    if ! [ -b "${RDEV}" ]; then
> -        echo "Root device resolution failed"
> -        exit 1
> -    fi
> +    C=0
> +    delay=${bootparam_rootdelay:-1}
> +    timeout=${bootparam_roottimeout:-5}
> +    RDEV="$(realpath /dev/disk/by-partuuid/${bootparam_root#PARTUUID=})"
> +    while [ ! -b "${RDEV}" ]; do
> +        if [ $(( $C * $delay )) -gt $timeout ]; then
> +            fatal "Root device resolution failed"
> +            exit 1
> +        fi
> +
> +        case "${bootparam_root}" in
> +            ID=*)
> +                RDEV="$(realpath /dev/disk/by-id/${bootparam_root#ID=})"
> +                ;;
> +            LABEL=*)
> +                RDEV="$(realpath /dev/disk/by-label/${bootparam_root#LABEL=})"
> +                ;;
> +            PARTLABEL=*)
> +                RDEV="$(realpath /dev/disk/by-partlabel/${bootparam_root#PARTLABEL=})"
> +                ;;
> +            PARTUUID=*)
> +                RDEV="$(realpath /dev/disk/by-partuuid/${bootparam_root#PARTUUID=})"
> +                ;;
> +            PATH=*)
> +                RDEV="$(realpath /dev/disk/by-path/${bootparam_root#PATH=})"
> +                ;;
> +            UUID=*)
> +                RDEV="$(realpath /dev/disk/by-uuid/${bootparam_root#UUID=})"
> +                ;;
> +            *)
> +                RDEV="${bootparam_root}"
> +        esac
> +        debug "Sleeping for $delay second(s) to wait root to settle..."
> +        sleep $delay
> +        C=$(( $C + 1 ))
> +
> +    done
>  
>      veritysetup \
>          --data-block-size=1024 \
>
> 
>

