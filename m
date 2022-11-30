Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8892AC47089
	for <webhook@archiver.kernel.org>; Wed, 30 Nov 2022 21:15:06 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web10.24865.1669842902591597191
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Nov 2022 13:15:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=k7aFA9SI;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id x11so3274732ljh.7
        for <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 13:15:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=V7WkNn5wFDZhGEO1yt3HJuru9xmw3SfTQmVir3OzfIA=;
        b=k7aFA9SIOn/y6n0/ZDZsZxA8Nt+BFLmXdzt0K8OUTJC0nf/ddEDIlYKn9W+jGEfU34
         Rz/oWCUMMVto9tux03Hjx4z/79bgT+JPmRypLmSJ7jB4sY9CNlHHaYjrjt0PYmwKHVOg
         gY1iHh2w/GdU3GQBiK5u+cxKxn1k9xny2FTkvU14ELMbPqh/kWsXBoHArBkcf9ZcFoJW
         ee7saN3p3loAK4ZB8x7E8fAwlGq910oX/SokItGnyQA6Gerkz54RHYv6eQK70sq0fBxx
         UmFjYFOwLes/WOwGY+Je3REoGyN7qII6HBieEkKcOM0giwv0kRPGxcQvYFaS1f8XNyZo
         HBeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V7WkNn5wFDZhGEO1yt3HJuru9xmw3SfTQmVir3OzfIA=;
        b=Z5D1xS2lImYu9mHWAMhp9OCEAOpcLJLpsVV3qgTMtnpmiL0pglwlUQAYUH6pGDKSV2
         x8oku0/32x/pY7yVu4gGq3J24jRphgD603Zc/ixPW2ESnTiG6Ypw3/nKjOS0v+aW9Bbc
         UxexMKuwJkMyKbRHa9PsvtjT9wqeW6vvHVA+vCAkZUYVPCAyWRocMcDXSI5YP5gJK4kr
         G2xhj9qJ3brWjlPRrOTLKS8ihfQOfdnLJRXHe6/KcsZQbDS0dzswrM8dYJZ4jruVN/7k
         wvboeGdQ+MkO6m3xbvmipNuQOMRJ/nZLDGsofjzSNhYFNE/3TNZmlKOEiwV8w3LYxPq9
         SMnA==
X-Gm-Message-State: ANoB5pkRJsEXJLu37WCULAmVHel5KGqWuGJmjCLVHvSMl6si+VPCOtYj
	it3p+O+/SSpfkIsDPBoSImT3Z68apiOI6oQG178=
X-Google-Smtp-Source: AA0mqf7xIzVfQZi3ZRU7l4sqCu/ptfHq80lE6iwMllhq/PZkmEyp66vX2ovEnyoQqKaNA0De4Imr+FLAGA+5GLxZTtg=
X-Received: by 2002:a2e:a174:0:b0:279:75a0:c063 with SMTP id
 u20-20020a2ea174000000b0027975a0c063mr13651139ljl.45.1669842900755; Wed, 30
 Nov 2022 13:15:00 -0800 (PST)
MIME-Version: 1.0
References: <0b6801d90409$885d6860$99183920$@gmail.com> <CANNYZj8Y37+s6Jzo1XvX0uCYNFc=NqOH8PWrFSL9_=TOS2ja7Q@mail.gmail.com>
 <20221130092832.62067104@wsk>
In-Reply-To: <20221130092832.62067104@wsk>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 30 Nov 2022 22:14:48 +0100
Message-ID: <CANNYZj_uy0xpvB2-eSzsZYwPR6gew=RpTZJXiGAVGYhqRn8xkQ@mail.gmail.com>
Subject: Re: [yocto] Y2038 proposal
To: Lukasz Majewski <lukma@denx.de>
Cc: openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	OE-core <openembedded-core@lists.openembedded.org>, 
	Stephen Jolley <sjolley.yp.pm@gmail.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 21:15:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58686

On Wed, 30 Nov 2022 at 09:28, Lukasz Majewski <lukma@denx.de> wrote:
> 2. There are ptest available [2] to validate if the Y2038 problem works
> correctly.
>
> 3. Support for running ptests mentioned in point 2. is already
> available in the poky repository [3].

I just ran these tests in (32 bit) qemux86 on top of poky master (e.g.
no magic glibc flags), and they all passed. Do they need to be ran
after setting the date to the 'post-2038 future' to reveal the issues
and produce failures?

Alex

