Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web12.2125.1587541218091103959
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Apr 2020 00:40:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=K99tQEoe;
 spf=pass (domain: konsulko.com, ip: 209.85.128.42, mailfrom: pbarker@konsulko.com)
Received: by mail-wm1-f42.google.com with SMTP id h2so1101227wmb.4
        for <yocto@lists.yoctoproject.org>; Wed, 22 Apr 2020 00:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:content-transfer-encoding;
        bh=F7TSpysZ29Bf7pkDry/jUW76XaWV5hfdm0JbpSGU4Q4=;
        b=K99tQEoen10KQpzYGlWeJrh10CS3QlUIfuSSO33sZ/gPIcNqsYxVVtWC7VGf4hWVAo
         hBjkDmN6yFs/E5vZ92Gt4++emcOMWuIQcfyFjrXoafe48mSaTzNyN6UBSpa9gIh/SH04
         lZIkOJ1Ut6GQQdIdnWox1zVSp6ByuOyp5xUZc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:organization:mime-version:content-transfer-encoding;
        bh=F7TSpysZ29Bf7pkDry/jUW76XaWV5hfdm0JbpSGU4Q4=;
        b=U+BtlgWPHW3FqhqGGBkDiJIELcvFHxc7kbVfM4PylvC9V8UpoLRDczCKJivCMjRFti
         3EGa9yG0fXQ13T48LfSE5yxPhYwPVI5ibgNAKUZ7uKOOT+Pe8uf0ly0dmTSkXw2FEDRi
         yhJaQzagr3aEwpl08qcJ+3xu+hLZUrAP4LT0yrhBP9GH5yXPYw7UpvYFuRYGK6OmAcu8
         yNsn9fB9L5BWqaVTEMHrn6LuWtRK+s14ZvqP2v+s1wcEtqog4Cl0FzjVaj3kma2Fi5hv
         sTxIX0Wm5DjCIMyTlEFwV7W3Ygxlk6mHb4iryJ4+mfZAZg83dx7oeNX44oQB5lz+ccdX
         pnyQ==
X-Gm-Message-State: AGi0PubfN2KrfTfX9JyqPvD8OGNk/KXlfKYogNHuicJ87b1S0D/+XdBQ
	mb68FPOpANtGzSjigD1Ya9TQww==
X-Google-Smtp-Source: APiQypJWlvwsHsfhQGXeqaLokx4toPj6A4yV/vrII/BYN5ytW9gTeCHy7o6wbiw8IE7t4Milulk3BA==
X-Received: by 2002:a1c:bd08:: with SMTP id n8mr8888952wmf.23.1587541216642;
        Wed, 22 Apr 2020 00:40:16 -0700 (PDT)
Return-Path: <pbarker@konsulko.com>
Received: from ub1910 ([213.48.11.149])
        by smtp.gmail.com with ESMTPSA id k14sm7136847wrp.53.2020.04.22.00.40.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2020 00:40:16 -0700 (PDT)
Date: Wed, 22 Apr 2020 08:40:13 +0100
From: "Paul Barker" <pbarker@konsulko.com>
To: "Vineela" <vineela.tummalapalli@intel.com>
Cc: "'yocto@lists.yoctoproject.org'" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto-announce] [ANNOUNCEMENT] Yocto Project 3.1 LTS (Dunfell 23.0.0) is Released
Message-ID: <20200422084013.6820f783@ub1910>
In-Reply-To: <BYAPR11MB27905ECBF13E8421E93CD6A488D50@BYAPR11MB2790.namprd11.prod.outlook.com>
References: <BYAPR11MB27905ECBF13E8421E93CD6A488D50@BYAPR11MB2790.namprd11.prod.outlook.com>
Organization: Konsulko Group
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue, 21 Apr 2020 21:15:08 +0000
"Vineela" <vineela.tummalapalli@intel.com> wrote:

> Hello,
> 
> We are pleased to announce the Yocto Project 3.1 (dunfell-23.0.0) LTS Release and is now available for download.

Congratulations to everyone involved in this release! Despite some resourcing
changes and challenging times in the wider world, Yocto Project is still
moving forward and improving.

> - -------------
> Dedication
> - -------------
> 
> This release is dedicated to Scott Rifenbark, technical writer for the Yocto Project from the project's inception in 2010 until his passing in January 2020. Our documentation stands in his memory, and it is fitting that some of his character will always be in those words.

This is very fitting, I know Scott was a friend as well as a colleague to
many involved in the project and he will be missed.

Thanks,

-- 
Paul Barker
Konsulko Group
