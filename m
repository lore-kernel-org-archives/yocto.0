Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94E4FE009A0; Wed, 18 Jan 2017 01:24:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 214CFE0098A
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 01:24:05 -0800 (PST)
Received: by mail-qk0-f170.google.com with SMTP id 11so7013276qkl.3
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 01:24:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=l1pjiQ1WUI1f9/MfqJR3d1a1HBop3pohY1juWgQeVyE=;
	b=vNIuCTmLrl0lNPEW4AnVKUm27XiAVusm64YnFPE9iVncLsc209yHikOxXnZmbuS+nT
	Ib02jNEmuU9g4pvtiPttyWQqLFUsqf1Ij5VvZfduj/4wrHXQh9HV5jFGfc7LT7tQoy23
	Z1hpLZ2ZQ3lHvzsXt5oqcj7et17z/YiC7397iOvUPlPEf4z1wooBo5dMmx8TSUg5v9mu
	XipXJg3JfAj7xcNJDVosvleJRq7j1zBFP2N/RXfBp26qs4KcHFJu4sRPFp6Kt3oBZ+ey
	wLavJbmWu1vjArP8IVanPmYzwoXRE6Jqik0LwaWGGM6j7GKieMaL57YrMnEbXNIQLZm0
	NVmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=l1pjiQ1WUI1f9/MfqJR3d1a1HBop3pohY1juWgQeVyE=;
	b=l/hdByrb4s4W6YzECELO7t1J4K+tQTwaejkPzTtOiloLroeUw254k7tOKzgZBJk8P4
	1MJfaaEkGpvGlPHEjjNeJCZwS0aKl+e04WkXfKjDQq2KSxsr/9YzwOACa4tMuLEp121w
	+P4aXwtssUfCP0E6Dsjzev3GMyA6o0B90l5RF+uUkKK63tMDaI6DxrQItxPIJ3LnpH4O
	Lj2he/LzTAX2PJ1Sj/p3jfTp3YSLQHNAg9frwzdDpu45xV84L6tKFOl/S13L/k7FSRto
	lbhj2R25UJQvFc4nFHdGyCveUvN2/DvWcvkTyo9U/ucN0CCXE5o9+FNc1x3WG6I1GBFD
	+SHQ==
X-Gm-Message-State: AIkVDXL/GQiEitQ/dZoi10HuEf1fyrLvrRK3j7zA/F8LU7PzIXplWAMjBbWpgkSWIQG0qsbvgdTlMQ7Zafab2MKq
X-Received: by 10.55.183.133 with SMTP id h127mr2064443qkf.121.1484731445055; 
	Wed, 18 Jan 2017 01:24:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Wed, 18 Jan 2017 01:23:44 -0800 (PST)
In-Reply-To: <48565564-9e2f-f8e7-e3da-21aad9fca0a3@mlbassoc.com>
References: <48565564-9e2f-f8e7-e3da-21aad9fca0a3@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 18 Jan 2017 09:23:44 +0000
Message-ID: <CAJTo0LavqhLMFgkxFwBHTZ671czH_XahTpoXMCvPn7hjev_V2Q@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: x86 testing
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
X-List-Received-Date: Wed, 18 Jan 2017 09:24:09 -0000
Content-Type: multipart/alternative; boundary=94eb2c0600565ea70205465afa57

--94eb2c0600565ea70205465afa57
Content-Type: text/plain; charset=UTF-8

On 18 January 2017 at 07:02, Gary Thomas <gary@mlbassoc.com> wrote:

> It used to be that I could run qemu and it would pop up a separate
> window that emulated a display+keyboard+mouse.  That doesn't seem
> to be the same now, or at least I don't see how to make it work.
> Advice on this would be great as I need to test the "native" X
> setup, not VNC connections.
>

Still is the case if you have 'sdl' in qemu-native's PACKAGECONFIG.  See
the sample local.conf, this was a change in behaviour a year or so ago so
there's a chance your local.conf doesn't do this.


> I'd also be happy to try this on real hardware, e.g. my wife's
> laptop, but I need some way to do that non-destructively.  Again,
> pointers would be greatly appreciated.
>

Build an image using ideally meta-intel's intel-corei7-64 (or core2-32)
machine and put the hddimg on a USB stick.  This can live boot from the
stick directly.

Ross

--94eb2c0600565ea70205465afa57
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 18 January 2017 at 07:02, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div id=3D":1us" class=3D"a3s aXj=
CH m159b06b2f22899ce">It used to be that I could run qemu and it would pop =
up a separate<br>
window that emulated a display+keyboard+mouse.=C2=A0 That doesn&#39;t seem<=
br>
to be the same now, or at least I don&#39;t see how to make it work.<br>
Advice on this would be great as I need to test the &quot;native&quot; X<br=
>
setup, not VNC connections.<br></div></blockquote><div><br></div><div>Still=
 is the case if you have &#39;sdl&#39; in qemu-native&#39;s PACKAGECONFIG.=
=C2=A0 See the sample local.conf, this was a change in behaviour a year or =
so ago so there&#39;s a chance your local.conf doesn&#39;t do this.</div><d=
iv>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1us" class=3D"a3s=
 aXjCH m159b06b2f22899ce">
I&#39;d also be happy to try this on real hardware, e.g. my wife&#39;s<br>
laptop, but I need some way to do that non-destructively.=C2=A0 Again,<br>
pointers would be greatly appreciated.</div></blockquote></div><br>Build an=
 image using ideally meta-intel&#39;s intel-corei7-64 (or core2-32) machine=
 and put the hddimg on a USB stick.=C2=A0 This can live boot from the stick=
 directly.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ex=
tra">Ross</div></div>

--94eb2c0600565ea70205465afa57--
