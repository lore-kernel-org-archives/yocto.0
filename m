Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F82C7EE31
	for <webhook@archiver.kernel.org>; Thu, 29 Aug 2024 07:34:52 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web10.7231.1724916889591010991
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Aug 2024 00:34:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=ZLCBVVtf;
 spf=pass (domain: linaro.org, ip: 209.85.208.181, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2f3f90295a9so3369041fa.0
        for <yocto@lists.yoctoproject.org>; Thu, 29 Aug 2024 00:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724916888; x=1725521688; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=l1o6QIT57/zUQ0KEu+LEys3Fn6FIuxXc5G/eG43fuRw=;
        b=ZLCBVVtf4ky8Ti0C4nN5f7c1OxhDoqk7wNxQM+/mufJCB9XQb5hriRtSWSjPuVN7vR
         Q6SEgzYlVZqsvsdB19CGaPxnGTLWHDdRUG7XsOCSn/5qZcrzZloUXuPuNnKy1dgJvVRr
         fW+4s+ReATALrLxSfa0mkkr5+eKrXtJuYdpcPwsw3JwzwXHg/8VX0JwQdVuoXnC9oklI
         KyQ7QtQIGogtPsRdGjVEB0d97s6y9ZWaZbocnci5rL49dtVLtOURwjSXqNA8okHQBrjs
         DHT0R1AeiDMSpL8tZ6mBVYJSftGOweQ2dJ1a947vnKF6R/FwwJ9jKYeZBB2WiEAPRy4b
         +2Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724916888; x=1725521688;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l1o6QIT57/zUQ0KEu+LEys3Fn6FIuxXc5G/eG43fuRw=;
        b=P8luiaMz8CKnc9uGybaLGk7tgilTWewsw80EsiD6mvoFEBSFzotW1YAAPvv8yJQ1U6
         SEzOhHpKzbYDzUydUTmY+c7v4sYEmzEm+o/bCXiQ4oDMBaMrMtLd2aD/DOMZk94BPTzx
         4BwAK4699ZiT8FtYkgbi0Of3DC8D4+ExzJUbjKF7gRUk8uSrrCCTzbctZ+fL8T04BGFn
         uhIEdmZUbAdYCEdA9nZuH585NbUjULcoydjN89VQuh9G6fwlxI1IuE2GRK8wh/f5xohH
         kqZAntIl16I9RtgYTypak1tyEVp+siIoKy0rMEnHhJBlmoRE+mgt6sJUA9eytKDhFkOn
         BL0Q==
X-Gm-Message-State: AOJu0YxkoNU34tAtMXuqswz+HaCGVF+ynSfmFsGo2lAnf8hFMDrOquNm
	xrDwrvGtK+xJsqOR4c3iPWJ1ICoPAA5dJgu5Kyp2s/DaxE1ky15zbeCeVcFiFKg=
X-Google-Smtp-Source: AGHT+IFTcVuhAsSiBTLOhhRUMO849rjkYEdraSyEz3EhF4GDr5df+u0quNHqy9s0e2OUcr+vie83sQ==
X-Received: by 2002:a2e:a9a1:0:b0:2ef:2cdb:5053 with SMTP id 38308e7fff4ca-2f6104cedf5mr14848271fa.37.1724916886918;
        Thu, 29 Aug 2024 00:34:46 -0700 (PDT)
Received: from nuoska (87-100-245-199.bb.dnainternet.fi. [87.100.245.199])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f614f00954sm1069171fa.41.2024.08.29.00.34.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 00:34:46 -0700 (PDT)
Date: Thu, 29 Aug 2024 10:34:44 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Yann CARDAILLAC Pro <yann.cardaillac@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto][meta-openembedded] How to properly build a lib package
Message-ID: <ZtAklNWwtgL0vbhQ@nuoska>
References: <CAC3TgA+HFgXcckqxUVgUQsRfJySytZSAj3PtSRD6TLzT5_yDqg@mail.gmail.com>
 <ZrM8ikxC3AwTgDHR@nuoska>
 <CAC3TgA+-s0BN3D3Bzwcg6_6vF2fipu_wGc4BWFwhZM8S97wjjQ@mail.gmail.com>
 <ZrN0cTChvgsn4skg@nuoska>
 <CAC3TgAJ7bwU6Q+bC6wyC-4633bQ+XHtqgv-_cnT-x9qCe5OEBQ@mail.gmail.com>
 <ZrOCsPB34L6ITVH8@nuoska>
 <CAC3TgA+Z3=ifRxcm075ARPkaf9rmDpjRUEa+NpbN6sku+zTnhw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAC3TgA+Z3=ifRxcm075ARPkaf9rmDpjRUEa+NpbN6sku+zTnhw@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Aug 2024 07:34:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63762

Hi,

On Wed, Aug 28, 2024 at 11:50:03AM +0200, Yann CARDAILLAC Pro wrote:
> Hi Mikko,
> 
> Well without the RPROVIDES I get the following error when a package DEPENDS
> on it :
> 
> ERROR: rj2d-com-1.1-r0 do_package_qa: QA Issue: /usr/bin/rj2d- com
> contained in package rj2d- com requires librj2d.so()(64bit), but no
> providers found in RDEPENDS:rj2d-com? [file-rdeps]
> 
> The only solution I found was to add the RPROVIDES. Is there something I'm
> doing wrong?
> 
> Basically the rj2d-com package DEPENDS and RDEPENDS:${PN}  to librj2d, and
> without the RPROVIDES with  librj2d.so()(64bit) I get errors.
> 
> Is there something wrong with the approach ?

I think bitbake should be auto-detecting the shared library RDEPENS. RPROVIDES
is usually only set when there is a virtual provider which multiple recipes
and binary package provide.

Something doesn't feel right about this.

Cheers,

-Mikko

