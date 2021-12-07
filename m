Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C0B6C433EF
	for <webhook@archiver.kernel.org>; Tue,  7 Dec 2021 16:09:17 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web09.68796.1638893356464837093
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Dec 2021 08:09:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=EPdK1hNn;
 spf=pass (domain: gmail.com, ip: 209.85.160.177,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f177.google.com with SMTP id q14so14713717qtx.10
        for <yocto@lists.yoctoproject.org>;
 Tue, 07 Dec 2021 08:09:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=s5whqiDIwA2x11yHXpiVVN8ol+W3yODuQr9XfHuWWYc=;
        b=EPdK1hNnmSAFq7UyTEg640mm9X1SjYEcUxGGSgvojU+4UWGLsT3BKJuYqBHUbWN8TD
         qqZNpaLSMSAPwiUq06l6Rw67Lc1UKR5mSb5xZn5gQQZ0lQUxFLBw7Z0R7Bo/CTRUsiEy
         YfOgxY3YN+qjE4bo0WE0fTWGUrxCSshyECtC25PxOGKw56W7L71pG6RwXd+WPBVboUNL
         TUV173alAQwo9PiUTYTS/HWpUlRcSC4WPD4iS+Jxq49npZagnRB+hHykUxH/l9JytBHB
         JYSiTdEI9HM3S02GOu0zN4TcTXsfYkG4fEo0TZrBvaGwr+TX+hnzaT0hF8k4lFzztKum
         R69g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=s5whqiDIwA2x11yHXpiVVN8ol+W3yODuQr9XfHuWWYc=;
        b=BT8ym7AJcUXIJNb0aQlQgKoNgdUPr8km/mNk2feONRAbI4x96vksb/Jf719D46qz7m
         0XuKuWZoCZkaeTn+F5pOUr03Nkiinc+DGQwSU1BCyxCledg7crKQpqwRDcmM9RZ/g8Cc
         gy8/5KjsxuFXDyuP6FzKEzjkBGE9dx7iXlLvAZTdCN5BjqUnMOylIbn0c64fZab8Oifd
         IHxb6VRWBBsHsAcg7vqoZ/LqkPTeIBw1eFVAa2NtJdVDRTNz6J9e3Mz0vr1J6a+NW8js
         zCk2QnjhgXLOi4bz8Gky6SSBUjFQlJ6cH90dEx/gDDN4EWCVWK9SQVgBITLpiopkvAI/
         0nPA==
X-Gm-Message-State: AOAM530M/uzk6phMtRcotM98ZNRB9358OdhdxSUF8sGUZPe4B0iXNeAW
	syhTZ3zuSDDxBDU4FPlLH4/1eCZT+i6eYNtyyjE=
X-Google-Smtp-Source: 
 ABdhPJyWmngr5c1TVM3KVddCRAS6xNA1L9HE73Q0tbAgm7Z4m621paLijNrUBctk0dUvRIP5qvf2ClPgnILjsQqBlVQ=
X-Received: by 2002:ac8:518e:: with SMTP id
 c14mr49827065qtn.665.1638893355491;
 Tue, 07 Dec 2021 08:09:15 -0800 (PST)
MIME-Version: 1.0
References: <DVPA.1638870325425629163.dxqv@lists.yoctoproject.org>
In-Reply-To: <DVPA.1638870325425629163.dxqv@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 7 Dec 2021 08:08:49 -0800
Message-ID: 
 <CAMKF1sqXXDJ5BrnVQZD+4E20XYL_5w6WVp5S34kbCyQS1jpJPw@mail.gmail.com>
Subject: Re: [yocto] ls command
To: msabood2014@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Dec 2021 16:09:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55504

On Tue, Dec 7, 2021 at 1:45 AM <msabood2014@gmail.com> wrote:
>
> Hi Guys i am new in YOCTO project. i have build images before and the ima=
ges were included the "ls" and "clear" and all busybox commands. i do not k=
now what happend now the image does not have anymore the "ls" or "clear" an=
d all that commands and also there is a folder named && in the root directo=
ry ? What to do ?
> Sorry if my question is stupid but i am just a new in Yocto and linux

try to see if /bin/ls exists. if its not there then maybe its deleted
somehow. best is to flash a new rootfs
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55499): https://lists.yoctoproject.org/g/yocto/messag=
e/55499
> Mute This Topic: https://lists.yoctoproject.org/mt/87561721/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

