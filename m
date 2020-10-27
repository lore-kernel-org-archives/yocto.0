Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web09.1936.1603825290531480387
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Oct 2020 12:01:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oFav4hwA;
 spf=pass (domain: gmail.com, ip: 209.85.160.175, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f175.google.com with SMTP id f93so1809583qtb.10
        for <yocto@lists.yoctoproject.org>; Tue, 27 Oct 2020 12:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ttaJ1XRaHvdO7OeaI6MdhP8O4yn7I3CLW2YV5H89RCk=;
        b=oFav4hwAFTsQxr9MZy9Y/NTLo0asL+zYw2t36g2y6HyISW32Cn1bsRz7LtcPWg1PRi
         8SHAck3SwXCZqvgF+LdWBGOWYmX576Xg6IycS4lC8Zv82H4LLFmQhEsBB/ph4tBd/szg
         8yGpzBDxilFZ9v/OCfMos2HGq5yt0jCDjyeTACZ0KYPQMp4lkjaQ2KWAkkO85eSpNvpt
         kh2/UcbgcgjZHbTxLAyP4As4nUaLgpIlUTNN8cP/RddIXl+oh26dxOv8hIZOoD6fK7tC
         ucuYwyDW2uSv/aDQIUK8/RXrWtJNPfPF3wppI/QpIIn8KiUP9FHhROCXT9DLkNZEB8a/
         7xVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ttaJ1XRaHvdO7OeaI6MdhP8O4yn7I3CLW2YV5H89RCk=;
        b=hc5nblytoroWxe34N2rikvXhFaLiDmnr5Xo2PU98ZwC59TCuniA3H5wEUSi0+LkWYe
         rFlnP/3OJhUABKY5IscIXDbEyAOiQZxqFiAhUwfA/vqe5iBFzdjF6XKeug/rJaXt92qJ
         qSjdR0jsDmG1SaCsctWOAu0tCTjsjRdTC2l2qRai9H8t84AwJO3jo8VDkAn/sdPAuYDv
         AnLXfo6O1rWa2yomqmj/DuSQXksee3ddsHySyAruOaUc8ICoHcH4RH30g1PbOpVlnc8B
         SvdHoRFvpGFsnst84RIfCxMWL6twire3VoKayf7KMg33QtqvtD13wTKE5hCUhyE6+7tz
         oQJQ==
X-Gm-Message-State: AOAM533Es0jZtwKMBdCM08R7XFkxws0YXrTu/s2x0FIVHtSfvnciug5o
	X+qnBWeMa/V/+qtKF470v94uZSkSmnsapRHJLdE=
X-Google-Smtp-Source: ABdhPJz6mPqeEIl0LXcsNGWeyXPVh5zkVrjLsCNF/VYw3BHv1bEzjvcU6JPIomaaSfQJgcS0DF/SrU8EsFE+QSvDzrM=
X-Received: by 2002:ac8:3975:: with SMTP id t50mr3678176qtb.53.1603825289633;
 Tue, 27 Oct 2020 12:01:29 -0700 (PDT)
MIME-Version: 1.0
References: <0187eef8-2c60-1faf-7b23-7b0e096b69a1@gmail.com> <20269.1603816872487207264@lists.yoctoproject.org>
In-Reply-To: <20269.1603816872487207264@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 27 Oct 2020 12:01:03 -0700
Message-ID: <CAMKF1sruEEgR+fOBMJrsv0T__KTtpMYwjDrH1+59Ke3dcDQ_Kw@mail.gmail.com>
Subject: Re: [yocto] Cross compilation error finding libraries
To: Bel Hadj Salem Talel <bhstalel@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 27, 2020 at 9:41 AM Bel Hadj Salem Talel <bhstalel@gmail.com> wrote:
>
> Hi,
>
> Thanks for the reply.
> Setting LD to $CC didn't work as well.

Pass LDFLAGS as CLFAGS as well, you need to use --syroot option during
link as well

> 
>
