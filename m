Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3ED9FE009A0; Wed, 18 Jan 2017 01:21:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.178 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f178.google.com (mail-yw0-f178.google.com
	[209.85.161.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81EE6E00995
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 01:21:30 -0800 (PST)
Received: by mail-yw0-f178.google.com with SMTP id w75so4239556ywg.1
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 01:21:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=z/ZSM9FH/7Ixw80lrvPzBup6JcMQvrz2W6bLB8db8Rg=;
	b=nw99eXXOCetmFX1ylK0ku9/h2DKuc8uSZTPnxJ7T5HTZMns765TENRqP1GZ+4lfPzb
	sNVgoLf5DRRc8jzU8oAjgWLdtd6wkYrE7TO3qQUpu2glwElu9YFqMplQNdnfkMUiy9tN
	LsaXaYJK9eDpS0LDcDP4nkA2n4G0Cz6hbfJ9usBMTfpDA5y6qkL7XZ0+F37/ckwf/FAs
	WN3rECGkWHLOKTuBkC7tM4ENIhOIOrHa2n+6ggLH8V2mS22MEYODVMA9H0H4ZnOtY/df
	lGPIQRyVbIwSU7wN+SGK9unBQ4NdQAxzU1LH+0+maNmrhY2iinNb1UP8J40r/X8kOIX3
	6etg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=z/ZSM9FH/7Ixw80lrvPzBup6JcMQvrz2W6bLB8db8Rg=;
	b=Zb7KU9+Y5c8iAYfQoutAhiq/QlqpjvuRjKYxQgO2Fl7tGeIB0UuHJNpuT1zLs0sDsa
	X7IXqcV1eILu+hdlE0RItpTsdo0Ye44HU0gOLgLTS//9q1qyz+U0mGDWHqXQbrmbCuLq
	NNI/VmdNWOEPQmvvPg6KrVujXmm8YLIE/9RzeY5lbwpYLsrg1XQr1WGx1cvlX67OP0aa
	NEAkRMqtShdMgBasSdadXE8p9V3ulEc+pmyOoTYa64p48rOQ8LViqSa0oQSbRUpGQ903
	uuvgtcUNaQvChyprGY1sGv1hmmN3PEYoOOrRqie1Js6P6zslCmAnPqk4AuVFSWnQYPiH
	fXJw==
X-Gm-Message-State: AIkVDXIjZHIgPd7bQ2j8ifQUuWe1oYFC2ZTyu2yA0vWQDQWH7q5nqS76VszbvwUE2Jy8R8MYFAzW+R1BRa4XkdKm
X-Received: by 10.129.111.194 with SMTP id k185mr1786630ywc.328.1484731290288; 
	Wed, 18 Jan 2017 01:21:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.13.234.11 with HTTP; Wed, 18 Jan 2017 01:20:59 -0800 (PST)
In-Reply-To: <48565564-9e2f-f8e7-e3da-21aad9fca0a3@mlbassoc.com>
References: <48565564-9e2f-f8e7-e3da-21aad9fca0a3@mlbassoc.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Wed, 18 Jan 2017 11:20:59 +0200
Message-ID: <CAHiDW_EMYvoW+XAzSxVUm9mMrxrbwG7LAE=srUG11Kc8K5WzMQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 18 Jan 2017 09:21:33 -0000
Content-Type: multipart/alternative; boundary=001a1147194a253a6205465af1e6

--001a1147194a253a6205465af1e6
Content-Type: text/plain; charset=UTF-8

On 18 January 2017 at 09:02, Gary Thomas <gary@mlbassoc.com> wrote:

> I'm trying to track down some recent changes in the X server
> (using the latest Poky/Yocto master).  I've had failures on
> a number of the embedded targets I work with, so I thought
> I'd give it a go on platforms with a larger base - x86 machines.


> It used to be that I could run qemu and it would pop up a separate
> window that emulated a display+keyboard+mouse.  That doesn't seem
> to be the same now, or at least I don't see how to make it work.
>

This is lacking a bit of detail ... What did you try and what failed?

Building a qemux86-64  (or qemux86) image and running it should certainly
work ("runqemu qemux86-64").

Advice on this would be great as I need to test the "native" X
> setup, not VNC connections.
>
> I'd also be happy to try this on real hardware, e.g. my wife's
> laptop, but I need some way to do that non-destructively.  Again,
> pointers would be greatly appreciated.
>

The hddimg is both an installer and a live image: in other words if you
build e.g. a x86-64 core-image-sato you can dd it to a USB disk and boot a
typical laptop from USB without installing anything on hard drive.

Jussi

--001a1147194a253a6205465af1e6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 1=
8 January 2017 at 09:02, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">I&#39;m trying to =
track down some recent changes in the X server<br>
(using the latest Poky/Yocto master).=C2=A0 I&#39;ve had failures on<br>
a number of the embedded targets I work with, so I thought<br>
I&#39;d give it a go on platforms with a larger base - x86 machines.</block=
quote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
It used to be that I could run qemu and it would pop up a separate<br>
window that emulated a display+keyboard+mouse.=C2=A0 That doesn&#39;t seem<=
br>
to be the same now, or at least I don&#39;t see how to make it work.<br></b=
lockquote><div><br></div><div>This is lacking a bit of detail ... What did =
you try and what failed?</div><div><br></div><div>Building a qemux86-64 =C2=
=A0(or qemux86) image and running it should certainly work (&quot;runqemu q=
emux86-64&quot;).</div><div><br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">
Advice on this would be great as I need to test the &quot;native&quot; X<br=
>
setup, not VNC connections.<br>
<br>
I&#39;d also be happy to try this on real hardware, e.g. my wife&#39;s<br>
laptop, but I need some way to do that non-destructively.=C2=A0 Again,<br>
pointers would be greatly appreciated.<br></blockquote><div><br></div><div>=
The hddimg is both an installer and a live image: in other words if you bui=
ld e.g. a x86-64 core-image-sato you can dd it to a USB disk and boot a typ=
ical laptop from USB without installing anything on hard drive.</div><div><=
br></div><div>Jussi</div></div></div></div>

--001a1147194a253a6205465af1e6--
