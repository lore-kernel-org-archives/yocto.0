Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web09.25.1631659947494935726
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Sep 2021 15:52:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=eTBb8i4M;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id w8so786313qvt.0
        for <yocto@lists.yoctoproject.org>; Tue, 14 Sep 2021 15:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=upGE6iitnn69nr7zHSdPpoAqFiE6M+cm/WxIA8ygesY=;
        b=eTBb8i4MxqayODWAvsyCETg0K9w4E5FKKglgRHqovYTphE/fb3crPmWd7VcSTCbga6
         SR0acgdeK4tFqVx4kPv8lm+Tq4oZHAfQFcfjhfyZN+Rn8h1PdX6YoeFQWDlSKLzmiiOv
         ee4Dn8VSRu3IbnIrE8qnLwfuwBy/JgKACAx8zQaeY0tnu9num/YAw/Z2vUXxc7vxoHSD
         ISaYXqwwjLJ5xnFBeHmz7TLqb78IRx8yviGrFOFknPdjBq23MMkDIrtFWPTLhc67jJZs
         WBr5fUPpi/R+cSv3n0hi8ic1FQFCIGxUbNbJ2lt3JaDFY1Ie0ACXMt5YRuJlKRbN/QRA
         vc5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=upGE6iitnn69nr7zHSdPpoAqFiE6M+cm/WxIA8ygesY=;
        b=XKmDGAZ34BrY77P+WgSVSXmv/7+keJahlLKKUuqAH0b6uYgZB8Dv0NEy+zU9gZeQOh
         cRmroeAbqn4umuTeCgfvL6A2D/Ur4em+LnGgd9YrhA17GyP9mDKXrwb6DNvAm9lxuk3i
         lj4/+OVjMEVImjRxnq3KMVdk6PHK4d58fFtV/d1voI7Xo9xXdEF08DvMves4Vw7P2hxA
         xZHRYYEDF/xtwcrgBJhGp+TGFX+lBluovev/hgdvpADWjz+NwkkQBUR1d2DibreetSrn
         1V5EANZ3R9vHOQ7v3kTICGeeIb2+5Uyq8a+5jcaAVPnyH5Hkg9CKy5ew2GqMI9qIUQmm
         0vmw==
X-Gm-Message-State: AOAM531t2CV4zpFWmbi9wFRT+hDrFIc4vKlZjjmbM+oqaaybCY8GvZ3U
	yhMxpImS2TJ5O7d+LQ0yVg0vc7SHtrMcYuRNjFQ=
X-Google-Smtp-Source: ABdhPJyq8sow6lPlj4ze8rcw2ba5TvZuK/UAAj3BzFJJjZjoRtQi1VWCsjPLOh4qukYa8Cy20CbRDHzBAG1TcsNFhgg=
X-Received: by 2002:a0c:c290:: with SMTP id b16mr7927794qvi.64.1631659946488;
 Tue, 14 Sep 2021 15:52:26 -0700 (PDT)
MIME-Version: 1.0
References: <CADphxr35hhr-1JT7YCYz-eG3RxsHv5ATA8AKJy5H9NPENo_q=Q@mail.gmail.com>
 <7283.1631659263423256403@lists.yoctoproject.org>
In-Reply-To: <7283.1631659263423256403@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 14 Sep 2021 15:52:00 -0700
Message-ID: <CAMKF1sqbzn9C1i512H0+gu9fdvosd6A9Cfirwx3TBVWKRdorUw@mail.gmail.com>
Subject: Re: [yocto] multilib SDK
To: Arun <arun.sivakumaran@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Sep 14, 2021 at 3:41 PM Arun <arun.sivakumaran@gmail.com> wrote:
>
> Bumping this question...
>
> Is there a way for me to disable building of 64-bit packages when building SDK with a multilib config? I have no use for 64-bit userspace package artifacts.

I think since kernel is 64bit it might be building some tools and
packages to support kernel builds. Is there a specific need to not
build 64bit userspace completely ?


> 
>
