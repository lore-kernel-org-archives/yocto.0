Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B917C02181
	for <webhook@archiver.kernel.org>; Wed, 22 Jan 2025 05:17:48 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web10.36182.1737523059891933332
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2025 21:17:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bMhqNFc2;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ab2bb0822a4so1263385066b.3
        for <yocto@lists.yoctoproject.org>; Tue, 21 Jan 2025 21:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737523058; x=1738127858; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EcNzSXYuHtIXHHuNle5k6dD/lHsoULS8zxfb64AEstk=;
        b=bMhqNFc2PeLsWyLKZ9PmrSGbQ0COPEqHNxZLsFCpFrJqkh8oBLFUGrCNHNAw4oAXuh
         puiNV2PZicb+V9+9WmUNPTpvuGsdPKQ3aI1kFGyMFClXYizKDgCdYyxzPZRY0vK1vFhs
         6PclWFAl3QGdFE4GUxB4A9godDxpFabtUfTY50Mb39qiAxVL1qsohJ5AbIOIqQz4MI/h
         byUElp9Q37xYf1J5FG5IfEOFz0Yo+kf4MLk/CX4CqoARzNg6ZWq/lMgMJDOsfUk+iqQI
         vB0rek6XQhT85/1hzo4vrzhya96iBJifpaBCkPgzsTsH9uqFW7WsWbIqn7RhwD2sdfgu
         CwYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737523058; x=1738127858;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EcNzSXYuHtIXHHuNle5k6dD/lHsoULS8zxfb64AEstk=;
        b=MXyX2pDmDDZWXZS79YRf/s4bRDA6etytmHmJk+vNj8LazNghoBpARYpHtSR9Hnbb6Y
         fa7gPiFi6hIuTHU1JdjivqQ2//tp/ZI1WgqOXcG6GSna0DjPhJXFlBcxhz+VKjyGRt4O
         TsRbp3/d+ZYu34bSayc0ubnxOTN3L9M8Q6mTnAPyUd8MbcSrvU48K+aOXN3rSp9LGV37
         N8i0fJVbPHSkR9tLo2sM/KaDhhAPL4KSE1ohV2EzSscKachG5QqIYijn1TTxL9Y+jS3y
         yLvlK361zXjElQgtF/w7GkOlteNpeRMFbThpETZQ/PNGzEveyHcV3QOrHNKZm3UZi4Pn
         AOOA==
X-Gm-Message-State: AOJu0YwqttaEhJKA3PggDYtQAGtz5GO4EiNY1eJhETOcGjMBcoGownmK
	yBynKcHy+E5iPWTsykg0KZkrf/owBkPqjzdEtqeK3sqelM7hvXtJUUcvzurk1cV6qUKe3p0HWNz
	KE1iWNeKVVgwL9GrKVqmjn4BwSBQxT4e/
X-Gm-Gg: ASbGncs7SLz43PwxnXJ4vCVinBxRYCwtnDClzLDnGCdSHSims33CswRxFM+ptW2zUuC
	y8CmLUpwaFQnc+kLhy9ezY1LgRlhe3f5I8+itMt71i6uhnssT
X-Google-Smtp-Source: AGHT+IFymOt7Tk5IhV+TVdbr7BfjZ5ZywsTPLkjo7yyEGYgeSGvuwT3Y9w30Ji94sxTfJCjqSLHJNd4t+23bA4zHYbA=
X-Received: by 2002:a17:907:96a1:b0:aab:da48:493e with SMTP id
 a640c23a62f3a-ab38b10cf5dmr1593882666b.21.1737523057729; Tue, 21 Jan 2025
 21:17:37 -0800 (PST)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Wed, 22 Jan 2025 10:47:26 +0530
X-Gm-Features: AbW1kvYDYkrLEwD9Et_sWmsQjUQ61NuY9BZQQJnmLHjGU8Wyqbc2Binq8UGSq3U
Message-ID: <CAPJWBniKa2E-271aSi0RpcX+F89CEZDKZNMnuFokEe83zsaupg@mail.gmail.com>
Subject: glib-2.0 addition to yocto kirkstone image
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a52860062c449ce2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Jan 2025 05:17:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64607

--000000000000a52860062c449ce2
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I am facing an issue with the glib-2.0 library. I have added the package to
my image baserootfs as *glib-2.0 . On *manually verifying the image folder
under work directory I can see the /usr/lib and other system library file
present. But they are not getting added in my final image. i.e I can see
them on my target device. What should I do?

The build is successful and I don't see any errors so dont know what to
share with you guys.

Regards,
Hassan

--000000000000a52860062c449ce2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0guys,<br><div>I am facing an issue with the glib-2=
.0 library. I have added the package to my image baserootfs as <b>glib-2.0 =
. On=C2=A0</b>manually verifying the image folder under work directory=C2=
=A0I can see the /usr/lib and other system library file present. But they a=
re not getting added in my final image. i.e I can see them on my target dev=
ice. What should I do?</div><div><br></div><div>The build is successful and=
 I don&#39;t see any errors so dont know what to share=C2=A0with you guys.<=
/div><div><br></div><div>Regards,</div><div>Hassan</div><div><br></div><div=
><br></div></div>

--000000000000a52860062c449ce2--

