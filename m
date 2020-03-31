Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web12.5162.1585645118618890921
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Mar 2020 01:58:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=jEIR1mj3;
 spf=pass (domain: burtonini.com, ip: 209.85.208.170, mailfrom: ross@burtonini.com)
Received: by mail-lj1-f170.google.com with SMTP id 19so21099377ljj.7
        for <yocto@lists.yoctoproject.org>; Tue, 31 Mar 2020 01:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=FsjhKb/0I3eZS7fFz0GqHEJsrBxkErxry6tdb5EpG+U=;
        b=jEIR1mj3WsELzK6YF8zWW7K+9hLQLDC7+vdq/TE/2K9e70HLM03eLN4usNTEh96T+4
         rZEENNUWRc3F99lQwUKlQV1Nzp+4STyIzkrsShqfyf6okaSLbJWOBI18QhyXhrhIchQW
         gYbFZxf9f4GKTo1GR5HDJe8ipJ5ge50/Uv3gQf5laH2sS36UQgKmF0rOvTmrNTim0arL
         yvcPfbTVIwlCQn5yHYUlkq7JTkBnXJTSSO7zFSyYUt+j1qCULypbwoIM5kh0cNxK15QZ
         0zvUthnxGam2v+mxb18vzgYu/3s+AmBsSBt5f/Q4X4UqMQCpCZFmSto1EBmxymKPbKcx
         fzdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=FsjhKb/0I3eZS7fFz0GqHEJsrBxkErxry6tdb5EpG+U=;
        b=m+1FpDxCkQVxFQ1sarQ691D2v2WCrn7dJMPYjuUYjyS+0yoG+OP6qFKw70js/HfrCf
         pvW7QkQqOoZTitqxPkFM3VaGuoscaduBa45/Z4oj1mKlFvtzf9fhT0yzvWKnqlEW0GVa
         eVZxhslsLEIfZW6aZaJSekJPMnEFplRbqo2wkpxujNe2FZrwB5VZZkUZyG1AbcsZVtuA
         PbQB7vzi6zAeScyLikyAx3j90eoeFi1qOD9SU4AOdFmtdh6sLmZl6quDIwVxg5w2e43k
         KYV5H7/IQ/OQiAsZ/avSBM4vIl96pHX2s5pC5/AtvQ4XvXRMLLMQKGEnSUEi7dYqUDj6
         5zag==
X-Gm-Message-State: AGi0PubvUGyDDn2xDFcjZl70CYQ1/aF3e504shwbsIzg64E3A0fdhHm6
	smDrkXxvoUfNm4oU41bsFdKvyazbJuGEyIF8zIYGputIUYM=
X-Google-Smtp-Source: APiQypJmqPYv2grBWYqjbffgcHF+caFZZu5WkzHkrkqS3cEXJS5rFpDxkdelfOzV74qkS8LenzNqNJgKse1FQ3kbLqo=
X-Received: by 2002:a2e:878a:: with SMTP id n10mr9416951lji.130.1585645116779;
 Tue, 31 Mar 2020 01:58:36 -0700 (PDT)
MIME-Version: 1.0
References: <5f89ccfc.1f85d2.1712e3f6b72.Coremail.nus1998@yeah.net>
In-Reply-To: <5f89ccfc.1f85d2.1712e3f6b72.Coremail.nus1998@yeah.net>
From: "Ross Burton" <ross@burtonini.com>
Date: Tue, 31 Mar 2020 09:58:26 +0100
Message-ID: <CAAnfSTsvHjbhXMORbTJX0=WLDT2O0GB1HExU2=bua655Skcddw@mail.gmail.com>
Subject: Re: [yocto] duplicate files in tmp
To: nus1998 <nus1998@yeah.net>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 31 Mar 2020 at 09:57, nus1998 <nus1998@yeah.net> wrote:
> When I bitbaked the system, I found there are a lot of duplicate files in=
 <build>/tmp, for example, there is a directory named "recipe-sysroot-nativ=
e" in every package, which directory is serveral hundreds of MB in size. I'=
m confused that why don't use link file type to instead of duplicate copies=
, which can save tens of GB size. I know that disk capacity should not be a=
 concern but it's always welcome to have a small size project.

They are links, but hardlinks not softlinks for efficiency and even
less disk usage.

Ross
