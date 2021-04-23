Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.537.1619190389442586253
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Apr 2021 08:06:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mz4KBXde;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id AA83F38C03DF;
	Fri, 23 Apr 2021 15:06:28 +0000 (UTC)
Received: by mail-ot1-f46.google.com with SMTP id y14-20020a056830208eb02902a1c9fa4c64so9062961otq.9;
        Fri, 23 Apr 2021 08:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:autocrypt:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=JILy8ZHl5pwvPXa0mtUjHdlQ3BcKOMGNk83p3KqJDOg=;
        b=Mz4KBXdeLVRw3g7nMrKNq7Sd6LG6nauNQ5zZZC47IVWy3HtV/GZst8cvfQJrzBoDMR
         OqKzJou7NJnF6AdP5NgIfMsuPeYLhXYSSbL0a0aMyyh4rGPaG3YKbn/L8wYoetnI5IX0
         +ZLF8Qh9OyAR4uyHaHMLyPe6iOlHpkKhY3/Vxfzvr4agmEm0Bz+9mTv6iIJmKBWIQU98
         jf0ENlwPx6f7WVJ2Ks0ff9klOIBEOOfWMAg3WmdyrmZUmX4/BgKKNWQ53kt2K4fZy5Ii
         ZUMJYTLdbn4f5qts6zh27HsXamEO3PnaKCLmqSgghnDFpvBVcsjitp/NjwZjD4hL6uLg
         KebQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:autocrypt:message-id:date
         :user-agent:mime-version:content-transfer-encoding:content-language;
        bh=JILy8ZHl5pwvPXa0mtUjHdlQ3BcKOMGNk83p3KqJDOg=;
        b=cl+urxOYqF+wUtjpBOxb9WU3sCJC0tQ5f6xQK8KPBtXhZEXs/AtDeE0EYialDw3h16
         s45tzrzD9SABvoHwO/Bf7WV79a1JzBG7lAADVzukGOyEfE16J8JpDDY+XSqCU9K7Mc3M
         3wb99mnSnHt5QhRRBanaR7F8mc/2DHNR4s75ka6GRJzyy0BlzL1QloroPx5w2YwpaY/u
         ZlfV4OGE0GUO89oe5daWwLycZI+1UXQuCU1d63K2LAkym02iIAjE8VXrDY8WZJ+95jtt
         6NbS3rYQitA8A4cPQVmglva/hrSkZHeBBmRUINxQmTQaTzJcrCh7v75kOWAsyP1JUOKy
         hb/A==
X-Gm-Message-State: AOAM530NOqltfegy9sKUOw0KSuVMBcz4WWzk8pu98H2KXzE7LaouBqSv
	urwJyzDIhJoJ25QBNJSHCB75OUXcEJmqlg==
X-Google-Smtp-Source: ABdhPJwilO2KJ1Ir7sJ32Cb3/PcBTjAvbEeQ2y8BEz5rWGN36Mq7s1hTHdy2x0oantX7Ilg/5CiqPQ==
X-Received: by 2002:a05:6830:1e3a:: with SMTP id t26mr3699845otr.134.1619190387690;
        Fri, 23 Apr 2021 08:06:27 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:e183:e120:a0a1:83e4? ([2601:202:4180:a5c0:e183:e120:a0a1:83e4])
        by smtp.gmail.com with ESMTPSA id w66sm1452023otb.69.2021.04.23.08.06.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Apr 2021 08:06:27 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
 Patches and discussions about the oe-core layer
 <openembedded-core@lists.openembedded.org>,
 OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
 "bitbake-devel@lists.openembedded.org"
 <bitbake-devel@lists.openembedded.org>,
 "conferences@yoctoproject.org" <conferences@yoctoproject.org>
From: "Armin Kuster" <akuster808@gmail.com>
Subject: The Yocto Project 2021 virtual Summit CFP reminder
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <ee79718a-8ae2-6e9f-a071-9072f106dce2@gmail.com>
Date: Fri, 23 Apr 2021 08:06:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hello all,

This is a reminder that the 2021 Yocto Project Summit CFP window closes
this Sunday at 11:59 PM PST.

If anyone is interested, please visit:
https://pretalx.com/yocto-project-summit-2021/cfp

Kind regards,
Armin

sorry about the cross posting.


