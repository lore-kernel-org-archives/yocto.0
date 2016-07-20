Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E396E00CA1; Wed, 20 Jul 2016 11:31:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1ECF5E00C52
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 11:31:35 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id q83so55468469iod.1
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 11:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3gZ9L1rr2x9Hmgalw9r0KltIznFg6yE8Tmq9FB4qVLU=;
	b=MSnj9hLBWSZI1IG7g3PjsetIT+hGSK4kowwQnTVxYPwJK7cQMEaQGCDxrqwyQuRy0x
	k7253TCMEcjYxMP7HYYXuUgApKOiG0mqODPU2X88CIXotQrHBOTAL5TNDmoTfp2+7Shb
	d0VuD3kiRlATPzZ3CsP/W9qvbBJffDulJjg8FNZOzKlWlxCoynpX3VfDu/ldh7u2jGLP
	P1PuC4Y/8dI4ETfC/FvtlUo15M3NoFc+2GMy6KoO7uA6p2CczpY2koIQ2mzOc9h5ScOj
	4Iho7HZ/oEYsPHFuJZMW+JeSaxQiiztke0i+cVAdZgZOUa+i7oWQHpqDBszn8JEHQ9H9
	QeEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3gZ9L1rr2x9Hmgalw9r0KltIznFg6yE8Tmq9FB4qVLU=;
	b=YLtlLl6fhNy6GsBQhLKqqnZKQKr12wt0tr7wGPxQxv6ZCUjNWy+V1MNA4pRPfcCYGR
	fI0jMqAwGItgT01avJr6NgP3waaGYBTYw4yU9mlEYd5VdAldlswAFKaRZ2Vc3/xbhIqd
	xusLJ6yInXKKeLx1Z/vV7ZiLW9TJ1GE1zjHZq521GAuwP+2bcFyNffT87Rm3tTT5Vk8f
	C1ZeQjJeODLc3YOd/SlmH5o5v3HdsvjCqo05iDYvhQZnzNBAxWoYefx4+HLZ6s2Os0qH
	1bxMjkT5TLqjCGKhA7JCAD+oIbgmnT8rahLXQ7N1WB3K+iGgM7JOlIbAEuG7zU9JNRca
	ccLQ==
X-Gm-Message-State: ALyK8tIlk52wm3I7EpHqOb5W1a4T9HBZ8a0qYIEbSJpwk5a2wCg2dYpSLrMaB4jgj9anOduZxa2FlHwdDRxTykSo
X-Received: by 10.107.135.142 with SMTP id r14mr50886418ioi.133.1469039494972; 
	Wed, 20 Jul 2016 11:31:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Wed, 20 Jul 2016 11:31:15 -0700 (PDT)
In-Reply-To: <nmocev$1gg$1@ger.gmane.org>
References: <nmocev$1gg$1@ger.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 20 Jul 2016 19:31:15 +0100
Message-ID: <CAJTo0LYw26iyqNpypnnjfCEdiAP4z+XTWpzj2rKCB+mm3mKpPQ@mail.gmail.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: custom internal toolchain/glibc
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
X-List-Received-Date: Wed, 20 Jul 2016 18:31:40 -0000
Content-Type: multipart/alternative; boundary=001a113eccbc426092053815694e

--001a113eccbc426092053815694e
Content-Type: text/plain; charset=UTF-8

On 20 July 2016 at 18:30, Robert Berger <gmane@reliableembeddedsystems.com>
wrote:

> I was wondering what's the process if someone wanted to use, say Jethro
> or Krogoth, but with different/custom versions of gcc, binutils, glibc
> e.g. to cook some syscalls and to compile ancient Linux kernels.
>
> I came across tcmode-default.inc[1] where such things are defined:
>
> GCCVERSION ?= "6.1%"
> SDKGCCVERSION ?= "${GCCVERSION}"
> BINUVERSION ?= "2.26%"
> GDBVERSION ?= "7.11%"
> GLIBCVERSION ?= "2.24"
> UCLIBCVERSION ?= "1.0%"
> LINUXLIBCVERSION ?= "4.4"
>
> Would hacking/duplicating and hacking this be a good starting point?
>

Absolutely - if you provide your own gcc/binutils/etc recipes then these
are the variables to change to use them.  It's not unusual for oe-core to
ship with more than one GCC version for example.

Ross

--001a113eccbc426092053815694e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 July 2016 at 18:30, Robert Berger <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:gmane@reliableembeddedsystems.com" target=3D"_blank">gmane@reliableemb=
eddedsystems.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><d=
iv id=3D":4v7" class=3D"a3s aXjCH m156095d0ffc9f9a9">I was wondering what&#=
39;s the process if someone wanted to use, say Jethro<br>
or Krogoth, but with different/custom versions of gcc, binutils, glibc<br>
e.g. to cook some syscalls and to compile ancient Linux kernels.<br>
<br>
I came across tcmode-default.inc[1] where such things are defined:<br>
<br>
GCCVERSION ?=3D &quot;6.1%&quot;<br>
SDKGCCVERSION ?=3D &quot;${GCCVERSION}&quot;<br>
BINUVERSION ?=3D &quot;2.26%&quot;<br>
GDBVERSION ?=3D &quot;7.11%&quot;<br>
GLIBCVERSION ?=3D &quot;2.24&quot;<br>
UCLIBCVERSION ?=3D &quot;1.0%&quot;<br>
LINUXLIBCVERSION ?=3D &quot;4.4&quot;<br>
<br>
Would hacking/duplicating and hacking this be a good starting point?</div><=
/blockquote></div><br>Absolutely - if you provide your own gcc/binutils/etc=
 recipes then these are the variables to change to use them.=C2=A0 It&#39;s=
 not unusual for oe-core to ship with more than one GCC version for example=
.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross=
</div></div>

--001a113eccbc426092053815694e--
