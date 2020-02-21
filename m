Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web12.12155.1582306721931226412
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Feb 2020 09:38:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JbWkG0S3;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id a5so2627637wmb.0
        for <yocto@lists.yoctoproject.org>; Fri, 21 Feb 2020 09:38:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=5tzkU4TeLSi6KRrXCGvEhYmG7FEkzhfH3i2+NCvFdBo=;
        b=JbWkG0S3qSY1eUQkZaVcYGIHxkjQtcuSrtKjsowj/kJokN29oz+Z5eYJIp2nZRrKAG
         Dr10NDnwJKkwiHQED3LdHq3DXj1KHPyzoTqwPfdj2FTndmX391dB05mt6rIydTYeet6n
         b7by8ohGWKk2nJd7AMzleOBOMCh0ZXLKfROiU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=5tzkU4TeLSi6KRrXCGvEhYmG7FEkzhfH3i2+NCvFdBo=;
        b=cTooazfdCXK0rVLY0pScQzc0mvjZwceWl5J3CMiodFcCCbBqWxRU8VOruiLcQGVakW
         QbNRCThJCSvQYDGF7ONWa7ii85OQpfV7eeo++GBZ0PUwYF9g2kmzGkxP5ZouKpFimeAh
         LPAU+hAqGxc1HJWt4P3WGAgp/qWB5ZM3a7neRnw/2T6mGcXJbjq50mPU/hDPensJIx+m
         c8Q9T90iftlYQ1pp8rvunx7tK7GfBsYPnZJdwhXm8aIdXVG/wT4s8DNyHez+V93jluGk
         4hCDQhiZv77Dz6enXS3r9bZvw0hF58pqFN8FpMLM9LIvKDBADDqXPeoe/4WJ3Xki2WsF
         L4hA==
X-Gm-Message-State: APjAAAXSFt9cUPMB+Jxqz58lIWGiI5v2X2xNIQ3ATiUh8EDQAZ/KJd8b
	bnIrazAd13UZ1h4PK68YXvsDvQ==
X-Google-Smtp-Source: APXvYqwJ3o1CYRJcop1ngc3nq6+TwZqbXQYEErtASf6+yluUP6t0jeASlEUOeMhCT3z3rLmSWQk0yA==
X-Received: by 2002:a1c:660a:: with SMTP id a10mr4957367wmc.122.1582306720362;
        Fri, 21 Feb 2020 09:38:40 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id i204sm4654748wma.44.2020.02.21.09.38.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2020 09:38:39 -0800 (PST)
Message-ID: <9b875592a194c843343d4a03593be519a87c2072.camel@linuxfoundation.org>
Subject: Re: [yocto] QA Cycle report for build (yocto-3.0.2.rc2)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>, "Jain,
 Sangeeta" <sangeeta.jain@intel.com>, "Mittal, Anuj"
 <anuj.mittal@intel.com>, akuster808 <akuster808@gmail.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, 
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
 <apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,  "sjolley.yp.pm@gmail.com"
 <sjolley.yp.pm@gmail.com>
Date: Fri, 21 Feb 2020 17:38:38 +0000
In-Reply-To: <BYAPR11MB279025D63172F1E8F7E18D8288120@BYAPR11MB2790.namprd11.prod.outlook.com>
References: 
	<CY4PR11MB1879657C3887087DEC4B7573E3100@CY4PR11MB1879.namprd11.prod.outlook.com>
	 <c5548ebb-b027-40da-5c93-d944aed949d0@gmail.com>
	 <c49287d5cf34bb5318b34e60028eda8ab3efe088.camel@linuxfoundation.org>
	 <C0207330DF60C5409302EC78C3FE68F3034491FD@PGSMSX101.gar.corp.intel.com>
	 <CY4PR11MB1879F1750C572C67229F7824E3130@CY4PR11MB1879.namprd11.prod.outlook.com>
	 <004690a057a50b8554de69a4259b0045de0a7d99.camel@linuxfoundation.org>
	 <BYAPR11MB279025D63172F1E8F7E18D8288120@BYAPR11MB2790.namprd11.prod.outlook.com>
User-Agent: Evolution 3.34.1-4 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2020-02-21 at 17:26 +0000, Tummalapalli, Vineela wrote:
> [Vineela]: So we will have 3.0.2.rc3 as the release candidate and not
> 3.0.2.rc2 as we see issues with that. Am I correct?
> If so, in terms of release process I just have to redo the things
> like staging 3.0.2.rc3 and do the release notes and test report and
> get it reviewed once I get the test results for 3.0.2.rc3 from QA
> team.

Yes, however the QA team aren't going to rerun all the tests, only
check the issue which regressed is fixed.

A new build did complete but a QA email wasn't sent out. Armin started
that build so I'm not sure whether that was the plan or not (the build
wasn't configured to). Armin?

Cheers,

Richard

