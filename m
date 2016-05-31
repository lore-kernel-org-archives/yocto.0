Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E4CFE00D83; Tue, 31 May 2016 00:39:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f65.google.com (mail-lf0-f65.google.com
	[209.85.215.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8C31E00D2F
	for <yocto@yoctoproject.org>; Tue, 31 May 2016 00:39:05 -0700 (PDT)
Received: by mail-lf0-f65.google.com with SMTP id 65so16090966lfq.1
	for <yocto@yoctoproject.org>; Tue, 31 May 2016 00:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=qnXh8EeTK3/DpXuQkPkLbD0GEycSqIlxnoEz5E1JJmE=;
	b=p14SzEkJqOfhbmcFoKLfL+VQ3YxPIejZYYkPbxzK34Mn9GKd7yPdHXJDBzylGanCaZ
	hPq16vM3y+C/bMRSP9eQ05rPPbHglBEYRNZ59CFiswRMWujbgmY72J4ZWvF80CHBZeDx
	rUZzlmQd7BrC+u7RP5RmMDVt1JUWCbq/O9aI/s/9ltg8iZ1f19m6Cyaudbw0ARc0Ob8m
	r7FROSkvfFnmY+A6xzTMjuYPdo2zUcPGQjAzSKHg+zr0ruZLi7NrdWKUUsPR1Oeseg+C
	DFOYOj6AyeVB3Wn7lBxm/DfDxJYmcV6zc/t2o0lGqg218AyQWKesikgrgknY2enNSFNW
	cXHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=qnXh8EeTK3/DpXuQkPkLbD0GEycSqIlxnoEz5E1JJmE=;
	b=QV68fDOMN58V2WSL8w0FRekqHlzTI+jNqVZPu0uR4z500QSJSZIPAAJaDPjrap92D8
	IsxiF+DfksOfWaI8GkvXf4B3g8C3D8r2PyCoWG+4/6fS75NmBoVASrwxQ4CZqxQYJrWV
	fXh53FvxOwGgEL4j2cKdi1IuZR5TAVKItQaK/mFuGeL1Fe53AIfbnkdfxT4XMeynzSOS
	UW+8l0q6ywDOIOJZ3dIzLpa+DHlS3hNniwdVGIDmglc+zlBwFtMTO0wmxB+kAA/hr3rQ
	GxtQ8kHfcB1iQc7WOX0qkLHbG/Yw7Sw++f/m+Lm80Qr/vkI7uL83Zb05V4QUEDXBWSgI
	Et/g==
X-Gm-Message-State: ALyK8tKJKubHVJB5OaFap+y+TKrgWJcOlAK35FEXEwJtIx2uBAySoXVo/X4HPquLv50GdBeLPsACruxY0pVF3w==
MIME-Version: 1.0
X-Received: by 10.25.161.132 with SMTP id k126mr3267661lfe.101.1464680343987; 
	Tue, 31 May 2016 00:39:03 -0700 (PDT)
Received: by 10.25.42.132 with HTTP; Tue, 31 May 2016 00:39:03 -0700 (PDT)
Received: by 10.25.42.132 with HTTP; Tue, 31 May 2016 00:39:03 -0700 (PDT)
In-Reply-To: <20160530231646.7557d3b4@nuc.betafive.co.uk>
References: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
	<1464537553-24915-2-git-send-email-paul@paulbarker.me.uk>
	<CAMKF1sqhn+RckCxE0Kf68MFdNQMVP5d8K_8Rg3WkSaACsEbv_g@mail.gmail.com>
	<20160530091128.31b01008@nuc.betafive.co.uk>
	<CAMKF1srR=kqT5h4n+o7GSXtEO2yntURB+Ak70RxMJgd0+swucw@mail.gmail.com>
	<20160530231646.7557d3b4@nuc.betafive.co.uk>
Date: Tue, 31 May 2016 10:39:03 +0300
Message-ID: <CAMKF1sry_vLP59S+FJyHtUpEYBxdnQ-QUMJcSjdPu4TQ7y5D7Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/6] linux-raspberrypi: Allow override of PV
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 31 May 2016 07:39:08 -0000
Content-Type: multipart/alternative; boundary=001a113f21ec9cec1d05341e7746

--001a113f21ec9cec1d05341e7746
Content-Type: text/plain; charset=UTF-8

On May 30, 2016 3:15 PM, "Paul Barker" <paul@paulbarker.me.uk> wrote:
>
> On Mon, 30 May 2016 20:58:53 +0300
> Khem Raj <raj.khem@gmail.com> wrote:
>
> > On May 30, 2016 1:09 AM, "Paul Barker" <paul@paulbarker.me.uk> wrote:
> > >
> > > On Sun, 29 May 2016 21:20:21 +0300
> > > Khem Raj <raj.khem@gmail.com> wrote:
> > >
> > > > On May 29, 2016 9:00 AM, "Paul Barker" <paul@paulbarker.me.uk>
> > > > wrote:
> > > > >
> > > > > PV is now set in each version of the linux-raspberrypi recipe
> > > > > instead of
> > > > in
> > > > > linux-raspberrypi.inc. This allows linux-raspberrypi.inc to be
> > > > > used in
> > > > custom
> > > > > kernel recipes in another layer which require a different PV
> > > > > value.
> > > >
> > > > You  can also use weak define. Instead of duplicated value in each
> > > > recipe
> > >
> > > Weak define doesn't work here as PV is already weakly defined based
> > > on the recipe filename and that's what we're trying to override. We
> > > end up with PV values like "4.1" instead of "4.1.21+git..." if "?="
> > > is used.
> >
> > What issue do we have if we ask custom recipes to define LINUX_VERSION
>
> I'm trying to build from a source archive instead of a git repository
> (to avoid a ~1.3GB git clone operation) so the use of ${SRCPV} is
> causing me trouble.
>

Can you override the whole PV
> Thanks,
> Paul Barker

--001a113f21ec9cec1d05341e7746
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On May 30, 2016 3:15 PM, &quot;Paul Barker&quot; &lt;<a href=3D"mailto:paul=
@paulbarker.me.uk">paul@paulbarker.me.uk</a>&gt; wrote:<br>
&gt;<br>
&gt; On Mon, 30 May 2016 20:58:53 +0300<br>
&gt; Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com<=
/a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; On May 30, 2016 1:09 AM, &quot;Paul Barker&quot; &lt;<a href=3D"m=
ailto:paul@paulbarker.me.uk">paul@paulbarker.me.uk</a>&gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; On Sun, 29 May 2016 21:20:21 +0300<br>
&gt; &gt; &gt; Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@=
gmail.com</a>&gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; On May 29, 2016 9:00 AM, &quot;Paul Barker&quot; &lt;<a=
 href=3D"mailto:paul@paulbarker.me.uk">paul@paulbarker.me.uk</a>&gt;<br>
&gt; &gt; &gt; &gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; PV is now set in each version of the linux-raspber=
rypi recipe<br>
&gt; &gt; &gt; &gt; &gt; instead of<br>
&gt; &gt; &gt; &gt; in<br>
&gt; &gt; &gt; &gt; &gt; linux-raspberrypi.inc. This allows linux-raspberry=
pi.inc to be<br>
&gt; &gt; &gt; &gt; &gt; used in<br>
&gt; &gt; &gt; &gt; custom<br>
&gt; &gt; &gt; &gt; &gt; kernel recipes in another layer which require a di=
fferent PV<br>
&gt; &gt; &gt; &gt; &gt; value.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; You=C2=A0 can also use weak define. Instead of duplicat=
ed value in each<br>
&gt; &gt; &gt; &gt; recipe<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Weak define doesn&#39;t work here as PV is already weakly de=
fined based<br>
&gt; &gt; &gt; on the recipe filename and that&#39;s what we&#39;re trying =
to override. We<br>
&gt; &gt; &gt; end up with PV values like &quot;4.1&quot; instead of &quot;=
4.1.21+git...&quot; if &quot;?=3D&quot;<br>
&gt; &gt; &gt; is used.<br>
&gt; &gt;<br>
&gt; &gt; What issue do we have if we ask custom recipes to define LINUX_VE=
RSION<br>
&gt;<br>
&gt; I&#39;m trying to build from a source archive instead of a git reposit=
ory<br>
&gt; (to avoid a ~1.3GB git clone operation) so the use of ${SRCPV} is<br>
&gt; causing me trouble.<br>
&gt;</p>
<p dir=3D"ltr">Can you override the whole PV<br>
&gt; Thanks,<br>
&gt; Paul Barker<br>
</p>

--001a113f21ec9cec1d05341e7746--
