Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70CCDC433EF
	for <webhook@archiver.kernel.org>; Thu,  9 Jun 2022 16:12:23 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web11.15484.1654791136473229649
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jun 2022 09:12:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=dV+fjCRn;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id q26so22699781wra.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jun 2022 09:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=MVnDC14uZ+OD8ix02iyzpQEPRD3fpnCjr7jfI8FpTec=;
        b=dV+fjCRn9G+TmJaDB9NIo0eME2BCNskUoP2qDE8yWPvjxNi+yuosHvXriO+BMNmUf0
         acLa0c6wAwmYGTPbmh9sMnTBXpdJeNqrimeApx1eGJLe56dRWaXUyR3tb4cl1RNS7rTo
         gT7WWAYpQrd/H6NeA+J1LWkcwVNHnumRoH0uU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=MVnDC14uZ+OD8ix02iyzpQEPRD3fpnCjr7jfI8FpTec=;
        b=tg4VUS3U4miC22l1hKDntH6eaVp8E4ut8GlrzwsXDvx4MJPl4o2LspvRqVkHrCBvyu
         nGW1r98X5vL857dx8dBt88/yT6tTyE/3H8/sUIp4YDJ5sLm4GXf9h1kZXUW7xkjU1wVC
         N7yv7DCZHJbx7Ty8kT4NVsM4TGikurKwXQCkgkqtVfakF0tprK7OpdL57GZ2TR5NNuS4
         RDuqOOBBMZGJ4W5x7boAm2TWgBmp4O1zNaG51GqNqScItNeRmmwD5SD8Ocsb4J+9Iv5X
         P9taTuuW1bf4Ax+UyatWOqfSmJ86GOeRIQoeZeLOHOTlE/LI6Ioo/bTljUkFD+R9nmDG
         j2wQ==
X-Gm-Message-State: AOAM533W0SdEx04xaPCIb6m1K7s7VSlSC1axK4bGU3RAzvmqJ2IBnUiC
	ayYHEKG0Ue0xDabGNjkbei386A==
X-Google-Smtp-Source: 
 ABdhPJyEuSgKQXc5yaa1WLasP/En7X7bCVHU6Dkt8E+BI7NVSc5u/88WR9RY3QA6gaVH3SoOp1A1AA==
X-Received: by 2002:a05:6000:15c1:b0:218:468b:4c01 with SMTP id
 y1-20020a05600015c100b00218468b4c01mr19835473wry.60.1654791134797;
        Thu, 09 Jun 2022 09:12:14 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:2888:8172:672a:5175?
 ([2001:8b0:aba:5f3c:2888:8172:672a:5175])
        by smtp.gmail.com with ESMTPSA id
 o14-20020a05600c378e00b003974d0d981dsm30755790wmr.35.2022.06.09.09.12.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 09:12:14 -0700 (PDT)
Message-ID: 
 <6ff5ebcfe527541f959ca5766e6e239dd02113f8.camel@linuxfoundation.org>
Subject: Re: [yocto] Minutes: Yocto Project Weekly Triage Meeting 6/9/2022
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Sakib Sajal <sakib.sajal@windriver.com>, Yocto-mailing-list
	 <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield
 <bruce.ashfield@gmail.com>,  daiane.angolini@foundries.io,
 "jpewhacker@gmail.com" <jpewhacker@gmail.com>,  luca.ceresoli@bootlin.com,
 pavel.zhukov@huawei.com, "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
 "Wold, Saul" <saul.wold@windriver.com>,  "sjolley.yp.pm@gmail.com"
 <sjolley.yp.pm@gmail.com>, Steve Sakoman <steve@sakoman.com>,
 tim.orling@konsulko.com, akuster808 <akuster808@gmail.com>,
 ross@burtonini.com,  michael.opdenacker@bootlin.com,
 valery.chernous@gmail.com,  aryaman.gupta@windriver.com
Date: Thu, 09 Jun 2022 17:12:13 +0100
In-Reply-To: <d3db1573-3ae0-8f68-39be-b07bdf7cfe78@windriver.com>
References: <d3db1573-3ae0-8f68-39be-b07bdf7cfe78@windriver.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Jun 2022 16:12:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57310

On Thu, 2022-06-09 at 12:10 -0400, Sakib Sajal wrote:
> Wiki: https://wiki.yoctoproject.org/wiki/Bug_Triage
> Attendees: Richard, Steve Sakoman, Tim Orling, Pavel, Aryaman Gupta,
> Stephen Jolley, Randy, Luca Ceresoli, Michael Opdenacker
> ARs:
> Richard:
> =C2=A0=C2=A0=C2=A0 - Bug 9762: close with a sensible log message
>=20

Done.

Cheers,

Richard


