Return-Path: <ypa.takayasu.ito@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCC7AC7EE23
	for <webhook@archiver.kernel.org>; Sun, 11 Jun 2023 12:44:36 +0000 (UTC)
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
 by mx.groups.io with SMTP id smtpd.web11.35488.1686487467082472655
 for <yocto@lists.yoctoproject.org>;
 Sun, 11 Jun 2023 05:44:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=EK9SLGl9;
 spf=pass (domain: gmail.com, ip: 209.85.210.194, mailfrom: ypa.takayasu.ito@gmail.com)
Received: by mail-pf1-f194.google.com with SMTP id d2e1a72fcca58-65299178ac5so3760567b3a.1
        for <yocto@lists.yoctoproject.org>; Sun, 11 Jun 2023 05:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686487466; x=1689079466;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yTeLo1B9eIOxqG7AUqRdX8wEHWemvhw9eUYdIaf3KLg=;
        b=EK9SLGl9bOnHIm1jm3BlRw0T7UGVQ3WXVmSXqyPzy7eodDaGzb1LuaKmOd3XercbHK
         Qi36J4HIndC1CNXJ3rZpsw7PJOWYK8BdjH42BF7MP4z3YZ8b/hBI6JNdCw8Kih1Rr4v5
         xhKQsqjzmkVSpt7G0pvr6UqlOVMPbWw8vqCh7HnHEzcwgFV4anVAzUEr+qTn5nAaTFTP
         qcnXackJSqrRbHICs23O4MFv+7BmxDjafUeo//TPuO9AfCZsAOpr9cuG16Pg4UY97CZR
         Lascf0T9siCcLe1KZOYRap+OroiVpsPSZ5JNlkeBYpfsrSoX3ExdMi19HfSKMXuubtT1
         i29g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686487466; x=1689079466;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yTeLo1B9eIOxqG7AUqRdX8wEHWemvhw9eUYdIaf3KLg=;
        b=Ghln/LH4Lpg3ZO+LHFjbmGwU6vA2gtJMfe8GhLBez77zFGLwpIXzo5knkQmgY01egN
         nHc6Zcge0l10g3+CPEaKbonVu0sz1L1fqh+LkA+XFo3MTf/L4vm01oPf7pcQACpdCGUF
         Ts47i2nQKD6k3rpYj6BIbOmkHoilChUoKzmh/fHr9/xTbcYJKJXVsmtRKGIQD5SBMkoL
         7WKud3ZCMKhDLFwXUpStlhFTnhH2vR234dgRZHfJHD2DYuFEMlp8XMMYICihoyt0Q+Xc
         m5SN9BOxc5FDbK5qIk3WwPJTzal/oUe/xrRIDRi3/z+T8uwdYHs1UuqgIyVLtKKvVZAR
         6TIA==
X-Gm-Message-State: AC+VfDwf7q64sYh8zOKdRRA1JRfoWM5lEU+Ecg94W4DmetPg1UH8OCgE
	KPGpABu3n/LYGY3xZLhCtOs=
X-Google-Smtp-Source: ACHHUZ6uyf8/lm9YL2rMe2Iak5+sa9Gv1F7o2OSXeHeXXKNL3nja8zvI16Cp201Wm9oeOLjyCmEb8w==
X-Received: by 2002:a05:6a20:8e02:b0:101:73a9:1683 with SMTP id y2-20020a056a208e0200b0010173a91683mr8522553pzj.33.1686487466104;
        Sun, 11 Jun 2023 05:44:26 -0700 (PDT)
Received: from ?IPV6:2400:2412:6a60:8500:bf04:6ca5:549c:d526? ([2400:2412:6a60:8500:bf04:6ca5:549c:d526])
        by smtp.gmail.com with ESMTPSA id r201-20020a632bd2000000b0054a8200ac4bsm3240689pgr.89.2023.06.11.05.44.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Jun 2023 05:44:25 -0700 (PDT)
Message-ID: <f50c2516-dd53-95ea-fef4-b97712a7daae@gmail.com>
Date: Sun, 11 Jun 2023 21:44:23 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [yocto] xwayland needs dependency to libtirpc on kirkstone and
 master branch.
Content-Language: en-US
To: Masahiko Kimoto <kimoto@ohnolab.org>, yocto@lists.yoctoproject.org
References: <20230610.172341.1672673222928870000.kimoto@ohnolab.org>
From: Takayasu Ito <ypa.takayasu.ito@gmail.com>
In-Reply-To: <20230610.172341.1672673222928870000.kimoto@ohnolab.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 11 Jun 2023 12:44:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60243

Hi Masahiko,

Patches for recipes in the "meta" layer should be posted to 
https://lists.openembedded.org/g/openembedded-core instead of this ML.
Instructions for submitting patches can be found at the following URL
https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

Best regards,

On 2023/06/10 17:23, Masahiko Kimoto wrote:
> Hello all,
>
> On Kirkstone and Master branch of poky, xwayland needs DEPENDS to libtirpc.
>
> A small patch for kirkstone branch is attached.
>
> Regards,
>
> ----------------------------------------------------------------------
> Masahiko Kimoto, Ph.D.
> E-mail: kimoto@ohnolab.org        URL: http://www.ohnolab.org/~kimoto
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60242): https://lists.yoctoproject.org/g/yocto/message/60242
> Mute This Topic: https://lists.yoctoproject.org/mt/99444792/7581020
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ypa.takayasu.ito@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
-- 
Takayasu Ito
Yocto Project Ambassador
Email: ypa.takayasu.ito@gmail.com


