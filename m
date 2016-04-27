Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E49BFE00D7E; Wed, 27 Apr 2016 01:59:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A56F2E00D79
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 01:59:54 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id 190so34634518iow.1
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 01:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aKpVocO8U5rSalEU9M3HeN2zsYidYfaXwEpf+rz5Yl4=;
	b=GihR7M/uiMds1NqoICuw7sc1SZ6QlfLLBg1y6u4+TyDiKCq2ShkxeKeaYfCAgqihPa
	jp54IOehZII+GXJDmTX+yzwHuJpiX40yoEDk9VN2CzEJC5hJMlyO9TEQaw8j4QoiW48K
	NJvXelV1Pu8aVYgtIYrIirdwusP/cXpJWf4++U0l2w/OPggw4ArgX9MR+VsB24/JNC3A
	I9aDTdjmYGiU7g0r4pDOZkthKcNGJ+LDIL4Ed9jpeTmOSQR2G+VkilyF4fk3kG/9Z1HQ
	SCmn86Ifkli2pyia6/EzJpmTI68CJOp3QThCDxDUbvcbyXY22W92wDIdfoHeO6TBlpWb
	4esw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aKpVocO8U5rSalEU9M3HeN2zsYidYfaXwEpf+rz5Yl4=;
	b=lElGraSGaGkPr+tKfR0lzxNnyZIyl9gRLCfjQd0uXK0/visyvCCnaXSZLJGAUq8W18
	ARn31aJqXqHT1O2KRbc9J7yFT6rUYlqcJq0+0lNsSvooNFu3PyK4LryKbQprjhHuyG6Y
	r5M3pnecjO9JQfaPF2uj6OzpiXdDnenxNbiP/J94Qi1c3RPBDypIyi21bTRpUcf9BMjW
	0gYqucG1FvfCylJSz6CyeBsRtmuE5Y5CNDXPIxNJJsiUrIdP05aArCIOd0ilsPIuPRyx
	i1U8NLiwytj51vWlGGdhu8g6il8B/hjlxXdlmKC++WYyLAArHR6b6k2K/YlO2+u2s7lJ
	aStA==
X-Gm-Message-State: AOPr4FU6PtzOrnwaMnnWrvy7iAa3yIbrPJBETgb8Re8ghROsGcLxI/rZrz4laBs03a09dtf6duUB0lpqq7/q8ZYU
X-Received: by 10.107.135.211 with SMTP id r80mr9422972ioi.133.1461747593892; 
	Wed, 27 Apr 2016 01:59:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Wed, 27 Apr 2016 01:59:34 -0700 (PDT)
In-Reply-To: <57207CC3.3020905@mlbassoc.com>
References: <57207CC3.3020905@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 27 Apr 2016 09:59:34 +0100
Message-ID: <CAJTo0LbHvD417+AkLhM8153DhbpBAE9TTeGMbuEDr+BV0CJAbA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: eudev hwdb?
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
X-List-Received-Date: Wed, 27 Apr 2016 08:59:58 -0000
Content-Type: multipart/alternative; boundary=001a113ed20a15ebe5053173a28f

--001a113ed20a15ebe5053173a28f
Content-Type: text/plain; charset=UTF-8

On 27 April 2016 at 09:48, Gary Thomas <gary@mlbassoc.com> wrote:

> Is there any way to not have both the hwdb.bin (which I assume
> is a binary version of the hardware databases) and /etc/udev/hwdb.d?
> Perhaps there is some way to only use one?
>
> Or maybe there is a better choice, such as mdev?  I'm not sure about
> this (no experience) but my system needs to handle plug&play devices
> which the current eudev does well.  It's just a huge "price" to pay.
>

You could not install hwdb at all, it's a recommends so you can
BAD_RECOMMENDS it away.  It's certainly possible to wipe away the source
files for hwdb if you don't care about extending them at runtime but nobody
has done that yet: a rootfs postproccess hook could delete it and confirm
that everything works fine.

Ross

--001a113ed20a15ebe5053173a28f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 27 April 2016 at 09:48, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div id=3D":4f8" class=3D"a3s aXjCH=
">Is there any way to not have both the hwdb.bin (which I assume<br>
is a binary version of the hardware databases) and /etc/udev/hwdb.d?<br>
Perhaps there is some way to only use one?<br>
<br>
Or maybe there is a better choice, such as mdev?=C2=A0 I&#39;m not sure abo=
ut<br>
this (no experience) but my system needs to handle plug&amp;play devices<br=
>
which the current eudev does well.=C2=A0 It&#39;s just a huge &quot;price&q=
uot; to pay.</div></blockquote></div><br>You could not install hwdb at all,=
 it&#39;s a recommends so you can BAD_RECOMMENDS it away.=C2=A0 It&#39;s ce=
rtainly possible to wipe away the source files for hwdb if you don&#39;t ca=
re about extending them at runtime but nobody has done that yet: a rootfs p=
ostproccess hook could delete it and confirm that everything works fine.</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</di=
v></div>

--001a113ed20a15ebe5053173a28f--
