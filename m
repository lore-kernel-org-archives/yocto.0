Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.118.1624747576268767418
 for <yocto@lists.yoctoproject.org>;
 Sat, 26 Jun 2021 15:46:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=B7prG81F;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: chuckwolber@gmail.com)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id AF04F38C0654
	for <yocto@yoctoproject.org>; Sat, 26 Jun 2021 22:46:14 +0000 (UTC)
Received: by mail-pj1-f49.google.com with SMTP id g24so7568982pji.4
        for <yocto@yoctoproject.org>; Sat, 26 Jun 2021 15:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BLEwrA2Z2hnqlQKeM+j4xhTVvOd36TztAa/WlAOIsNs=;
        b=B7prG81F7cElCQSY5UWSTZIOdWq/8mVb4XvIVOMaFeOrsErYcVmz+1wwZp8EhgmJlY
         t6I/lADl1uMD0IdfHqtbyC4+kuvyHSGb2eMZScvNv2pRnCvorxgWcxTJ0mqjJ2ww/EtU
         3+cS6NgNJU02+xmwO7KoMmfnLfE+nvYpwW0yxm0pxn9WUiVg2yUGngoV4cdQsK6N+khF
         qAeWmxHjni/5U2CR9mIt3PLEw7W1vKcbXtkeY/rV4avr3wXIEPL/Sxoyx4CrSYNG/k1V
         xKPhnz02rLnjGPYPaCffgHZHn2r2xYVR1EXZpOB1owSRQ0avL19bjZpjfWvUljmGPHcF
         Ukgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BLEwrA2Z2hnqlQKeM+j4xhTVvOd36TztAa/WlAOIsNs=;
        b=XsEFH8VQG1w06JAFjiUV6xWTjwlMCq+bCBvVGyL4FE6c9Xzh1M+4A44LRnegjR4Z65
         G7iPSnmc2BrlBhapxiNyfGEPnSJx1ily8CS97JiC7TDUVuBVAd7xNavW70IwRHsJIL1o
         PtG5t32HyAmQtousv1i7+FkpyXMkSi2d8cHLfUZgTo0Dc0Ec3y3HZkf7Fh3S0rqQn0Z5
         lBg3K3NuvdgLvRMIEsJ8FW6rsvs2FX0xzh3/848RgAPGqnN4/FvPMWvz/5/KEq0PD77w
         LHxKVXeCsXFKYKgVRQwRTHk2w7H20NduFzjnJ8ePFHwSwNYtdH2ZrzALJtDZP61gjl2M
         Gb+Q==
X-Gm-Message-State: AOAM533p6z0sQT8pjXiYRlbTYw8lQGiP7PSmqS7NihxLucNb6SryjENP
	mpaacQCuLmDozvSPe0v/+BenCHmkVOqvYRJY+34=
X-Google-Smtp-Source: ABdhPJw0eA0v/Q9BoJveThU0vsTRI9JXSvgyYEp0EUhCaPtYovv3YDIUYF1a5hR6gvF1nCV15GosJtjGPGEgkIi8V7M=
X-Received: by 2002:a17:902:ecca:b029:128:a0a8:40e0 with SMTP id
 a10-20020a170902eccab0290128a0a840e0mr8406367plh.2.1624747573941; Sat, 26 Jun
 2021 15:46:13 -0700 (PDT)
MIME-Version: 1.0
References: <f5e52a14-95f1-5965-a71e-cd2a38fbd7ab@crashcourse.ca> <b83aaff909c4b8db568efebc24364778abf5b0f4.camel@linuxfoundation.org>
In-Reply-To: <b83aaff909c4b8db568efebc24364778abf5b0f4.camel@linuxfoundation.org>
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Sat, 26 Jun 2021 15:46:02 -0700
Message-ID: <CAB=6tBSdwLGt7nfVJB+7o3i9rffJ3kP8Ux_tnEmy3eCNa2ywWQ@mail.gmail.com>
Subject: Re: [yocto] what's the state of things with pushing the bounds on ASSUME_PROVIDED?
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000fe9a9f05c5b30504"

--000000000000fe9a9f05c5b30504
Content-Type: text/plain; charset="UTF-8"

On Fri, Jun 25, 2021 at 4:43 AM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

>
> In summary, I see a lot of problems for what amounts to not much speed
> gain. Particularly when we have a mechanism like sstate available
> which allows binary reuse.
>

Very strong agreement here. My 2c is that Yocto/OE should be going in that
direction even
further. One of the significant benefits of the OE build method is
eliminating, to the greatest
extent possible, the (usually) undetectable influence of variations in the
host platforms.

Any given distro is probably stable enough, but that does not guarantee a
consistent result if
we attempted to build the same image on all available stable distros. We
might get lucky and
actually achieve that, but I would not bet my life on it, particularly if
we started using even more
native tooling.

"Stability is a local construct, not a global one."

For our own project, we have taken this as far as practical. We eliminated
the third party
distro host platform (Ubuntu) about five years ago and built our host
platform from Yocto/OE
sources. Each new version of our host platform is built from the previous
one.

..Ch:W..

-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--000000000000fe9a9f05c5b30504
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Jun 25, 2021 at 4:43 AM Richard P=
urdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.pur=
die@linuxfoundation.org</a>&gt; wrote:<br></div><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><br>
In summary, I see a lot of problems for what amounts to not much speed<br>
gain. Particularly when we have a mechanism like sstate available<br>
which allows binary reuse.<br></blockquote></div><div><br></div><div>Very s=
trong agreement here. My 2c is that Yocto/OE should be going in that direct=
ion even</div><div>further. One of the significant benefits of the OE build=
 method is eliminating, to the greatest</div><div>extent possible, the (usu=
ally) undetectable influence of variations in the host platforms.</div><div=
><br></div><div>Any given distro is probably stable enough, but that does n=
ot guarantee a consistent result if</div><div>we attempted to build the sam=
e image on all available stable distros. We might get lucky and</div><div>a=
ctually achieve that, but I would not bet my life on it, particularly if we=
 started using even more</div><div>native tooling.</div><div><br></div><div=
>&quot;Stability is a local construct, not a global one.&quot;</div><div><b=
r></div><div>For our own project, we have taken this as far as practical. W=
e eliminated the third party</div><div>distro host platform (Ubuntu) about =
five years ago and built our host platform from Yocto/OE</div><div>sources.=
 Each new version of our host platform is built from the previous one.<br><=
/div><div><br></div><div>..Ch:W..</div><div><br></div>-- <br><div dir=3D"lt=
r" class=3D"gmail_signature"><div dir=3D"ltr"><div><b><span style=3D"font-f=
amily:monospace">&quot;Perfection must be reached by degrees; she requires =
the slow hand of time.&quot; - Voltaire</span></b></div></div></div></div>

--000000000000fe9a9f05c5b30504--
