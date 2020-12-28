Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
 by mx.groups.io with SMTP id smtpd.web11.44680.1609156877280062697
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Dec 2020 04:01:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=GT9uyRda;
 spf=pass (domain: konsulko.com, ip: 209.85.167.170, mailfrom: paul.barker@konsulko.com)
Received: by mail-oi1-f170.google.com with SMTP id 9so11255321oiq.3
        for <yocto@lists.yoctoproject.org>; Mon, 28 Dec 2020 04:01:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zFGTIoK1Ck9E9HsGOPujohpUTv7hLgFeheXyQwKO/+k=;
        b=GT9uyRda+b+KNRsggquey48MJWI09riHuk3lBUD33BGX0CTqa2t7IMdM75cCx7ZYl3
         7/LnK8KKF3EJ89uqhpvmUc+2knToTbR75sqYyc0SjhRJjwank4tdU2otK4iM99ThFE4v
         BxiyY7CIdHsxUSlq1/IyaAazyjXRgtCnEW/zU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zFGTIoK1Ck9E9HsGOPujohpUTv7hLgFeheXyQwKO/+k=;
        b=kBgsp8a1xB7BKGSdT2EIntk4ebKgv+7JdtoqHo60r3pOF4ZJEtd1syacJZugU4wPjN
         OE3U1zIHAzfNF7SuVGsYfQOXPYdKt+h1I+hW70dLJbaTJoGajIclWyJAAQaFLzJTLwJj
         BNmlWoR6jWK5V0N9V5kSh4pRcUYaN05MBuRjdkvH3IfQ9Xf14HLQyH7XRbXS3epodS72
         FYauMG/T4DQM1xVIbkx5GcAXPxIFq7lCHz/fKCdhIZCBOlw8pTORg+zi7dJKII7gXlS1
         nnztP3xV4U0Blv+wYg0IyTc4xxuqBAzieSzPRetHWRnqzzS5j0tHukvl4b0g24HLwM4T
         MA/Q==
X-Gm-Message-State: AOAM532OGxdSIKSinZORMDP2+036SoT2yA0hNjZAkgSWtsaDPaJyiQM7
	h2Hd+I3OuWQF6xxEYwVM1bgMTeyKXxqXx4YRRzsG1g==
X-Google-Smtp-Source: ABdhPJz4F+WzTTdavEpsFCOvNjLN8ip/+Yybvy6ndaN9Qvlgu2MJAvQvTc4pFXYs3BSXaYdgs/oofaBE1VaRpFsIJSc=
X-Received: by 2002:aca:d882:: with SMTP id p124mr11587587oig.152.1609156876660;
 Mon, 28 Dec 2020 04:01:16 -0800 (PST)
MIME-Version: 1.0
References: <CAKRDAG9vG0AsckYe2hJL9DW_FF6G_+71wLA5+hWG38xh7UjQUg@mail.gmail.com>
In-Reply-To: <CAKRDAG9vG0AsckYe2hJL9DW_FF6G_+71wLA5+hWG38xh7UjQUg@mail.gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Mon, 28 Dec 2020 12:01:06 +0000
Message-ID: <CAM9ZRVuM_zdytq2xYga15c4YpFNTZ3rNLPASZR-Akfb0Ao3x_A@mail.gmail.com>
Subject: Re: [yocto] chpasswd not working in yocto-2019
To: Raghu Icecraft Software Trainings <raghu.icecraft@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, 28 Dec 2020 at 09:44, Raghu Icecraft Software Trainings
<raghu.icecraft@gmail.com> wrote:
>
> Hello,
> I have upgraded my kernel poky to 2019.1 version, here i am unable to find chpasswd utility because of which i am unable to set password to my root-user.
> Can you please let me know if the chpasswd utility has been changed or modified please.

Yocto Project doesn't have a version "2019.1", see
https://wiki.yoctoproject.org/wiki/Releases.

I guess you're using a vendor supplied BSP or SDK with that version
number. Could you provide the Yocto Project version number and the
layers in use, or at least give some more info on where your "2019.1"
release is from.

Thanks,

-- 
Paul Barker
Konsulko Group
