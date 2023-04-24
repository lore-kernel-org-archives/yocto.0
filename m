Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92197C77B61
	for <webhook@archiver.kernel.org>; Mon, 24 Apr 2023 23:30:24 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web10.67612.1682379020502983975
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Apr 2023 16:30:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=Q/PsP+qZ;
 spf=pass (domain: mvista.com, ip: 209.85.214.178, mailfrom: jpuhlman@mvista.com)
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1a98ac97d47so2333435ad.3
        for <yocto@lists.yoctoproject.org>; Mon, 24 Apr 2023 16:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1682379020; x=1684971020;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wi9yYI1ko98xRZUtZKaFsESJhBa7WWqiedz3oOsMyQQ=;
        b=Q/PsP+qZY0OIg0tABQkWHq0Wms6mfKKnfF6bgj2vZ3gdAOO566vy7zabCEBfJnkTBR
         ZBnTAyzlAT0Z76TKUOgz5Ii0T1mCPumi18O6wcZXM1AqQTUsCjIeZ3UUWgj3OJDNUZ4r
         JMY6Ufle48kDgVcUe3LcaryNj9Vy4B1hyCih8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682379020; x=1684971020;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wi9yYI1ko98xRZUtZKaFsESJhBa7WWqiedz3oOsMyQQ=;
        b=ewT4xg71ORDdDtqH7eWXwVmz6yyID8Ge20dXnsGvWEhh7W/pSME20PpN3M9IqSL6aF
         eCwQ1JOyTpF95oQLqfMJ2tb2LDxZiRtFln42t3/GEkVwSlwLfqbi2pJLEgv4fTSIS8o+
         C/KDdqfRQHN4Ipmh89xsvynIzeVCmXYtQrwKWBBu0B2MiApPZfWV+Bt3PyMFsQkZM8kb
         E0/Zo4IPNK6E2jHg/t2xZbvLLLQsAwo+TTi/p7Lvs72dHeoibiDjY14wZI3uIJ+1NaSm
         lALMgBr7oExo0x/cCUthYKtwaDrlV94vVdsfBv4EzzPnNpyp+5H2c2fNbTJEKOWlonzz
         yNaA==
X-Gm-Message-State: AC+VfDx+GmHYPH814dFD3sqw4tdXbqWLECNvLFIogX/5bF4W2VqqQxDp
	mA1Q6aT3VlVpMtGcJnCn2VdQtA==
X-Google-Smtp-Source: ACHHUZ5gfO77Zh8ycBcTZ85rI6oWu293Rhsq6TnCYw1q8eBWWpnx8egW7c8S+gmfkLXxv+PLWYo+wg==
X-Received: by 2002:a17:902:ec8b:b0:1a9:7f45:8721 with SMTP id x11-20020a170902ec8b00b001a97f458721mr3109377plg.48.1682379019889;
        Mon, 24 Apr 2023 16:30:19 -0700 (PDT)
Received: from [192.168.1.9] (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id l4-20020a170902eb0400b001960706141fsm7031440plb.149.2023.04.24.16.30.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Apr 2023 16:30:17 -0700 (PDT)
Message-ID: <eb95137b-933f-5db3-66ab-1d737cd992c1@mvista.com>
Date: Mon, 24 Apr 2023 16:30:15 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [yocto] [meta-cgl][kirkstone][PATCH 1/1] pacemaker: Remove build
 host path
Content-Language: en-US
To: soumya.sambu@windriver.com, yocto@lists.yoctoproject.org
References: <20230424022701.2574063-1-soumya.sambu@windriver.com>
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <20230424022701.2574063-1-soumya.sambu@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Apr 2023 23:30:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59773

Meregd, thanks.

On 4/23/2023 7:27 PM, Soumya via lists.yoctoproject.org wrote:
> File installed by pacemaker-cli-utils contains path of build host.
>
> Signed-off-by: Soumya <soumya.sambu@windriver.com>
> ---
>   meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb | 6 ++++++
>   1 file changed, 6 insertions(+)
>
> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
> index 2b4f96d..c3fdff3 100644
> --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
> +++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
> @@ -84,6 +84,12 @@ do_install:append() {
>       do
>           sed -i "s:${RECIPE_SYSROOT_NATIVE}::g" $temdir
>       done
> +
> +    hostdir=$(grep -Rn ${HOSTTOOLS_DIR} ${D}/* | awk -F: '{print $1}' | uniq)
> +    for tmpdir in $hostdir
> +   do
> +        sed -i "s:${HOSTTOOLS_DIR}::g" $tmpdir
> +    done
>   }
>   
>   PACKAGES:prepend = "${PN}-cli-utils ${PN}-libs ${PN}-cluster-libs ${PN}-remote "
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59764): https://lists.yoctoproject.org/g/yocto/message/59764
> Mute This Topic: https://lists.yoctoproject.org/mt/98462814/2167262
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jpuhlman@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

-- 
Jeremy Puhlman
jpuhlman@mvista.com


