Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.8119.1591711621895792413
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Jun 2020 07:07:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=ah0tzVN9;
 spf=softfail (domain: konsulko.com, ip: 140.211.169.56, mailfrom: paul.barker@konsulko.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57C0CE01C31; Tue,  9 Jun 2020 07:07:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.161.41 listed in list.dnswl.org]
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39AC7E01BF1
	for <yocto@yoctoproject.org>; Tue,  9 Jun 2020 07:06:59 -0700 (PDT)
Received: by mail-oo1-f41.google.com with SMTP id x17so4209120oog.6
        for <yocto@yoctoproject.org>; Tue, 09 Jun 2020 07:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5C3zRNwm7Bv0fp1RNHXH6ivAiRJ7p/ZaVJ/INAEJxeg=;
        b=ah0tzVN9jZVsmCZUgJOIY00gRq6BhSx0KTKbteHMVkzIeSvbU/ixPVGnt/ZO+GY5N8
         A0bodE7aQKDbMXQ6E51ddXEplPJTL8De+bLdoxPDtOveHybUSeHFVXFEcRulV49Gor7G
         q9IQ5PTPiC747gsY4abUeLsM6/9nQFRiITW7o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5C3zRNwm7Bv0fp1RNHXH6ivAiRJ7p/ZaVJ/INAEJxeg=;
        b=tArgM/3bM2t03zWaFp2z6qvrgaF5i86PaRR3TfMnnQfSoEhXMs9B7kTG4WIomFnif7
         1BSNLwiJnigzapcZG++3+juMu4JsdwrJdxmukKfA8PjgEev/RceGNj71ry9WQtOzKuJY
         RNM/3Zj3bPJadDO7ViSx5+G5VR7Pjn0uR9N/qgldGJ2sfcsoz+pCUPvMeB0lQkvCtfDZ
         qbaOR2CBWeA7xc5hfzo8kDAb3iLVp3lBok+Cf6ZTqe92o3Jdxz28N5C/qhhfJbfrOALI
         STNSZoRDl8y2r6ATc3QthiPogciX0P+7ieaG3SAed8bFG//yJtZ2xatvhfZ96LCYuIl/
         LCEA==
X-Gm-Message-State: AOAM530ox2X7Y5uDeX8PjmpqS+71C5XVrJijNP+xAp/nkJCp7GBMkiFn
	zaVTrbR85yft6uX/EmUn5ZjojXfHSzRb//hsiHj2XA==
X-Google-Smtp-Source: ABdhPJwpFFqsQt/wnDu2yV4ajV5kbQ2nieubD9cGYD8gMh7MsLSenJGkm+6yBQbZ7ragpCy4q5XOH/8qV97I15drMVc=
X-Received: by 2002:a4a:a10e:: with SMTP id i14mr18484821ool.68.1591711618369;
 Tue, 09 Jun 2020 07:06:58 -0700 (PDT)
MIME-Version: 1.0
References: <3ece96c1-0778-1b28-8305-5c6f7137e9ff@faresoftware.it>
In-Reply-To: <3ece96c1-0778-1b28-8305-5c6f7137e9ff@faresoftware.it>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Tue, 9 Jun 2020 15:06:46 +0100
Message-ID: <CAM9ZRVs=TwQ1evMiXb9GwXCzt-Z9nopRmaghiR8MYs4higoDkQ@mail.gmail.com>
Subject: Re: [yocto] OpenRC
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 9 Jun 2020 at 14:49, Mauro Ziliani <mauro@faresoftware.it> wrote:
>
> Hi all.
>
> There is a plan to integrate OpenRC like startup scripts environment?

I know of https://github.com/jsbronder/meta-openrc but I've not tested
it myself.

Thanks,

-- 
Paul Barker
Konsulko Group
