Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B633C52D7C
	for <webhook@archiver.kernel.org>; Sun, 11 Aug 2024 13:36:07 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web10.24431.1723383362727153309
 for <yocto@lists.yoctoproject.org>;
 Sun, 11 Aug 2024 06:36:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cdEk6OgP;
 spf=pass (domain: gmail.com, ip: 209.85.208.43, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5a2c49d5af3so351252a12.2
        for <yocto@lists.yoctoproject.org>; Sun, 11 Aug 2024 06:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723383361; x=1723988161; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WDeFD9ABoUiZTx8uxfZn4NawdrNEFnCEgv10VQDKnwM=;
        b=cdEk6OgPmHM7cxqz/7UIwWsBbYLMvSuVzw5eP6STKyDOuonm4GfMeRMF0+9nXv8fbA
         TzZFS8uHGq+g6LfgXvtVIB+Kd5U84brEVdA5ad9p+oc7SBWObJJig9PnaNkBWDJG8DpC
         KrT1SoL0IVQP0p34Y9BwIRUrEIo2DWzpDVoV28FF44aJejcIl34CoQkERImG3rv1XjbF
         haz+mCyjzMwP96ClAy+YUBiqoyDAL7SftFkiKkKIszAY4FJVvq+KCbf+WheO94nupes0
         UgS8gfDbCK3A0zhkxRwmEjs+q0iAyCjqPXCJEBqWErQ+gCp2mV6MTl1zTuDHHS8FKGs+
         wX/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723383361; x=1723988161;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WDeFD9ABoUiZTx8uxfZn4NawdrNEFnCEgv10VQDKnwM=;
        b=Ug97yOwGsBWY7qqR8zbBcBdYHU5O4zSejo9j7/VxJ00d28xtu1YmNXsNu4W5AhdkOO
         VU2z/LYNdVjPbKnNw39XXw+PjU7uC+yncysKi8YXCXDMdC76lMDS1F4DCHvKDg0KcGeH
         RB/j2f+OqhBGcikqqrCfGQALMpoticZcOmZh0tQeyAbT3RAhoY+LaqWAhxiZb8rpqu2E
         kV/BbllJElPLFcPmm5eFj7IogaJkrtkrXse7SI/rOPsx9Zm2V0nfzAONBfSt9INofwrp
         m4itMvgWtX5eTxqp1vz289P+pmwu2IJAzN2h7Kyw2C2w60QYrSDx+vxBJPxl6xoGPjWq
         iXEQ==
X-Gm-Message-State: AOJu0Yy7LUJyIvWmmoaEEyTS/Ahr52IXsroLg3zBovEmrzOQiYAYBigB
	mXjQCDjrxh9opeMXxS9m2S6PAbahzFFoUGlfdVz9NhFle1Up4eo9W/vkgQ==
X-Google-Smtp-Source: AGHT+IH/3/4Ud0NYxsj2tUFFJbljk95CzlpdWd9ee+wEERYqieNme5OqDgFhovzHsSHJf+ALoqq5VA==
X-Received: by 2002:a17:907:2d89:b0:a80:91b0:f501 with SMTP id a640c23a62f3a-a80aa5cb79dmr286513266b.4.1723383360429;
        Sun, 11 Aug 2024 06:36:00 -0700 (PDT)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a80bb0e124bsm148451166b.61.2024.08.11.06.35.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Aug 2024 06:35:59 -0700 (PDT)
Message-ID: <272ff3d5-8100-4475-911a-56e17e11ae1c@gmail.com>
Date: Sun, 11 Aug 2024 15:35:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto][meta-openembedded][poky] nodejs package broken
To: yocto@lists.yoctoproject.org, ycnakajsph@gmail.com
References: <17E9C992A189009E.19172@lists.yoctoproject.org>
 <CAC3TgAL6_p5qa9bCDoM3FGVRmKfR-d-Zhhfrj2bZE7CGh_Nm8Q@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CAC3TgAL6_p5qa9bCDoM3FGVRmKfR-d-Zhhfrj2bZE7CGh_Nm8Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 11 Aug 2024 13:36:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63683

On 8/9/24 14:55, Yann CARDAILLAC via lists.yoctoproject.org wrote:
> Hi,
> 
> So I've been continuing my investigation, it seems that the problem in 
> the end is that node_modules from UNPACKDIR doesn't make it to S.
> 

You mentioned that you are migrating to Scarthgap - but UNPACKDIR wasn't 
a thing in that release, it was introduced in Styhead, the next (current 
in-dev) version.

By any chance, are you using the master branch of oe-core and/or 
meta-oe, instead of the Scarthgap branch? (Or are you actually migrating 
to Styhead, and not Scartgap?)

