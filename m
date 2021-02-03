Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web12.4544.1612323825859716056
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Feb 2021 19:43:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZxBPuY/X;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id h21so11050926qvb.8
        for <yocto@lists.yoctoproject.org>; Tue, 02 Feb 2021 19:43:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mGohtvWN0lluU0hBemzHvL4a15/cC7wvjV82tyw71Ww=;
        b=ZxBPuY/XqgMSbD3yL78xyFRo21NfFsXxcirSSV7cotXzwJlecJ1RQ8L6gFl9nd0KID
         ZrvE0YQiXhYePFZ7Ga//DRG6gyKY1e4UDK9i1lSDANbkl1qS4i7vS1LHES8mPIxWGTo+
         xeHdr1lEX1cLtsv86GwtSYHl40e3krOsSIZ8Xf59KpoUg6m18hwHdrB0xKldGQ2WV5e5
         OLIJpunTthceH+2cNlUzjqfwAi9zAyc6qxMb4os0HCiktvi6yXlHS1gepqMy8pOygNGE
         VR8b73CtBwzcdHaxrRKSepd+yBF3Y8JWtDpKaO8VrO7/JGQB8xg8kJef6N8ueOQEiMuG
         5NlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mGohtvWN0lluU0hBemzHvL4a15/cC7wvjV82tyw71Ww=;
        b=HQs0cgJQkgww7Ye+jhaSS0LhBPofXlYdYjh7U0iKoSUitSBvwvGxnaZlBE6UPID1Ut
         Jr8SKOkRcZ4ioeu8CFRClE+TWd/6lrXOCL61/Uoi8ROtPSFAWx8hVUc72247kR9Q5Vjo
         c+z39VLgN+epMksB+/zzJapsgl3aqOWk9ddzhFBfROrspyt9oSM/rOvtd45OhwEkXtt+
         BXix5ykgegUUVqJqCF1aFf4WafpPGfMF6PMXfSxTMe8q6krS2Bd9+GMBmB/s4/u1+7Xa
         LV9pjPbpsqRtYsNEcWmpVVVI00b+bp3aS+e/CCxTpdga3cXqwDuZ1UTeQuNxvMuBOqfR
         BwtQ==
X-Gm-Message-State: AOAM532GjIxx1rNGkdN81Sx4XGoVUsqNRdyii75dy+Sd2v4PH/EUdicW
	aoCfNHYnqNU3152qv7h6UBNsK+IXf5Nat4tDWg0=
X-Google-Smtp-Source: ABdhPJxnpSqtjn8HL7nmmRFKsfKwcxAmpYVblbVDa4U3V9x3mLWuxcWKB8CTIQF7JnI6EyPbWiULtlFjRtF4ZoVstYI=
X-Received: by 2002:a05:6214:571:: with SMTP id cj17mr1245902qvb.38.1612323825076;
 Tue, 02 Feb 2021 19:43:45 -0800 (PST)
MIME-Version: 1.0
References: <CACX=-dV8QYoF1i7kq_scLejiQfEfpGBoNz5vNj4op1_dMSxoAw@mail.gmail.com>
In-Reply-To: <CACX=-dV8QYoF1i7kq_scLejiQfEfpGBoNz5vNj4op1_dMSxoAw@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 2 Feb 2021 19:43:19 -0800
Message-ID: <CAMKF1sq8nK+vq8339h3F_Os2DoCaVRRzEk2L-wifSqOJ=hN2kg@mail.gmail.com>
Subject: Re: [yocto] Regarding YOCTO
To: U RAVI KUMAR <uppadaravi2511@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Look at something like
https://github.com/meta-qt5/meta-qt5/tree/master/recipes-qt/qt-kiosk-browser

On Sat, Jan 30, 2021 at 8:13 PM U RAVI KUMAR <uppadaravi2511@gmail.com> wrote:
>
> Hello folks,
>
>  I want to build a qtweb browser using the QT creator, And embed the browser in  the core-image-sato.Can anyone pls suggest to me is it possible to do that. If yes pls guide me.
>
> Thanks,
> RAVI_UPPADA
>
> 
>
