Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.31354.1623035216779760388
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Jun 2021 20:06:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=e8cKzog9;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: bruce.ashfield@gmail.com)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 576B938C0839
	for <yocto@yoctoproject.org>; Mon,  7 Jun 2021 03:06:55 +0000 (UTC)
Received: by mail-qt1-f178.google.com with SMTP id 93so4289537qtc.10
        for <yocto@yoctoproject.org>; Sun, 06 Jun 2021 20:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MYvxrsWhF0BhrGcwuPJgAuZ01e7OzWsxVx8QUZAB654=;
        b=e8cKzog9bI125OKrpp5tbg+FH5cOXkrH2ke6smUr2TzHE4vCcQhbsvkN6DZUgy8Z8x
         KqKadT2nfA9o6oFVT5l4NcrkF+Mud1J9XEJ9NhUbHKC6VAjMuKN2BYbUmVHLIqvTLDab
         hYagyZFnySfWd0tTKcgc5UFXeMiuwj7cEvEUwtIMXG+WGh7HCNbDtIMqLjCGKM6LCzsl
         QsOowhS1DA6rzRP2syoJYhTG3/cumjk/vXvx7L4ZHkG5sRikxaqCXJO6l5Ncei8cueFn
         /4y+GW+/nXqa02slK+M7puEe4gJivXxfqwUP+I2s3PELBHJzBmYb6QFUhj9DGW35J3na
         KFQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MYvxrsWhF0BhrGcwuPJgAuZ01e7OzWsxVx8QUZAB654=;
        b=JQp7FX32QJDjurZ7nZvxFoZBnjESJxIAg1DlAYRwDVVTMb5D0aZd2Ybm73cfL/cQFC
         opSFOtHJ8Ds5emPIfd0UQIDg444vgwJYa4SpEw5kbiTmzN1F4r0nuj/KFto58SbDoo8w
         ftwbhQ+aT+eWFDUIoU1CA/8KIuFOocAavIlrVUPvq0iosH9ngWnv3fIR6ASDyefp6U1O
         Ft4jYAGKyuJIRPHzBNz8fRXu9+uIQR2LcAjkYMO9k5YieGKKd1wKHG0aIg+iYOBSuoVD
         8lN6e4ji3xMpEO8YvNXFiiDXmNC+e9RD7bCAURIjMBwMG5OSowtzMd8ZoGdcGEHIVxMZ
         pVvg==
X-Gm-Message-State: AOAM530zbO3AFOgro2/1yqr8P03cXo+awtw0ZmOcPKsEBE4RLcirInI0
	Gz+dN29AWvHZTorQMbd/dIqPEPGAHeol+yPf
X-Google-Smtp-Source: ABdhPJyiWh24ngn6joF4Y3oLDgoNOUPdEEH9v6eYUJnk9v6V4L9fFMJhgarIMWDy7K+vVmkbFNr9Cg==
X-Received: by 2002:ac8:5d55:: with SMTP id g21mr3429344qtx.101.1623035214171;
        Sun, 06 Jun 2021 20:06:54 -0700 (PDT)
Received: from gmail.com (cpe04d4c4975b80-cmf4c11490699b.cpe.net.cable.rogers.com. [174.112.159.151])
        by smtp.gmail.com with ESMTPSA id m128sm8726911qkf.134.2021.06.06.20.06.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jun 2021 20:06:53 -0700 (PDT)
Date: Sun, 6 Jun 2021 23:06:52 -0400
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: Zhantao Tang <zhantao.tang@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [linux-yocto] [linux-yocto v5.10/standard/nxp-sdk-5.4/nxp-s32g2xx]: drivers: dspi: fsl: fix dspi transfer hang issue
Message-ID: <20210607030651.GB25705@gmail.com>
References: <20210604054122.2732003-1-zhantao.tang@windriver.com>
MIME-Version: 1.0
In-Reply-To: <20210604054122.2732003-1-zhantao.tang@windriver.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


In message: [linux-yocto] [linux-yocto v5.10/standard/nxp-sdk-5.4/nxp-s32g2xx]: drivers: dspi: fsl: fix dspi transfer hang issue
on 04/06/2021 Zhantao Tang wrote:

> 
> Hi Bruce,
> 
> 
> There is an patch to fix dspi hang issue.
> 
> Would you please help to merge this patch into linux-ycoto kernel, v5.10, branch is v5.10/standard/nxp-sdk-5.4/nxp-s32g2xx?

This went to the wrong mailing list, but I did pick it up!

merged.

Bruce

> 
> 
> Thanks,
> Zhantao
> 
