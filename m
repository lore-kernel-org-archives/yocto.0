Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.19091.1581322469619568703
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Feb 2020 00:14:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=RuFs+mJw;
 spf=softfail (domain: konsulko.com, ip: 140.211.169.56, mailfrom: paul.barker@konsulko.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0047DE016BA; Mon, 10 Feb 2020 00:14:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.46 listed in list.dnswl.org]
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7860DE016B8
	for <yocto@yoctoproject.org>; Mon, 10 Feb 2020 00:14:27 -0800 (PST)
Received: by mail-ot1-f46.google.com with SMTP id 66so5445921otd.9
        for <yocto@yoctoproject.org>; Mon, 10 Feb 2020 00:14:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fgetZ5AZzWswZoM9D/6sgUgGHsmbR0+h4EgedM9nCrI=;
        b=RuFs+mJwDz/dPkgTAL2BG887T+c9P7AttJtALZQsQFbXa3M0yVM0vccN7LHvgw3Fjf
         hjnwIF8SSSJKrMTzM90Cth5ylvbLEs6f8exfJ4uaJZEuSXlvlE29zBPIzAsU3mtZLhqR
         wZy6kc99cZE44SpFFw9aMvclcFmi+FLrTGi0M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fgetZ5AZzWswZoM9D/6sgUgGHsmbR0+h4EgedM9nCrI=;
        b=SSMwQQQ4r9FlRYCTLhQHRMHzZKha6D79ZBBXqPuCqr9fIAdogfFYrNTEpzzJ+i+2MH
         zBCY5eg3CdG3GpIIFpfCRtyiJ56GK+LFN/V8RAj4m123tKgtIJCSdHeP1iNoZJV7Ecnd
         em7wFsyJ1LYLngDHUbLq19EHIcg3oZOiyyOYSEjPq9VXHYWqTxGTagWMiyrmiraona8u
         XiUlxoIXjlLqwhCOjY9GvyQEc/Jny83ooIl6f93IeZ1x+BiTkF3IVTgurbIsifLxvtek
         OWJVDl14LJrnlCIz4eAzvMxesYEVr3BuJkCqolK+3lar7a2PM1Cbimg9tdO7c8Nigz7d
         mmVQ==
X-Gm-Message-State: APjAAAXG7z+OhmpsdaWsGGGPSfRG9rg95vbIOOag1Qlsv3NU4pucfpl6
	wud0bOGWYLasfHrf4b1tf/oA/4rT59ZyoOOM1g7XbA==
X-Google-Smtp-Source: APXvYqxXfYcWIRsG+DcUr9InjYLJcNzc/gm81siDLjUAro/PvufWrkcailfqKM3XCW91j0jgbrpWL5MkDlkcdlwRmRo=
X-Received: by 2002:a9d:4801:: with SMTP id c1mr224133otf.258.1581322466946;
 Mon, 10 Feb 2020 00:14:26 -0800 (PST)
MIME-Version: 1.0
References: <077f01d5dab8$a17a92a0$e46fb7e0$@gmail.com>
In-Reply-To: <077f01d5dab8$a17a92a0$e46fb7e0$@gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Mon, 10 Feb 2020 08:14:16 +0000
Message-ID: <CAM9ZRVuDPzaBHZzzFs1YpWrgTkeTrDtjv_He2WwGm207p5Q0HA@mail.gmail.com>
Subject: Re: [OE-core] Reminder: Yocto Project Technical Team Meeting @ Monthly from 8am on the first Tuesday (PDT)
To: sjolley.yp.pm@gmail.com
Cc: Yocto discussion list <yocto@yoctoproject.org>, 
	openembedded-core <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

Hi Stephen,

The link in your email points to the 2019 minutes, I think the current
link is https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit.

Thanks,
Paul

On Mon, 3 Feb 2020 at 17:37, <sjolley.yp.pm@gmail.com> wrote:
>
> All,
>
>
>
> Just a reminder we will hold the monthly Yocto Project Technical Meeting at 8am PST tomorrow. (2/4)
>
>
>
> Yocto Project Technical Team Meeting: We encourage people attending the meeting to logon and announce themselves on the Yocto Project IRC chancel during the meeting (optional):
>
> Yocto IRC: http://webchat.freenode.net/?channels=#yocto
>
>
>
> Wiki: https://www.yoctoproject.org/public-virtual-meetings/
>
>
>
> When            Monthly from 8am to 8:30am on the first Tuesday Pacific Time
>
> Where           Zoom Meeting: https://zoom.us/j/990892712
>
>
>
> I am tracking the minutes at: https://docs.google.com/document/d/1Y5IIuE-z0Ykdl-DwuzUJh52flOZuhN_TSAfw2tdU9pg/edit?ts=5c06b22d  Please request access if you want to assist in editing them.  The world should have view access.
>
>
>
> Thanks,
>
>
>
> Stephen K. Jolley
>
> Yocto Project Program Manager
>
> (    Cell:                (208) 244-4460
>
> * Email:              sjolley.yp.pm@gmail.com
>
>
>
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core
