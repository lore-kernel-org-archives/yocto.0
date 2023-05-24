Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86C7DC77B73
	for <webhook@archiver.kernel.org>; Wed, 24 May 2023 03:30:12 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web10.1060.1684899005547590066
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 May 2023 20:30:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=qfUjAkTu;
 spf=pass (domain: gmail.com, ip: 209.85.210.173, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-64d2b42a8f9so256931b3a.3
        for <yocto@lists.yoctoproject.org>; Tue, 23 May 2023 20:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684899005; x=1687491005;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=btj1WbLjsE2hV+gP2lKWqjELHG7Id8P0cRf7zwHQl8o=;
        b=qfUjAkTunyejugOWUgc/YMaoKElbNwSZqpP4qInviOeG5mL8kSUsWgI6jTz1KvQMo6
         pxnjQTOlc0Je2xPzGFRnY93iYU9FHZlYtbUcylTyTEccclOchh9uBTAavaXKkWrfvBEo
         TxiCbT64Mghe/52+OtopmtJP0t5PmNA1lVzyBmWmD0Y5xPNWCT+Z8hh1ik/wnFGt/2PO
         r9LAx7nhdnpdK5Etym6+oxKXm8eC4myi1h8VhxGFU+rNWE67vopKikn4EjIYX2LUCn5h
         lXVKYPgDIeKx0d5Dl3zwZh5Qa5tr9f6vuJjLAXMvpKQOE+Erh74gPKQyDjcgzLt6R3/v
         ODDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684899005; x=1687491005;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=btj1WbLjsE2hV+gP2lKWqjELHG7Id8P0cRf7zwHQl8o=;
        b=A1+6cbqLyf6Cd2zSSxe/1peuLPqpMFbE0J2TnnBafUi1PatJCUMW2uQgnAKQ2Aflm4
         2oeVYO5/St6GS+L7n5IYqTOUZKcCU51ieSCXXOGQREGFGRRRlsTs2EuKOlWvbLtlzzPz
         txujBLdwwFAPF5/UnyXulSuvu6hpW3Yr6OUiwG6fUwR7XH/FBXTPWFpKcieFEa1O8ijZ
         GQ5aODBvGM+MEGWNVw467qOEx5hw9pIXlaSdROSFKa/74ZPIacH5Y+kwfB4nzpLXoeOi
         dbjSkQhFvAsm2u8+DosdGElUFOgGRcbdp7/7YuIixlAD1D6pk48Ls+6EYWYs3YFS+2ZS
         tfdQ==
X-Gm-Message-State: AC+VfDyg1I8uGuWzVGgoT3AvfRKuWLGjWGHzgqW5HrG9MfiC/IGU0mmE
	IOeOM+HtAR3Ng56z/Mqt4LA=
X-Google-Smtp-Source: ACHHUZ5rsy8GNp7E6u528j/tcZ0bzsQDVbOjXiLKYdXmIU4Xcvfen6IprtR5uNIj8Yb3uAPJUR2hWg==
X-Received: by 2002:a05:6a00:1a53:b0:64d:41d5:d160 with SMTP id h19-20020a056a001a5300b0064d41d5d160mr1690098pfv.20.1684899004921;
        Tue, 23 May 2023 20:30:04 -0700 (PDT)
Received: from [192.168.153.47] ([12.32.73.67])
        by smtp.gmail.com with ESMTPSA id 22-20020aa79116000000b0063b898b3502sm6451044pfh.153.2023.05.23.20.30.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 May 2023 20:30:04 -0700 (PDT)
Message-ID: <c9426bfd-8725-53d3-b720-ea96d6abcd92@gmail.com>
Date: Tue, 23 May 2023 23:30:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [yocto] Inquiry Regarding License Compatibility in OpenEmbedded
 Meta-Security Layer #selinux #yocto #qt5 #kernel #hardknott #bitbake #dunfell
 #gplv3 #imx8 #linux
Content-Language: en-US
To: Alexander Kanavin <alex.kanavin@gmail.com>, cheerala.rohith@spacelabs.com
Cc: yocto@lists.yoctoproject.org
References: <gwM8.1684841437492329746.Wdf3@lists.yoctoproject.org>
 <CANNYZj9UP1jY-rHExqjPpe0i+KTkFtjbPSzAbQhB1odkKdKhzg@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: <CANNYZj9UP1jY-rHExqjPpe0i+KTkFtjbPSzAbQhB1odkKdKhzg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 03:30:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60105



On 5/23/23 7:53 AM, Alexander Kanavin wrote:
> On Tue, 23 May 2023 at 13:30, <cheerala.rohith@spacelabs.com> wrote:
>> I am reaching out to seek clarification regarding the license compatibility within theOpenEmbedded Meta-Security layer, particularly in relation to the presence of LGPL, GPL 2.0 and GPL 3.0 licenses and the ambiguity in the license information of the ClamAV tool and other Security tools in meta-security layer.
>>
>> We have noticed that the meta-security layer within the OpenEmbedded project contains several components with LGPL, GPL 2.0 and GPL 3.0 licenses. Additionally, there is ambiguity regarding the license information for the ClamAV tool, as the OpenEmbedded recipe documentation indicates it is LGPL ( https://layers.openembedded.org/layerindex/recipe/32867/ ), while the ClamAV documentation specifies GPL 2.0 ( https://github.com/Cisco-Talos/clamav ).
> I believe this is incorrectly written in the openembedded recipe and
> the component is indeed GPL 2.0. CC Armin.

Yes indeed its incorrect. Patches welcome.

-armin
>> 1. Please clarify on the ambiguity of license information for recipes and whether these recipes can be integrated into commercial products that necessitates strict adherence to licensing requirements.
>> 2. Which license will apply to the Image that is bitbaked with openembedded recipes? will the license be MIT as Yocto project.
> We do need to fix the clamav recipe to provide correct metadata (it
> seems like a simple mistake in an isolated recipe), but otherwise
> these are the questions for your company's legal department, not the
> open source community. The community does not offer legal advice, but
> we do know that a lot of successful products are shipped that are
> built using Yocto project, and presumbly companies are able to handle
> legal risks and requirements.
>
> The image will contain code under many different licenses coming from
> components such as clamav, and if you ship it in a product, you must
> fulfil the requirements of all those licenses.
>
> Alex


