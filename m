Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60AB5C433F5
	for <webhook@archiver.kernel.org>; Mon, 14 Mar 2022 22:27:29 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web11.3010.1647296848227915046
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Mar 2022 15:27:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=e3+oug3q;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id p9so26223958wra.12
        for <yocto@lists.yoctoproject.org>;
 Mon, 14 Mar 2022 15:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=CIygi9xFbaPj5NzbLTXY6Jld45OpSlxQ4Q9sKS0qeq4=;
        b=e3+oug3qrkAhIS+mGBTcicbt5Xslt/J0KuFTGSJWCD0LyvetDRhbrBy8Aucla7HaAQ
         5mfEfU6cSMMfhbK1BDqBAlbqjMSC2ANasN4hrK4fewDoJ+emO9hnyqxn2cuSrfcbQxd2
         uPUw7vUzLoAbwek7mgELbFXoeTSFrxsuMX5Z0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=CIygi9xFbaPj5NzbLTXY6Jld45OpSlxQ4Q9sKS0qeq4=;
        b=Uy2AYAbUgnjB6NqF7BzqOZfGRfAnq9HdDukK1q/OIbLkoox/1n3+oLxHQdwOYKKs7/
         fEelPus/jCN9KHx0QoKzXt454Tv6TiHB3R9pClCPsAg2ir9dlkhOkGewXJg2FVkGI/LK
         YK+dEwu2ECKKALuNSvQiNvOHeeVnmWjVbZrv4XnBToZBHuK4rByFMBYg2x5qQUz4A7qN
         ouxX6vk91aMvx2kaeJauSsGcaO922ckWKKvodXUyvxhOjF0phY24RA1D0MRc5E/Nm3x/
         3IlQq+ygJvinU9/3T3jHnt3ogpktQAh1OgswpkkaCkJQvAkDsci4aO859kPQBlJNWqwY
         syEw==
X-Gm-Message-State: AOAM531mOsTSefePucM3FyzQHcD4goB6Ml414p+4gIWmdmF8KmrbxYuo
	RSekfKKoxJBVo6+9yh7JTdCqGTJiqYBMFZPT
X-Google-Smtp-Source: 
 ABdhPJw3HE3wznw796ZCKxVptCJQh8FNpSU3VS1NjBzx73ofnCgn+datvExPZVQ2GkSC/IRrWl0vAg==
X-Received: by 2002:adf:eb86:0:b0:1e6:8c92:af6b with SMTP id
 t6-20020adfeb86000000b001e68c92af6bmr17772537wrn.116.1647296846182;
        Mon, 14 Mar 2022 15:27:26 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:9098:b3d5:8fee:ea58?
 ([2001:8b0:aba:5f3c:9098:b3d5:8fee:ea58])
        by smtp.gmail.com with ESMTPSA id
 l126-20020a1c2584000000b00387d4f35651sm648770wml.10.2022.03.14.15.27.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Mar 2022 15:27:25 -0700 (PDT)
Message-ID: 
 <8b4cbc719143fafed13c8a3ba6704510d3fa4e4a.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-3.1.15.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Mon, 14 Mar 2022 22:27:23 +0000
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Mar 2022 22:27:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56431

A build flagged for QA (yocto-3.1.15.rc1) was completed on the autobuilder and
is available at:


    /srv/autobuilder/autobuilder.yocto.io/pub/releases/yocto-3.1.15.rc1


Build hash information: 

bitbake: d22cc1e587c650fd5f90cda32f5720f8a3105aac
meta-agl: 9df7a40dd0b5e3ee1ed72e460dc99193eeb4bd6c
meta-arm: d21ded082c27959c8d617fd18da60b236d2ec62b
meta-aws: 9979cfa676105cb68cfadfdaeabf044d7c919319
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 8781f8352e67814db7a26708437fd0820524d3d8
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: 0722ff6f021df91542b5efa1ff5b5f6269f66add
oecore: 8906aa9ec0a80b0f8998fb793f4e9491b3179179
poky: b41d4e46d30ed32e11d68466721a0f4056bad700



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org




