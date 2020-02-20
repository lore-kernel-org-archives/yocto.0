Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.392.1582221807231288299
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 10:03:27 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=PLpSWRI+;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A125E016B7; Thu, 20 Feb 2020 10:03:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.216.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com [209.85.216.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2860E016B5
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 10:03:24 -0800 (PST)
Received: by mail-pj1-f67.google.com with SMTP id gv17so1217319pjb.1
        for <yocto@yoctoproject.org>; Thu, 20 Feb 2020 10:03:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LwmpqQVDkxHOxFBhdgCxjG1nl5+z2CaqtMAxBUZwzSM=;
        b=PLpSWRI+IAE2vLkkTgqDpyHIyK0Nd6sWL4xSz7ELW1sWdjTyHA/Emu19kHhAmJlMEz
         H+qASA+AEGxYgiBdYJEt/66P1jM6L1XupHAqqJG3zZqgyioQjoi4VLqPmWpw5IkhpeG7
         Ko/NGetVzC0H9JlOMRE9ZnjvY/83L8GgiWApv+kcYcyIAun4Jn4edCFfCUAbcmdtSmvX
         +tYNak4J9BASnopljIgwKqkQK+k6/Sv1ZuFsELMx26AYqH7hbTA+15roMyu3N0WxeycB
         I3DCnuYtP76MuV1M7egqnbtKPvBm6JQAEr3V1HuxnKbsiTXxXTGqQZCPv/whjgIHtYqu
         D5gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LwmpqQVDkxHOxFBhdgCxjG1nl5+z2CaqtMAxBUZwzSM=;
        b=fw4GBXxX2qSFcP2JpL1wwibvhF4qOo5Z5Y88vm2vZizyuDR4aAb8jbnJhbX0RYuhUv
         sDF+QOGUGBtyRfSpMJDIkjg8/x7OgSKX1M1SNowANvmYfEHA7txyQIzB3NLJW13/sCmm
         UZCX/IF43kpSdQIAaYKPrnVSdoVVyPQ5Rn7WMabPvEnH1HHdqsUQaSKxWPzbIYYk/gcQ
         vNaRi9TalGb61xY4/83irhdryvgxpe9rjUNbF03ZlNbctsjDlQtcrnwNmYbAbdrIhdxf
         DjjXUNi+BVQpCQjC6D4t6QPAC3O1lyqjZT2zU8m5fEtG3QkQFZw07QZZMbrFyFeuHjA+
         J7DA==
X-Gm-Message-State: APjAAAWQnsjDghrCYIb8Q/dDFZJrQ9EGQWI8SEyqxI0A7ndGCDFQ/zkz
	ja45L3tiun2powCrU02dxJ0sr7R5V28=
X-Google-Smtp-Source: APXvYqxMJNT4kvqkgDmG4ck3ezzlhxF2tL1IcqlG8x3eBokVHW5y8tIpSyzevgHvvDTLkxxJAxMl2g==
X-Received: by 2002:a17:902:bc8a:: with SMTP id bb10mr31403526plb.102.1582221803281;
        Thu, 20 Feb 2020 10:03:23 -0800 (PST)
Received: from ?IPv6:2601:646:9200:4e0:94fc:1e40:9cc4:7d04? ([2601:646:9200:4e0:94fc:1e40:9cc4:7d04])
        by smtp.gmail.com with ESMTPSA id q4sm231614pfl.175.2020.02.20.10.03.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 10:03:22 -0800 (PST)
Subject: Re: [yocto] [psplash][PATCH 1/1] psplash-fb: Avoid racing issues on reading fb0
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@yoctoproject.org
References: <20200213103000.1594-1-andrei@gherzan.ro>
 <6f979b87-756e-207f-0500-a83c6afa07f6@gmail.com>
 <CAK18fxGX5O-yKSJPfFhsAahpowJVMbNmY_9waMxVjOKTFLeGoA@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <4bc7a420-001a-dd3e-c89a-45821727f9c7@gmail.com>
Date: Thu, 20 Feb 2020 10:03:21 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAK18fxGX5O-yKSJPfFhsAahpowJVMbNmY_9waMxVjOKTFLeGoA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable



On 2/20/20 9:58 AM, Andrei Gherzan wrote:
> Hi,
>=20
> On Fri, Feb 14, 2020 at 7:32 AM Khem Raj <raj.khem@gmail.com=20
> <mailto:raj.khem@gmail.com>> wrote:
>=20
>     On 2/13/20 2:30 AM, Andrei Gherzan wrote:
>      > When starting psplash as early as possible in the boot process,
>     the fb
>      > device node might not be ready. This patch adds a loop on readin=
g the
>      > fb0 device with a timeout of 5 seconds.
>      >
>      > Signed-off-by: Andrei Gherzan <andrei@gherzan.ro
>     <mailto:andrei@gherzan.ro>>
>      > ---
>      >=C2=A0 =C2=A0psplash-fb.c | 5 ++++-
>      >=C2=A0 =C2=A01 file changed, 4 insertions(+), 1 deletion(-)
>      >
>      > diff --git a/psplash-fb.c b/psplash-fb.c
>      > index 6603572..6700a3b 100644
>      > --- a/psplash-fb.c
>      > +++ b/psplash-fb.c
>      > @@ -137,6 +137,7 @@ psplash_fb_new (int angle, int fbdev_id)
>      >=C2=A0 =C2=A0 =C2=A0struct fb_fix_screeninfo fb_fix;
>      >=C2=A0 =C2=A0 =C2=A0int=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 off;
>      >=C2=A0 =C2=A0 =C2=A0char=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fbdev[9] =3D "/dev/fb0";
>      > +=C2=A0 int retries =3D 0;
>      >
>      >=C2=A0 =C2=A0 =C2=A0PSplashFB *fb =3D NULL;
>      >
>      > @@ -156,7 +157,9 @@ psplash_fb_new (int angle, int fbdev_id)
>      >
>      >=C2=A0 =C2=A0 =C2=A0fb->fd =3D -1;
>      >
>      > -=C2=A0 if ((fb->fd =3D open (fbdev, O_RDWR)) < 0)
>      > +=C2=A0 while ((fb->fd =3D open(fbdev, O_RDWR)) < 0 && retries++=
 <=3D 100)
>      > +=C2=A0 =C2=A0 =C2=A0 =C2=A0usleep(50000);
>      > +=C2=A0 if (fb->fd < 0)
>=20
>     i wonder if there should be a different way to ensure this dependen=
cy
>     perhaps sd_notify for systemd or udev notification maybe ..
>=20
>=20
> That makes sense. The only issue is that in my use-case, initramfs=20
> doesn't have systemd. And usually, you will be wanting to run a splash=20
> way before any init system. What is your proposal with udev=20
> notifications? Can you expand that?
>=20

something like=20
https://www.tecmint.com/udev-for-device-detection-management-in-linux/


> Regards,
> Andrei
