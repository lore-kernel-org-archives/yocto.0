Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.5509.1589638349459784671
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 May 2020 07:12:29 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@googlemail.com header.s=20161025 header.b=mLA3NY2D;
 spf=softfail (domain: googlemail.com, ip: 140.211.169.56, mailfrom: matthias.schoepfer@googlemail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECDF0E00CD1; Sat, 16 May 2020 07:12:28 -0700 (PDT)
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
	*      (matthias.schoepfer[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 509E2E00A6B
	for <yocto@yoctoproject.org>; Sat, 16 May 2020 07:12:28 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id e16so6658443wra.7
        for <yocto@yoctoproject.org>; Sat, 16 May 2020 07:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=0/gnLePT+kXjgg8FXmGLurgJHbCKxWs5nHQljl+GBRA=;
        b=mLA3NY2DNvug+mtGVmgTkhxrQMUW+zDJPV8oBHxApao+GslQpZqWX+TEblMdtuCBwy
         F8p8aydkN3N+toNlAygNMmjEb2R5yZ2CCbxmp2TBoMeelSPZflJkPHOTKF7KiTC6UUnK
         /KJRHhu9+RaT2fJuLNSuNgp7egn5+ubFdyrO+51I0RIM0dxBeFmHeROrSpqo4973BcyF
         D2FwuJli4vu1jaeZ5A0do+I54Nh8TwLurtWxF4zFG8e4o3NEnvdn3nTszI3NZrtyf0XR
         1RUbpPflm4gqaO+FfZY/EldTB98pZGIOcGr8noCAWfk9rda/LxQIcASMN9Rnb6Qhz8Ni
         hIcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=0/gnLePT+kXjgg8FXmGLurgJHbCKxWs5nHQljl+GBRA=;
        b=D/gmF6d6pH3zUvjngY+E7HnIpWtBYXEj39MM7BWSerMzh6Azp0KDF9VkBUCcVgp3xp
         qtoi3CTgg3YLCZF0dt2aCeq0GgQR0a/cBNdGqBqvNd2V221tBVJh8MmHQgGRm9JkfQoc
         sqcSdep+PgN5xUoqkR43VOnnVQF3Nbz2YFYsiWwnHm3lXrfmXSBIarY5Y9eg2/T4ZDkD
         /9laEOpHVDgZ2dGaAE8hZl5mSQjEeWe1bYlEpO86EcmRIxGbOUqJNV1QUnpNFKcRK5J/
         STje8gFC+1rtp1XUnMU62CE1b3Jsfja3TRmRQJ3SvN61YPRWMm3fWt4nBy7aArFri1Fk
         Ncwg==
X-Gm-Message-State: AOAM531U1DtzFxg4xq+cFZ7uFiFkLb0M3dzq6ZEwfn7XHfTFieKksql6
	ZoHNbiZtka2V5IdV4gv6IAPhP3wJ
X-Google-Smtp-Source: ABdhPJwM5Cmz70QKlyKfaD/PJlhSrtiFYngQRGYl5l6/KsMYuKpy8Ocf4BepY0nvco/j4irzIaEO8w==
X-Received: by 2002:adf:d0c6:: with SMTP id z6mr10632368wrh.219.1589638346986;
        Sat, 16 May 2020 07:12:26 -0700 (PDT)
Received: from ?IPv6:2003:f8:5702:6d00:765:17e2:2464:fe5c? (p200300f857026d00076517e22464fe5c.dip0.t-ipconnect.de. [2003:f8:5702:6d00:765:17e2:2464:fe5c])
        by smtp.gmail.com with ESMTPSA id z124sm6599084wmg.20.2020.05.16.07.12.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 May 2020 07:12:26 -0700 (PDT)
Subject: Re: [yocto] Package libgcc-lic cannot be installed into the image because it has incompatible license(s): GPL-3.0
To: Khem Raj <raj.khem@gmail.com>, Yocto-mailing-list <yocto@yoctoproject.org>
References: <5e93c06b-61a1-a89c-a2f7-0dadda804be2@googlemail.com>
 <ce772f60-45d4-61c1-5305-53c571cd4079@gmail.com>
From: "Matthias Schoepfer" <matthias.schoepfer@googlemail.com>
Message-ID: <eb4ddd34-4b76-4f9d-a41a-cc06058296da@googlemail.com>
Date: Sat, 16 May 2020 16:12:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <ce772f60-45d4-61c1-5305-53c571cd4079@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Khem!

On 5/15/20 4:46 PM, Khem Raj wrote:
> On 5/15/20 2:32 AM, Matthias Schoepfer via lists.yoctoproject.org wrote=
:
>> Hi!
>>
>> I am trying to migrate to dunfell. Out customer does not want GPLv3=20
>> or anything like that on the firmware.
>>
>> So - same as in zeus - we have a line:
>>
>> INCOMPATIBLE_LICENSE =3D "GPLv3 LGPLv3 GPLv3+ LGPLv3+ GPL-3.0 LGPL-3.0=
=20
>> AGPL-3.0"
>>
>> during do_rootfs, the process fails with:
>>
>> do_rootfs: Package libgcc-lic cannot be installed into the image=20
>> because it has incompatible license(s): GPL-3.0
>>
>> The package basically consists of the license information for libgcc,=20
>> libgcc is allowed due to the linking exception.
>>
>> Even, when I try to allow this package with something like this:
>>
>> INCOMPATIBLE_LICENSE_pn-libgcc-lic =3D ""
>> INCOMPATIBLE_LICENSE_pn-libgcc =3D ""
>>
>> which has worked in the past to have an in house debug image with the=20
>> gdbserver on it, it still fails.
>>
>> Am I the first to experience this? Am I doing something wrong?
>>
>> We do
>>
>> COPY_LIC_MANIFEST =3D "1"
>> COPY_LIC_DIRS =3D "1"
>> LICENSE_CREATE_PACKAGE =3D "1"
>>
>> as well, if that info is needed.
>>
>> Any help would be appreciated.
>>
>
> Can you try adding
>
> LICENSE_${PN}-lic =3D "GPL-3.0-with-GCC-exception"
>
> in meta/recipes-devtools/gcc/libgcc.inc
>
> and see if it helps ?
>
It did help, thank you very much! I needed to repeat this for libgcrypt=20
and libidn2. It does look like a bug though, does it not?


Regards,


 =C2=A0 Matthias

