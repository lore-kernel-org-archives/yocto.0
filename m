Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02733CAC5AE
	for <webhook@archiver.kernel.org>; Wed, 24 Sep 2025 14:24:39 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web10.15159.1758723873770416657
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Sep 2025 07:24:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=V1xd5CiY;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-7900f7f4ba9so57125996d6.0
        for <yocto@lists.yoctoproject.org>; Wed, 24 Sep 2025 07:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758723873; x=1759328673; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cJ16PWTuNV4TVdpGb2jsOPOj3FiLi4JzuAsPIiMQs64=;
        b=V1xd5CiYqG4I6CEywNzndLth8JzreGHrhOEdY/OPHSdAcgSbqo3FQ0L6LNFJBF556B
         S1OAZmclxGI5fFetycP7fila7P/tKhnuJOrf/bfo4QN+fJT1kU+YxIi8ps7TiN2erUDE
         /i3wy6ydvqzj1FvUcWCutEVzWq4jW1gn2Znzqrq3eR2m7OcL/Nng0r9C8X2B92EScJBA
         awy/XPhUBRE3WNJK+xsWrgZyyjn3AOYHTPhjiYkLJsuCBURbFz4dTWfmTKP/SKQe3xTg
         vBktDcoBHk5mrLCfWdgurL+WWChMV92YLTe3cm4ZenGMTV7R85GJPcgmUgMY22svkc3X
         QmOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758723873; x=1759328673;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cJ16PWTuNV4TVdpGb2jsOPOj3FiLi4JzuAsPIiMQs64=;
        b=LBffstWGl2DQIoGp4b1efiQbqwPoQaSSClU/DiO3/1kg06AwTHXG6wnsZbi6OJ2a9/
         xpL4uhCt4whEbMjJm4ksZM75QKx3eoHICkOJ1rrA1WMPdOuvlSQ1BKeVeUKCK+sqtdu+
         YxTCf8/s2U4IoGcNKM2HJE7ClfPWHEJoeaci9w7ow0Zpqx1bTgTxFZJ758EWsgJKZocF
         WIJk0eHuyr/coeThK3xEQuQw3bA2RngDGx/c9+JM3fTTh+SlwNSAyMx2E0y4pyCtktZh
         BsSK0Qk8rI6zxzK92EPx38Rn1Dzc1sxeqeoa77fYrJTdmKTYUP3JhoxHiP88uhLJjTsl
         uDGw==
X-Gm-Message-State: AOJu0YxYrmc4wX+YXCX0OYOWgDHwiDGezzaBVZ4cYqgzqAX2jVKqPos9
	b/MDTKHzF7leM5u9VJ1N+HIYldJ0HdvY4ZCTs216ngf0h8UBjkR/jarLdWQQYell3oMN1sv0DVc
	UkWxu9X7utKBf1jXstFO7e1ZT50hRvCvCtQ==
X-Gm-Gg: ASbGncsPrNuAdPkDmElI9jcX6Lk8qYBRbGs2tD/F7dwKLKAcUOODU+Isx08jFvJQXod
	eZi89aO8MCXUe5HAqkr9mZ6U3OLJUqOhhhU7CSHZtreuYmmGq/JHXXfe0gksJBPJr/503cVRUZd
	VaCEBh+2nD7sPq3kPS/nPSDAOLaPFLalpWDynJWQhfAA2aLzb+BBs+yxbHOuswPwqSW/pGAuIuN
	yPtMAeYOlNehX+q2DLRdH+HKu4HvZbwsH1SWB3IzTlUsNVWyaS3mB4MUSPqKfaKDZ5/aN3c1UDd
	ZwwFhugMJdEPjkpx67AlZFXVFXBq+jiC+9aDW3f9
X-Google-Smtp-Source: AGHT+IGz2hyT/z8/k8rpmGb0FHeLhWxPbUmbIPA8nrhLQslmMw3eGZkdKGdAn35C4464GhkGrPFkdN9aWj9GmwHo8sY=
X-Received: by 2002:a05:6214:2343:b0:785:ec25:956b with SMTP id
 6a1803df08f44-7fc387e1eccmr2280166d6.40.1758723872606; Wed, 24 Sep 2025
 07:24:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAM1ZcoXBYER5j5kTayzcYLzdObxyZjriqNsY5OAZm0j5B-kUNg@mail.gmail.com>
 <27a541bf-df16-4e9f-aef6-fef9397ed3ae@gmail.com>
In-Reply-To: <27a541bf-df16-4e9f-aef6-fef9397ed3ae@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 24 Sep 2025 16:24:21 +0200
X-Gm-Features: AS18NWBHkIK4fxSjCy-ghj3RP3AlETu4HHvfsfdEwABwqd46wDyizsiSM2Amn2w
Message-ID: <CANNYZj98y_=tRVTu1N0HRpS-1ssfAsQFCeMWHR6TgRFkvF=6VQ@mail.gmail.com>
Subject: Re: [yocto] Bitbake fetch private Github repository release archive
To: yocto@lists.yoctoproject.org, skandigraun@gmail.com
Cc: katutxakurra@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Sep 2025 14:24:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65872

On Wed, 24 Sept 2025 at 16:21, Gyorgy Sarvari via
lists.yoctoproject.org <skandigraun=gmail.com@lists.yoctoproject.org>
wrote:
> Based on the PAT documentation I found it supposed to be used as part of
> the auth header, however the http/wget fetcher in Bitbake only supports
> Basic authentication currently, using the .netrc file. I'm afraid there
> is no out of the box solution currently for using PAT.

Also putting sensitive access tokens on the command line is horribly
insecure to begin with.

Alex

