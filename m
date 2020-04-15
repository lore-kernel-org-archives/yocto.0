Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web11.756.1586992160542198425
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Apr 2020 16:09:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=TOuS+Y4C;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f45.google.com with SMTP id x4so2161381wmj.1
        for <yocto@lists.yoctoproject.org>; Wed, 15 Apr 2020 16:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=S/RO3FJUS9HTH8JBjQ2VuTtzgW3wagPXFOnYzmqGOU8=;
        b=TOuS+Y4CXBPikluKU3uepJmVXRBznzOkrrJlowBmA1NMwaWpiAv6G5PQSPWy04QQgD
         6+0XXPCu6karIlfFng7+fFxltWU6EBIY5egC1zy9y9WUyN8YT7uTY8zVyP+FGEaui/7A
         IasDDvJx/eXlpN9W+7tWRig9K2G3uEJTRbanc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=S/RO3FJUS9HTH8JBjQ2VuTtzgW3wagPXFOnYzmqGOU8=;
        b=JB7UfTU8QIIL/Hrqgs3ltpWviEpuI/Ku1k+kvRSeZASHN35tGU9GGXhyLXdhF2EBzq
         LpamJfZqzNLSHuNiULOfc4ZRoDdJBeyFY9c7OnSd8R/ewHrSc6QASjYYWObnGi5QntRK
         sdePxmrqbk2rsRs8EqekTRV8AomKTi2Yj4/Aj2VkUCsHtoufD9XS3QWePiLcWsTaHpE4
         iDtlc6wt3XwkPkjm5mHefv/uEuBUcH+bXgQ++us6oDlVkOB24bbV3q3Ky5k+aiQgqL7P
         Gr4iLG9gF/LRl+13HqK6HgEI1AhOqr148G/YOH+8/KW0QrHoFNJLmI7qsYZyylBaPFOf
         KZgQ==
X-Gm-Message-State: AGi0Pua0wR4UKIs+RGWMFMnauJNOs61TQRtVuVT/HtW6uzriPrqFAE3M
	Mi0e0b0zxRZGvgxqiLC/k4M3VA==
X-Google-Smtp-Source: APiQypKgPvRWUm14sTVk7VJwaVOmif1WuQW6yaWrIu+LiNITpNQbcokp94TeOOMM4/IqtWRZXKDYNw==
X-Received: by 2002:a1c:7416:: with SMTP id p22mr1714592wmc.80.1586992158800;
        Wed, 15 Apr 2020 16:09:18 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id t67sm1292581wmg.40.2020.04.15.16.09.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Apr 2020 16:09:18 -0700 (PDT)
Message-ID: <1e49f8cabc43bbd8e52928ca2f2757a71ee3bf78.camel@linuxfoundation.org>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.1.rc2)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: akuster <akuster@mvista.com>, Paul Eggleton
	 <bluelightning@bluelightning.org>, "Tummalapalli, Vineela"
	 <vineela.tummalapalli@intel.com>
Cc: "Jain, Sangeeta" <sangeeta.jain@intel.com>, 
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>,  "Sangal, Apoorv"
 <apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>, "akuster808@gmail.com"
 <akuster808@gmail.com>,  "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Date: Thu, 16 Apr 2020 00:09:16 +0100
In-Reply-To: <f80632f7-825b-f932-e34a-3f5739f52440@mvista.com>
References: <20200408040108.BA881414AB8@localhost>
	 <c64c8afa26ab7f89e46dce8c8fd8e794499947fc.camel@linuxfoundation.org>
	 <SN6PR11MB279783ED5D18450811B1189988DA0@SN6PR11MB2797.namprd11.prod.outlook.com>
	 <8722103.eVOfdP6EDU@linc> <f80632f7-825b-f932-e34a-3f5739f52440@mvista.com>
User-Agent: Evolution 3.36.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-04-15 at 16:05 -0700, akuster wrote:
> 
> 
> On 4/15/20 3:25 PM, Paul Eggleton wrote:
> > Release notes draft attached, including a dedication to Scott
> > (wasn't sure where to put that so I've just left it at the top) and
> > contributors list. Let me know if you notice anything
> > missing/incorrect. 
>  Thanks for pulling this together. 
> > I've also sent out the 3.1 migration guide for the reference
> > manual, Richard has just merged the changes:
>  I see the review window is down to an hour before merging. Is code
> review by twitter the next new thing ; ) 

It was merged on the basis it was a good starter and followup patches
are easy and very welcome.

Cheers,

Richard



