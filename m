Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1946.1582749016539226012
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Feb 2020 12:30:16 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=O4eaYjAo;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B951E01723; Wed, 26 Feb 2020 12:30:16 -0800 (PST)
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
	*      [209.85.166.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE4F6E016FF
	for <yocto@yoctoproject.org>; Wed, 26 Feb 2020 12:30:13 -0800 (PST)
Received: by mail-io1-f54.google.com with SMTP id c17so625183ioc.4
        for <yocto@yoctoproject.org>; Wed, 26 Feb 2020 12:30:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=KI1zrncn48N6RLrM/dfM+ju8VTnzC1NB+2wGCjx2+f4=;
        b=O4eaYjAono9461fcThhKmV5nlRTccvx14zlASygyTfcFZiz6jXEaUKG2rv/S86FsEf
         G4ciPV3XFWn1OhYcC86UVwwKduczpLNhH4Ruob3t03eqqdEdSQQIfrr9Qq4xt1Y0b28m
         wl37s/7pw+cgsEZU3BnoA4Znff6LbwJR0QIo7oKwuBoh55snAU4KKKd263iR+kroOVwl
         TAv6/FDuJQK+tSBzJrgpjH1ilhGkt9lXecrpWVilsNIgvYH1rXVY6Xf/chkC3Hvtafrs
         o50e0WmBVyuTA+ZCyRM28TAEHyqS7+D3q2p8U0O0e48zbFIUBIfDVPEsoRYyDO/64cCX
         pjeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KI1zrncn48N6RLrM/dfM+ju8VTnzC1NB+2wGCjx2+f4=;
        b=O8ipoQYajiQqbrA0ddkcdpa+gjXelpKhHNuQJ7kAvt7TBsIoNdNXOZOO2J8cmrzxAZ
         2enlCPRgWgqZ2qvTynBV/swRLDj7R7FQbNeC3zbKsLnKpF51XIrDld7kZ9a4UaSK6Fxb
         L77SMcLMhCGObG9zxn1vtWafdDKIX6QnxEWTYb3T11KCd91ouOXyGxVoj1Dm02Ym6PkK
         dEr3AgJo5ikVgVN2YaFGlXhq/JD/N219cCTVGxbFq74gTBXZB25akPfA7omu4JlaSHls
         PBZAYK06ALDnbZp2WlR5YDYvlm05437Wr+E7rxaxAH3ovVrffPssKDCkqkj6C8ImtuU8
         6mgQ==
X-Gm-Message-State: APjAAAWoD1dAKLMwDZfDTaEthomCLyWpMB25YHpwR2bWQ4DFyBlWEaWu
	UvY3w1RRdX7kGsV/gdqWqtdsA7PzDgQ=
X-Google-Smtp-Source: APXvYqwNCIS+ZL40dp5AiaRQDYIySY0+kdjq/S5ATzBbZw3kA9bQXWmB/zTIHNW3u1Pft/DyLKMVqw==
X-Received: by 2002:a5d:8796:: with SMTP id f22mr337956ion.163.1582749012569;
        Wed, 26 Feb 2020 12:30:12 -0800 (PST)
Received: from ?IPv6:2601:646:9200:4e0:19c7:2796:79bc:80ea? ([2601:646:9200:4e0:19c7:2796:79bc:80ea])
        by smtp.gmail.com with ESMTPSA id m18sm145861ill.79.2020.02.26.12.30.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2020 12:30:12 -0800 (PST)
Subject: Re: [yocto] Help with how to debug dependency error
To: Greg Wilson-Lindberg <gwilson@sakuraus.com>,
 Yocto list discussion <yocto@yoctoproject.org>
References: <a701f94801884187afdd869e5a1b5420@sakuraus.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <b6a7e251-4c77-9353-1328-4fc677b6adac@gmail.com>
Date: Wed, 26 Feb 2020 12:30:10 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <a701f94801884187afdd869e5a1b5420@sakuraus.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable



On 2/26/20 12:02 PM, Greg Wilson-Lindberg wrote:
> I am building a system based on a boot2qt warrior Yocto build=A0 for the=
 Raspberry Pi4.
>=20
> Our system is building just fine until I try to add support for OSTree. =
When I do that I get 3 errors for existing recipes, "nothing provides virtu=
al/gbm", "nothing provides virtual/egl", and "nothing provides virtual/gles=
2". All of these are specified in PACKAGECONFIG[] lines in qtbase_git.bb as=
 required when gbm and gles2 are turned on.
>=20
> I have searched for gbm in the meta-updater & meta-updater-raspberrypi d=
irectories that get included to add support for OSTree and found no referen=
ce. It looks like the OSTree inclusion is requesting something that is in t=
urn requesting gbm and gles2 but I haven't been able to figure out what tha=
t is.
>=20
> I have tried to print out the variables and a dependency graph to help m=
e track down what is going wrong, but these don't work because the errors a=
bort before I can get the information I need out.
>=20
> Can anyone point me to a way to find out what is triggering the change i=
n the gbm & gles2 packages?
>=20

this is meta-rpi issue, perhaps you can use mesa there instead of=20
userland graphics driver

MACHINE_FEATURES_append_rpi =3D " vc4graphics"



> Thanks in advance,
> Greg Wilson-Lindberg
>=20
>      
>=20
>=20
>=20
>=20
