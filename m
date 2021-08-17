Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
 by mx.groups.io with SMTP id smtpd.web12.44970.1629231270080348411
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 13:14:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xt0IuYqS;
 spf=pass (domain: gmail.com, ip: 209.85.160.179, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f179.google.com with SMTP id r21so10233072qtw.11
        for <yocto@lists.yoctoproject.org>; Tue, 17 Aug 2021 13:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Xmmf75G4XPPRhkDTe+mzLC++Ukbvsei3OSkUDs7S+Bc=;
        b=Xt0IuYqSyt5oBE7J1V4tGJ/2WbJKFvdO69FfTMX1l3/o/eko0rosRSHCUmte22k7XU
         HT9mAZXLR06vLJ1CMmdW1Xa4hkjfHJXYqt0dUc7YCWwA/tnVidb7zBj8pDJiVyZqhmIW
         aLkd+spNNzUDPrYpTyGmcHoTvDniLw+dHp1zYMbHDeEHjBiviB7IYb/rWfXCJReXi+/Y
         02mBV5e29aGyuZ6FACJyFBMbBOuF5SDpJxlBpXLBAF7MqWskolZC8RYUIYMh4j8A9t7M
         q8PwjZV//az0R8pE/fegTpz/WnBe8DngXLbalcpKOu0oLuYtADn6WenTObmng6Qyg3Q9
         9nqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Xmmf75G4XPPRhkDTe+mzLC++Ukbvsei3OSkUDs7S+Bc=;
        b=I8qG8DW17dN3Hg3MHr5Ll0VOWxpnwPKQOB26VrG15I8LB3zRERHaMBKVelWdkuL2V7
         fFL7DymASM8GGscAT59anWbHB9STrpZZuWs6D5jaDgnlIfSTEILXUeebbpnoItQCVNq2
         EtoG1WCQoj/cdCQVKK5d8bKCU99BOWDaNmVLcnfoT6DvBmhIZ1LkE/Kz6jBsDQ6Rr8Df
         S0Xa4DIcu+1eF5C+utlPSkKIialgAUbCpg+qUcAbgQKX3YRHqofzacR5PmqrbAvPyWdg
         J9tY8r0wUYNxUdTujdNFNfJiCzZpjOpF4nGKCzAylGUpCP2zN9n11qtNc5QIqbVbYlTT
         4MDQ==
X-Gm-Message-State: AOAM533nHkSSBtmBwKpAT7dBUaGBqKXkaFT104r06QYP/Oa82gX8pXHQ
	3MDYbqMN+Ui8sXdbrAxe8op3Ureic10X6DJkJWY=
X-Google-Smtp-Source: ABdhPJwq/gAVCZg5ZBRaMfLg0iQOFP3I+xIgUR7G2FiBHG0vniWAWOnSpeIqxtdpv1wsrF/WAXW271TliiCxXxTGE30=
X-Received: by 2002:ac8:7d48:: with SMTP id h8mr4725908qtb.299.1629231269183;
 Tue, 17 Aug 2021 13:14:29 -0700 (PDT)
MIME-Version: 1.0
References: <195aff34-e88c-f8cb-ee51-5acbb16fa782@gmail.com> <5012.1629221783349156471@lists.yoctoproject.org>
In-Reply-To: <5012.1629221783349156471@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 17 Aug 2021 13:14:03 -0700
Message-ID: <CAMKF1soOuqJqZSxOmnZu-J29+xtusaWiNKeebVK8jHd8gPdAXg@mail.gmail.com>
Subject: Re: [yocto] Getting bitbake error after 54% recipes are baked. #dunfell #yocto
To: vishal.rana118@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Aug 17, 2021 at 10:36 AM <vishal.rana118@gmail.com> wrote:
>
> Previously SDRAM was 3 GB allocated.
>
> After changing SDRAM to 4 GB.
> then trying to build/make/bitbake..

keep in mind that based upon how many vcores you allocate to VM will
determine memory pressure
as well. So if you have 2 cores perhaps 4GB is ok or maybe even 4
cores might workout ok but some bigger packages like
chromium etc. need minimal 16GB RAM to build.

>
> getting new error i.e.
> Unable to connect to bitbake server

this seems that it finds bitbake is still running and its trying to
reconnect to it. Maybe just reboot the box and try again

> 
>
