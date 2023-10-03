Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ADFAE7AD47
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 13:38:10 +0000 (UTC)
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
 by mx.groups.io with SMTP id smtpd.web10.108493.1696340289396613515
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Oct 2023 06:38:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HyMHCpMF;
 spf=pass (domain: gmail.com, ip: 209.85.221.180, mailfrom: twoerner@gmail.com)
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-49d0f24a815so428239e0c.2
        for <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 06:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696340288; x=1696945088; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qTWAn4K/nPTjVDL7eXAZS0QmVq9vcbldmS/p+keQKf4=;
        b=HyMHCpMFzqzQ6BnOTU2e5wETstKOhGF7dMibj5ORgB4QHz445gDy+qZIv5/i5gARfq
         bcbgZgcla+9FWdu+v1qP9OvVTWb3bx3YvxoyrkJFJxDr1Zeys2PgMx2l1WdVQ1qSDCsn
         CjcMQqtinwTgirLvFMIIV1+q0BNofGSM0hvVoscQm2uF4QEtlVMozDyR0wyhZAHtABj1
         246hwB1pOfT+XjWNGFYuzDB+/5P0w4/kexE61XY9X23DkN2aVLSfcO8nX16P9PTLct3C
         6mPo/yla3YhHMLDyvMFHJUhb6g1onQE961o2I2FJwoZBpOmLtOfsBplzZ6xpjIKO6X90
         pKmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696340288; x=1696945088;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qTWAn4K/nPTjVDL7eXAZS0QmVq9vcbldmS/p+keQKf4=;
        b=TfUJUUU6XidkAQ6bbWFlAuCcRMLG6h8/w8YfMEC2K3WZMbGSNEZvCx1/MfkbXZFzTn
         1hLRKHJxWklSF+oHOMm0X4c9wRPJAx9FmLzS3BDUU2JSDGIp1xng+3eOHlE0A80FidGY
         KYxVTPRe/15Hyu/Gsr+Ge1AwmzSenluZyT5qAFZgMUqhCb35HU56DoCi6GChR7uMBcRo
         eVKL0pzSdu74ttw+N5BPpZ2FT3YpGY0pSpAO3yNfquDP+23okhrWRc5MjpncyKyoDxXk
         C3hgoijnv9bU9BFBMYVhtQe37j7X0Cb9sJDrqcvzwiRbQRFSFJLGBypObCt3MFB8dRMP
         BtCw==
X-Gm-Message-State: AOJu0YwkvjCc9Rljbu2d3V1UuRQpU9Da/Dgrr9xlqIPDthuS7BfDSYqq
	pWROWOAK29hocG78QybnDjU=
X-Google-Smtp-Source: AGHT+IGr8CFxX4pjtmQCJ5PihgtZJFLY/e+KFTQOEg41OenujSuWTZPD5Y81l62GmVRnU1oAqnP3NA==
X-Received: by 2002:a1f:e242:0:b0:49a:bceb:32fe with SMTP id z63-20020a1fe242000000b0049abceb32femr8728494vkg.12.1696340288065;
        Tue, 03 Oct 2023 06:38:08 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id v26-20020ac8749a000000b004109d386323sm444369qtq.66.2023.10.03.06.38.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 06:38:07 -0700 (PDT)
Date: Tue, 3 Oct 2023 09:38:05 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] KERNEL_DEVICETREE: 32-bit re-org
Message-ID: <20231003133805.GA2234@localhost>
References: <20231003041941.4760-1-twoerner@gmail.com>
 <0d15a99f-549f-af9d-5f6b-e7712bbf62ff@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <0d15a99f-549f-af9d-5f6b-e7712bbf62ff@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 13:38:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61217

On Tue 2023-10-03 @ 12:32:08 PM, Quentin Schulz wrote:
> Hi Trevor,
> 
> On 10/3/23 06:19, Trevor Woerner via lists.yoctoproject.org wrote:
> > The upstream kernel reorganized the 32-bit arch/arm device-tree directory structure
> > to separate out the device-trees by manufacturer (similar to the organization
> > of the arch/arm64 device-trees). Update the references to 32-bit arm
> > device-trees to match.
> > 
> 
> Does this work with linux-yocto and linux-yocto-dev from master or do we
> need to add some logic to support both (do you want to?).

This doesn't work at all. I figured this was an easy one, made the tweak,
submitted it, then added it to my jenkins builder to verify overnight. Woke up
to find the do_image_wic() tasks failed. It's the same layout as the 64-bit
machines but I'll have to dig in to figure out why it didn't work.

As for the linux-yocto vs linux-yocto-dev question I'll take a look. This
happened with linux-yocto, so I would assume it is already the case with
linux-yocto-dev. But if oe-core supports multiple versions of linux-yocto,
that might be the tricky bit and yes, I would look into supporting both for
the time-being until the transition period ends.

Although... any BSP layer supporting 32-bit machines will have similar issues,
so perhaps there's a better way to solve this in oe-core?

Best regards,
	Trevor

