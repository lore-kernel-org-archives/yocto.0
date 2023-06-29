Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FD44EB64D9
	for <webhook@archiver.kernel.org>; Thu, 29 Jun 2023 10:45:55 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web10.5359.1688035546467512889
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Jun 2023 03:45:46 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linaro.org header.s=google header.b=Tcdl6Tq0;
 spf=pass (domain: linaro.org, ip: 209.85.167.46, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-4f954d7309fso632674e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 29 Jun 2023 03:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688035544; x=1690627544;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rPgciElgzUGO4FwKCi9JH3tmxZ10trKO4Q5m+IOiJvQ=;
        b=Tcdl6Tq0ZZhmnvtnUM8vqEnT47g93RTmu+EIJ8qI6m4eBxhrudO2BwcolKta06tzCz
         9C+mGb+/y1K8JGOeFVxUzQbKIjX9LQoyobv/j8l2rnCR4auoPGdA08tlYBSULSWBcsFb
         bYtrP8z0jEsVUyH9I7vH4NW85NKDuhmIoK6IhSoSXic3vtkwlvDkxN7Ir5lHH8DkcE2V
         U9Xr9qqQ6azA9s/TiX3dzkRcGXGjbYrngbfZo1tOD9ZOy140wtV0bVhSNYkIcAuRoq8N
         EKViw1nM1/Tdt4Xffj9R2+VVGxp+R+lUov1/2GDzuLVGKKrEkAWDLQQQDCHKaMiQ896D
         MeuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688035544; x=1690627544;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rPgciElgzUGO4FwKCi9JH3tmxZ10trKO4Q5m+IOiJvQ=;
        b=NoOS9xbcfe1I/3PuJtOGxrMnS667i0pWT4Y1+i9sXu9LXlaYn4aBwaMRsrjEyMZ+/r
         UbJOBCA+2knzX4zb1mWebuuP3yPOu+x5ZR3wgR1vLGB3rhaz1mI6IivjxnJkQzFCad5S
         9aBczMv/V/uOepaQoBAc5YQ/yK3w6ZzlByZa8KepJKqRam+GwB1Dr+MV0bUS3+PHxNuc
         ma3dh4/xfM4Syz0B781GXgd0OO0nCE0xgFEkepLUi4tehkfXUJHcursK7yeyginzgM4I
         8wWMd8czE4lplv2ucZdgR3eJsR9uFmXEFGajZ3jieSW7ytlzAGqmx42WuxWKNIx3oSuc
         9SLw==
X-Gm-Message-State: AC+VfDzV720adMuxxwu2JTfUGpKxnVvgpUuXkxlg84qvfeRdNm//b9wX
	0X0nRcxTeVXxFKNbgF3gQK0w7A==
X-Google-Smtp-Source: ACHHUZ6XHUNYmKcs3JzmHO9VZBh+dT3G0wnsJEi7AVMINviZrcRp5QkUC9Xe15lpI3lpu6eCsBv62A==
X-Received: by 2002:a05:6512:239a:b0:4f8:6ac4:1aa9 with SMTP id c26-20020a056512239a00b004f86ac41aa9mr1736716lfv.21.1688035544402;
        Thu, 29 Jun 2023 03:45:44 -0700 (PDT)
Received: from nuoska (85-76-5-86-nat.elisa-mobile.fi. [85.76.5.86])
        by smtp.gmail.com with ESMTPSA id w25-20020a19c519000000b004f85885cff1sm2276870lfe.134.2023.06.29.03.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jun 2023 03:45:43 -0700 (PDT)
Date: Thu, 29 Jun 2023 13:45:41 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Armin Kuster <akuster808@gmail.com>, yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-security][PATCH] layer: add more memory for Qemu
 machines
Message-ID: <ZJ1g1eUyuI28nSbY@nuoska>
References: <20230628125609.1327477-1-akuster808@gmail.com>
 <bb92fedccd554006ed61fdb765c6655b7d9eb539.camel@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bb92fedccd554006ed61fdb765c6655b7d9eb539.camel@linuxfoundation.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Jun 2023 10:45:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60473

Hi,

On Wed, Jun 28, 2023 at 05:47:21PM +0100, Richard Purdie wrote:
> On Wed, 2023-06-28 at 08:56 -0400, Armin Kuster wrote:
> > Signed-off-by: Armin Kuster <akuster808@gmail.com>
> > ---
> >  conf/layer.conf | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/conf/layer.conf b/conf/layer.conf
> > index 334a945..5f289cb 100644
> > --- a/conf/layer.conf
> > +++ b/conf/layer.conf
> > @@ -28,4 +28,7 @@ INHERIT += "sanity-meta-security"
> >  
> >  QB_KERNEL_CMDLINE_APPEND = " ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', 'apparmor=1 security=apparmor', '', d)}"
> >  
> > +# We need more mem to run many apps in this layer
> > +QB_MEM="-m 2048"
> > +
> >  addpylib ${LAYERDIR}/lib oeqa
> 
> Putting that unconditionally in a layer.conf is a pretty poor thing to
> do for usability IMO as it effectively forces that decision on anyone
> including the layer. There has to be a better way to handle that, at
> least conditionally on some override?

Currently these belong logically to machine config but what about generic
machine targets. Could an image config define how much memory is needed
to run the image on qemu?

Cheers,

-Mikko

