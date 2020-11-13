Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web11.197.1605242978195068101
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Nov 2020 20:49:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lBuGlg+X;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id w4so6086791pgg.13
        for <yocto@lists.yoctoproject.org>; Thu, 12 Nov 2020 20:49:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=PtyRM4ftWcvTvWujItuIuyfecAEBq1oTLt3h4EUifiM=;
        b=lBuGlg+XFNz9oopZ1MMbw3NndmylAavsjXcuX8JmmhURWrtZG0uFQ6g/1WPRFIKmqg
         ALnerWZfODJlTZZEFPa8REFmwX98qYnLWbza2aqJ+ge97r/ndEU0N+ibiDV7iR6OfrKh
         cdzTcssRLk/TXrEG49fXJu20Fwkp4Vp/grAgVCQiyd10kW6rX9G26jgmRogscVDSunRl
         MRjQTjZaD8bZj2yMpTeGXyQpX9kixF50AltIiqH+XvRn1OB60ZcmCGt1noqQYFCUbYsW
         Iyc8Brp9JeQj50c0TdLM52TqHaQ1MeSStbpABegrHS/6O7mYKBC2LKajWiRdfKPlbpPy
         2Ubg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=PtyRM4ftWcvTvWujItuIuyfecAEBq1oTLt3h4EUifiM=;
        b=aQtLWzI3hJ82sgPBLGzbNTzgQdOxd5hb+vEPv6HkeDp/7ROY0DJA3zLByXDZrtfMtt
         7Td6AwTUzCIA9OhaCHoRMgzPdxM6HamtKLF55zxBMKJKJxRc3gPRqOBiW9kE3MOQpj8i
         n4Iy1idAzkLK2Rz1afmBTU0zYqskeDGd2NruzfzMSPv+n1xwdnMgEIIx2V8Sm5F+zDJR
         WQMkIf1TzVhbe4Sr1oMmBVBa2A32vFbh33VmDeA0q6B/lUFHoR8tbzY/UykLetZeYOFz
         4qFUivs8MXycvxglpIEIDfaoQCqvgZoemRaZ22mUyTD7UV/jkGtq57k7U6+h+WCtw5TX
         YrKg==
X-Gm-Message-State: AOAM531hUw8wJa5A/ZFkyZ437IYsDhurnkO0HX2vy7E1drfi3QbsoBo+
	QuIT8wx72jOOV9uWSsn+3JCW2LqC5slm1g==
X-Google-Smtp-Source: ABdhPJwBuySidaqZXfNaCQVaFD0QUOJAXsQih7KEvFvLFJC4ZkVMgr2p3BDbSBLrmlmXKCadhnQ3qQ==
X-Received: by 2002:a63:f551:: with SMTP id e17mr658612pgk.170.1605242977248;
        Thu, 12 Nov 2020 20:49:37 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::e75c? ([2601:646:9200:4e0::e75c])
        by smtp.gmail.com with ESMTPSA id a3sm8620143pfd.58.2020.11.12.20.49.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 20:49:36 -0800 (PST)
Subject: Re: [yocto] Trying to compile hping3 from sources #devtool
To: "Godavarthi, Manasa" <manasa.godavarthi@hpe.com>,
 "Muralidharan, Vaijayanthi" <vaijayanthi.muralidharan@hpe.com>
Cc: Vaijayanthi <vaijayanthi@silver-peak.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <3rpq.1604716265989001199.J0NK@lists.yoctoproject.org>
 <CAMKF1sqd4K_5B7P8QHSC83vCw7CLwsJhV3bYusuq_k8t+yGhgQ@mail.gmail.com>
 <7BB882DB-349A-4205-AC92-046BCCE9E0FD@hpe.com>
 <CAMKF1sq2VtUdfsV3Oa3k_HnF6c=1QUGTAaOQD6ti3TbGRd7Zxg@mail.gmail.com>
 <8F91616C-0098-4172-AF03-BC3EA30F7E20@hpe.com>
 <55E05068-4BAE-454F-A965-19CC6ECCC5FD@hpe.com>
 <E21AA0AF-CD6A-4BE1-8144-6205E28BCC15@hpe.com>
 <TU4PR8401MB0751716DED7E963E3927EAE5EAE70@TU4PR8401MB0751.NAMPRD84.PROD.OUTLOOK.COM>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
X-Pep-Version: 2.0
Message-ID: <38a09b3f-63c2-d687-0953-399182ddb0ac@gmail.com>
Date: Thu, 12 Nov 2020 20:49:34 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <TU4PR8401MB0751716DED7E963E3927EAE5EAE70@TU4PR8401MB0751.NAMPRD84.PROD.OUTLOOK.COM>
X-Groupsio-MsgNum: 51374
Content-Type: multipart/mixed;
 boundary="------------D5DD548A6E8F258ED7E40B2C"
Content-Language: en-US

--------------D5DD548A6E8F258ED7E40B2C
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hey Manasa !!

Long time, happy to hear from you. I hope you are doing well,

Hi Vaijayanthi

I took a look at hping3 and its one package thats not cross-compile
friendly, So no wonder Vaijayanthi was finding all sorts of issues.
It was looking at host system for tcl and all kind of other headers
which was causing the issues you were seeing.

Just for Manasa I gave it a whirl :) and here is a version which should
work (At least it compiles), its completely untested but I hope it will
unblock you

https://github.com/YoeDistro/meta-openembedded/commit/c4a5be527f61f286cd4=
7352f56b563390a4e3d58

You can download this

curl -O
https://github.com/YoeDistro/meta-openembedded/commit/c4a5be527f61f286cd4=
7352f56b563390a4e3d58.patch

cd meta-openembedded

git am c4a5be527f61f286cd47352f56b563390a4e3d58.patch

then

bitbake hping3

Let me know if it is helpful

Thank you

-Khem


On 11/12/20 12:59 PM, Godavarthi, Manasa wrote:
> Hi Raj,
>=20
> =C2=A0
>=20
> Small world! Hope you are doing well. I would love to catch up sometime=

> with you.
>=20
> =C2=A0
>=20
> Vaijayanthi also worked with me at Juniper. We really appreciate your
> help regarding hping3. Basically, there is no recipe for hping3, looks
> like. So, Vaijayanthi is trying to compile from source and include it a=
s
> part of our Yocto build and SDK so that hping3 binary is available as
> part of our linux distro.
>=20
> =C2=A0
>=20
> Regards,
>=20
> --Manasa
>=20
> =C2=A0
>=20
> *From: *Muralidharan, Vaijayanthi <vaijayanthi.muralidharan@hpe.com>
> *Date: *Thursday, November 12, 2020 at 12:36 PM
> *To: *raj.khem@gmail.com <raj.khem@gmail.com>
> *Cc: *Vaijayanthi <vaijayanthi@silver-peak.com>, Yocto-mailing-list
> <yocto@lists.yoctoproject.org>, Godavarthi, Manasa
> <manasa.godavarthi@hpe.com>
> *Subject: *Re: [yocto] Trying to compile hping3 from sources #devtool
>=20
> Just to add more to this: I managed to build via bitbake successfully.
> But "make" fails with the following error:
> Problem: package packagegroup-sps-all-1.0-r0.noarch requires
> packagegroup-sps-network-utils, but none of the providers can be instal=
led
> =C2=A0 - package packagegroup-sps-network-utils-1.0-r0.noarch requires
> hping3, but none of the providers can be installed
> =C2=A0 - conflicting requests
> =C2=A0 - nothing provides libpcap.so.0.8()(64bit) needed by
> hping3-git-r0.core2_64
> =C2=A0 - nothing provides libtcl8.6.so()(64bit) needed by hping3-git-r0=
=2Ecore2_64
> (try to add '--skip-broken' to skip uninstallable packages or '--nobest=
'
> to use not only best candidate packages)
>=20
> ERROR: sps-image-vxoa-1.0-r0 do_rootfs:
>=20
> I have added RDENPDS for libpcap and libtcl in hping3's recipe.
>=20
> =EF=BB=BFOn 11/9/20, 4:06 PM, "Muralidharan, Vaijayanthi"
> <vaijayanthi.muralidharan@hpe.com> wrote:
>=20
> =C2=A0=C2=A0=C2=A0 This is a recipe that was created via devtool.
>=20
> =C2=A0=C2=A0=C2=A0 devtool add hping3 https://github.com/antirez/hping
>=20
> =C2=A0=C2=A0=C2=A0 On 11/9/20, 10:43 AM, "Muralidharan, Vaijayanthi"
> <vaijayanthi.muralidharan@hpe.com> wrote:
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 hping3_git.bb
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 On 11/7/20, 12:04 PM, "yocto=
@lists.yoctoproject.org on behalf of
> Khem Raj via lists.yoctoproject.org" <yocto@lists.yoctoproject.org on
> behalf of raj.khem=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 On S=
at, Nov 7, 2020 at 11:57 AM Muralidharan, Vaijayanthi
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <vai=
jayanthi.muralidharan@hpe.com> wrote:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 > Kh=
em,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 > Th=
anks for responding. I am trying to build hping3 from
> sources. There is only a bb recipe for hping2.
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 what=
 is your failing recipe called (exact name )
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 > On=
 11/6/20, 9:42 PM, "Khem Raj" <raj.khem@gmail.com> wrote:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 whats the name of your recipe ? secondly hping3
> requires libtcl8.6.so
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 seems to be troublesome because its asking
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 for devel package not the original library, I wonde=
r
> why, can you find
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 out the linker cmdline where ping3 is getting linke=
d ?
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 On Fri, Nov 6, 2020 at 6:31 PM Vaijayanthi
> <vaijayanthi@silver-peak.com> wrote:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > Hi, I am using devtool add hping3
> https://github.com/antirez/hping to add hping3 as part of our custom
> image. Here is my recipe:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > # Recipe created by recipetool
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > # This is the basis of a recipe and may need furt=
her
> editing in order to be fully functional.
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > # (Feel free to remove these comments when editin=
g.)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > # WARNING: the following LICENSE and
> LIC_FILES_CHKSUM values are best guesses - it is
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > # your responsibility to verify that the values a=
re
> complete and correct.
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > #
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > # The following license files were not able to be=

> identified and are
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > # represented as "Unknown" below, you will need t=
o
> check them yourself:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > #=C2=A0=C2=A0 COPYING
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > LICENSE =3D "GPLv2"
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > LIC_FILES_CHKSUM =3D
> "file://COPYING;md5=3D3728a6c4c9630a9e796ad4b82dacd887
> <file:///COPYING;md5=3D3728a6c4c9630a9e796ad4b82dacd887>"
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > SRC_URI =3D
> "git://github.com/antirez/hping;protocol=3Dhttps"
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > # Modify these as desired
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > PV =3D "1.0+git${SRCPV}"
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > SRCREV =3D "3547c7691742c6eaa31f8402e0ccbb81387c1=
b99"
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > S =3D "${WORKDIR}/git"
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > #DEPENDS =3D "libpcap"
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > RDEPENDS_${PN} +=3D " libpcap tcl-lib tcl"
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > # NOTE: no Makefile found, unable to determine wh=
at
> needs to be done
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > do_configure () {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0=C2=A0 # Specify any needed conf=
igure commands here
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0=C2=A0 CONFIGOSTYPE=3D"LINUX" ./=
configure
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > }
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > do_compile () {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0=C2=A0 # Specify compilation com=
mands here
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0=C2=A0 make
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > }
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > do_install() {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0=C2=A0 #install -Dm755 ${B}/libp=
cap.so.0.8
> ${D}${libdir}/libpcap.so.0.8
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0=C2=A0 #ln -sf libpcap.so.0.8 ${=
D}${libdir}/libpcap.so
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0=C2=A0 #install -Dm755 ${B}/libt=
cl8.6.so
> ${D}${libdir}/libtcl8.6.so
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0=C2=A0 #ln -sf libtcl8.6.so ${D}=
${libdir}/libtcl8.6.so
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0=C2=A0 install -m 0755 -d ${D}${=
sbindir} ${D}/${mandir}
> ${D}${docdir}/hping3
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0=C2=A0 install -m 0755 hping3 ${=
D}/${sbindir}
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0=C2=A0 install -m 0644 docs/hpin=
g3.8 ${D}/${mandir}
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0=C2=A0 install -m 0644 docs/HPIN=
G2-HOWTO.txt
> docs/HPING2-IS-OPEN \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 d=
ocs/MORE-FUN-WITH-IPID docs/SPOOFED_SCAN.txt \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 d=
ocs/AS-BACKDOOR docs/APD.txt
> ${D}${docdir}/hping3
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > }
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > #INSANE_SKIP_${PN}-dev =3D "ldflags"
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > #INSANE_SKIP_${PN} =3D "ldflags"
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > #INSANE_SKIP_${PN} +=3D "file-rdeps dev-deps"
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > How do I add this to my custom bitbake layer? Als=
o,
> make is complaining about
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > ERROR: hping3-1.0+git999-r0 do_package_qa: QA Iss=
ue:
> /usr/sbin/hping3 contained in package hping3 requires
> libpcap.so.0.8()(64bit), but no providers found in RDEPENDS_hping3?
> [file-rdeps]
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > ERROR: hping3-1.0+git999-r0 do_package_qa: QA Iss=
ue:
> /usr/sbin/hping3 contained in package hping3 requires
> libtcl8.6.so()(64bit), but no providers found in RDEPENDS_hping3?
> [file-rdeps]
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > ERROR: hping3-1.0+git999-r0 do_package_qa: QA run=

> found fatal errors. Please consider fixing them.
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 > Please let me know what I should I do next to
> integrate this recipe with my custom meta layer and also, address the
> make failures.
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >=C2=
=A0=C2=A0=C2=A0=C2=A0 >
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 >
>=20
>=20

--------------D5DD548A6E8F258ED7E40B2C
Content-Type: application/pgp-keys;
 name="pEpkey.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="pEpkey.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
=3Dsj8j
-----END PGP PUBLIC KEY BLOCK-----

--------------D5DD548A6E8F258ED7E40B2C--
