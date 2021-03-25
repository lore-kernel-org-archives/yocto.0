Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.1440.1616697259858769073
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 11:34:20 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=aX7ipDfx;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 77CCC38C085A
	for <yocto@yoctoproject.org>; Thu, 25 Mar 2021 18:34:19 +0000 (UTC)
Received: by mail-pf1-f177.google.com with SMTP id y200so2946307pfb.5
        for <yocto@yoctoproject.org>; Thu, 25 Mar 2021 11:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=dupO0Znb/+svowrgr/iVH4jxy9WfV8YQvALaBq++Xno=;
        b=aX7ipDfxxK5RM8jF6mpKzyxaTXccKTamt6v9WETA5M+JlDJEcYhgfPywcy+B38hYpl
         il05fW69ftIFDYGlSiH/31fK1RVWMdxQ7ki0x1sBBn2YfliGLUaaSLlpp3Y02oC2OkIK
         G1hDVNdhG93X2UWNAeYFkJ9JxVTAl2g9lfM48NtUyxLHRd1rfY1WaEX/0c9evcT7xgHN
         NMLuFEuTcosl0+CFyKMDUKtUZhSyfAw54/xT3AFhrsmLgGlY/EV6ZUFCW2mj/9E5d6Uh
         YAv2mShhMHBsudK3v1WK9o50gfh04FRWfSxyaatISmDOjGxXTz+dIkSwZzxDWn8SY3DM
         SN4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=dupO0Znb/+svowrgr/iVH4jxy9WfV8YQvALaBq++Xno=;
        b=nUAh464HTClMC80VOqtnammDN7IJ0PuK6/Te8BlBAcnhZ0NZrKWWMT6b3AIsapQ7o6
         TCxgP2dLya+P+771HSW4xn0+f4a/ocvlgwQD89nPnv/Y7dJCOIJnOPE6Is2nep8aZQe2
         Z/tvhC5+y+Yqd+Dt9K6oxQyNufMRnqBvf49DJF0ox5PFDrLYqdREHs+RnJaUqp1bw36Q
         k1PLJ1bYPca2PrwjOHrnoBd47HxpVONaBRXXdflUjN+Y5GWzyKtKgrhTOK2FUiVP6Wvt
         oYJwvoflu+/6MxM+pty3s3gVe6HT4kzsqvT4hX5shSEhEUpyPBe7KqePotLM8alImwEh
         JtkA==
X-Gm-Message-State: AOAM5313x6mPNWwIr0XdKttYI7UUnoN8jda1JUw36QXbdJq2wmXLiZaG
	VB7FCqtMZLNjlXax2kOwz+h3wWNoMXw3uA==
X-Google-Smtp-Source: ABdhPJzhskUJjiyBnDw/RRF3WPFQvueMkP0qSx+xX7PKWjlgxuK70maAUXpToRoIzBqi6fUtbOLz4g==
X-Received: by 2002:a05:6a00:2da:b029:202:7800:567 with SMTP id b26-20020a056a0002dab029020278000567mr8934741pft.71.1616697258452;
        Thu, 25 Mar 2021 11:34:18 -0700 (PDT)
Received: from ?IPv6:2601:646:9200:a0f0:941c:402e:75f3:dc06? ([2601:646:9200:a0f0:941c:402e:75f3:dc06])
        by smtp.gmail.com with ESMTPSA id g3sm6458895pfi.31.2021.03.25.11.34.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Mar 2021 11:34:18 -0700 (PDT)
Subject: Re: [yocto] Howto read bitbake -g files?
To: Mauro Ziliani <mauro@faresoftware.it>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <166F85D665F6651B.20818@lists.yoctoproject.org>
 <9148424E-9A7A-4D3F-B703-8D8485C1F726@getmailspring.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <9ac096ac-77fc-699d-3458-4dd3e9af0925@gmail.com>
Date: Thu, 25 Mar 2021 11:34:16 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <9148424E-9A7A-4D3F-B703-8D8485C1F726@getmailspring.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable



On 3/25/21 3:37 AM, Mauro Ziliani wrote:
> An example about my question
>=20
> Inside package-depends.dot I see this
>=20
> "opencv-dev" [label=3D"opencv-dev(opencv)=20
> :3.1+gitAUTOINC+92387b1ef8-r0\n/Sources/softfx/krogoth/sources/meta-open=
embedded/meta-oe/recipes-support/opencv/opencv_3.1.bb"]
>=20
> I need to remote opencv-dev from final image.
>=20
> In pn-depends.dot I see
>=20
> "opencv" -> "opencv-dev" [style=3Ddashed]

this should only happen if opencv-dev has a .so which is not a symlink
and there is a program in opencv package which depends on it. Can you=20
expand the content of opencv-dev and see whats in there ?
secondly you can also look at content of opencv package and readelf -d=20
over the binaries in it and see if some binary is dependent on .so from=20
-dev package.

you can do this inside opencv build tree under packages-split/ area.
of a built tree.

>=20
> I understand that
> opencv generates opencv-dev from the recipe opencv_3.1.bb
>=20
>=20
>=20
> Sent from Mailspring <https://getmailspring.com/>, the best free email=
=20
> app for work
> On mar 25 2021, at 8:39 am, Mauro Ziliani <mauro@faresoftware.it> wrote:
>=20
>     Hi all
>=20
>     I have to look for the recipes put in my image the *-dev packages.
>=20
>     I removed dev-pkgs and dng-pkgs from IMAGE_FEATURES and debug tweaks
>     from DISTRO_FEATURES.
>     I don't IMAGE_INSTALL_append any *-dev packages
>=20
>     I generate bitbake=C2=A0 -g image, but I don't produce the PDF becau=
se is
>     unreadable.
>=20
>     So I read the dot source. I use dot and I know the syntax.
>=20
>     But I don't how to read the graph.
>=20
>=20
>     MZ
>=20
>=20
>=20
>=20
>     Sent from Mailspring <https://getmailspring.com/>, the best free
>     email app for work
>=20
>=20
>=20
>=20
>=20
