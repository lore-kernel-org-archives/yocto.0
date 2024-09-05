Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6579FCD5BB6
	for <webhook@archiver.kernel.org>; Thu,  5 Sep 2024 11:51:27 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web10.7217.1725537082993935551
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Sep 2024 04:51:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NCl/6w3D;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2f4f24263acso12507931fa.0
        for <yocto@lists.yoctoproject.org>; Thu, 05 Sep 2024 04:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725537081; x=1726141881; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k7l8mtD/w3BBtH0m9FJAdRO0rj5T40GzJBptbt0+Pgw=;
        b=NCl/6w3D6uQzpUoxbH+/CHZoo/UjLb89o+wgwpf/xA4o+s13eOZhOpruZZRX4/sPk8
         KNL0nkq+iDzNDotcwsiPnXqIBUGmow6mCIvg+Dl9wkgZujH1bpOjwATbxaA9Hi9NXMYB
         vhc84RYPnZ+gF9HKL2AfdpZKWvVuXe0NLPD6rX6HKAP3Sqrnnsu/i5sfhl88QgZvgoS+
         ikt5/d/iW6aJNo5Q03Khw55z26B0UzSmLoor4wrwUAKt2kWKDqW829xLOjyqoNEwjh9Y
         iYOA0Mk3GYsDdVrfeHnRL0OZiM0Pxbye9fIsA/SVbYIyGTsnDgeXAO7Jd3vJHycPCrpP
         n3bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725537081; x=1726141881;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k7l8mtD/w3BBtH0m9FJAdRO0rj5T40GzJBptbt0+Pgw=;
        b=fYnBIkzpZhk07HZPti2eBuB4ecutJtjGWxWlqiJ6A7WDy6pK3p+HGk4DqvwAeDpFNV
         gh7VCsgCYhqqBIOUwhkj5Y89ylpURg/YHJlWBHP7Fkr0umta+xaR0YxnNUGV+APIPwsT
         kgqtOW0pArYaE6VYQMR8E7bWdFCrrl1iJxMA8I+ReqUiwuWsGUIyvxjc3DvCRSu61ZN8
         jmVX2sFfyAL95pqtoLjar2lcLwnB3UuBfkOHsFsa+2DUMg1BUiMsg8oXxojmRLaikJLB
         G9kSpTRj6yVKAYvmK9yIPqWrDUA3ZV29VJvAHf7uzJlS1fSoIii7irEfHr5ILHN8forV
         TJsQ==
X-Gm-Message-State: AOJu0YxUcBQqjeMC0Xr2/AktzTwXrtmmeqNR8VGUMzNDjqF6kdY/nCMC
	rnHxSW6G8/BE52e/g8QCgYDMPtJb7YDzXNUNmgP3tklPM4YwCkLh3cAg8+X9kN03vBQ3IGqrBsv
	tXIQOMf5TWeBbpCsU44hxH6SCDrMrcA==
X-Google-Smtp-Source: AGHT+IHURptvGvSnCtD5SUyIJjIei9hM3Cicp3XZBQOYjiv+pKmmgtOjBEZDwEi6besxeiRCDUDDFZ6EJjENmlojGOI=
X-Received: by 2002:a05:651c:210a:b0:2f6:62a1:25ff with SMTP id
 38308e7fff4ca-2f662a126demr33085361fa.28.1725537080487; Thu, 05 Sep 2024
 04:51:20 -0700 (PDT)
MIME-Version: 1.0
References: <2Th0.1725536392003864818.yxoD@lists.yoctoproject.org>
In-Reply-To: <2Th0.1725536392003864818.yxoD@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 5 Sep 2024 13:51:09 +0200
Message-ID: <CANNYZj_Ov-T8itR=ixckftPB5oE6EJmSfdLnF76a=R2FjV_AVw@mail.gmail.com>
Subject: Re: [yocto] Issues Integrating meta-marvell with Yocto Scarthgap Branch
To: yocto@lists.yoctoproject.org, sushma.siri1705@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Sep 2024 11:51:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63787

I would suggest that you don't seek 'generic' guidance, but rather
show the specific errors that you're not sure how to resolve, and then
we can try to help.

An alternative option is to investigate whether your board can be
directly supported by the standard linux-yocto kernel and bootloader,
and then make your own tiny BSP layer that sets those appropriately.

What's the board you're using, exactly? Did you try to approach
Marvell for guidance first?

Alex

On Thu, 5 Sept 2024 at 13:39, sushma.siri1705 via
lists.yoctoproject.org
<sushma.siri1705=gmail.com@lists.yoctoproject.org> wrote:
>
> Dear Yocto Community,
>
> I am experiencing challenges in integrating the meta-marvell layer with the Yocto Scarthgap branch. Here are the specific issues I'm encountering:
>
> Python Version Compatibility: The meta-marvell layer was last updated for the Krogoth branch, which uses Python 2.x. However, the Scarthgap branch requires Python 3.8 or later, leading to incompatibility issues.
>
> Syntax Errors: There are numerous syntax-related errors arising from the differences between the Krogoth and Scarthgap releases, which are creating significant hurdles in the build process.
>
> Given these challenges, I am seeking guidance on how to address these compatibility issues. Specifically, I would appreciate advice on:
>
> Updating the meta-marvell Layer: Steps to update the meta-marvell layer to be compatible with Python 3.x and the Scarthgap branch.
> Resolving Syntax Issues: Strategies for resolving the syntax errors introduced by the gap between the Krogoth and Scarthgap releases.
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63786): https://lists.yoctoproject.org/g/yocto/message/63786
> Mute This Topic: https://lists.yoctoproject.org/mt/108283149/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

