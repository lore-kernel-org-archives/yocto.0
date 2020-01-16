Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.4119.1579212533347585351
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jan 2020 14:08:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=rcif5yTH;
 spf=softfail (domain: konsulko.com, ip: 140.211.169.56, mailfrom: paul.barker@konsulko.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7FC0E01481; Thu, 16 Jan 2020 14:08:52 -0800 (PST)
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
	*      [209.85.167.179 listed in list.dnswl.org]
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BCBCE00BB3
	for <yocto@yoctoproject.org>; Thu, 16 Jan 2020 14:08:50 -0800 (PST)
Received: by mail-oi1-f179.google.com with SMTP id l136so20370997oig.1
        for <yocto@yoctoproject.org>; Thu, 16 Jan 2020 14:08:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=L25f+tO+4oW1t/9QDuLonwRqc8DTLs70VBLaCok48SU=;
        b=rcif5yTHgQnEkHY7aJPcmuOWyXP0fCwHZgGP8uLThXUGCu/5XH1edkL2iwxEherWfw
         9cjMeMGVt71RIxDFXBHJa2hnKRjvh4dSvaDAFaCoPOEp54X4EZcaioECiB4YDKPDhL0Q
         zBYKhtB8adQlaKYh3kX1umXCku3FQaV9FcqlE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=L25f+tO+4oW1t/9QDuLonwRqc8DTLs70VBLaCok48SU=;
        b=PPyeIcO9NdCV67pY18icDiX37iLC9ibFEDVut7lHH9tTG8DlteRj2z3pRlXEokUbZB
         Oher7luAYxv2WHeFVuPPffS3jS/RHAB/ndBmDqdK/okzuPH+5X97+rZrv6k7s9x8Ic//
         BdJqQxv/xUoxVBAJbDTeOuqikT1BUBoS5lbtzWoOupQflrhaONAfurFwz0/9JyXtabgY
         Q2t/V47jXclrd4jcO0M+gYqA9udda4RSfU+a5Lb4Ov5fw1XFItmglqQyMbl5ukFwxfKq
         j6TfzeFPY0G2lTrzRmVkuJ9vlvaQcuTmc9Va2i5MxBexyQo3dF0uW/wb8dqqH9H3sycb
         bYvg==
X-Gm-Message-State: APjAAAU/gptjMXm+sRAzyQk2bmOOogNiNOQxyrszX0Xv24jsOwX8vKFR
	phvwcgHLyOg2XxCYN47LPd15ZYZ6P7Swvy2wUaMfIQ==
X-Google-Smtp-Source: APXvYqz8eaPcUzO8aD3Q80N3XhJzFhITKgAqRme2Gdyigtmra12OEkPFxOjaCrW+I6NPHri1jaM1Rd7gPyLvqAJBeEk=
X-Received: by 2002:a05:6808:52:: with SMTP id v18mr1048748oic.152.1579212530470;
 Thu, 16 Jan 2020 14:08:50 -0800 (PST)
MIME-Version: 1.0
References: <CAM9ZRVv1O-vdWAtN=2GXjSz=sJ+LDGZYMKv0qiFzEa5Q3J9+Wg@mail.gmail.com>
 <722e1fd016354b3ad453bc04ee8e5d2cd7a24ec6.camel@linuxfoundation.org>
In-Reply-To: <722e1fd016354b3ad453bc04ee8e5d2cd7a24ec6.camel@linuxfoundation.org>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Thu, 16 Jan 2020 22:08:39 +0000
Message-ID: <CAM9ZRVsMXQrr_5qAAT6nMAoNqhv6mOT6m6CiER4XDNg-z4K0OA@mail.gmail.com>
Subject: Re: patchtest licensing
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>, 
	openembedded-core <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 16 Jan 2020 at 22:00, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Thu, 2020-01-16 at 20:07 +0000, Paul Barker wrote:
> > Hey folks,
> >
> > I've started looking through patchtest & patchtest-oe in detail and
> > spotted that all the scripts, support code and test cases are
> > licensed
> > under GPLv2. Is that ok given that we plan to copy this into
> > openembedded-core (probably under meta/lib/oeqa)? Is there any
> > practical effect of this not being MIT licensed?
>
> We have a mix of MIT and GPL licensing already. As long as the scripts
> have a clear SPDX license identifier, I think we're fine. If not, we
> should add that in the existing repo before the move.

Ok cool. Converting the license headers to SPDX is already on my list.

Thanks,
Paul
