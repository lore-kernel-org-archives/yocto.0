Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.2355.1590570365278778057
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 May 2020 02:06:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sN4xRf29;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: alex.kanavin@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D97F9E01BDB; Wed, 27 May 2020 02:06:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.217.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8828E01BD8
	for <yocto@yoctoproject.org>; Wed, 27 May 2020 02:06:02 -0700 (PDT)
Received: by mail-vs1-f41.google.com with SMTP id 1so13365145vsl.9
        for <yocto@yoctoproject.org>; Wed, 27 May 2020 02:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sWjS5jQkZ7yfkCSm/+rOnnRdZu3vbupFI6CKG9q4l0o=;
        b=sN4xRf2991SZdVRad++ZCFkFT46T5wB/Fzeosqno5yviN9kXTiKAaC5WsVhkHN1BkJ
         enStjwbFfjBbTlwPZIKwIYjH3RyYRtTTeZ6+x1FMmGFJ0ZjuPi92heu/N/N543Br8VFH
         4COs0Bg1E0qZqAI6VKbfXvTRz0i1ZhZmPBIJv0oiqX0TLkX8B2BlNkhCBsIsd5ITX+/m
         Ewq//2Ur0u4wOoTNihZTlA2UvHNqyiyqgeXG/QBUt+vCnpXeq09hEgHChleU/NgiMvYV
         DZr6nQ3M6dRXtcQCRmg4xKV3N1y159JTF55lmqWHM+Rpfnh0bGQs4hMugrlW8eX5fJc4
         5QGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sWjS5jQkZ7yfkCSm/+rOnnRdZu3vbupFI6CKG9q4l0o=;
        b=tAGmskpj9jrXFqYY2PvxcSGzG3w3AabC5HEUcdEt4NzOqLUgBVdwVjy6JUfH0krzFg
         WZX092oPSg7Bniwk+m/RMLx+hsh1w3ZXdmjwyA4NVGFkGGEbmAHjp5mIQ+lZAHQS5eVC
         LN+mycJCUmQJpRf76U2QtikNWrCdYoq/EQePTn3Qtk1pMMGEAZfbJmdpy9dzN/AYOl2k
         C+FIFRdiq0mfT3pLPxyoOjjCI+q/xt9xgcYI4adrjGfNgWtSO5Q8VAD6u3qMf2egFMW5
         HA5R4t4LxuibK4x+nbtEIJ372Z6l1Jet/iDhyMgZEZOYqwfj2fYKojDG+lW3ZAdmmaZo
         2u4g==
X-Gm-Message-State: AOAM531cNpbNOs6coNRkYXkRDsUen8R6TGX68vAfNDezumujY3CREOZB
	Nn+aXWCYcj0Ohg1jVeTU8TJAU6GtJPHZmtgfAx8=
X-Google-Smtp-Source: ABdhPJwY+XQyUw+nBm2zytCBdn+JSEqJ7zql5lCwvEKd/Gw2J5jW8Dht1LAmgQzfxAvUO9yU5+w7d9XGRet57RLLnTI=
X-Received: by 2002:a67:3393:: with SMTP id z141mr3776609vsz.25.1590570361657;
 Wed, 27 May 2020 02:06:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8mNzC8QV=xuRBH1=cxn40RL9923kpw2vwK-7Nh-=enNnA@mail.gmail.com>
In-Reply-To: <CAEhQi8mNzC8QV=xuRBH1=cxn40RL9923kpw2vwK-7Nh-=enNnA@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 27 May 2020 11:05:50 +0200
Message-ID: <CANNYZj9PQOW4D2QyZBvZ1f8R5nAN1GeaLKADwk2a8F50EU3s2w@mail.gmail.com>
Subject: Re: [yocto] what to expect from distributed sstate cache?
To: Mans Zigher <mans.zigher@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000659e1805a69d8534"

--000000000000659e1805a69d8534
Content-Type: text/plain; charset="UTF-8"

The recommended set up is to use r/w NFS between build machines, so they
all contribute to the cache directly. And yes, if the inputs to the task
are identical, then there should a cache hit.

If you are getting cache misses where you are expecting a cache hit, then
bitbake-diffsigs/bitbake-dumpsig may help to debug.

Alex

On Wed, 27 May 2020 at 10:59, Mans Zigher <mans.zigher@gmail.com> wrote:

> Hi,
>
> This is maybe more related to bitbake but I start by posting it here.
> I am for the first time trying to make use of a distributed sstate
> cache but I am getting some unexpected results and wanted to hear if
> my expectations are wrong. Everything works as expected when a build
> node is using a sstate cache from it's self so I do a clean build and
> upload the sstate cache from that build to our mirror. If then do a
> complete build using the mirror I get a 99% hit rate which is what I
> would expect. If I then start a build on a different node using the
> same cache I am only getting a 16% hit rate. I am running the builds
> inside docker so the environment should be identical. We have several
> build nodes in our CI and they where actually cloned  and all of them
> have the same HW. They are all running the builds in docker but it
> looks like they can share the sstate cache and still get a 99% hit
> rate. This to me suggests that the hit rate for the sstate cache is
> node depending so a cache cannot actually be shared between different
> nodes which is not what I expected. I have not been able find any
> information about this limitation. Any clarification regarding what to
> expect from the sstate cache would be appreciated.
>
> Thanks
> 
>

--000000000000659e1805a69d8534
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The recommended set up is to use r/w NFS between buil=
d machines, so they all contribute to the cache directly. And yes, if the i=
nputs to the task are identical, then there should a cache hit.<br></div><d=
iv><br></div><div>If you are getting cache misses where you are expecting a=
 cache hit, then bitbake-diffsigs/bitbake-dumpsig may help to debug.</div><=
div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, 27 May 2020 at 10:59, Mans Zigher =
&lt;<a href=3D"mailto:mans.zigher@gmail.com">mans.zigher@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
This is maybe more related to bitbake but I start by posting it here.<br>
I am for the first time trying to make use of a distributed sstate<br>
cache but I am getting some unexpected results and wanted to hear if<br>
my expectations are wrong. Everything works as expected when a build<br>
node is using a sstate cache from it&#39;s self so I do a clean build and<=
br>
upload the sstate cache from that build to our mirror. If then do a<br>
complete build using the mirror I get a 99% hit rate which is what I<br>
would expect. If I then start a build on a different node using the<br>
same cache I am only getting a 16% hit rate. I am running the builds<br>
inside docker so the environment should be identical. We have several<br>
build nodes in our CI and they where actually cloned=C2=A0 and all of them=
<br>
have the same HW. They are all running the builds in docker but it<br>
looks like they can share the sstate cache and still get a 99% hit<br>
rate. This to me suggests that the hit rate for the sstate cache is<br>
node depending so a cache cannot actually be shared between different<br>
nodes which is not what I expected. I have not been able find any<br>
information about this limitation. Any clarification regarding what to<br>
expect from the sstate cache would be appreciated.<br>
<br>
Thanks<br>
<br>
</blockquote></div>

--000000000000659e1805a69d8534--
