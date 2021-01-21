Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web10.180.1611265415570515792
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jan 2021 13:43:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=q4c/8oUT;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id h22so3277334qkk.4
        for <yocto@lists.yoctoproject.org>; Thu, 21 Jan 2021 13:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wEGIh0MnFcY/Kww0zLv/Dlk9/fL/MH6c89QhEPk99jk=;
        b=q4c/8oUTPG4RMxH96aXhlGjKgMUqaPDytZQ3hEBouUG0uYl8CmPXAAtYk9cDE+NhYP
         7kpHdLvtF1K18/JukA46mwh3+XHVqrxJH0dKg6J1HGMSmcv1/AJeych0w5a+FuslTepp
         SyqU3A9clpdYGOAPvMsPUz8TrnpZPVmek0aOwMCKmpnxBwzlnePVui0vy8ZNUzUDRI9E
         KidifVXiFlnyTunyw7BMELkRRraomZPkVGaKdmSS90V8+mDrhhLeFt6EKVQhfbRH5l4k
         lQPriIxQMrhFac16vCP/e80G7b9TjGUPGryDYzlc7yONSGvCWaMTZvnnbc4tjLwELqBd
         Uf5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wEGIh0MnFcY/Kww0zLv/Dlk9/fL/MH6c89QhEPk99jk=;
        b=Mw9jIPSVsnN9gA62Mzq0uNrHutVQUgqUOD/eSvGKi110zibmy3gEZ2GdFfum5Y7xWc
         HAmyPAiIXCc5ismWMLcvGoVmvHt1sfDiHmaDvZ4P90LwRZ4MLCtJmf6T9vnB3dVRqFG8
         RFkSmZMhVuydZp36MeCYDD319ZIqnw3I0o8rTzP+jEkjImTulJuw3DTjhZNMMFKjRR6h
         yllzuR8ASjlgKu2Lv2/HWxYg1bgiaKUr1dHJ+e0xJB6zwEsshb5zvbgj7Qy2/HBvSTKe
         aqknomHOo5vr+EbJpFPibSlGsapxqqeN277IDBFrNzCn7Vro7b8zbyOu54G/kdI0yTId
         64Yw==
X-Gm-Message-State: AOAM533A4dPvgCxEJOuVyvyq7kZTJPGpTy1mCwWFCEVMWjoJh79FgyIr
	F+/dUyMU10PsN050lJyEW4wejjevwI8pr4wPQJw=
X-Google-Smtp-Source: ABdhPJwI65GxkhcsmwjPnSmxlFSa3di5ASgTucB3QDPtU6Ugay+X+8b2CxvQoF4sMp0ELWFVqwRnPfhAE+EcOY/hjBs=
X-Received: by 2002:a37:744:: with SMTP id 65mr1813464qkh.71.1611265414705;
 Thu, 21 Jan 2021 13:43:34 -0800 (PST)
MIME-Version: 1.0
References: <qmKi.1611241373939155632.rTTO@lists.yoctoproject.org>
In-Reply-To: <qmKi.1611241373939155632.rTTO@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 21 Jan 2021 13:43:08 -0800
Message-ID: <CAMKF1so6mqC2F6e+-YaMCPHKpu0BzerJWcFrA=ARgydeftqS3Q@mail.gmail.com>
Subject: Re: [yocto] #yocto #gstreamer #gstreamer1.0-plugins-bad #aom #av1
To: safouane maaloul <maaloulsafouane@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

write a gstreamer1.0-plugins-bad_%.bbappend with

PACKAGECONFIG_append = " aom"

Then add gstreamer1.0-plugins-bad-aom to IMAGE_INSTALL

On Thu, Jan 21, 2021 at 7:03 AM safouane maaloul
<maaloulsafouane@gmail.com> wrote:
>
> Hello, I wanted to know how to add Alliance for Open Media - AV1 Codec Library  (aom-plugins)  gstreamer1.0-plugins-bad recipe to my image ? the Alliance for Open Media - AV1 Codec Library are in the aom recipe. I want to know how to add this recipe ?
>
> Best regards,
>
> Safouane
> 
>
