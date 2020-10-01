Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
 by mx.groups.io with SMTP id smtpd.web10.8687.1601545177792655199
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Oct 2020 02:39:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=GLeekTve;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.68, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f68.google.com with SMTP id s12so4855369wrw.11
        for <yocto@lists.yoctoproject.org>; Thu, 01 Oct 2020 02:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=HsAg3ySwdscBgJjs7AcHfv96So853Ne2MAiQyeS32nA=;
        b=GLeekTveIPillJn+cJ8l1rEMaDKHWvNdK8yJ4BdzJ/BNF0N8EjfDli+CaqRvkgEmFR
         tDRHylDKlDUq/cXuqzM/8WJsx84pyFHM0J8drgx49pr2bZoOrWRyAfpLCVKMEZxb+FZJ
         xBaeHlqxQQR/Shxrjl2ewNqJWb9TyYhRnIwKs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=HsAg3ySwdscBgJjs7AcHfv96So853Ne2MAiQyeS32nA=;
        b=KkuW+YVy26T4lGXqfAy+318FxnnNjJgI5rLmD/lryP8/ZfdxXsybqgBwjDtkya5PHP
         mIxeBOqWJqSZdGqtrdYNO9XlXm4liZvUs9sup6kxMRICiDKBx9hz5KR3LewTbSI8PTiI
         2D6Z0jmNPsuWmKFOLwR8v3U0RrBgBQPPLgcTMkORQPIf0X7Om7pRrGUS4vdppKiljNdj
         VwfXCgCrWrU4vj2Bk8++hHc3cPV3w+YBcptOBNFqjKwob2iCQs5vmI6t6OMYlUEzOn+D
         VZFqWbFs9EmXFyXY1G3wZK3yR3L1aAcwEGsZkvZ/lMbAHdL+HDKvGtuX8NsstUElx7nH
         Pj4g==
X-Gm-Message-State: AOAM533ckVFpsSSsFu67jd4g42D16lwmFKslYaddcwfukfV55QqfE7Bs
	DnbMITwWbhRN2NrFZ67E7K4aIg==
X-Google-Smtp-Source: ABdhPJxWN9I7tSPyoQdFi/FT9/GHLTX8QKJ5I0+2oEaoSb469cvfuJv0nfRJ8FT27t0sA3hmCytdVg==
X-Received: by 2002:a5d:4a4b:: with SMTP id v11mr7728060wrs.36.1601545176181;
        Thu, 01 Oct 2020 02:39:36 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 7.f.c.3.4.0.2.3.2.2.3.7.e.3.c.9.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (7.f.c.3.4.0.2.3.2.2.3.7.e.3.c.9.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:9c3e:7322:3204:3cf7])
        by smtp.gmail.com with ESMTPSA id q12sm8057494wrs.48.2020.10.01.02.39.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 02:39:35 -0700 (PDT)
Message-ID: <f26652375f130067d2bc2eb14bde36d45091a8e3.camel@linuxfoundation.org>
Subject: Re: [yocto] Perl-Native compilation for THUD in Red Hat 8
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Aashik Aswin <thisisaash9698@gmail.com>, yocto@lists.yoctoproject.org
Date: Thu, 01 Oct 2020 10:39:32 +0100
In-Reply-To: <CANVQz1YkLgLj-Eq2bcYz933Lp4G-qvQ7=uWeq2XPjs8jRvFCcg@mail.gmail.com>
References: 
	<CANVQz1YkLgLj-Eq2bcYz933Lp4G-qvQ7=uWeq2XPjs8jRvFCcg@mail.gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-10-01 at 11:59 +0530, Aashik Aswin wrote:
> Hi Developers,
> 
> I recently migrated my machine to Red Hat 8 , I am using Yocto Thud
> to build my customized yocto image. 
> However, I am seeing the following Build Issue while compiling Perl-
> native
> 
> /usr/include/errno.h:48:10: fatal error: bits/types/error_t.h: No
> such file or directory
> |  #include <bits/types/error_t.h>
> |           ^~~~~~~~~~~~~~~~~~~~~~
> | compilation terminated.
> 
> Is there a way that this dependency can be moved to Yocto itself, or
> is there some alternate way we can try out.

The challenge is that we need some kind of functional compiler. You're
trying to use a much more modern system that didn't exist when thud was
released. Thud is now outside of its support window too.

I'd suggest using a buildtools-extended-tarball to allow thud to build.

Cheers,

Richard

