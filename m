Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9729C433EF
	for <webhook@archiver.kernel.org>; Thu, 10 Feb 2022 09:41:18 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web09.8036.1644486073703043903
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Feb 2022 01:41:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20210112.gappssmtp.com
 header.s=20210112 header.b=xNAyY0a5;
 spf=none, err=permanent DNS error (domain: theyoctojester.info,
 ip: 209.85.208.54, mailfrom: jester@theyoctojester.info)
Received: by mail-ed1-f54.google.com with SMTP id b13so10046304edn.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 10 Feb 2022 01:41:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20210112.gappssmtp.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=KYWJSgcsTsj5f+0Y7CWD21sf9pOMU3zNCV+JI7P9Buw=;
        b=xNAyY0a5sQE39AI3m4UmiwtI9R/EAJ9t2U8dXw/8Au0dQw+PyLUuxMvvH4kiY0SdFT
         V58GA3SHlsDGhrrsdmjt2dHsS5dxL8o+jU+jj1VM/5L2IERh8va6oPyh3duWqNxqtHuY
         824yhrDuKz39YGBcZpTynma5elBfpANCMwW/pToYugNSqebc2S5qRnl8ER5uFdVi6Olh
         DrfoiAT5nxR/CjrrW+3vkpqVGZMazdambxYrOXQI8cE5kgbykZeA0LCNdoQ+rEhrtd/2
         0ODiQhf3eElFJKK+s0DTIxSc5+LNwnNk/CXfTQFIJuVH+P+9eq6sHHuuh00qA7+p5jLD
         Dxig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=KYWJSgcsTsj5f+0Y7CWD21sf9pOMU3zNCV+JI7P9Buw=;
        b=AS3XrQ3930LuaMcHjBCb8rHGXToSn4dT5n8RujW7KH4mJZKjGSBB2PhEz3HQNUsXyF
         QbPmeEySGBNaB8yi+H2DPqwrpAVTaXc1gvRU8ISWbPg9ogGUz4T3CR81rOJixcwQI0X1
         cJRcpg8Wsni07C/QVRbryInq1uaBgx9fKE1JBDhPEC7q//KzsvZbyWGgzRyvuZlwizCk
         mfQ4rOWaqw2Ohaaqfcab1Uzlfck53Fa6Wc9DNF6iOK9N8YXUQY6ULaHWbowfZx/96eAx
         ZIgn6ur8LGktG1YQuy4CgTEHBsMDiEU0X77ZvpAuYR6L8lRzt552yodicfSwDfF9gmrH
         sg1A==
X-Gm-Message-State: AOAM531HIaLsI8zC4UfnE0q9NpSbwi48nXbe6thAJPsYEJJAqXyBLf+P
	NHvhI5VwlN37ugnJBlf/cM0R6A==
X-Google-Smtp-Source: 
 ABdhPJxGsHdKZGX1biDKPCDJtNMPA+6xE3y1ljyNjvwXCwSNI/y5QqLbooTspIRfC/zrz1CUWWnbPQ==
X-Received: by 2002:a50:fc8b:: with SMTP id f11mr7546009edq.440.1644486072128;
        Thu, 10 Feb 2022 01:41:12 -0800 (PST)
Received: from smtpclient.apple (ip2505faec.dynamic.kabel-deutschland.de.
 [37.5.250.236])
        by smtp.gmail.com with ESMTPSA id
 bo11sm6856786ejb.24.2022.02.10.01.41.11
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Feb 2022 01:41:11 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.60.0.1.1\))
Subject: Re: [yocto] Adding DKMS support to yocto build project #dunfell
 #kernel
From: Josef Holzmayr <jester@theyoctojester.info>
In-Reply-To: <il5q.1644485353819132155.vL4q@lists.yoctoproject.org>
Date: Thu, 10 Feb 2022 10:41:10 +0100
Cc: yocto@lists.yoctoproject.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <EE9C803C-61D1-4BBD-B1E9-730293CE6BB4@theyoctojester.info>
References: <il5q.1644485353819132155.vL4q@lists.yoctoproject.org>
To: rayaan@skeg.com
X-Mailer: Apple Mail (2.3693.60.0.1.1)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Feb 2022 09:41:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56142

Hi Rayaan,

> On 10. Feb 2022, at 10:29, rayaan@skeg.com wrote:
> I am new to yocto and in need of assistance please.
>=20
> Could someone please assist me with getting DKMS included in my build.
>=20
> my platform is: stm32mp1=20

Currently DKMS is not supported in Yocto/OE and there are no imminent =
plans to change that. See the discussion on the topic at =
https://lists.openembedded.org/g/openembedded-core/message/159558

Maybe you can work out something for yourself using NI=E2=80=99s layer =
as mentioned in =
https://lists.openembedded.org/g/openembedded-core/message/159694

Greetz,
Josef=

