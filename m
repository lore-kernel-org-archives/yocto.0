Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C70E81E07
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 15:10:41 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web10.15329.1696605038220654491
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Oct 2023 08:10:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=JkCiLk1o;
 spf=pass (domain: linaro.org, ip: 209.85.208.182, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2c00e1d4c08so28138861fa.3
        for <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 08:10:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696605036; x=1697209836; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rFszuKWoFncf516SZIYq9lDugz4vgskaTSIDWcCE1ug=;
        b=JkCiLk1ocmR/cEoW+7A57n3K3/w+FTRd+MKR9A/CSyS5GbjyIgaktoEI95H3PWHWPx
         7oDzzAlX++HUnKDkcLa7Ptr9Ek7TyV4K6Y2G2rmlZaKn5cjaBOHxfyX6U2eGbnQEO6xX
         JqlhVOa2dlxVeonmAmQZaIopUZs39EbJZy2T1vPZ9qG89aW880wujMHRGZGwEJaRlXul
         pL5m0ToUNfGgf6BdBE45/p/DbBMWjCIYG9xFO5iZG1+07MjTugCJtCphM5T824MTUOlP
         6TXkzizZMmGJXVZ/wy0VD2pyfCsMnbXkVu4cRu4I4kjWi6y7mybT/eb7YNw+L/MtOBVG
         xhSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696605036; x=1697209836;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rFszuKWoFncf516SZIYq9lDugz4vgskaTSIDWcCE1ug=;
        b=p6ThorJLnGd4U9qIURnkTQoLKueLznbGD111AP1sZ1j2W6zqFzwAo7DKKmOh9Q9FQg
         HqZUxGBpPjIyxzdwEJxsCcufvANeJK2j/yWA5oRGJa0ZLSOhWk5TNj3UDc3It/2jTIc9
         m2DmG7OMM7aXc2cCxuNi6GFvytIffMuWiqo/EWpaOTkuDV/UigjjPkDsjuJtxAEFLhJY
         8QAPIDKBA8jNL5RkXKfdC9aFwetARw7XaBmqWw9IbIvomr62K54nZ7BwEeoKNZ6PmnzS
         KM2yNiDn/TDejF6ItRYs6VOQHJSknNLVlUDIaJ1TUw8e4RcWEjsphv92k6MkKkcVmTtU
         2bWw==
X-Gm-Message-State: AOJu0YzQXetysP7eSMB+gT5xHAH1xTQztaJrI61kcp+pbgPyZ5YseLsn
	3wItddrKW/iTMloXGG2ItUD1uA==
X-Google-Smtp-Source: AGHT+IHAsjx7IBO0VKHGAgzc0u3PiXyayR1sDWwWBnCUNhFzZOl+jBsCkJQEDMZKjJE/ZDzqZx2P7A==
X-Received: by 2002:a2e:8692:0:b0:2be:5c58:cfa0 with SMTP id l18-20020a2e8692000000b002be5c58cfa0mr7049586lji.11.1696605036323;
        Fri, 06 Oct 2023 08:10:36 -0700 (PDT)
Received: from nuoska (85-76-112-31-nat.elisa-mobile.fi. [85.76.112.31])
        by smtp.gmail.com with ESMTPSA id e17-20020a2e8ed1000000b002c128e45245sm825928ljl.23.2023.10.06.08.10.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 08:10:35 -0700 (PDT)
Date: Fri, 6 Oct 2023 18:10:33 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Dave Hitchman <dave.hitchman@kymati.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] aptly repository manager
Message-ID: <ZSAjaY4vbewVjveU@nuoska>
References: <AM9PR03MB701298B52D19BAF588622F2092C9A@AM9PR03MB7012.eurprd03.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <AM9PR03MB701298B52D19BAF588622F2092C9A@AM9PR03MB7012.eurprd03.prod.outlook.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 15:10:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61261

Hi,

On Fri, Oct 06, 2023 at 01:15:02PM +0000, Dave Hitchman wrote:
> Has anyone added this to a yocto build?
> I am sure it is possible but cant find any info, maybe someone has done it

Layerindex is the place to search for packages and recipes.
Sadly aptly isn't found from there:

https://layers.openembedded.org/layerindex/branch/master/recipes/?q=aptly

Note that packages (rpm, ipk, deb, tar) and their repositories are used to build
images but other use cases like updating packages on older images/installations
from a package stream are not so frequently used and may be buggy.

Cheers,

-Mikko

