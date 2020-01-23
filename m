Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1167.1579805793055764237
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 10:56:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ijLIGqMb;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0BFAE015FA; Thu, 23 Jan 2020 10:56:32 -0800 (PST)
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
	*      [209.85.222.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5799E01599
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2020 10:56:31 -0800 (PST)
Received: by mail-qk1-f174.google.com with SMTP id z76so4558464qka.2
        for <yocto@yoctoproject.org>; Thu, 23 Jan 2020 10:56:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=YPxTrNecsK5FEcR2EIhGkYaI/rLfHokhXKz+x2A62zE=;
        b=ijLIGqMbw38OJviUzSOk2ljQF/f+yQ9VhSfAY22kdQ44fCO3ntBLKZs9BmLIkUOQZc
         rRoyV/pSw2EuwJpDIzf5ij4St+30kaEXp/t7anlNPuDkTJxrQOMv8Kk71LoOaXvAnesC
         uIXKZNc5b2Lu9KslREoG0qnXKXtwl2jtxaZ0Isc6lLQ1DNzval/rEFdWvdCH8JOPVAyR
         cAtCqwmjKdLcnPSEtzOlmUbtYEL0wVME+9BL87O7XdHT/diL3iDA5pI4wg0L7f1iPa/2
         cs27r1nWtlQJNx5p/jzyBU810aqEcKKDRlHi3t4KZL8JQvTQ8JzOZg9J+bQ9zlCZO5QO
         MZcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=YPxTrNecsK5FEcR2EIhGkYaI/rLfHokhXKz+x2A62zE=;
        b=nHoL9u3BZT8uYIuooeiS6seci9tAtpEfJ0pdJzpIUimzHvvv3Pmy4C662rnGaEelQX
         WpRpstp4ZI7WNlyNEaKWX5FdQtKjJ3idcS2M8Q1guj7mDSqoFkED5Qr+bE26ZdsSZSe+
         xRiO6hok0bOZgh83g+3jJNs7+QimitgpdJv5fLC1f5NEcDIyKo+3gdBldIFhgYrV2yS0
         qVyc7AqDO6ZhZvfTmHIYPeT8AcRkqhbDqQFCOCoqFzTVzk9XYSqWmH0pTx5I9THndYTD
         N7cXcMtEM+86SsUMqGKwygX1VBS5UYZsfZ0+FZLiNpid/e6YTYi1uC+53KyCxyjNRPn5
         Lsfw==
X-Gm-Message-State: APjAAAV3NXqoMJC9XKuU5Lf4HEePckTOAaSinzaU4kdUuqTVR0B/jPJd
	UF/60aZxB6AZ2gJwJ9qqA2UC+lhWxSbkNFwX/E0=
X-Google-Smtp-Source: APXvYqzLX0KrYPtwKVkCfqBZizhc5/qUpM6yGhJ0g0l6KHfYx84j1VTX1o41BXkGVo26X6W8DJ5gRo0RJQ3Y5C5o5XU=
X-Received: by 2002:a37:a3c7:: with SMTP id m190mr17860720qke.212.1579805791012;
 Thu, 23 Jan 2020 10:56:31 -0800 (PST)
MIME-Version: 1.0
References: <61f1edc4d6184022a55eb1feeff1263a@sakuraus.com>
In-Reply-To: <61f1edc4d6184022a55eb1feeff1263a@sakuraus.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 23 Jan 2020 10:56:04 -0800
Message-ID: <CAMKF1srtxG+Uwav_gkrg5gbK4pNz0fJ-UNcGHQh7MSgLN1hb2A@mail.gmail.com>
Subject: Re: [yocto] generate initramfs for raspberry pi
To: Greg Wilson-Lindberg <gwilson@sakuraus.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 23, 2020 at 10:44 AM Greg Wilson-Lindberg
<gwilson@sakuraus.com> wrote:
>
> Hello List,
>
> I have not been able to figure out how to generate an initramfs image fo=
r a raspberry pi build of yocto. I=E2=80=99ve searched it web and have not =
found anything that mentions generating the actual image, lots of hits on h=
ow to configure using the initramfs, but not on generating it. Is there a s=
tandard recipe for a raspberry pi initramfs and how would I enable its gene=
ration, or maybe I=E2=80=99m just being clueless.
>
>
>
> I=E2=80=99m running on a boot2qt build of yocto based on Qt v5.14.0 that=
 uses warrior and I=E2=80=99m targeting an RPi 4 using u-boot.
>
>
>
> Any help would be greatly appreciated.
>
try something like below in local.conf

INITRAMFS_IMAGE_BUNDLE_rpi =3D "1"
INITRAMFS_IMAGE_rpi =3D "<your-image>"
# Enlarge boot partition to 1GiB
BOOT_SPACE =3D "1073741"
INITRAMFS_MAXSIZE =3D "315400"
IMAGE_FSTYPES_pn-${INITRAMFS_IMAGE} =3D "${INITRAMFS_FSTYPES}"

>
>
> Best regards,
>
> Greg Wilson-Lindberg
>
>=20
