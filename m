Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web12.6317.1585651644445658579
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Mar 2020 03:47:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=aAIOezOv;
 spf=pass (domain: burtonini.com, ip: 209.85.208.174, mailfrom: ross@burtonini.com)
Received: by mail-lj1-f174.google.com with SMTP id w1so21429235ljh.5
        for <yocto@lists.yoctoproject.org>; Tue, 31 Mar 2020 03:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PqPYAaKFPXnngYXQNPXh/9DEs/d5vfFyvQkNi/w6uqE=;
        b=aAIOezOvJJjLAC0q1qOI1/uGVlhbTDIwCQpGr03OjxHgzumKTqrbm3PnjdsDVgcrn9
         56hCDA0B2Cy5gp1hbP1OtBKp1fPbBb/fDS7vzKRYLVDpcIzxm6YYRNMIH9lQRmZqLthq
         +U1/4NDw05pau33PGe10Ot3uuvoekVkoSJq5PiXNXa5AyMfxhlNutax6uixXCqUxfQv6
         LzQCaS2VbLtx2UGrROvC+DlSXej/CS235XuxiVlFezBOYILCrEROHmsRn5SqugW8Xb32
         ZCUqpZ3Wm88HNf10QDQHKZsAJ2f9Xk3H2nF0QaLykXaRrFTAmyP9jIEVhanN9yUm4zla
         6hFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PqPYAaKFPXnngYXQNPXh/9DEs/d5vfFyvQkNi/w6uqE=;
        b=D8zTfzOg8r0kKqYJ71sGrAHu86i0qzvlYSrCe5wYJgWrmeoW3v+1PLfchb/S216KzF
         WccEQs1etj4XHryccYnqW/ypOvSG3CBPTyI9aAAVGaniJ92GycBknzuldKi7bUVixOZR
         DYUfMboq5b9uBAA516IY9o6qql7vOtH6cErTOuVAXwNZajyQ2cOuPCTAphhA2fOvA+X/
         PvWfwI/qBC7uwZgx5nRp8B5XkekuceTgq7gVeVMPX4LscUDvNvQAerFTbA6VXKEG2yMm
         tam0zUuOu8Z01daDZC5zXNZR2bqyp3gROnuZ5FxecshbsZs3R04z8bau/kT+QSiN1DZR
         lFeg==
X-Gm-Message-State: AGi0PubbX0Zt3GmgpM8D4Qo0+iK6FPr463drS/lErLKtWkRyVSJk2YvU
	3nJPOXEajJ8Qeg36iCz9WHgTfdTo7JxVOeCvMIEL7g==
X-Google-Smtp-Source: APiQypKzSOUVGR6o/ZQMOjA1Ld0YkoxletT54NvTf3FxldYQkGkWWHsuCyvINSbwoRicIWTm2PJCkt2WVmb6pjWw8QU=
X-Received: by 2002:a2e:8246:: with SMTP id j6mr9614837ljh.162.1585651642481;
 Tue, 31 Mar 2020 03:47:22 -0700 (PDT)
MIME-Version: 1.0
References: <5f89ccfc.1f85d2.1712e3f6b72.Coremail.nus1998@yeah.net>
 <CAAnfSTsvHjbhXMORbTJX0=WLDT2O0GB1HExU2=bua655Skcddw@mail.gmail.com> <77e62f97.1f90e3.1712fdf0bc5.Coremail.nus1998@yeah.net>
In-Reply-To: <77e62f97.1f90e3.1712fdf0bc5.Coremail.nus1998@yeah.net>
From: "Ross Burton" <ross@burtonini.com>
Date: Tue, 31 Mar 2020 11:47:11 +0100
Message-ID: <CAAnfSTuantnLZmnvHJHiRVAX1ri5ivzriqddX7+zJtvaOKE7eA@mail.gmail.com>
Subject: Re: [yocto] duplicate files in tmp
To: nus1998 <nus1998@yeah.net>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 31 Mar 2020 at 10:14, nus1998 <nus1998@yeah.net> wrote:
> Well, Ubuntu doesn't tell any difference between a normal file and a hard link file on gui file explore, verified by "ls -i". thanks<br/><br/>B.R.<br/>Nus

Right.  You'll need to use 'ls -l':

$ touch foo
$ ls -l foo
-rw-r--r-- 1 ross staff 0 Mar 31 11:46 foo
$ ln foo bar
$ ls -l foo bar
-rw-r--r-- 2 ross staff 0 Mar 31 11:46 bar
-rw-r--r-- 2 ross staff 0 Mar 31 11:46 foo

The second column is 'link count'.  If you've never encountered hard
links before, look them up.
Ross
