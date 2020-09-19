Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web10.4310.1600485020812912420
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Sep 2020 20:10:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KVFxoJAt;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id q10so4089251qvs.1
        for <yocto@lists.yoctoproject.org>; Fri, 18 Sep 2020 20:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PnJ850L3tFBjhuGFLJdX6WPhBaEC3l3MQ7GoQw3wISE=;
        b=KVFxoJAtk30I+wcuYR00Po26ihqHY3opa0aV6FffwhODahl1IHjTpA3nJy2FVWxVpy
         G5sCcCtTiI7uLKYZ24ObAMRtgDqbYonds8RaSnK1hLPion6THk1I8/lbDDY2gH7sNsK8
         UT0nb/0QSgEUjmWfCjYySAcGgHHHsCALckmi1wU2QDH6zaqdfB1YFTkEX+jw6t1WcvC6
         M8gq5CtGYL91MettaM2fNDeHQz588yQl9gsxEubO/udkRdT2a+gg2T8YGqxpAxhV61+M
         dYx3iI/TQKznWN+PpTN9OzxwpoiNWJT9XLKbBXRum1JcjSPz/yktPimsxJwYhlG/1nuo
         Zvbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PnJ850L3tFBjhuGFLJdX6WPhBaEC3l3MQ7GoQw3wISE=;
        b=C/4Iov4By5cRM6dHmTzz5sOlbJcfMXYK9cxK1PXOEFj7+rP3z19sx89aSdMhYMIYOY
         0rjEhGVvTytwkqFRg5eLX+fQsR4B3gobzmBapekYk5j0ffI21zV4v5CQEpImq0Xdi1KH
         9yaRScz4dEfBQWPvDJox+kIKqwU5dIX4EuwgSrYLIlsYQj3awp6GqB+ejuLg5x2oNLTt
         eIcCG74HJogX4VQu5M12SKCuhkSCxk4xB0jRUM4jkO3fHiArejiokAO+pStovXWS+rYI
         gVaOotVxa8dQp7v7TLQJVwgLgbbh2HJZy1unDsw31vIBb4B3K1Mr2F84ndd3/8bJ8vot
         c0wA==
X-Gm-Message-State: AOAM530iQxygzfw2g6M/Rq7jmr1XHQ18Vo8KOWrq8d9/e4gOSOamLaVs
	TGibb++XBx8LFib+qLI9+60DjYCDaypG8NfOBcE=
X-Google-Smtp-Source: ABdhPJxzTeD87vfQn61gdlK+lgkV9tXXH+C4WOypjRM1VUfxnTIW3KDWIqpVcd6nKoA3fBhpp5YswPDyeU9CDq1hh2Y=
X-Received: by 2002:a05:6214:9c3:: with SMTP id dp3mr19985225qvb.37.1600485019691;
 Fri, 18 Sep 2020 20:10:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1soA8avt3X2CUY7M29aEo5dJZ2enUnEyOYK1Yq1eK9Deew@mail.gmail.com>
 <19470.1600452249763974200@lists.yoctoproject.org>
In-Reply-To: <19470.1600452249763974200@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Sat, 19 Sep 2020 05:10:08 +0200
Message-ID: <CAGAf8Ly1TKgL5JLo41Bi7MKp-TosaRCFr1NMa3DaL5HBMkX=Bg@mail.gmail.com>
Subject: Re: [yocto] #yocto systemd not able to start sshd after a reboot
To: srijan.nandi@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hello Srijan,

Did you recap/look into this sshd.service file?
https://lists.yoctoproject.org/g/yocto/message/49993

Zoran
_______

On Fri, Sep 18, 2020 at 8:07 PM <srijan.nandi@gmail.com> wrote:
>
> Hello Khem,
>
> With the above sshd.service file the sshd daemon fails to start. It gives an error "(code=exited, status=203/EXEC)".
>
> Cannot figure out as to why the systemd for sshd fails to work, while the other systemd files are working perfectly fine.
>
> -=Srijan Nandi
> 
>
