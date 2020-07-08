Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.5573.1594191343493486448
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jul 2020 23:55:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amarulasolutions.com header.s=google header.b=L7CIigZr;
 spf=softfail (domain: amarulasolutions.com, ip: 140.211.169.56, mailfrom: michael@amarulasolutions.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12C95E01E22; Tue,  7 Jul 2020 23:55:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,URIBL_RED autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.45 listed in list.dnswl.org]
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: yoctoproject.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66F7FE01DE2
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2020 23:55:42 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id a6so47662462wrm.4
        for <yocto@yoctoproject.org>; Tue, 07 Jul 2020 23:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9LDOKnDGQ8Ylv2569+oGdzbIPrZbJUe08czr5AJ7OCU=;
        b=L7CIigZrZibjenwtFgBWPuM/4GhT9Lp3NDF8b3UykHM83oL05OpANBsPI1akIyRDSc
         h5oX/PVAnxqSpe6VXhqkf+3jHzkGlWuE9bB/8iIeygD2UHkLg2IhSgaA9A7vyWgVPM6o
         EJy7UhFPyPVqnnGQUWw+R2VPIEFIw3GwsJgw0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9LDOKnDGQ8Ylv2569+oGdzbIPrZbJUe08czr5AJ7OCU=;
        b=mqpSor4oGi2x9UHOmUKIFiWWs/XH/1t0n04M6ZmK5DdkJ00zqcoqkzrh6uKQKu2IEQ
         qsn1WWDaa2xuobEEjKj3QVtjC+O9sEzm+WpFzunXAcu5ITw3i4sndYtzvXsDoslDNg0L
         +SWnV1pmg1L1lLoJydeMu0r3bcD3Aylm0Uo3OUjVyhQ+qAHZ5FvtdR6u/XcQvgCh1cFr
         TkPJqeUWOGK1kzCut/rlQ37QBRYq4wAjJRMvuQoo5822Y+wSqZtiKnPxkVcdTINgbZ9I
         7rSbnGuWRh5v9Lzv//CBn6pN6V7qoe2//2k7PwZQW+gPeWiOq4f3I2vZydn+0Mj7XuRJ
         V5tg==
X-Gm-Message-State: AOAM533mzyTBKhSl1o8U2QEqr9ch5R9tnCjhlm5sVgvxOPcQehLMDA2I
	IU2uFPHdeMcUVDwjuS63MaDzNJBLCKFQnDVNGdC8jg==
X-Google-Smtp-Source: ABdhPJxTcJlTOP7FrsgOZ8fVe/+MV9NjN+tZ/F/Hr0gIr9Lb9+7IkUtlvqwIwHUQ0yuLt7HpCbX6RoSYmGN5KjLGXtw=
X-Received: by 2002:adf:edc6:: with SMTP id v6mr57562310wro.413.1594191341395;
 Tue, 07 Jul 2020 23:55:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAOf5uwnAymAOBo+BpJ_zrunMmG8-TmqRyvXsAr+SnLqGNi6E=w@mail.gmail.com>
 <CA+chaQcu4hZAG8mjgLhi_0=1hfqy6Gbt5acwvaEy3kz3VHQn0A@mail.gmail.com>
In-Reply-To: <CA+chaQcu4hZAG8mjgLhi_0=1hfqy6Gbt5acwvaEy3kz3VHQn0A@mail.gmail.com>
From: "Michael Nazzareno Trimarchi" <michael@amarulasolutions.com>
Date: Wed, 8 Jul 2020 08:55:30 +0200
Message-ID: <CAOf5uwkAVbia5tr+cgvkmZh7+afBCqStSnKWw8oJHEnyw1TbVg@mail.gmail.com>
Subject: Re: [yocto] iso-codes project
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi Martin

On Wed, Jul 8, 2020 at 8:36 AM Martin Jansa <martin.jansa@gmail.com> wrote:
>
> Hi,
>
> it's know issue already fixed in master, see
> https://lists.openembedded.org/g/openembedded-architecture/message/1108
> thud is pretty much out of support and probably won't be fixed there, you should be able to easily fix it from .bbappend in one of your layers.
>

Why just don't continue to have both? I think was even re-history. I
will give a try

Michael

> Regards,
>
> On Wed, Jul 8, 2020 at 7:57 AM Michael Nazzareno Trimarchi <michael@amarulasolutions.com> wrote:
>>
>> Hi all
>>
>> anyone has problem on iso-codes in thud. Seems that project was
>> changed and not possible to download with the actual configuration
>>
>> Michael
>>
>> --
>> | Michael Nazzareno Trimarchi                     Amarula Solutions BV |
>> | COO  -  Founder                                      Cruquiuskade 47 |
>> | +31(0)851119172                                 Amsterdam 1018 AM NL |
>> |                  [`as] http://www.amarulasolutions.com               |
>> 



-- 
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |
