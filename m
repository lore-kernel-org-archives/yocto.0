Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web08.28737.1630968836870176223
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Sep 2021 15:53:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=l+9MqoN6;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id n4so4625231plh.9
        for <yocto@lists.yoctoproject.org>; Mon, 06 Sep 2021 15:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=kLEYhI3WD+MnoRnqWfhyZu8NmtJM12Iamn4CxJsCtiE=;
        b=l+9MqoN6XzTyDCaB+e1HUH7gLUF1jDK/WyW0dy7FhRdXfKQLOIfDP+be8zDMucsCuX
         FZR8tEFQ4P6lPykl2L3OtLhG/QJ1lriG/OeOejSEiOpsRPL8oXs6nT8ZofDNRtMmHf/r
         9q+okVy7D4WY/7e9DUGnrIQS3RScINxwuGzpyJqlSZhW22Fc2gNX140chCm+KeiKRZ74
         drYsye4AOzeqM0M2037ozOPxhYYASBr3NFbokEuaVfgGX8Gj9/vaBI7cnqa0DuRKP/Rw
         wQZm5P3rZeFd5qQWIPRScNHd8xtHbfu5I+TWQZW3J1OaKaxgRzyXzqN+elDQCW0T1LSl
         d8Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=kLEYhI3WD+MnoRnqWfhyZu8NmtJM12Iamn4CxJsCtiE=;
        b=atuuai+rFnwrOaOWQCwmhtFzwtMIEzVwElNAXnQ0SdJpIxv3oiwxqvpVt3UUzivGyg
         cfWefn3H66zgwwcgk52xYvsoS83nNslhwChRowHct8uV1/ouCv+6hUEl38gF48Hv9sr1
         mCL6NzdTfmaPgtDw33cv4OLXr6+X2sx6FghBx08tLy9Gz5j928xUaeKG0fLcoKZYP4J3
         CX1OLhpuem8OImJA8gW328zDg//oIiTBgB4qYfuw3NTnDoHvGSNJdVk5VQrtN4HmJ89y
         XqoWSyyS/crbn/g3gbuPd5LkSHlvD4IJxJIrMuHdKPGLqfa4g2aMys316wuHVCBDhG+9
         2aSQ==
X-Gm-Message-State: AOAM532qhpAo14UXN3ZcuYQWPsMEPbGSeqFngidwATMBcbVRiITi3xl+
	P+fHIGTjEvmkYiwF6fMST00=
X-Google-Smtp-Source: ABdhPJx27Sgnl5SX8sympl5OaFB/0ARmxE3RNwqNHVgl8OCw1bzue53Zy8OaMIO1IVn48d7uqoodEA==
X-Received: by 2002:a17:90a:73c9:: with SMTP id n9mr1294540pjk.105.1630968836382;
        Mon, 06 Sep 2021 15:53:56 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:352e:86c8:8f80:ca55? ([2601:202:4180:a5c0:352e:86c8:8f80:ca55])
        by smtp.gmail.com with ESMTPSA id n12sm386718pjj.2.2021.09.06.15.53.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 15:53:55 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] dm-verity-img.bbclass: Expose --data-block-size for configuration
To: Paulo Neves <ptsneves@gmail.com>, yocto@lists.yoctoproject.org
Cc: Christer Fletcher <christer.fletcher@inter.ikea.com>,
 Paulo Neves <paulo.neves1@inter.ikea.com>
References: <20210901141801.1635611-1-ptsneves@gmail.com>
From: "Armin Kuster" <akuster808@gmail.com>
Message-ID: <87fb7167-9cab-75e4-70ee-ac8bd0fac1de@gmail.com>
Date: Mon, 6 Sep 2021 15:53:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210901141801.1635611-1-ptsneves@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

merged.

thanks
Armin

On 9/1/21 7:18 AM, Paulo Neves wrote:
> From: Christer Fletcher <christer.fletcher@inter.ikea.com>
>
> Add DM_VERITY_IMAGE_DATA_BLOCK_SIZE to be able to set the
> --data-block-size used in veritysetup. Tuning this value effects the
> performance and size of the resulting image.
>
> Signed-off-by: Christer Fletcher <christer.fletcher@inter.ikea.com>
> Signed-off-by: Paulo Neves <paulo.neves1@inter.ikea.com>
> ---
>  classes/dm-verity-img.bbclass | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
> index 16d395b..b311fc5 100644
> --- a/classes/dm-verity-img.bbclass
> +++ b/classes/dm-verity-img.bbclass
> @@ -22,6 +22,9 @@
>  # is stored where it can be installed into associated initramfs rootfs.
>  STAGING_VERITY_DIR ?= "${TMPDIR}/work-shared/${MACHINE}/dm-verity"
>  
> +# Define the data block size to use in veritysetup.
> +DM_VERITY_IMAGE_DATA_BLOCK_SIZE ?= "1024"
> +
>  # Process the output from veritysetup and generate the corresponding .env
>  # file. The output from veritysetup is not very machine-friendly so we need to
>  # convert it to some better format. Let's drop the first line (doesn't contain
> @@ -57,7 +60,7 @@ verity_setup() {
>  
>      # Let's drop the first line of output (doesn't contain any useful info)
>      # and feed the rest to another function.
> -    veritysetup --data-block-size=1024 --hash-offset=$SIZE format $OUTPUT $OUTPUT | tail -n +2 | process_verity
> +    veritysetup --data-block-size=${DM_VERITY_IMAGE_DATA_BLOCK_SIZE} --hash-offset=$SIZE format $OUTPUT $OUTPUT | tail -n +2 | process_verity
>  }
>  
>  VERITY_TYPES = "ext2.verity ext3.verity ext4.verity btrfs.verity"
>
> 
>

