Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com [209.85.210.67])
 by mx.groups.io with SMTP id smtpd.web09.5350.1604444002322738620
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Nov 2020 14:53:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@foundries.io header.s=google header.b=LB48hwt2;
 spf=pass (domain: foundries.io, ip: 209.85.210.67, mailfrom: ricardo@foundries.io)
Received: by mail-ot1-f67.google.com with SMTP id j14so7362136ots.1
        for <yocto@lists.yoctoproject.org>; Tue, 03 Nov 2020 14:53:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=foundries.io; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ien4Y2s6aJKv05g/CAmHUgD9U/4KmsnLBj0dBFinXNA=;
        b=LB48hwt2KBnPkBfy30obOEX/OVqiijP/kZNKPmp6hCr3hB+QbTseADEi6z7vKd3grY
         fpRRlUbxs4WBp1H5Lk3maWHGzC5/z9pvVouOLmc4ph+QjmdgDcGNAFwMiKCGiLj4md7X
         AmrOgtlS2YEeX1NbmDKdR2WPKfohkaUCSUEj4KAYUow4BZktiLkQQXOSNqlVOe2UWgL5
         I5iq5BseSs7c/Lf6lXqALIbZ7mNhA3iPDkoSREXLrN2DnXzfnE/udM/RQmSRAysIjPYx
         tMYx0fGJb+3rBT6NhIZJQd9W44peM80xxAkUAAQfminp8BmeWxIaggh8tRl4tSVoNHyl
         bwPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ien4Y2s6aJKv05g/CAmHUgD9U/4KmsnLBj0dBFinXNA=;
        b=BbM9laxqW3aVBXRcAFTgvHIyhdkU3x+ipJYQhuCyJMdpF5FzjEhnh5bB2CyNB0eEQe
         fIfdwaCKCTM/Kb11lsWYyuSq61cIrTpyl6cJ1R/yvnts0CYNXD98fafYkzTOhyKEgdRo
         ovD9j9xJMhhlZMY3B9HVG6COaEUTFynfu8s+JNoWXOZcP1YpYLDZA0DW/TUEs5MwebT6
         nsIvyoAWEsAAzziGUVH2/s4Pz8sS+etguTkAtbYMVUd9IF6w88Tk8SNueqPv5JO5qhD9
         wKtTCfh1WSWXAr5Suc8iuUgzT5+V3WsTa57dYnY53NUSmcUMg8VFnASGTCqBu99pMk4P
         h7DA==
X-Gm-Message-State: AOAM532tb0FhVHMXClTmPY3NF8WeBiDKoUB2PP3d974dVkrHUVXfe2bu
	uVtAyX1rVcTdUaJckYHswFWp8R5iZJhvVwoxxzCdsccFow==
X-Google-Smtp-Source: ABdhPJwg8jc80eXl9s4upMEgVReDiy9QEMvbihdGyqf8APOEDsn1pFk7gasYcZGYZvSdDz38v+iQFOqLSS3qMOP5p14=
X-Received: by 2002:a9d:7d96:: with SMTP id j22mr17918113otn.295.1604444001603;
 Tue, 03 Nov 2020 14:53:21 -0800 (PST)
MIME-Version: 1.0
References: <20200927221637.6725-1-akuster808@gmail.com>
In-Reply-To: <20200927221637.6725-1-akuster808@gmail.com>
From: "Ricardo Salveti" <ricardo@foundries.io>
Date: Tue, 3 Nov 2020 19:52:45 -0300
Message-ID: <CAAaKDhEB=gK8gnBiHgBUsnvUtTaP1AP8dRiuVz8-xD2EXCds4A@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH 1/2] softHSM: add pkg
To: akuster <akuster808@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi,

On Sun, Sep 27, 2020 at 7:16 PM akuster <akuster808@gmail.com> wrote:
>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-security/softHSM/softhsm_2.6.1.bb | 30 +++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
>  create mode 100644 recipes-security/softHSM/softhsm_2.6.1.bb

Was going over recipes that were duplicated over layers, and this one
is a newer version of a similar recipe that is already in meta-oe
(which is a dependency of this layer).

Should we drop the one from meta-oe or should we just update that one
with the content from this recipe and then remove from meta-security?

Thanks,
-- 
Ricardo Salveti
