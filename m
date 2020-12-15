Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web08.8853.1608025699448078699
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Dec 2020 01:48:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=isj0JojB;
 spf=pass (domain: gmail.com, ip: 209.85.214.175, mailfrom: vijayrakeshmunganda@gmail.com)
Received: by mail-pl1-f175.google.com with SMTP id g20so9901993plo.2
        for <yocto@lists.yoctoproject.org>; Tue, 15 Dec 2020 01:48:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:mime-version:subject:from:in-reply-to:cc
         :date:message-id:references:to;
        bh=yCfZMoGlHDekOmeFzi9ipLqUXI7KX9Hl1bxOIZDDvbw=;
        b=isj0JojB+03GNVU/gKGEBgW02peCUnFpWYCDjTR94GNJYkYk1WI/2X15ii9Zd/tTb2
         gsLap3PJGLQev4VlBBzCSG7d6it+Sr68LG13LVFBN8uBm98YvmlAsBkRZnU/i2cb5Gnq
         uoTyaAgSrkpQxyU4mk4oXqN3A0RrL8fAlhF9PLX+WkYUcE1IekFYpl118Gvi/rjVw8B7
         k08LAnygXt4zm5klgrwp5ESST7IqdCxrt7wPjE3jb/8PJnq28Ue+StEMIXjr+98BJzRy
         9q0q2LVk/9/ZqFxqLmhipOP3Ci8dPIKLMEpjTZpVrelHLXhmc4TWZmpytAnMfaynjWDn
         A1sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:mime-version:subject
         :from:in-reply-to:cc:date:message-id:references:to;
        bh=yCfZMoGlHDekOmeFzi9ipLqUXI7KX9Hl1bxOIZDDvbw=;
        b=JLcNNvWwvAMVH7BHhS7plDoiruPSaQkXKRp1AdM6meTuQsK355FSeuYxJVnXALyXVt
         iwSvLvmAyjRqU3Yo/8n2+xT5LPyGxfu8h1qN8k8L24sCD7s/TWnpt19/y+mOqehsHGDZ
         AmuITh+NuadwMrRpRfFFyNC9JEtRHasHigyRPeUzIr2oQXVS5q4JdTy0zhDJp6nAMzJt
         6WU2wpAtqh/Iz2diLSfjX/vZTyXfEA2gvt0wM5LMVAFEs1GMAHgAD77jpzIBQshV+3M5
         8cSj7pYVQbMrSgEVO3iBSXr3zoIfdLNg1MrwwU0iueLvcW+OFj6NroT9IHsHDhj29y66
         xd9w==
X-Gm-Message-State: AOAM531KmUe79gX9dbew1oFnlWIb4W9G4RgriLBQSB7uN+C3LxpTf0kF
	KuhcdGw0yN5PlLP6zjoZDe1n33WPH2A=
X-Google-Smtp-Source: ABdhPJxiRN4B4XEfFBMGzAt/V4+hrsaSY/A9ysbNc5nV6QxfkS47cFsagrfhqMsU3r15OJeSQQ+GDA==
X-Received: by 2002:a17:90b:4394:: with SMTP id in20mr29672268pjb.34.1608025698473;
        Tue, 15 Dec 2020 01:48:18 -0800 (PST)
Return-Path: <vijayrakeshmunganda@gmail.com>
Received: from [10.10.0.31] ([117.198.96.70])
        by smtp.gmail.com with ESMTPSA id j3sm21204323pjs.50.2020.12.15.01.48.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Dec 2020 01:48:17 -0800 (PST)
Mime-Version: 1.0 (1.0)
Subject: Re: [yocto] curl_easy_perform() failed: Couldn't connect to server #linux #yocto
From: "Vijay Rakesh Munganda" <vijayrakeshmunganda@gmail.com>
In-Reply-To: <CAMKF1srcYFfwxeExY=YEXFG=mJgHMBzT7aUvG_z=LnoE9+AiJQ@mail.gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Date: Tue, 15 Dec 2020 15:18:15 +0530
Message-Id: <495B2B88-7B29-49A1-AFEE-3461E93A7D20@gmail.com>
References: <CAMKF1srcYFfwxeExY=YEXFG=mJgHMBzT7aUvG_z=LnoE9+AiJQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: iPhone Mail (18B92)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Khem Raj,

I had checked, but I couldn=E2=80=99t find any such option in .bb file. As=
 I=E2=80=99m to new to Yocto, can you kindly please tell me how to remove m=
an page option.=20

Thanks & Regards,
Vijay Rakesh

> On 15-Dec-2020, at 03:00, Khem Raj <raj.khem@gmail.com> wrote:
> =EF=BB=BFOn Mon, Dec 14, 2020 at 12:02 AM Vijay Rakesh Munganda
> <vijayrakeshmunganda@gmail.com> wrote:
>>=20
>> Hi Khem raj,
>>=20
>> Regarding zbar, I found the video option was disabled in the .bb file, =
so I had changed it to --enable-video and ran the build, but the build fail=
ed at do_install. Do I Need to make change anything else?
>>=20
>> Log:
>> |  /home/bl-docker/rity/bsp/tmp/hosttools/mkdir -p '/home/bl-docker/rit=
y/bsp/tmp/work/aarch64-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/image/=
usr/bin'
>> |   ./aarch64-poky-linux-libtool   --mode=3Dinstall /home/bl-docker/rit=
y/bsp/tmp/hosttools/install -c zbarcam/zbarcam '/home/bl-docker/rity/bsp/tm=
p/work/aarch64-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/image/usr/bin'
>> |  /home/bl-docker/rity/bsp/tmp/hosttools/install -c -m 644 ../git/doc/=
man/zbarcam.1 '/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/zbar/0.=
10+gitAUTOINC+67003d2a98-r0/image/usr/share/man/man1'
>> | /home/bl-docker/rity/bsp/tmp/hosttools/install: cannot stat '../git/d=
oc/man/zbarcam.1': No such file or directory
>> | Makefile:2386: recipe for target 'install-man1' failed
>> | make[3]: *** [install-man1] Error 1
>> | make[3]: *** Waiting for unfinished jobs....
>> | aarch64-poky-linux-libtool: warning: 'zbar/libzbar.la' has not been i=
nstalled in '/usr/lib'
>> | aarch64-poky-linux-libtool: install: /home/bl-docker/rity/bsp/tmp/hos=
ttools/install -c zbarcam/.libs/zbarcam /home/bl-docker/rity/bsp/tmp/work/a=
arch64-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/image/usr/bin/zbarcam
>> | make[3]: Leaving directory '/home/bl-docker/rity/bsp/tmp/work/aarch64=
-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/build'
>> | Makefile:2850: recipe for target 'install-am' failed
>> | make[2]: *** [install-am] Error 2
>> | make[2]: Leaving directory '/home/bl-docker/rity/bsp/tmp/work/aarch64=
-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/build'
>> | Makefile:2541: recipe for target 'install-recursive' failed
>> | make[1]: *** [install-recursive] Error 1
>> | make[1]: Leaving directory '/home/bl-docker/rity/bsp/tmp/work/aarch64=
-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/build'
>> | Makefile:2844: recipe for target 'install' failed
>> | make: *** [install] Error 2
>> | WARNING: /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/zbar/0.=
10+gitAUTOINC+67003d2a98-r0/temp/run.do_install.15449:1 exit 1 from 'exit 1=
'
>=20
> you might want to check if there is a way to disable
> building/installing manpages, most of the times you don't need them on
> embedded targets.
>=20
>> Thanks & Regards,
>> Vijay Rakesh.
>>=20
>>=20
