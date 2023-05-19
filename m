Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B52BDC77B75
	for <webhook@archiver.kernel.org>; Fri, 19 May 2023 12:36:58 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.web10.25196.1684499816676308416
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 May 2023 05:36:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=M6pBMoQn;
 spf=pass (domain: gmail.com, ip: 209.85.219.46, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-5ed99ebe076so25947226d6.2
        for <yocto@lists.yoctoproject.org>; Fri, 19 May 2023 05:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684499816; x=1687091816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tBeT7uMbttiFCC/MaqlrWp9kwpoIbl/3V9QOyZcxtUA=;
        b=M6pBMoQnUIny1em/+OF87xUIALQ76/vJ7tHVcBefvMMlMXF9tqU4HK2q56FN1OZmBR
         8ZA+PI7ljTOnn5QWlV9bsjpn9UTpJ/nD9iox47yI495sqK+LwmfAHTg+bPgpc8GXJul4
         PNjGZDVgFfflgnvuS3JPSg5c+c9yf1Wn7g+8evNBUGXFVWWJ1F7PjengxLCjxstOZA+Y
         6yE7zzrKvx8W53S22nHiJUBqOITQSlcdXkJjv0slXb2yEruKGE7mCQsEp9AIJUDbvhUl
         FgXzdrmrTnyI6rlyTxuJOeBl8bmbkDhU7v4w1wWMxg/VfD5I7nFeFQ1jCOvXAJaVdKn4
         rQ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684499816; x=1687091816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tBeT7uMbttiFCC/MaqlrWp9kwpoIbl/3V9QOyZcxtUA=;
        b=IJ0U2JXXlcbp0I9bHJDC0SocJ+RQqiY9ogxEjuCcpUbQAQ0U/AcdEiambVC6YU+2uk
         PGmwD0GaeEn3PjPkSwW2zMBkRlont0IqC49J3Qt3UfgrLlfNQBzv8BYFYDcT7j1YnnrZ
         r1bP/6TPY/s5epP68/G58jOKLlU3O6hGTVqVwnAwuiMZKbDljUtrk+b7Fc3M8Cq8UKiE
         RQct2HWTGSWOBn5LE3aKI1gBsDwTRK2KNxzHPfZTjMEAcXOw7ZNXtiRtBa4kOdiOC4TI
         tbkaDPfVKAoZHADN4OEHFP6tUCDCXIiSOI3wrdDDgXsoj+Xd05L13wF4xa5uGaMRXycg
         pJ4A==
X-Gm-Message-State: AC+VfDw4i5ISqYf//OICW1wn7Ovo4nWpJivZsVx+9tSeZRZhnkH/wnRX
	PiKmtthNZB17EqzdudVGkyA=
X-Google-Smtp-Source: ACHHUZ6r+P9b18Ee3sS4NwaSEOFzFVKZ8eGkEwqW1Wb0hYH1qfWIFcrme1myd8bfxNSDbwFMHp4Y7w==
X-Received: by 2002:a05:6214:3005:b0:621:363c:ea8a with SMTP id ke5-20020a056214300500b00621363cea8amr3820928qvb.36.1684499815638;
        Fri, 19 May 2023 05:36:55 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id 23-20020a05620a079700b0074d489e517csm1097004qka.24.2023.05.19.05.36.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 May 2023 05:36:54 -0700 (PDT)
Date: Fri, 19 May 2023 08:36:53 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Leon Anavi <leon.anavi@konsulko.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip] [PATCH] u-boot%.bbappend: pyelftools for rk3399
Message-ID: <20230519123653.GA7707@localhost>
References: <20230510161332.1818549-1-leon.anavi@konsulko.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230510161332.1818549-1-leon.anavi@konsulko.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 May 2023 12:36:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60074

Hi Leon,

Thanks for the patch!

On Wed 2023-05-10 @ 07:13:32 PM, Leon Anavi wrote:
> Machines from SOC_FAMILY rk3399 require pyelftools Python3 library
> for parsing dtb files so it should be added to DEPENDS.

Other machines also need this patch, specifically the rk3328 ones. I tweaked
your patch to add the DEPENDS for all (it doesn't hurt the ones that don't
need it) and have applied it.

Thanks!

