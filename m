Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.8156.1593553679771464718
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jun 2020 14:47:59 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=FZkSi2by;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A4FFE01DC9; Tue, 30 Jun 2020 14:47:59 -0700 (PDT)
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
	*      [209.85.215.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3BE1E01DC7
	for <yocto@yoctoproject.org>; Tue, 30 Jun 2020 14:47:57 -0700 (PDT)
Received: by mail-pg1-f177.google.com with SMTP id g67so9683831pgc.8
        for <yocto@yoctoproject.org>; Tue, 30 Jun 2020 14:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=ZvklxMYM8x6H2vH+v7O19W2jPWAH7vn4C2kmxqy1hcE=;
        b=FZkSi2byTHxxGE7VNMEUMWP1vo5Hb+VBEpMBt/rc8FRRcNFYmrCmC+yLG1Xs4SST2s
         25d1RqcdiCgz7Nw9Hg9giR1Hhk7VZmINh6KH0yrL14DaOhnSTj9Er/ozUkhb3liDuK4L
         i9RkSpwzsiy6jZQPduuEpNXVrfANk7DrUCgYUQ+zUiPSmc9NHdKIwP2aBqznfxD+8UX+
         I/qHSP4VMy+mrpEPgNrofKbAO2T7XUprOGJE1BHk47bUyL+8twINWF5gwYEGQhOkOvlW
         g97wMbwftTYQTTkyiRNPlMbGSOEgQEGot0KQkoxJJkoNF045OjXysxMmXM27czVdWbSr
         Pbwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZvklxMYM8x6H2vH+v7O19W2jPWAH7vn4C2kmxqy1hcE=;
        b=bfDlud/EVc+ssmHT7bPCi5TagOKMZ3xQ2UZlAfU/GqdVD3u0E2o9PCv3GGtidgqmW1
         BOKiiinnZp/8gSq+jl4ACEESvn2GIQRKXZJm2NiI7jm87YMuDIUz0BQin5H3g2by/8Iu
         MIRLSZTZJqM2zX9LOjW3C50Nxh0dG5Wm8IZPz79bFWehSzd+9BiapYPTT1X5semu7ZH9
         2O+WErtCWSzmYR/K+uGKNWqITeEPu3xYluly056F3gVpz7+43YJu/zYzR//1Ua+20IT4
         s/OhjNN3G9DwVbMz7VhIEtDNbMPLA1fz0XfG6dhcZzjsC3rSvv2cYVJclNJkysQ8L/G7
         yHEg==
X-Gm-Message-State: AOAM531beMe+l9uXFWMr633CvYMMtIbIYHyO/izvhSENA2s+gFIyRoXT
	tU99qUr2LqDFMs5ZMfFrbPt+E+ZRvS4=
X-Google-Smtp-Source: ABdhPJxGPqxUDAnoktY6LgU5dYdoXUfgtIjA1FXjd23cMInrIsoJORVY95qML2BcNgUhvpYWKS+5fQ==
X-Received: by 2002:a63:e60b:: with SMTP id g11mr17284513pgh.188.1593553676709;
        Tue, 30 Jun 2020 14:47:56 -0700 (PDT)
Received: from ?IPv6:2601:646:9200:4e0:2c51:53a1:364:7e03? ([2601:646:9200:4e0:2c51:53a1:364:7e03])
        by smtp.gmail.com with ESMTPSA id b82sm2226815pfb.215.2020.06.30.14.47.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 14:47:56 -0700 (PDT)
Subject: Re: [yocto] Errors Building openjdk-8 on dunfell
To: Robert Joslyn <robert.joslyn@redrectangle.org>,
 Yocto discussion list <yocto@yoctoproject.org>
References: <0e53cff2f343fe6bd08ec502376ad1910b1d8039.camel@redrectangle.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <0bcecd8a-589a-41b8-bdcb-3fa62b57d874@gmail.com>
Date: Tue, 30 Jun 2020 14:47:55 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <0e53cff2f343fe6bd08ec502376ad1910b1d8039.camel@redrectangle.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable



On 6/29/20 10:13 PM, Robert Joslyn wrote:
> I'm trying to build openjdk-8 on dunfull and am getting some build error=
s.
> Using an Ubuntu 18.04 host, I get an error building the openjdk-8 recipe=
:
>=20
> | g++: error: unrecognized command line option =E2=80=98-fmacro-prefix-
> map=3D/mnt/yocto/bionic/poky/build/tmp/work/core2-64-poky-linux/openjdk-
> 8/252-r0=3D/usr/src/debug/openjdk-8/252-r0=E2=80=99
>=20
> This seems to imply I need a newer gcc which supports the -fmacro-prefix=
-
> map option. The README says I need gcc 6 or later on the host, but 18.04
> has gcc 7.5.0. Maybe the README is outdated?
>=20
> I then tried building in an Ubuntu 20.04 container to see if that makes
> any difference. It fails in a different way while building icedtea7-
> native:
>=20
> | /usr/include/x86_64-linux-gnu/bits/stdio2.h:100:24: error: =E2=80=98%s=
=
=E2=80=99
> directive argument is null [-Werror=3Dformat-overflow=3D]

I guess compiler on your host is too new for openjdk-8, perhaps you=20
might get through by disabling Werror option to host cflags. You might=20
have to dig the appropriate place to stick the option in.

>=20
> I'm doing clean builds with both my 18.04 and 20.04 setups starting with
> separate, empty sstate-cache directories. Both builds are using poky
> defaults:
>=20
> Build Configuration:
> BB_VERSION           =3D "1.46.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal"
> TARGET_SYS           =3D "x86_64-poky-linux"
> MACHINE              =3D "qemux86-64"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D "3.1.1"
> TUNE_FEATURES        =3D "m64 core2"
> TARGET_FPU           =3D ""
> meta
> meta-poky
> meta-yocto-bsp       =3D "dunfell:93ef4736915090ac9a2402916df8924ac44394=
90"
> meta-oe              =3D "dunfell:8a72d29e0876830ffd96b85d7d0308302eb07a=
5d"
> meta-java            =3D "dunfell:cf9604a4789801d9dfb0cb8ca134ff04b42ae1=
61"
>=20
> Is there some trick I'm missing to get clean builds out of the box? I ca=
n
> fix the 20.04 build by adding -Wno-error for that specific warning (and
> can send a patch if desired), but has anyone else had these issues? Any
> thoughts would be appreciated.
>=20
> Thanks,
> Robert
>=20
>=20
>=20
>=20
