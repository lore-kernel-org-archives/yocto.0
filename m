Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web08.1412.1614715280398167529
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 12:01:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=QT9i1oTb;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.54, mailfrom: steve@sakoman.com)
Received: by mail-wm1-f54.google.com with SMTP id w7so3251930wmb.5
        for <yocto@lists.yoctoproject.org>; Tue, 02 Mar 2021 12:01:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WJUKvfmk0XXxhvNFQHsCA6fyzVWNdGbS82DRg1Kyz2w=;
        b=QT9i1oTbXoZfIwDjcrcAo7xL5tjknNDkw01sR3VSMziqN8zp4rZpyG4ZXN05/xCrDX
         8cgk+O+jh1Kh1TaNxRt/0kpiRDRx33wVn2x5Q1lJjohjtmyW8e0ekdh8PauvE+6vleDD
         ZIErWJxHbsdagf0/lZtUpQbhxnLGHFLA5yxT++FKWMpyv2tU2xtfVjiT+bIwwFA0Zi6S
         KQgTzADLwDNhTpAAYMe+70Tu2bmesLG7rPV7gYF8XJNlG7oIrC9YlVPqIHD7tPqJD2eY
         lvoJ06pfCbW6Vwwb3fLgsZqEaFrV27vke00JV2VMljXWYVw+RkKWbEc96+NbXdTOfbLG
         2IJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WJUKvfmk0XXxhvNFQHsCA6fyzVWNdGbS82DRg1Kyz2w=;
        b=Lnyah8VFKFSZPelTNTyqlU3N+yyrmqAuQyH8CVlrS/SYVSad7du08hrBlvPEw4jg1G
         i83OymNL0NYIiiCWUUSVR34zL8+fH7GAF+5TYAEBiVxyntgrMJlNFWH8nzoafRIIBrgV
         1NY1Mwbng/gnnUnsSt5dSZV13jP3WumuZK3MPokfvR/34qs2mHnLbZzRLMoAHuVKM4hy
         HPNOQ7iWKjrsrusNycfigAd7XRqiCA4b4jjdrTMOXz/gUl8IgZwSxkBEwxANnpHsI0vC
         IJU+haqqHRx3SWLqxw5eUWYG8YbVw6+dtEY9NDEP1HrEXtGgzgehGmPkCSEfHaRqoc1O
         gndw==
X-Gm-Message-State: AOAM531LgFG4NiQnqJRWeL/7qFC384KcLjdj82IVqQhHhBSLKbDmVKx5
	iX9l8G/tTfS9pyl2IYYT6fwYaK11IeK8p+ABJYpMrg==
X-Google-Smtp-Source: ABdhPJzhUiSA+6PM3lULPBwUK2p3eIeLusNj8Nnq4U9umOrMN9f1B71t6OVAlag4VyvTDobF9XW2wYOMfFU4J6PuB8c=
X-Received: by 2002:a1c:1f04:: with SMTP id f4mr5760232wmf.12.1614715278653;
 Tue, 02 Mar 2021 12:01:18 -0800 (PST)
MIME-Version: 1.0
References: <zFb6.1614702126167583420.u32u@lists.yoctoproject.org>
In-Reply-To: <zFb6.1614702126167583420.u32u@lists.yoctoproject.org>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Tue, 2 Mar 2021 10:01:07 -1000
Message-ID: <CAOSpxdbKN5KF9cX2OUoYcEzGig0V1xffjRR0DeM+qy388TvQVA@mail.gmail.com>
Subject: Re: [yocto] Reducing the perl footprint on my image
To: rustyhowell@gmail.com
Cc: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 2, 2021 at 6:26 AM <rustyhowell@gmail.com> wrote:
>
> I have an image that is using debian package management  (PACKAGE_CLASSES = "package_deb").  Because apt and dpkg require perl, perl is being installed in the image.   No problem.  Except that the entire perl stack is 669 packages.

I just took a look at the manifest for one of my images that includes
PACKAGE_CLASSES = "package_deb".  I see the perl package plus 43
perl-module packages.  Are you sure that something else in your images
isn't pulling in all of those other perl-module packages?

Steve

> Most of the packages are super tiny and are probably not needed by apt or dpkg.  Is there a way to strip down the large number of perl packages in the image to just what is needed by apt/dpkg?
> I haven't found anything in the MegaManual yet.
> Thanks in advance.
> 
>
