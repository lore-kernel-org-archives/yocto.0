Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFA27E00C40; Mon, 30 May 2016 10:59:01 -0700 (PDT)
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
	*      [209.85.215.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f68.google.com (mail-lf0-f68.google.com
	[209.85.215.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 152D0E00B30
	for <yocto@yoctoproject.org>; Mon, 30 May 2016 10:58:55 -0700 (PDT)
Received: by mail-lf0-f68.google.com with SMTP id w16so12422399lfd.0
	for <yocto@yoctoproject.org>; Mon, 30 May 2016 10:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=BRJ7aynokjHRxMpq5uO3Hm1wFDAOD3zscw/i0YaBy4c=;
	b=W4vK/fqVvF3VMPl3mqGKjgn2ktSpfJXEQ+cHfa0XNv2zQ5tTrM1ApF4nvCOBOwCxo1
	4QeXIvTF6pPCFVSCRJzAm/DFU/xLGuxcsyPPqa0lYwS6XDieBBH4znFo2lzdJoFbwekQ
	AXxweVNSedydArGEhSjJYcl9IoX1o6rKXLEV0Bk0wWHUBsz6qJ/gQo1EaVPOskuXR4D0
	CRsc4MTex2WrKOmrE6xqCqxXw/oIj/uU2txiii7DrBgSvKjGJ6iT0kwy1q+apFGb2oyq
	Tjk/iRarIjfN8SrRQv3JJxpZ0wz2tnvbO2oF5DC+qzPN8Hag7Gfhih6Iw7oZyw6xM1Jj
	vKkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=BRJ7aynokjHRxMpq5uO3Hm1wFDAOD3zscw/i0YaBy4c=;
	b=SNttsIhV90LaJlO006i7exbGooZPU0hb+H8mrcF/6VPv5fsfKOBZnDpjjKFy52CvCt
	4/AO2w+8EkeK24QeaDEfa6UIWXB04vajCuiqNpjA5WcdXuMr3WyBBtmqXbDZ1FaDw8y4
	gmy9O99lymw1kbFxzmbfx9BQOLnGBaZd6vAdLfGEi9yT0T1f0cpY7NQQxvyad/1Su3xf
	iNzwLDS0TcUrjThMySXaSvA0MS5RT8+UNXqanIPK+nCFXelRKPDGRWrWoo9cw33v7wam
	+5sYYlWsL/4eRmbI4H67ERHAV3D+eNN8PX7V7P3jeFNNbkjkRj/eoEslQESZoRrbhviF
	SvHQ==
X-Gm-Message-State: ALyK8tItKd6TDuEd634vzTfznOP+PH+GmTzSn7ydveHelyPrjxpL8aRffFfh0VA6CzOChnb6bDoGh0pRtodxpw==
MIME-Version: 1.0
X-Received: by 10.46.32.154 with SMTP id g26mr5981769lji.30.1464631133623;
	Mon, 30 May 2016 10:58:53 -0700 (PDT)
Received: by 10.25.42.132 with HTTP; Mon, 30 May 2016 10:58:53 -0700 (PDT)
Received: by 10.25.42.132 with HTTP; Mon, 30 May 2016 10:58:53 -0700 (PDT)
In-Reply-To: <20160530091128.31b01008@nuc.betafive.co.uk>
References: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
	<1464537553-24915-2-git-send-email-paul@paulbarker.me.uk>
	<CAMKF1sqhn+RckCxE0Kf68MFdNQMVP5d8K_8Rg3WkSaACsEbv_g@mail.gmail.com>
	<20160530091128.31b01008@nuc.betafive.co.uk>
Date: Mon, 30 May 2016 20:58:53 +0300
Message-ID: <CAMKF1srR=kqT5h4n+o7GSXtEO2yntURB+Ak70RxMJgd0+swucw@mail.gmail.com>
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
X-List-Received-Date: Mon, 30 May 2016 17:59:02 -0000
Content-Type: multipart/alternative; boundary=001a1143062a725a490534130273

--001a1143062a725a490534130273
Content-Type: text/plain; charset=UTF-8

On May 30, 2016 1:09 AM, "Paul Barker" <paul@paulbarker.me.uk> wrote:
>
> On Sun, 29 May 2016 21:20:21 +0300
> Khem Raj <raj.khem@gmail.com> wrote:
>
> > On May 29, 2016 9:00 AM, "Paul Barker" <paul@paulbarker.me.uk> wrote:
> > >
> > > PV is now set in each version of the linux-raspberrypi recipe
> > > instead of
> > in
> > > linux-raspberrypi.inc. This allows linux-raspberrypi.inc to be used
> > > in
> > custom
> > > kernel recipes in another layer which require a different PV value.
> >
> > You  can also use weak define. Instead of duplicated value in each
> > recipe
>
> Weak define doesn't work here as PV is already weakly defined based on
> the recipe filename and that's what we're trying to override. We end up
> with PV values like "4.1" instead of "4.1.21+git..." if "?=" is used.

What issue do we have if we ask custom recipes to define LINUX_VERSION
>
> Thanks,
> Paul Barker

--001a1143062a725a490534130273
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On May 30, 2016 1:09 AM, &quot;Paul Barker&quot; &lt;<a href=3D"mailto:paul=
@paulbarker.me.uk">paul@paulbarker.me.uk</a>&gt; wrote:<br>
&gt;<br>
&gt; On Sun, 29 May 2016 21:20:21 +0300<br>
&gt; Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com<=
/a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; On May 29, 2016 9:00 AM, &quot;Paul Barker&quot; &lt;<a href=3D"m=
ailto:paul@paulbarker.me.uk">paul@paulbarker.me.uk</a>&gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; PV is now set in each version of the linux-raspberrypi recip=
e<br>
&gt; &gt; &gt; instead of<br>
&gt; &gt; in<br>
&gt; &gt; &gt; linux-raspberrypi.inc. This allows linux-raspberrypi.inc to =
be used<br>
&gt; &gt; &gt; in<br>
&gt; &gt; custom<br>
&gt; &gt; &gt; kernel recipes in another layer which require a different PV=
 value.<br>
&gt; &gt;<br>
&gt; &gt; You=C2=A0 can also use weak define. Instead of duplicated value i=
n each<br>
&gt; &gt; recipe<br>
&gt;<br>
&gt; Weak define doesn&#39;t work here as PV is already weakly defined base=
d on<br>
&gt; the recipe filename and that&#39;s what we&#39;re trying to override. =
We end up<br>
&gt; with PV values like &quot;4.1&quot; instead of &quot;4.1.21+git...&quo=
t; if &quot;?=3D&quot; is used.</p>
<p dir=3D"ltr">What issue do we have if we ask custom recipes to define LIN=
UX_VERSION<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Paul Barker<br>
</p>

--001a1143062a725a490534130273--
