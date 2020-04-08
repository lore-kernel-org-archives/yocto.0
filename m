Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web10.10241.1586348490585109489
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Apr 2020 05:21:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=PINpE0a3;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id t203so4916963wmt.2
        for <yocto@lists.yoctoproject.org>; Wed, 08 Apr 2020 05:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=9EEHl2oCm2FijoioxfNb2xxeTr0+Qkv8HDct1O2YJWQ=;
        b=PINpE0a3hD5yxNq5qo6HIIghT+mehvvOaPABAspKykH1LB0H3cBeVkHpooW4u1d8zz
         xXxKRfDT43Ybjx/C1Hmb5E1xPOAYmC2+Y6OkoW8gig789dsL7QUG42K59X7UHATb333T
         B9LX78w4D+WYKRQH4hO/b3Tr9cmJKAVegBdww=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=9EEHl2oCm2FijoioxfNb2xxeTr0+Qkv8HDct1O2YJWQ=;
        b=mvJoLwT+509p5+k6LF8pK8Vn1rUhLS/4bVxXU9hSCr1197vKEQuY8wIivj0BQDIU57
         8GyEdogn+psg4HZlsWQCpj9o97nT2bv7Tx80aqCrdCz7foJClf7pXn8dCbHUJkf9A2Mf
         NpWTWVcA5BEJSnoSrGJoonS7LUoaXCS5w7X4tZC6Ta/GHBWPjNvs7Fd1Tx3F4JD0SvD2
         J8yxJ5hWlBaKaNgJJukmnH/rhnYz2nKSBiIjJAMLXvzULX38GYQUKaNAmV1+Hdww+lHa
         uCkY/YvLPiF0cUyl7fbi1xhOzt9xdKX+I4PJbMlltkVm8Zw5JFY4c+xMtRvwDruZWHJy
         /oFw==
X-Gm-Message-State: AGi0Pua/C6H45fMXL5apf5yOpR78T0G56iMGjx/MUB6ZddtoFROzTad5
	U+EJqC0qi27HWlsM114x1D95pg==
X-Google-Smtp-Source: APiQypKxF32x48ExrYL8sQvdUqHmCNXQKFNRbDao+fiXlLwyzF+dzljcpGxR2vKhAsUgNz2DsDF2MA==
X-Received: by 2002:a7b:ce81:: with SMTP id q1mr4708307wmj.156.1586348489088;
        Wed, 08 Apr 2020 05:21:29 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id y22sm7670653wma.0.2020.04.08.05.21.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Apr 2020 05:21:28 -0700 (PDT)
Message-ID: <a6ebe6ce72619b412c3f67520e02ae2883b93d85.camel@linuxfoundation.org>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.1.rc1)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, Poky Build User
 <pokybuild@debian8.yocto.io>, "yocto@lists.yoctoproject.org"
 <yocto@lists.yoctoproject.org>, Michael Halstead
 <mhalstead@linuxfoundation.org>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, 
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
 <apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,  "akuster808@gmail.com"
 <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Date: Wed, 08 Apr 2020 13:21:26 +0100
In-Reply-To: <CY4PR11MB187933FF55C303A42F2E96D0E3C00@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <20200406225303.32E2A1A00A2@debian8-ty-1.yocto.io>
	 <078e777465fcb1bcbcaba9f3290edeb0160b6e6e.camel@linuxfoundation.org>
	 <CY4PR11MB187933FF55C303A42F2E96D0E3C00@CY4PR11MB1879.namprd11.prod.outlook.com>
User-Agent: Evolution 3.36.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-04-08 at 01:14 +0000, Jain, Sangeeta wrote:
> Hi Richard,
> 
> Thanks for update on 
> https://autobuilder.yocto.io/pub/releases/yocto-3.1.rc1
> Unfortunately, I didn't received any mail for 3.1.rc1 or rc2 build
> notification.
> Looks like automated mail has some issues.
> 
> I will now start the QA on 
> https://autobuilder.yocto.io/pub/releases/yocto-3.1.rc2/
> 
> Thanks,
> Sangeeta
> 
> 
> > -----Original Message-----
> > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> > On Behalf
> > Of Richard Purdie
> > Sent: Wednesday, 8 April, 2020 5:05 AM
> > To: Poky Build User <pokybuild@debian8.yocto.io>;
> > yocto@lists.yoctoproject.org
> > Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
> > <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>;
> > Chan,
> > Aaron Chun Yew <aaron.chun.yew.chan@intel.com>; 
> > akuster808@gmail.com;
> > sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
> > Subject: Re: [yocto] QA notification for completed autobuilder
> > build (yocto-
> > 3.1.rc1)

Thanks.

For reference you can see you're included in the Cc: list above so I'm
not sure why you aren't getting email. I'll ask Michael to look into
that.

Cheers,

Richard

