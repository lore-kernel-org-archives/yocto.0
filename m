Return-Path: <davis.roman84@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 451B6C433EF
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 05:54:47 +0000 (UTC)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com
 [209.85.219.182])
 by mx.groups.io with SMTP id smtpd.web12.3775.1642139686044943396
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:54:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dEWGGv3O;
 spf=pass (domain: gmail.com, ip: 209.85.219.182,
 mailfrom: davis.roman84@gmail.com)
Received: by mail-yb1-f182.google.com with SMTP id v186so21325216ybg.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:54:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=c0EUHvpa36C4eEkADStDe3TrlSYxblRtBDfzDGgElUE=;
        b=dEWGGv3OhCXZPkPnrOPpLQF0gOui3rvCYWcmIyFfDJTn9YFGaP+LCAJP1Hc52e9/Gw
         zQCFtv3iae8z2MWlDARbnPYE+ISvmyurQXRLPJKWN5Xkc0ej6BuLwl+xfWDcHf934izL
         02l5juN+wVo7c5tMZ/qVXWUWbl8zp4kbxH82EHvkctkatTNuNHmvDddND4KHeybmuv4z
         ennajAY/EF0x03gBRgO5t/yRBuZXZybGnHZoBbCwT26QPDm0IpdEkUyXlNzC8zfIGGQs
         cjOIpOTynB+H0APQZsL4ugaY69pMmjCy42x0EHq0kt954xA4UvuKYRBTkBHVEwm3XDut
         ww9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=c0EUHvpa36C4eEkADStDe3TrlSYxblRtBDfzDGgElUE=;
        b=2ImTTG6NSpd4jEpKXTfOOJFBqdvvmh30Tn2xBabz+T/nhmQ1clmHeKmy4/hYr4wqBv
         XRpsBF85Map1Y2YzAnqD0ivwPQxXjUS27WY5owYU/soAX2bkZrsdL6gRQ+44IR9sixPT
         A+no3buSMpn6vvzfqqQQcD999WtFeFDxbsshH9GNo9Uge0OoO++zUlTNDKFKUsZ9w8fa
         /sWYu6dYYDu/Tv9xNjZn8NRlP4iqVyYnEeDlyTsFrzJ3hxdyI3vAssFKKDCyOjoDEeNi
         73nVKryJD/N7wZscxnwXQ8Ry2gL//jxqc3DFJQ7ISKqpPgaXNynd3UzH+siFUhqVcfU/
         G6zQ==
X-Gm-Message-State: AOAM532+sCJDuRO+5W9G5nkRiRC1GYbYxBzkQit1P7YOGKJ6oUZ+vxwU
	XCw0HUc/S+2DVwGWiQxT7NbMmY02W06/HOLlCkwDz5DyF7Q=
X-Google-Smtp-Source: 
 ABdhPJwwDRjCoMzUms66jjNBZhLHbH0U6UoNTUhgsVh0dNWNqbH8RG99wvoLOvVhZ9NEDmNDibFAvAaZB2vYiVpISFg=
X-Received: by 2002:a25:b94c:: with SMTP id
 s12mr10970478ybm.708.1642139685008;
 Thu, 13 Jan 2022 21:54:45 -0800 (PST)
MIME-Version: 1.0
From: Davis Roman <davis.roman84@gmail.com>
Date: Fri, 14 Jan 2022 00:54:34 -0500
Message-ID: 
 <CACfi_Z30SFKp0Wb7XQJn-g7=-bZstcjuBoTi9RauWadLHR26CQ@mail.gmail.com>
Subject: Installing specific systemd service file according to selected distro
To: yocto@lists.yoctoproject.org
Cc: song li <ghosty.lee.1984@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 05:54:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55850

Hello,

I have a recipe that contains two service files( A and B) and I build
for two distros where each include the foo recipe.

When I build for distro A, I need to use foo's service file A but when
I build distro B, I need to use foo's service file B.

I could add some logic in the foo recipe to detect the DISTRO and
install the proper service file but I have a feeling this isn't the
yocto way.

Is there a better way of handling this use case?

Thank you,

Davis

