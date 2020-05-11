Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.8776.1589188866594612901
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 May 2020 02:21:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rM9mRl6J;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: armccurdy@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74492E01B32; Mon, 11 May 2020 02:21:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (armccurdy[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.217.54 listed in list.dnswl.org]
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37AD5E01AF2
	for <yocto@yoctoproject.org>; Mon, 11 May 2020 02:21:04 -0700 (PDT)
Received: by mail-vs1-f54.google.com with SMTP id y185so5128001vsy.8
        for <yocto@yoctoproject.org>; Mon, 11 May 2020 02:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ibLdv0ONUayhCjc5OMfFEO5fMq08lRF6TtBY7s9fIs8=;
        b=rM9mRl6JhYDwVsP9vJqetF5RQ6lmhOGghxvYvvJmR/4f17hAbyDSR5VSC3PjasPSqQ
         Fj5bixBqnKTN9b6/mjTEqPPj1jhWviq3ScBt7vtGtVpxHlNbqvt1LrbZx2lpv6ehaDXy
         /GEPqb4QCPKtKzUod2vrd76AdeJ3IszxXu1jq8aK6pDPLMtvQjCbVWBd5olA9qhjYydW
         5EZ59d8Qj1ZIa8Jj4iSjWiL1lP7Fz/9i/yuLWDEJLl3Tslc80JQrcIqcaruZ+70IGdPM
         r/toZ6e71iDlkWcnp7I8RmmNFXG17gCWcDxDzd/eVM1inu/5v+JBI4tymRiu9dY97jwe
         4DXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ibLdv0ONUayhCjc5OMfFEO5fMq08lRF6TtBY7s9fIs8=;
        b=c0Wk7w6RQC2WO+WTizTXQCpUPuNyRAYhD/FXn9Pp3c4bldsdF/F0ZXR2xgw8rc+NpR
         oWZReIChrHKsfNm6evwbxuGtQAX+Pp5X2Iw6AdULXPDXOsy58UwEtsR4EY/qMPYp5wfI
         +7DXhCH8NRdAPBVonvY8R7iynJM20IqRvH2f9AUncH0ovfGbn5tzn06DRNBNQPRT9I3J
         OLHxuKiJUqRFFSqqP/4TqnApYi2ufwUPiGzc5FSOR0JC6k9FcUuK2o3d09HKxDmSk4ao
         PvYNStInszXF07pBCDutma6RCeMTYBiyjwjAnW4LYQMCnEowO6gxPZd9DK409iL4l3+w
         8Wew==
X-Gm-Message-State: AGi0PuZKeD3164ReLlSoLfvx/R3phI4TL/WQeDSrzNnLF2HRD8NuAFtL
	nQnGofzpXfRnTuSyQiFo5mFfJ8nhyays4SGYLNU=
X-Google-Smtp-Source: APiQypLWdmZEzc/K79IdbE4d+Ab5/L+nZA4G2jYY+nh//0UrUGlRLyGQxsOXR5UxjNUbB1WQneeX2rymejjOCe49Ma0=
X-Received: by 2002:a67:342:: with SMTP id 63mr9963153vsd.11.1589188864030;
 Mon, 11 May 2020 02:21:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAGCTLNQW1WWHmy1zaE+LF-AKBQa-UpY8sfOy=HH3tt0rJLJFLg@mail.gmail.com>
In-Reply-To: <CAGCTLNQW1WWHmy1zaE+LF-AKBQa-UpY8sfOy=HH3tt0rJLJFLg@mail.gmail.com>
From: "Andre McCurdy" <armccurdy@gmail.com>
Date: Mon, 11 May 2020 02:20:55 -0700
Message-ID: <CAJ86T=W8CGra0J_SafTEEuNwuamifCkWykXy1S3FV4V3zJ6r1A@mail.gmail.com>
Subject: Re: [OE-core] [oe][yocto][bitbake] Fetching source using different protocols
To: Dawod <mhm.dawod@gmail.com>
Cc: OE Core mailing list <openembedded-core@lists.openembedded.org>, 
	Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, May 11, 2020 at 2:03 AM Dawod <mhm.dawod@gmail.com> wrote:
>
> Hello,
>
> I need to fetch a git repo using 2 different protocols ( ssh & https )
> So that when I run bitbake, It will fetch using ssh protocol first and if it fails to fetch, It will try to fetch using https protocol.
>
> can I do some thing like that or I will have to change it manually every time ?

You can add fallback rules to MIRRORS (either globally or per-recipe).
See the last few lines of meta/classes/mirrors.bbclass as an example.

> Thank you,
> --
>
> Mohamed Dawod
> Computer Engineer
>
> 
