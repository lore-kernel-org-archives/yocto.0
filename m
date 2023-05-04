Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B6ECC77B7C
	for <webhook@archiver.kernel.org>; Thu,  4 May 2023 14:23:47 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web10.51568.1683210225461145999
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 May 2023 07:23:46 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@smile-fr.20221208.gappssmtp.com header.s=20221208 header.b=mcJa4r6N;
 spf=pass (domain: smile.fr, ip: 209.85.128.52, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-3f19a80a330so4350425e9.2
        for <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 07:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20221208.gappssmtp.com; s=20221208; t=1683210223; x=1685802223;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=6Hh4hvGde335Pc2FpU08e8WiWB2tr8uUbXWl/us7kTc=;
        b=mcJa4r6NTQ2exdHgu00Wmc8/kIqLgvhvpcbzM4vljt7TK2dsp9uJZxTE3I6ExxUfPu
         2HD2xZxp8S+3gcy/Q+t3DtCzwoaKsQiRwN8OmaN9SXTVcMxgDf2qdvw8R6wXvhunC1Dp
         e/6q57mGCNGCYhlGPX/j9OqFWd4IWTpbmxo9+vwslxAdkGoQA90C3FqPUdfpGfy6zrjZ
         TorfndYy+Ta2N4dBTWnO9RaT8eDIkFianrSCGmxMm1XsKWXkHYorBwOVzMsHAqpx/RzG
         x7JzFheXTEBM96fAmhrVDarebQq6vxq9N8VwnayiuTHlK7PKnXo9cYt7d8btV+VkfXD8
         vxOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683210223; x=1685802223;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6Hh4hvGde335Pc2FpU08e8WiWB2tr8uUbXWl/us7kTc=;
        b=mFCxsl3KsETfmvnbh5ur39vLaBZcRRFKRVnGv8FZEOV/eUsZWQeEnU54G6zstPB5pp
         v0ULmu3ixSfAiZmMl5IlCtwwH4V4ofDo1TcU2ZDCifRk3W/BhzXogd75BA7m/c59e405
         h0/Rr6rDHuwR3MaGyry6u/sFUd5HDqM7lY0TlBZ3Eancowyiectzqk8zp5ronFytnu4t
         HzOTwXHjwW0CyH+3IGK6w2DEcrxFaQXrRh+AADs/5ca0uJv3Fg+IFUeJeV1Rk6A4QgMb
         7qCfG00pU+V0eo/4XTyiPLeIEZ1E7TjPMstI5G6gAupKg2z7ZSVSI5XomKvcTK7xL1q1
         fT1w==
X-Gm-Message-State: AC+VfDyNdoiO/oG8LUvlWv5cBs4c453yzXOQHDerhgeWpYMu+1zPQDbc
	017eLv9Y5LFpGyFc4WRQKpoatkMQrQfbBRMh1kpt0w==
X-Google-Smtp-Source: ACHHUZ5G7fqNmvMvZy6r+5r9Oue0mNQscmv9+rw57mOc5Imrb0tzPUSLkiP+mgMyrD6YA+QRbR+PEA==
X-Received: by 2002:a1c:ed0e:0:b0:3f1:800f:cc61 with SMTP id l14-20020a1ced0e000000b003f1800fcc61mr17423648wmh.13.1683210223184;
        Thu, 04 May 2023 07:23:43 -0700 (PDT)
Received: from [192.168.0.21] (53.1.159.89.rev.sfr.net. [89.159.1.53])
        by smtp.gmail.com with ESMTPSA id i17-20020a5d6311000000b00306ec04f060sm1958403wru.107.2023.05.04.07.23.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 May 2023 07:23:42 -0700 (PDT)
Message-ID: <8bdf154f-a197-667b-a07f-eecc3e8c52f1@smile.fr>
Date: Thu, 4 May 2023 16:23:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] auh: publish output on
 https://autobuilder.yocto.io/pub/auh/
To: yocto@lists.yoctoproject.org
References: <20230428070139.450100-1-alex.kanavin@gmail.com>
Content-Language: en-US
From: Yoann Congal <yoann.congal@smile.fr>
Organization: Smile ECS
In-Reply-To: <20230428070139.450100-1-alex.kanavin@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 14:23:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59869

On 4/28/23 09:01, Alexander Kanavin wrote:
> AUH itself already has an option to include the link into
> its email reports; the option just needs to be enabled.
> 
> [YOCTO #15103]
> 
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>

Looks good to me!

Reviewed-by: Yoann Congal <yoann.congal@smile.fr>

Thanks!

> ---
>  config.json                            | 2 +-
>  scripts/auh-config/upgrade-helper.conf | 2 +-
>  scripts/run-auh                        | 6 +++++-
>  3 files changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/config.json b/config.json
> index 9da4d85..a2ba46e 100644
> --- a/config.json
> +++ b/config.json
> @@ -1186,7 +1186,7 @@
>          },
>          "auh" : {
>              "EXTRAPLAINCMDS" : [
> -                "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}; ${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR}"
> +                "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}; ${SCRIPTSDIR}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/"
>              ]
>          },
>          "a-quick" : {
> diff --git a/scripts/auh-config/upgrade-helper.conf b/scripts/auh-config/upgrade-helper.conf
> index 3a0aa6c..e0fed11 100644
> --- a/scripts/auh-config/upgrade-helper.conf
> +++ b/scripts/auh-config/upgrade-helper.conf
> @@ -29,7 +29,7 @@ buildhistory=yes
>  #testimage_name=core-image-minimal
>  
>  #workdir=/home/auh/work/
> -#publish_work_url=https://logs.yoctoproject.org/auh/
> +publish_work_url=https://autobuilder.yocto.io/pub/auh
>  
>  commit_revert_policy=all
>  
> diff --git a/scripts/run-auh b/scripts/run-auh
> index 527ff96..0419dd1 100755
> --- a/scripts/run-auh
> +++ b/scripts/run-auh
> @@ -7,7 +7,7 @@
>  # Called with $1 - the directory where the setup was created
>  
>  if [ -z $1 ]; then
> -  echo "Use: $0 auh_setup_dir"
> +  echo "Use: $0 auh_setup_dir [publish_dir]"
>    exit 1
>  fi
>  
> @@ -27,4 +27,8 @@ git checkout -B tmp-auh-upgrades origin/master
>  source $poky_dir/oe-init-build-env $build_dir
>  $auh_dir/upgrade-helper.py -e all
>  
> +if [ -n $2 ]; then
> +  cp -rf $build_dir/upgrade-helper/* $2
> +fi
> +
>  popd
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59790): https://lists.yoctoproject.org/g/yocto/message/59790
> Mute This Topic: https://lists.yoctoproject.org/mt/98553558/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [yoann.congal@smile.fr]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

-- 
Yoann Congal
Smile ECS - Tech Expert

