Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
 by mx.groups.io with SMTP id smtpd.web10.12703.1599843440186804536
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Sep 2020 09:57:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aG6PIaCI;
 spf=pass (domain: gmail.com, ip: 209.85.160.173, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f173.google.com with SMTP id r8so8338787qtp.13
        for <yocto@lists.yoctoproject.org>; Fri, 11 Sep 2020 09:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Q8AhpkZxERN0AR+3SljtG44PzxdbOdgHasKP071x6Yc=;
        b=aG6PIaCIX+NPy8c6jt5RDzArlXM4JrWdphntAD7tWT0ACNhm58LsfOBPcSDpxJGoLU
         uguNlzBqS8Xg9Lo72ZU/7c+/qyPCZTEcbnJWX9Qf1+cZuwxVUyhHMQOA3tmmEA32ar79
         VR1j7NU/V7v4/GgfjivWYob1MN4ATKWNIviJcoH3SoavSPt58nwoJAIl2dZkNZ4dnf0d
         ODZAnXbyH4pdseBhhrNoNkrmYMzsdyQOGJ+8GylNlnMSrUnHgZ3PZ7YACMNLfWnC7KUw
         zhUq5x/DxVbIO5TeDwJEhob6sALV7IIr0vXFzVH9X+8jM302lLoGdmCxmYRePyoLcSnd
         XxaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Q8AhpkZxERN0AR+3SljtG44PzxdbOdgHasKP071x6Yc=;
        b=niRe6QyG42ofKaC1WR+2DsIQoVRqKaaa3Y3f1hq3XBOTekiQjMq1io/f0LE0StSvtr
         Q9OrvH37gLDoVrvA1EXYSrOJ57lium0ic+EpEldXYSl8Cfa/vIMgSJsNbBAe6Ty3Xljo
         6hdluE6qLx528eyFQxAvq2GHHAVZjY6g+cdfN3Es2VI8VHz6tRMaNTH98VR6I7hMuCLk
         LflUOTu+UzxpshM43lVK5EaCMYCWmLQlZFwrdzMP74c41XE6Cj151MSShKCvNH7asi6z
         Z66XU7WAbNnvGYYEqH5+GSZng0hjvy9pGMSEr7px7HF+urpWYfSEBJVtOqE6AImxzRne
         DpSw==
X-Gm-Message-State: AOAM531SIU+F5CO66m5lfSxKc2YB5JmAf3+OuV7ZBWxPqsT05ecZ6L+j
	USvWJTxioMQ3XPIHtdiSIUCUnnwXxHimWyAgZ5A=
X-Google-Smtp-Source: ABdhPJxVyAcojiBxTyq4VGjbyCHxJ0GZWtMqzaIG2e/C5aH5W/31IpMGcJc21WLmLrYKAWoIqmXlX0JyFew97XPwFYg=
X-Received: by 2002:ac8:3fcb:: with SMTP id v11mr2760121qtk.80.1599843439143;
 Fri, 11 Sep 2020 09:57:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAHwRhWb9uMoJW8kkQse3z4v1gDY9EqMyyrrdcA3i=Mt62LWaKA@mail.gmail.com>
In-Reply-To: <CAHwRhWb9uMoJW8kkQse3z4v1gDY9EqMyyrrdcA3i=Mt62LWaKA@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 11 Sep 2020 09:56:53 -0700
Message-ID: <CAMKF1srYqhmX8KkspxZAc4uQKdYh5DnDtG2z_DBq4DRgRzzA2A@mail.gmail.com>
Subject: Re: [yocto] vwdial
To: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Fri, Sep 11, 2020 at 1:54 AM Zoltan Kerenyi Nagy
<kerenyi.nagy.zoltan@gmail.com> wrote:
>
> I changed the vwdial recipy file for what I've found on openembedded.
> I think now the error is only with wvstreams
>
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing PROVIDES 'wvstreams' (but /home/kerenyiz/oe-core/build/../stuff/meta-openembedded/meta-oe/recipes-connectivity/wvdial/wvdial_1.61.bb DEPENDS on or otherwise requires it)
> ERROR: wvstreams was skipped: Recipe is blacklisted: BROKEN: fails to build with gcc-6 - the recipe will be removed on 2017-09-01 unless the issue is fixed

its telling the problem clearly above. So remove it from the exclusion
list and then see what needs to be fixed

> NOTE: Runtime target 'wvdial' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['wvdial', 'wvstreams']
> ERROR: Required build target 'core-image-barix-sdk' has no buildable providers.
> Missing or unbuildable dependency chain was: ['core-image-barix-sdk', 'wvdial', 'wvstreams']
> 
