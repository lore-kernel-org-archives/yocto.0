Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27B03C3DA7D
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 19:16:38 +0000 (UTC)
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
 by mx.groups.io with SMTP id smtpd.web11.2604.1672773388156014739
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 11:16:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ID2IAFUh;
 spf=pass (domain: gmail.com, ip: 209.85.160.49, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-14ffd3c5b15so26367658fac.3
        for <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 11:16:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bT7Yyi++EyFlfRzYmxj+hblOIPmZNaZbyExsxjBM2UQ=;
        b=ID2IAFUhYecskpVx/GwglnZIK8JUEvsy5l6ZBTlc1ve6jaMc5I/A/5YLRZ1sGHX6Go
         5MSODpOPETO/zj8qxqrIrVQqW68qrDC++h+4jRDMDViZxSm0lDGqLbry+OAruoNm4/t5
         7vMt6p/8z9GQl4p0ZH2/3WTheC4KtRMBQcrnzC7tXLbIlaWl/inpKnUSkYSqJfSOkREW
         upuAKB291wfXE2mXJpnzZy2edIZkfD5QCpaPUkL1w+0VGe1GDUUR9tS4kRfrR/9LOMe5
         MtxVRjn8EA2CEwIIY0kyLOjVoxhCBpQ8nWf5M5/2reY668c+vkp+jarGZGxVFC8iGpD5
         T0DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bT7Yyi++EyFlfRzYmxj+hblOIPmZNaZbyExsxjBM2UQ=;
        b=jregrNWkJ6wQJ0CKTnb+ctllCO34pPWuefUxYCE7Y56UtjKPilIes0c85FZ3m5ky2D
         D7OPnxDKAYEKHG002O0GZ+abTd5bv+065wp9Ct/KMsuDI9T2bslBYRGxxxQVDEUyJwC5
         sthh7xT0KCIV98+u6nU5m9HbIMJcLAjYmorGNFWZ5SesEYKjs6Lv2gw6lQ72I5X0v5tJ
         P8Sxwa6F26HDcubsnPb53/YqljbTCC0SQnup/CveseKfnMW5h0YwZVShtVaW0VaPVM3S
         SZDPgsfK6c7KYxZnuTqqmGdqUiVdZ8wDmbAsVxBr7XhWw2kKucJGHUBuI8XeMNfE30sK
         Nzkg==
X-Gm-Message-State: AFqh2kpZ5EPt7iduMtFAxybZRXYgbT0615EV5kBolz5A+YCTkAVeQw4Q
	mdTWPuLVl1d/EGH0NxsIODT9eEFhqkmBJEe/3sMy7QNL
X-Google-Smtp-Source: AMrXdXvwa7Dn+I2ORp5q68hRwLyxvmJikHVCX4Kykum7gM/a7WAWXxVygVQt19MHeArKd+0piFBfx3umBBmnQdPttUk=
X-Received: by 2002:a05:6871:4049:b0:150:ab7d:7012 with SMTP id
 ky9-20020a056871404900b00150ab7d7012mr476526oab.55.1672773387375; Tue, 03 Jan
 2023 11:16:27 -0800 (PST)
MIME-Version: 1.0
References: <20230103183343.959016-1-raj.khem@gmail.com> <CA+chaQe583zWdN35R6d04DGYv34gOK+gDpGHRP=-omghWZ=C+g@mail.gmail.com>
In-Reply-To: <CA+chaQe583zWdN35R6d04DGYv34gOK+gDpGHRP=-omghWZ=C+g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 3 Jan 2023 11:16:01 -0800
Message-ID: <CAMKF1spSy_Jr_wVEZgJEp0g5e4TYPiQ_AQBmtBvDuDsY7Lf+Qg@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] layer.conf: Update
 LAYERSERIES_COMPAT for mickledore
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org, twoerner@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 19:16:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58919

On Tue, Jan 3, 2023 at 11:13 AM Martin Jansa <martin.jansa@gmail.com> wrote:
>
> Trevor already won this race (I was second, you're third) :)

LOL :). Depends whose CI was noticed first.

>
> https://patchwork.yoctoproject.org/project/yocto/list/?series=&submitter=&state=&q=mickledore&archive=&delegate=
>
> On Tue, Jan 3, 2023 at 7:33 PM Khem Raj <raj.khem@gmail.com> wrote:
>>
>> oe-core switched to mickedore [1]
>>
>> [1] https://git.openembedded.org/openembedded-core/commit/?id=57239d66b933c4313cf331d35d13ec2d0661c38f
>>
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  conf/layer.conf | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/conf/layer.conf b/conf/layer.conf
>> index 9197c3b..e8c50f8 100644
>> --- a/conf/layer.conf
>> +++ b/conf/layer.conf
>> @@ -14,7 +14,7 @@ BBFILE_PRIORITY_rockchip = "1"
>>  # This should only be incremented on significant changes that will
>>  # cause compatibility issues with other layers
>>  LAYERVERSION_rockchip = "1"
>> -LAYERSERIES_COMPAT_rockchip = "langdale"
>> +LAYERSERIES_COMPAT_rockchip = "mickledore"
>>  LAYERDEPENDS_rockchip = "core meta-arm"
>>
>>  BBFILES_DYNAMIC += " \
>> --
>> 2.39.0
>>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#58916): https://lists.yoctoproject.org/g/yocto/message/58916
>> Mute This Topic: https://lists.yoctoproject.org/mt/96034217/3617156
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [Martin.Jansa@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>

