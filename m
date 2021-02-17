Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.8901.1613575076859830655
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Feb 2021 07:17:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iAH4tZK0;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 150AE38C04F6
	for <yocto@yoctoproject.org>; Wed, 17 Feb 2021 15:17:56 +0000 (UTC)
Received: by mail-yb1-f175.google.com with SMTP id n195so14088335ybg.9
        for <yocto@yoctoproject.org>; Wed, 17 Feb 2021 07:17:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=8eX0Y1UzRxvTVdJp4IDPern+O2q9+rUN83N6dwfmNfw=;
        b=iAH4tZK0cl2LtevLu4Py8AHa96A/FSJOkP/M7WhZjZlE2Xpog8EcTjJcfhtB5VVmAW
         Hsw5TOzzBc3Ny5N7YD8ny8pXPi4C049/0oUghgbKkkJv/tbV8bLajFgh07gek1rqrZe+
         UzcSXE8WxG+usDcdcJfG8QC/uzd94+GMCFxFUmlPStFXh5/ETTG8k5SDGeYUv3pdGa7v
         OOh/VP0vZitgW8xDuuO2cEL393JZCLqViMCKl3BAIMWnK3yY9NpYSkksWTmVlm+4Ybae
         Sue3uZ0YQz1AdU/qNX/IU1Dv0Vu9P/WeW/fW3xAmR5r235Zdo4vAFdyHd++fbN47qt8K
         9fEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=8eX0Y1UzRxvTVdJp4IDPern+O2q9+rUN83N6dwfmNfw=;
        b=tiT9/UIU/HPPTLmdC7CggqkkLKijQS3Ebahp47jZGywAkYdrMAj1Paso5MjZlAOtJT
         sh9EIs4IeTQMDwFTW9JAUkb72bT5jktsEAAWsDEVJYZw0ecNytBOodlJcaM/pT6xvlA5
         ZpmJHOpLnW1y8yIhPz8WdQo9KsJ3013PO/R18CpNLJyxImW446eXqKOY4xn5tuLmoIt9
         qDMr6ceuJu+XS0I1yUivGMmxX5BrTcGJmj275SHUbBKvLROUsOVbJfzkb/4VC1rMccIx
         g53bP8iPcBcb2BkOcFoQXMFtS4c3iHhervtc/spdvtaKVjJOw7GOUdbzaSWu5OzyzpJk
         vqMg==
X-Gm-Message-State: AOAM532vDrMMfoCBl4iVtraedqetQUZKFPIzN2lTpbxhVfVd0Gyl/ne3
	m4fbs05tJbVeQv00v4yXdiXLwtYWpOKV6OvcN290DSctfZURXQ==
X-Google-Smtp-Source: ABdhPJwLL9oyNQYjvr5/ggxDXycBil7AGMBsi4txEssRX0/tB3WZXVKLgvrG3NACdPN/ECo8QFbJOI9yppAWQ/b0GyY=
X-Received: by 2002:a25:c50a:: with SMTP id v10mr39077517ybe.186.1613575074990;
 Wed, 17 Feb 2021 07:17:54 -0800 (PST)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Wed, 17 Feb 2021 16:17:43 +0100
Message-ID: <CAAfyv34_fwin+OE5FniiFOXXjvwcKqqwtp=_Wrrh36wMGDYyQg@mail.gmail.com>
Subject: changing root password in readonly rootfs
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

does anybody know if there is a way to have possibility to change root
pwd when readonly rootfs is used? I've added shadow package + overlay
/ect/shadow + /etc/passwd but chpasswd  complains and changis is not
possible.

Thanks and BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
