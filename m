Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63076CEF160
	for <webhook@archiver.kernel.org>; Tue,  8 Oct 2024 12:16:21 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web10.7708.1728389779750237071
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Oct 2024 05:16:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=m3ky11nh;
 spf=pass (domain: linaro.org, ip: 209.85.167.46, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5398996acbeso6160480e87.1
        for <yocto@lists.yoctoproject.org>; Tue, 08 Oct 2024 05:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728389778; x=1728994578; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RXh1vFLdzKU0zcta3cthm62PgWGdQd75ffHcnIxbKNg=;
        b=m3ky11nh/ch9Ti7zy6QCn6O6OfJ2uZtkJdcM0NKEvPh26bXwTjupsX3NHaudGQVvlq
         Jz4ZV4v4pjbB3ZRAIKO+X/ViBTgZUHOkcReFQ3FMyR9XxxxchjIkK2WEvcUQLR2TSzXe
         xVy6CbK3O2n9rhIYATc9nybciWpDkYDuTLoyrS/llbzMeaBxov7bi5BF2Y6kJL1BVr1K
         4GaToSnZZhHi2GsR+Py5ocAqIsGfoaoRcd1tSLBG4AMBAcSSYm65cUBwxgBkqPq2xVkP
         VvzodzeO3I3t7cLJj4pJ4rYfnhUC6jSdcWcmpglpvD9C4W0paPp/Vavj5hqrSGALAT0y
         xQHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728389778; x=1728994578;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RXh1vFLdzKU0zcta3cthm62PgWGdQd75ffHcnIxbKNg=;
        b=sApS3BLkFk/PgKABlj9y6u/Qp7gQP6lyRF/k3LBahhtnlxS/YqKIE+v3K6Lwphw/XG
         kx5XIa9wX0h8B7W/kcVjRIEiqsaPVvXlXog7OVYjG4n4r8exgmh0ULQlBkQFjyUEy8GP
         HB9aAbgMiB7XA7lPc34L1USyKIyk0FZwDk1cTdMwxhwQISf1+PinIrQvIDWYdf2oKK5W
         bnWBPkvCfpB8wr3lwoKXyKg9+Wps/YMTnkoTU+YZH2WEUsXGYX6nnlV0ILUuoiDM0cdR
         NFE3O+qJf1uc73afqlNhHpgHz+D+dNgPQIuJ30FtFLv/6NsXZZLCRkxT88Z4EwUDbjZ9
         s5Bw==
X-Gm-Message-State: AOJu0Yyb3Z2+NEg4OTSTW+HwL8t+m4LZY5P+Bv++ov+NMxCyREVKcn21
	ChOZU3b98rlMp0s1LrhSF+TUdE+3PuwaTFnHSrglw0xhZwDqR/bd9i4DQq14LA0=
X-Google-Smtp-Source: AGHT+IF0uM0vVV8enrjuxbe4D2aLUvfxQbsn5W9XQHXRtLeYul176s2ZuDPjoNuF9e52nSURm+QofA==
X-Received: by 2002:a05:6512:3d93:b0:52c:e326:f4cf with SMTP id 2adb3069b0e04-539ab84e3a7mr8361980e87.3.1728389777705;
        Tue, 08 Oct 2024 05:16:17 -0700 (PDT)
Received: from nuoska (78-27-76-97.bb.dnainternet.fi. [78.27.76.97])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539aff2336fsm1190736e87.203.2024.10.08.05.16.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2024 05:16:17 -0700 (PDT)
Date: Tue, 8 Oct 2024 15:16:15 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: aleksandar.nikolic010@gmail.com
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Yocto Binary Distro
Message-ID: <ZwUij4iATWocjO5S@nuoska>
References: <ZwTy7wiOzHJcVNjn@nuoska>
 <13803.1728389373850401480@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <13803.1728389373850401480@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Oct 2024 12:16:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63973

Hi,

On Tue, Oct 08, 2024 at 05:09:33AM -0700, Aleksandar Nikolic via Lists.Yoctoproject.Org wrote:
> To build from the SDK occurred to us as well, but is there a offical/stable Yocto way to integrate those binaries back into the image? I don't like the idea of building a base image in Yocto, then building binaries separately in SDK and installing them back into the image with a custom script, as this for sure will be unstable and error-prone. Add atomic updates to that and it might become a nightmare to maintain for multiple products.

bin_package.bbclass helps when SRC_UKI points to a binary RPM package:

https://docs.yoctoproject.org/singleindex.html#bin-package

but it does not solve the ABI issues. Those need to be managed separately.

Cheers,

-Mikko

