Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28940C41535
	for <webhook@archiver.kernel.org>; Tue, 19 Dec 2023 17:07:51 +0000 (UTC)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
 by mx.groups.io with SMTP id smtpd.web10.1591.1703005662100773946
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Dec 2023 09:07:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Vda68YjR;
 spf=pass (domain: gmail.com, ip: 209.85.160.50, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-1f066fc2a2aso1568558fac.0
        for <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 09:07:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005661; x=1703610461; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wcdVXHIHnEPqwuG8kLMtmzIBsIhfGXQLLzSgumGjU0Y=;
        b=Vda68YjRTeMvzoMweyhZcPkH7nm3oacZ5gfQxiYjAat1hbS4Yg4wAbRdTJBBNW27so
         vjLC6SkBdvwQscF6+Na4ULFUj7qqE2xLAinYGR4Ijb33GV1x3/GBxaSHU8o51RdhTUQ9
         yxNFxZmSGG658GBzScz0zZYAKjIM5YKbEIb/RGzSLtQQUUbl357psMa1BL7B4jWtgKkT
         L9BAaI1WGcImF3kVyxHWeytOh7lzcHqsZDjIZCYmzCpz913UIXsF3tO1XUQdbVkvcTFt
         4Hno9IGzNqs4FKZPAMeNo5yo7JqRPTzsLeg11Co/B6yI9S+9WkNwIkiXM5/FRhIdR5gH
         yozg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005661; x=1703610461;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wcdVXHIHnEPqwuG8kLMtmzIBsIhfGXQLLzSgumGjU0Y=;
        b=RpqP0+rafbePLDsyacn/mBqkN23p6mydm/ohcYypVsL6OHa67GNS8a5r8gxgPcbjin
         QmItN3hsuRSnFtvdJlv7Tt9hyhJMcgLZEzdemXYVrhB26ICQiQwrKWOeAH/jP0dDpNMZ
         1DxCUqNONdbSkV/7NBO9KwKkPl1DThDJ77Aoj5/w6qxxIyLzDqehXwbZAi2jvn//2kS+
         rccGi5ieqJxzruasFq9+x6hMP0CacZgLf7eMBV6mMuoOLzu1adbecRALTaVsAJCY1iKE
         8sPSkdqnROw8rlHvTfQEZDuB+2nKt2nIdBZTmHki3Loe97fhg1Ec1HkOcfGUA6/gzyef
         otXw==
X-Gm-Message-State: AOJu0Yzcy0ZhxqvjTSSFai0yioHCNGOdM1raoPfOEdmQ5cvYHcf9PJ+j
	XAlqAw9YaemAweJslveble1+iPWN4/CN3AgS9/l1wEDgV0Y=
X-Google-Smtp-Source: AGHT+IGwI3HbkedfhcgRuVLXR0YS4+DrBP1E7fSrVIvW6L1Ie16EzCuT9tECH7tyNs1pzMLwrKNRunMB1ysZOjmQjUI=
X-Received: by 2002:a05:6871:488:b0:1fa:d81e:2884 with SMTP id
 f8-20020a056871048800b001fad81e2884mr12337568oaj.22.1703005661211; Tue, 19
 Dec 2023 09:07:41 -0800 (PST)
MIME-Version: 1.0
References: <CAEt6Nwpek3T5wbHgYORCSptuRvZ=ntuWGDz=FCYvw0UdeBtb4g@mail.gmail.com>
 <30615.1702967237069629029@lists.yoctoproject.org>
In-Reply-To: <30615.1702967237069629029@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 19 Dec 2023 09:07:15 -0800
Message-ID: <CAMKF1soB14c0oyc-D68yHxZDWGBH96t24cX4x2zQNHVC-2mQvg@mail.gmail.com>
Subject: Re: [yocto] sd-bus.h not found even with DEPENDS += "systemd"
To: yocto@lists.yoctoproject.org, ashujoshi35@gmail.com
Cc: Josef Holzmayr <jester@theyoctojester.info>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 17:07:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61990

On Tue, Dec 19, 2023 at 12:08=E2=80=AFAM <ashujoshi35@gmail.com> wrote:
>
> Was this issue resolved? Even I am facing same issue and not able to figu=
re out the solution on how to resolve sd-bus dependency

can you check if sd-bus.h is in the recipe sysroot ? and if yes whats
the path to it, is your package adding the needed path to CLFLAGS via
-I ?

> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61978): https://lists.yoctoproject.org/g/yocto/messag=
e/61978
> Mute This Topic: https://lists.yoctoproject.org/mt/77141718/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

