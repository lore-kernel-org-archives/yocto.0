Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
 by mx.groups.io with SMTP id smtpd.web11.5764.1583792907532845801
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Mar 2020 15:28:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=OZL6qG11;
 spf=pass (domain: gmail.com, ip: 209.85.222.44, mailfrom: aljoscha.lautenbach@gmail.com)
Received: by mail-ua1-f44.google.com with SMTP id q17so3937048uao.12
        for <yocto@lists.yoctoproject.org>; Mon, 09 Mar 2020 15:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=I5tqOO5jvKpR9ZNV37Ucr20M/w+JvlQGOclQ3eePnTA=;
        b=OZL6qG11OMEc9mpFVbQ3LF9AH1OzkJqr9F90a094XWZ5bMUrq+ncBRe98b7JAHJWwv
         QNWH2ptUwu7lgHbo5O5iLIPgCM40zLkV2i3NjyOUzDvFNudbZsuZMwhtT3yf42oj44F6
         K6VM3OwOwpeJFxVd2lwiQYpaiRAcA/6bEA+eVxLnckiY7YS86mfzbNacG5hj9W/BzQ/A
         FlC6QJXnlfVmaMFFYCaQi1Shmd2L3FffheH9i7IjwM4SMXElZ3cG4c/kBPTUzXkY9B1B
         NLZirNXjjUIsTNcitCj9e/1uortgzWxxzF21CtZ4JcOxozk3NeboLhU2YuKv95nOsigg
         NrGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=I5tqOO5jvKpR9ZNV37Ucr20M/w+JvlQGOclQ3eePnTA=;
        b=eX/f07SaLg4iwwFrRv1nSLGLdlbgZsgl/+hE9RB5dLAbcC1gVFtnJZTFYMb2tj2Ois
         Mm8AEpLGB4+mXLKSjFN0Dl6NvEsfVCgthuJXbIfR/x2zoahGby/rDQVpvFudr2hkCYb2
         fB6DCnsd9+gn/q6ZuR0VoFc6toRvbx2hKJn7nzrqRa2nc1gN+cxlrio++l31q40oJS5y
         DNztnrva3vvH8zXaSPT3fAQDqtZge8ri2MFGstkan/tOk8FkOePT8Vh0w3Yem29LHZvP
         sfma6h4A8mmIf7Ag1LY7vn2oOdt2dI3BV+YrL9w39e9CbLE5y9MylXbWHaJBaFIxDjvu
         bEhQ==
X-Gm-Message-State: ANhLgQ0z88xRP7YX1uCiGsjzbjRZlrFOYTGB/XS6jQ5GoOYmxYnHcrkV
	KONOQY8QBtKyxHSRt6EZj2+Her//D7tV+06HBy8=
X-Google-Smtp-Source: ADFU+vvDxVZSVzRWVe1efPvvvP17gSR2dNG9r5+h1eQvDK1h+faKrce6pFO3guakNOt1glWY5U7UBzP4EC7sdQ1aPoo=
X-Received: by 2002:ab0:2a1:: with SMTP id 30mr1139333uah.16.1583792906519;
 Mon, 09 Mar 2020 15:28:26 -0700 (PDT)
MIME-Version: 1.0
References: <15F8A029CD47E18B.3851@lists.yoctoproject.org> <CA+yZB6ZiLuxr2AybgM_sJRrhvWiOGJQ62hHvdRbkh0jnvdesPw@mail.gmail.com>
 <CADkTA4OVEzHQRFC=26iJef-POKZjAd0L51c_1M61kB-1Rs3FRA@mail.gmail.com>
In-Reply-To: <CADkTA4OVEzHQRFC=26iJef-POKZjAd0L51c_1M61kB-1Rs3FRA@mail.gmail.com>
From: "Aljoscha Lautenbach" <aljoscha.lautenbach@gmail.com>
Date: Mon, 9 Mar 2020 23:28:15 +0100
Message-ID: <CA+yZB6Zdk_ohZHAO+RM3=vvkP2GW3aOu8QkKctDARmRkHiHDdg@mail.gmail.com>
Subject: Re: [yocto] Building xen-image-minmal for raspberrypi3-64: kernel-module-xen-* not being built
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

> You'd be better off asking these questions on the meta-virtualization
> mailing list. That's where you'll find the Xen folks.

Thanks, I'll direct any follow-up questions regarding Xen there.

> But as for the kernel options, it depends on what kernel you are
> using, release, etc.  Last I checked, the raspberrypi wouldn't
> directly use the fragments from meta-virt, so yes, you'd need to
> ensure they are set in your own layer/defconfig.

Ahh, thank you, you managed to switch on the light bulb! :)
Checking the kernel recipes I see now that meta-virt has a
linux-yocto_4.19.bbappend file, whereas meta-raspberrypi uses
linux-raspberrypi_4.19.bb; so as you said, the meta-virt configuration
is never applied due to different versions. Being new to yocto I did
not make that connection immediately, I guess I did miss the obvious.
;)

If I understand you correctly, I need to add a
linux-raspberrypi_4.19.bbappend file in my own layer that applies the
Xen configuration fragments.
That makes sense, thanks again!

Best regards,
Aljoscha
