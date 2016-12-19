Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B11C5E00D9F; Mon, 19 Dec 2016 06:58:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f177.google.com (mail-qt0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00376E00D69
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 06:58:23 -0800 (PST)
Received: by mail-qt0-f177.google.com with SMTP id n6so149235639qtd.1
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 06:58:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KkIGdC7xTgHHc/A6IRogx8rK9FlOGrFaAwV1Y7Qo38U=;
	b=lGW3nDfAshy4cnDohrzes6G3I/xQQ4D6AuYAHGwPH2juvA4Un+Hd95MqOTR+xWynW4
	ZUzTD6YDwQE5TQKv7RmrwzFeVY37bLRTvUK/AcaoWG+qCDzu4DxPAVDyGpU4mo/zKQGb
	F/+5+ESQ509+2N+4O4GUjdLVzyd3wnzvWx0gkxMMLelDkDg7OBQsNJ1zF8/I0C9/qU/4
	e9l/6jdgD9DfiVqLtTeDSoibwrxKLLJop04Fs2QJecOPs97N2H8eV65yBjzMdOTNvBma
	W52MQgYnnSHw4QFXiVw/rOQzz+A03EzZkntDyRiUURexmmaAcfJ4i1BL783RrpRzJP7Z
	iWog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KkIGdC7xTgHHc/A6IRogx8rK9FlOGrFaAwV1Y7Qo38U=;
	b=ths0M/s/4o4HNBZAsoyV6PsGsXSPeVUriHattS7zO0R0X4YbRRLCwbN0BX4ae7gYGP
	xhA7/u1SrJHMQWAFWgjWUNDAShCtlpzn3DMbyHOWV6mfNGEB/Z5mm4OQDDkSpwFUF7bv
	c8RWIZOadDD/l8Vmej44uMy1oXYauhkdIq01m2VY1yrJN1CFskwn3Uu0RvhXkHYiPvp3
	T103Gm7BOgORDT9WeWEUbJ282i72/xJjvBD7yDPtzv8NizlO34BpYBvD7FTDq5Jl8J25
	gpPh5TlpV247oh9QvyD2c3qVjO8PmsjoKOUXmHmJAwnHI8EYbzKkwjm6KcGBWyqNj0I8
	Mxhg==
X-Gm-Message-State: AIkVDXK/RhXMI6EfKvB95cnrscge9F1WGV5PY9FTAIHqhLekhIi2r4lBhmX7NQokz2LhMgooMIjuNGsSVAijQG1o
X-Received: by 10.200.52.4 with SMTP id u4mr928739qtb.186.1482159502673; Mon,
	19 Dec 2016 06:58:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.34.74 with HTTP; Mon, 19 Dec 2016 06:57:52 -0800 (PST)
In-Reply-To: <CALw8SCVifrWUQgObA+FBoNrAfO42wjVrTue+u_b5O5JZjrvuvA@mail.gmail.com>
References: <CALw8SCUt4XR+LYM7pGAC64gO+0y9k-HuJgdHqHz5DRxh1qgv=A@mail.gmail.com>
	<20161218162554.2dab9f39@nuc.betafive.co.uk>
	<CA+n--H9pd1eY8DuY-OSCKxBNiLvAKMQYoDB2Mpo5ajGncvzd6g@mail.gmail.com>
	<CALw8SCXgz=5TrKE99u4MOhx=tuZvgaPx_4LjO70U_JFK=2GcJA@mail.gmail.com>
	<CALw8SCVifrWUQgObA+FBoNrAfO42wjVrTue+u_b5O5JZjrvuvA@mail.gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Mon, 19 Dec 2016 16:57:52 +0200
Message-ID: <CAHiDW_HKOb6=jNPjxVNDap0xESSM9=OCBSr4nW7D9nFQbVH4qw@mail.gmail.com>
To: Mirza Krak <mirza.krak@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: setting up autobuilder on local machine
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
X-List-Received-Date: Mon, 19 Dec 2016 14:58:24 -0000
Content-Type: multipart/alternative; boundary=001a114062fea862720544042618

--001a114062fea862720544042618
Content-Type: text/plain; charset=UTF-8

On 19 December 2016 at 15:28, Mirza Krak <mirza.krak@gmail.com> wrote:
>
> > Thank you for your fast responses. Generating the htpasswd file my
> > self did the trick. Now I can login. The full command was (as you
> > suggested I used the one in autobuilder git repo under ./bin):
> >
> >     ./htpasswd -b -c <path to htpasswd file> <user name> <secret
password>
> >
> > Forced a build of my configuration now and hoping for the best :).
>
> And it was not green all the way.
>
> I get an error that I do not get how to get around. The error message is:
>
> ERROR: Unable to parse
>
/home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-rpi/yocto-worker/nightly-mender-rpi/build/meta-mender/conf/layer.conf:
> [Errno 2] file
/home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-rpi/yocto-worker/nightly-mender-rpi/build/meta-mender/conf/layer.conf
> not found
>
> The error message I understand. But I do not understand why it adds
> meta-mender to bblayers files. I did not tell it to do that, because
> meta-mender contains layers that I want to include. Similar to
> meta-openembedded (which is also added to bblayers).
>

I'm not an expert but your nightly-mender-rpi.conf contains this:
    'layerdirs': ['meta-yocto', 'meta-raspberrypi',
'meta-mender/meta-mender-core', 'meta-mender/meta-mender-raspberrypi',
'oe-meta-go', 'meta-openembedded/meta-oe']

Jussi

--001a114062fea862720544042618
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 19 December 2016 at 15:28, Mirza Krak &lt;<a href=3D"ma=
ilto:mirza.krak@gmail.com">mirza.krak@gmail.com</a>&gt; wrote:<br>&gt;<br>&=
gt; &gt; Thank you for your fast responses. Generating the htpasswd file my=
<br>&gt; &gt; self did the trick. Now I can login. The full command was (as=
 you<br>&gt; &gt; suggested I used the one in autobuilder git repo under ./=
bin):<br>&gt; &gt;<br>&gt; &gt; =C2=A0 =C2=A0 ./htpasswd -b -c &lt;path to =
htpasswd file&gt; &lt;user name&gt; &lt;secret password&gt;<br>&gt; &gt;<br=
>&gt; &gt; Forced a build of my configuration now and hoping for the best :=
).<br>&gt;<br>&gt; And it was not green all the way.<br>&gt;<br>&gt; I get =
an error that I do not get how to get around. The error message is:<br>&gt;=
<br>&gt; ERROR: Unable to parse<br>&gt; /home/mirzak/project/yocto-autobuil=
der/yocto-autobuilder-mender-rpi/yocto-worker/nightly-mender-rpi/build/meta=
-mender/conf/layer.conf:<br>&gt; [Errno 2] file /home/mirzak/project/yocto-=
autobuilder/yocto-autobuilder-mender-rpi/yocto-worker/nightly-mender-rpi/bu=
ild/meta-mender/conf/layer.conf<br>&gt; not found<br>&gt;<br>&gt; The error=
 message I understand. But I do not understand why it adds<br>&gt; meta-men=
der to bblayers files. I did not tell it to do that, because<br>&gt; meta-m=
ender contains layers that I want to include. Similar to<br>&gt; meta-opene=
mbedded (which is also added to bblayers).<br>&gt;<br><br><div>I&#39;m not =
an expert but your nightly-mender-rpi.conf contains this:<div>=C2=A0 =C2=A0=
 &#39;layerdirs&#39;: [&#39;meta-yocto&#39;, &#39;meta-raspberrypi&#39;, &#=
39;meta-mender/meta-mender-core&#39;, &#39;meta-mender/meta-mender-raspberr=
ypi&#39;, &#39;oe-meta-go&#39;, &#39;meta-openembedded/meta-oe&#39;]<br><br=
>Jussi<br><br></div></div></div>

--001a114062fea862720544042618--
