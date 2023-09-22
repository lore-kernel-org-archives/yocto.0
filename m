Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8C26CD484B
	for <webhook@archiver.kernel.org>; Fri, 22 Sep 2023 16:31:09 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web10.2122.1695400268431624052
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Sep 2023 09:31:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kZjqd2WP;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6561c09ead6so12403716d6.1
        for <yocto@lists.yoctoproject.org>; Fri, 22 Sep 2023 09:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695400267; x=1696005067; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tzBY1NLbxAnAikYHREQJgIeYxr1PjqxlO8qrNyc5eu0=;
        b=kZjqd2WPoxMIduECwQDQ08IL6HKHHygvFmIUNfzpqR0R2fnKmgLBNGJPVLGYtOuBM6
         Vz+NmNXkJz+2FPjE4JSQKulA4C7kp7jvs2UkPTUGkWsDU8pMNIjTABxkzjLUBcJxu9FG
         Lj3jPhLVSYvthMKFNRdVfVhwQJeTiw99Kb6OoV+mdSzu/8SzL3ukae1xHG4sQ6bzSs+3
         ttO7Vjhh25qVESI5kEvckA/jqXTz1ZerGtKwRJFuA3/6Pq0kEv3dxAgOEg0pDOz3xorM
         ruFk4Ki8IGYt4IaVEHTPOBDPOToBCV3VkXK0YbRd3fUJwpaproxvzQcHH6v2y/y4b7+7
         VY0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695400267; x=1696005067;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tzBY1NLbxAnAikYHREQJgIeYxr1PjqxlO8qrNyc5eu0=;
        b=YViPCQmeNkWqY9BIPb3fqZTKB8tC5xhreu6CIY2vZ2ylJujbxDZr3V+WCpIoTYUPe0
         prJurmQZbxHxmEo/6rvhiq69wMD3mHvWub5qn04ZUAdictoybTjpCcVojIwkB1FzB9wB
         VAS6aPTNwbkP02EbXAH/G7BmW7RwhYOtEBtVKI6aviF1dMXjea4qKElmIOxvHXwcBwev
         1mTHebBX15h5BXc0+eFk5HoPmwp9uuXS4PeS1IT2jTRmozRE9DoG7n2NpdNLGQ20P9ra
         +zkPooxejqNFH8nNbsA4jprwz4Ex1QKtGriurpEmYI1pmAcQytL1Hwve3c9RLmXVGua1
         d7Bw==
X-Gm-Message-State: AOJu0YxvkN7BoPuqEl0a+MsvlbLmreybZom4sgQ6J9yZvWE0eGPMWmD5
	KZUeJeR85eEdiTnu6xJ6MS/yCR8MS1vyWw==
X-Google-Smtp-Source: AGHT+IGQTwzbPR+pDUEXXOZAATul4lOEpP79YKx07wUlSthZXaCbSiTYauHTvPMaawSzDwy0m9gUvg==
X-Received: by 2002:a0c:e1d2:0:b0:63c:fd89:f045 with SMTP id v18-20020a0ce1d2000000b0063cfd89f045mr8663789qvl.54.1695400267452;
        Fri, 22 Sep 2023 09:31:07 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id mm5-20020a0562145e8500b006564afc5908sm889481qvb.111.2023.09.22.09.31.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Sep 2023 09:31:06 -0700 (PDT)
Date: Fri, 22 Sep 2023 12:31:04 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] rock5b: add
Message-ID: <20230922163104.GA6673@localhost>
References: <20230922025123.20385-1-twoerner@gmail.com>
 <a9d93ef0-4b40-bfb2-ba34-fe50da0d6f7e@theobroma-systems.com>
 <20230922150605.GA40347@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230922150605.GA40347@localhost>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Sep 2023 16:31:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61082

On Fri 2023-09-22 @ 11:06:05 AM, Trevor Woerner wrote:
> On Fri 2023-09-22 @ 04:22:11 PM, Quentin Schulz wrote:
> > So we should have something like:
> > """
> > aarch64:rk3588s:rk3588:rock5b
> > aarch64:rk3588s:orangepi5
> > """
> > for example.
> 
> I spent quite a while checking MACHINEOVERRIDES and SOC_FAMILY with many
> variations until I was able to get exactly what you've just said we should be
> getting.
> 
> MACHINE="rock5b"
> 	$ meta-rockchip> bitbake core-image-base -e | grep "^MACHINEOVERRIDES="
> 	MACHINEOVERRIDES="rk3588:aarch64:armv8-2a:cortexa76-cortexa55:rk3588:rk3588s:rock5b"
> 	$ meta-rockchip> bitbake core-image-base -e | grep "^SOC_FAMILY="
> 	SOC_FAMILY="rk3588"
> 
> MACHINE="orangepi5"
> 	$ meta-rockchip> bitbake core-image-base -e | grep "^MACHINEOVERRIDES="
> 	MACHINEOVERRIDES="rk3588s:aarch64:armv8-2a:cortexa76-cortexa55:rk3588s:orangepi5"
> 	$ meta-rockchip> bitbake core-image-base -e | grep "^SOC_FAMILY="
> 	SOC_FAMILY="rk3588s"

Ah, ordering not just content.
Okay, I'll spin a v2.

