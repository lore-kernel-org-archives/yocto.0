Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web11.6889.1631767870487273274
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Sep 2021 21:51:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bUvELfIg;
 spf=pass (domain: gmail.com, ip: 209.85.160.172, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f172.google.com with SMTP id w17so4485206qta.9
        for <yocto@lists.yoctoproject.org>; Wed, 15 Sep 2021 21:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=jnoql0zYQKp9tUilXt67rjZFcKkr68hMaHA2nRmIGsQ=;
        b=bUvELfIgcGkKFGxStKTk59GEgoSGad2YSWxx1ATXo0rbEyAQsr90WuV4UJP8OGK/yI
         2UlQs8ELi7ZNPJM3TsQDK6eurLOJdmePWguhHOXnxHW4WxLIg3JFbeKtf3K1VTM9g+T2
         BbUzZLpMRGAyW2jSB5Xvt5bNYgTRPpL0giFKc0039unHqiQCSVUXf4iufjW+YPZFI1dQ
         ffmcbusX8ib91F1ogZdOtVuWRRcQnKwr6SHUDtFrQr0+sdfCiaw4aiiEzfSrNby/9VGd
         iNyw2MHu6E+4L/Fp3GSqLzBa1gCRTVKjpp1P2t78GDK/fMDRK6TFtE60WN7khH1Q9Ru1
         PSzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=jnoql0zYQKp9tUilXt67rjZFcKkr68hMaHA2nRmIGsQ=;
        b=p3Kwf4LpKcKQTv7n1kxM/EQbtZ77CSpo1mE4NGL/gGtGzRRANbclxPD48TIOMRyDJQ
         fY4s/hJhxAD+pqw3vmQQQTpg4bDl01wzYswiua1lq8YQ3FYDkcWoSAq54HBNNEDENjvJ
         PQVEP75khVS8B9xkQuvA4VC+oGBHMqW9CCh+wyshpGkvdFsQ3FRelAUDcR6Cd0wOkyKA
         rFQqLWHxtHLr/JL8Q/BXWIMG0qWU251DKtLp2M+W6b2kGN9fEPA/1Gb4r/pcmq3sPqI+
         4CL6taXUGeCSIvp2AHPVc7q1dsxBj7aQ3eN91I2MJvEKaZeixK8R9s+gnQuh8Hl//vNu
         y2Ug==
X-Gm-Message-State: AOAM531OqqsHukOCh6efkAlWTuuxJRQMX+wt30bHASj3ycREhtKcXhMs
	O8lwGTYrwtovkT/1dgYw0lRJZnlZ4lTgbUuCigY=
X-Google-Smtp-Source: ABdhPJzQQ7ovLiCMAST7Rx5Go9m2R1xG+W793srOl528+EAFOGOiom2G3bJY9bgfFyBDAtX7kMtLRrMnSIclon8/Kn0=
X-Received: by 2002:ac8:5d8a:: with SMTP id d10mr3279600qtx.225.1631767869365;
 Wed, 15 Sep 2021 21:51:09 -0700 (PDT)
MIME-Version: 1.0
References: <ec02b6cfb338b5b2ca3242ecfd73ff9228e42129.camel@linuxfoundation.org>
 <12063.1631766857327604520@lists.yoctoproject.org>
In-Reply-To: <12063.1631766857327604520@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 15 Sep 2021 21:50:43 -0700
Message-ID: <CAMKF1srGFp_t5aZOh=Hd_479JiqFY6=g4pwoXbmhLf+O2M_UYQ@mail.gmail.com>
Subject: Re: [yocto] Sharing sstate cache across build nodes
To: Rusty Howell <rustyhowell@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 15, 2021 at 9:34 PM Rusty Howell <rustyhowell@gmail.com> wrote:
>
> Thanks for the replies, Richard.
>
> Can SSTATE_DIR be shared across build hosts with different OS's  (Ubuntu =
18.04, ubuntu 20.04, etc, RHEL)?

yes if you use uninative ( which is default in poky) then it should be
able to share across multiple build hosts.

>
> Our build hosts are somewhat ephemeral.  Occasionally we need to swap out=
 a build host for another one. So to bring on a new fresh build host and ha=
ve it cooperate correctly with the other build hosts and the PR server, wha=
t does it need?  I understand having the NFS mounted SSTATE_DIR, and using =
the PRSERV_HOST variable set correctly. But what else?  Does the new build =
host need access to a shared PERSISTENT_DIR or a shared BUILDHISTORY_DIR?
>
> What happens if the shared SSTATE cache get corrupted and has to be delet=
ed?   Won't that cause all the PR server values to reset?  We just want to =
make sure we know how to recover from a situation like that.

if you preserve PR server data then you should be good. sstate can be
regenerated.

> Thanks a bunch.
> Rusty
>=20
>
