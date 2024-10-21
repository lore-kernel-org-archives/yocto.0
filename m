Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E5DED0E6E0
	for <webhook@archiver.kernel.org>; Mon, 21 Oct 2024 10:16:47 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web11.42711.1729505800787675652
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Oct 2024 03:16:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Qo+g3hc2;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-539fbe22ac0so4674860e87.2
        for <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 03:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729505799; x=1730110599; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4o4giGZGE8mUHXWgd3GOsC4nlAaVGX5Kd/OFLjXqqys=;
        b=Qo+g3hc2lBhYm5aC6DV15sZel6Z0nke/dc9QEV1GGzDGqD9tI5gbeITEiP72WglNe2
         dAIoIz7HsanUvXjaxaeIuuGQ/jMUIk0T4JeZ7IVNRmxT3cjE7tDqiB4t1+SF+y5HpPyv
         qpszlZfh7Hso6slpGqq4Yj8n1FUQI8C6JNeJzV8v3DrwwHLUp9FGIj+9Mc07ev8BwuVu
         v118JL8I1z4doxzRGE2BNfgXgsBQ/Ubw9bFa3fpDiyMtG8OypJmbrRvAyOV9s11QaBIK
         2/aN0DQpgJkgijhFZp5IQTKMf0THGc6sZxstp96/ndokiIvLe2uQ9fC75nXYv+sisQzN
         cQ9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729505799; x=1730110599;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4o4giGZGE8mUHXWgd3GOsC4nlAaVGX5Kd/OFLjXqqys=;
        b=W+XG4jre91ntdlKiC8kJQgVrqMB8W9+3ZGCwVW9VDma+2GaL1d69MY/l8edOU+DvAn
         VBgaRd7T+6/Sndl65AzxaPDOLsQUwzn91KZGZoGkkfkUZsTUPMUYvmC35pgzQBgnPhUm
         77Cy7oeXNKnxoxwWiZoduwCDebu6YZ7528GBiVhSDvW1QA8Kxyt0mJyVjvURiqY2GnpT
         JE/XqWQoJYf6idvJn+9aqSklyOdZ0wOkAp/SVL/AYK2HruDPQlEDTqXgrHAhTRDv3vPJ
         2Y3HMvXL0QBfQ+fS2QEqHzvS2gW4At2c5KZ7m902xOvDOIxNR8wHKf0//okdLK9wFpA1
         +oLg==
X-Gm-Message-State: AOJu0Yy33kaWzN5fEKtFpYP2Mj7M7LerL6hNHlsezl2pZLNcKNn2UwAm
	IumNctSg4Q+f5dDy9hdQKWOCi24vPRPb1uLYI4Y7pfmiTrs5VFQHZYYVxmGKHWPy/ERaVfJbtrO
	5TDuQO6YWIDs3Ca6bfWol2ie1zqNnag==
X-Google-Smtp-Source: AGHT+IFcuavaZelchL/aZOlzE1T5UMVGn+8y8lur/rR5eprEnjkGUgV6Lbs3P+ZNurzB+u29shQb0or/HJjQ6RolX5M=
X-Received: by 2002:a05:6512:3054:b0:539:fd10:f07b with SMTP id
 2adb3069b0e04-53a1549e243mr5622409e87.55.1729505798702; Mon, 21 Oct 2024
 03:16:38 -0700 (PDT)
MIME-Version: 1.0
References: <PAXPR10MB52772C5FC76FBDCB1FF4341599432@PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <PAXPR10MB52772C5FC76FBDCB1FF4341599432@PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 21 Oct 2024 12:16:26 +0200
Message-ID: <CANNYZj83XvvQdzDWyHEL90PpYi1QbsfR1VMOT2BGgHsLWqtZXQ@mail.gmail.com>
Subject: Re: [yocto] Strange problem when extending the linux-firmware package
To: yocto@lists.yoctoproject.org, matthias.klein@optimeas.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 10:16:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64061

You need to run 'bitbake -e linux-firmware' and check how RDEPENDS is forme=
d.

Alex

On Mon, 21 Oct 2024 at 10:33, Matthias Klein via
lists.yoctoproject.org
<matthias.klein=3Doptimeas.de@lists.yoctoproject.org> wrote:
>
> Hello,
>
>
>
> a few months ago I added Bluetooth firmware via a linux-firmware_%.bbappe=
nd file with the following line:
>
>
>
> FILES:${PN}-rtl8723 +=3D =E2=80=9C ${nonarch_base_libdir}/firmware/rtl_bt=
/rtl8723*.bin=E2=80=9D
>
>
>
> I had added the linux-firmware-rtl8723 package to my image. Until a few d=
ays ago, this worked wonderfully.
>
> Since about October 18 or 19, adding the files ${nonarch_base_libdir}/fir=
mware/rtl_bt/rtl8723*.bin causes all firmware packages to end up in the ima=
ge.
>
> In a way that is unexplainable to me, the package linux-firmware-rtl8723 =
seems to get a dependency on linux-firmware, which causes all firmware pack=
ages to end up in the image.
>
>
>
> Does anyone have any idea what is happening here?
>
>
>
> Best regards,
>
> Matthias
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64058): https://lists.yoctoproject.org/g/yocto/messag=
e/64058
> Mute This Topic: https://lists.yoctoproject.org/mt/109128695/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

