Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.7917.1581608719447302810
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2020 07:45:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=CPYYtVfx;
 spf=softfail (domain: sidebranch.com, ip: 140.211.169.56, mailfrom: leon@sidebranch.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C617EE015F8; Thu, 13 Feb 2020 07:45:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.178 listed in list.dnswl.org]
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 386CBE00571
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2020 07:45:17 -0800 (PST)
Received: by mail-qk1-f178.google.com with SMTP id b7so6077154qkl.7
        for <yocto@yoctoproject.org>; Thu, 13 Feb 2020 07:45:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hNJJdzfmL60TeWiF3VmT3EOghmLucJ630TA9CDV/p3k=;
        b=CPYYtVfxvXu8pxCshP9/X1KB20s12Ez+LOMxG7CupLsHW+6MjCQSL76esRZoe0M2+2
         pLGyaN/jy6nZeL1VQQK1jw63bRyAe9ucNUqyy3afeACDA4UEQDjH0CtYB2SCGUgRQxN6
         x+r5sjO5LsH017fTmWVglcOm3zSZh3TNo7WznQmKhT8D2ZXN+U9FxSKjSl+F0wgLyz7f
         vmraenbK/+ONOegFVnKfGhptrS/yIlqb5ttqMX/KX5XpBQo9s9tf8xgIadxrlSHRRKfr
         WFjr0o1R7kzflXISCvdxRRVrWzSBh9R51XVqKISEON+6StG2Cg/nAFij9BWnId7uQtOE
         GFsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hNJJdzfmL60TeWiF3VmT3EOghmLucJ630TA9CDV/p3k=;
        b=aTAgIO/x8n83AI/2O0ai0UfEbl+WclESsjZNMj4Rq4NHadrio0vMDbHwz9xnRnR/Gd
         lhYk4eNwCsHXBIBFm0+kGD7TB1PDtHijbWz45Q5Y/3i92lkFD6FS5snmY8ko4ky1Grp5
         xnGOB6jTV1QPu6D6rDOLjZ/V26oUbk2/OkI8ajDyqBtQc+x1wa/Qd9IptcGWB7q8wzKm
         KKKcsafVOVZ+vg+ZV8UYmUB30UM61eA+sz2p3mPKCmoJDwDe0PuIamG0Ng4B+FGyj8iL
         +axU/tMjCdLE3CIYKxlK7Fu5vA63lSkNGzOuHtGzxXVE6j8T51VL1eChl07HN55BiZC6
         +XQg==
X-Gm-Message-State: APjAAAV2MiPO1eqO14yfLGYz+dG2iIeSbHfkvO8cCDS7dQSMlJqMpKgf
	v42JfRT0D3sLGypZEKQxiTmsx1Yh5YCcu6kAce9xvGjp
X-Google-Smtp-Source: APXvYqw8vIqJ2j0fm42EN+mMzwA464noXLilzCyaA7u0CblG16rMH1peXrVvE5OWB/pIVmmnv6V/zwoTRr5YtEXNJI4=
X-Received: by 2002:a37:aa8f:: with SMTP id t137mr12469854qke.61.1581608717190;
 Thu, 13 Feb 2020 07:45:17 -0800 (PST)
MIME-Version: 1.0
References: <alpine.LFD.2.21.2002130910250.2825956@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.2002130910250.2825956@localhost.localdomain>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Thu, 13 Feb 2020 16:45:05 +0100
Message-ID: <CAMjhiJimkmSzkGrw6Dfe6dN_tnwd-N9Y4MV3GGFYZ5Lgvoicog@mail.gmail.com>
Subject: Re: [yocto] dev-manual: differing versions of same recipe in different priority layers?
To: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello Robert,

On Thu, Feb 13, 2020 at 3:14 PM rpjday@crashcourse.ca
<rpjday@crashcourse.ca> wrote:
>   in the YP dev manual, section 3.1.6, there is a maddeningly vague
> note:
>
> "It is possible for a recipe with a lower version number PV in a layer
> that has a higher priority to take precedence."
>
>   so does it take precedence or not? just saying it's "possible"
> doesn't clarify it for the reader.
>
Yes, this should be re-worded. This is actually a FAQ.
(I remember more sentences like this exist, that especially for
non-English speakers might be difficult to interpret.)

My proposal would be:

If a recipe exists in multiple layers, the recipe with highest PV
*from the layer with the highest priority* is selected.
Be aware that recipes with the same PN in lower priority layers are
thus not selected, *even if their PV is higher*.

Regards,

Leon.
