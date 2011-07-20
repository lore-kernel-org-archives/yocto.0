Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1171B4C800AB
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2011 16:06:22 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gxk7 with SMTP id 7so409548gxk.35
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2011 14:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=wN7zjP0hopNowx+in1cBGsJ4O3LTO1r2ngKJzmBluw8=;
	b=VmTo93OF2I/FAmj4P8rvgSqHCfNQXS/Guu/58VynVy3LPY+X8RDC2kL2I6dJZ3aKZ3
	+VTeL6i1HRA/QyDEgLWHHWgi7t8je+orrbKhu1ehdgyKvMe4MyD1zjiW4BhCRqnZjr3t
	w+EnUrJQDv2Ko/g2kwdAJBHQdWqVRskB9aZjE=
MIME-Version: 1.0
Received: by 10.91.96.18 with SMTP id y18mr8324816agl.0.1311195982327; Wed, 20
	Jul 2011 14:06:22 -0700 (PDT)
Received: by 10.90.223.19 with HTTP; Wed, 20 Jul 2011 14:06:22 -0700 (PDT)
In-Reply-To: <4D5966FF.6010906@linux.intel.com>
References: <AANLkTimVZq3JvBTk1EsLXDrtg-uQeFGNB+rrS7fcZerX@mail.gmail.com>
	<4D5966FF.6010906@linux.intel.com>
Date: Wed, 20 Jul 2011 23:06:22 +0200
Message-ID: <CACW_hTYBOmNa+H9_DAResAmAn2jvjxw1_L0eDP2TgHYczhsrCw@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: bios upgrade for blacksand with N450 ?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Jul 2011 21:06:23 -0000
Content-Type: multipart/alternative; boundary=0016e64718ecc1f07404a8869a19

--0016e64718ecc1f07404a8869a19
Content-Type: text/plain; charset=ISO-8859-1

2011/2/14 Darren Hart <dvhart@linux.intel.com>

> On 02/13/2011 01:27 PM, Frans Meulenbroeks wrote:
>
>> Hi,
>>
>> I got one of the blacksand boards with N450 that were given away at
>> the ELC, and I am wondering if there happens to be a bios upgrade for
>> it (or at least make the bios a little bit less chatty and faster
>> starting).
>> Anyone any idea?
>>
>>
> Looking into it.
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
>

Darren

I waswwondering if a newer bios has become available I haven't heard back
from you after the above mail and I haven't found a newer bios myself (but
maybe I looked at the wrong places). The one I got with the board is way too
verbose making the boot take way too long, causing the board to be used only
rarely.

Frans

--0016e64718ecc1f07404a8869a19
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">2011/2/14 Darren Hart <span dir=3D"ltr">=
&lt;<a href=3D"mailto:dvhart@linux.intel.com">dvhart@linux.intel.com</a>&gt=
;</span><br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex;">
<div><div></div><div class=3D"h5">On 02/13/2011 01:27 PM, Frans Meulenbroek=
s wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi,<br>
<br>
I got one of the blacksand boards with N450 that were given away at<br>
the ELC, and I am wondering if there happens to be a bios upgrade for<br>
it (or at least make the bios a little bit less chatty and faster<br>
starting).<br>
Anyone any idea?<br>
<br>
</blockquote>
<br></div></div>
Looking into it.<br><font color=3D"#888888">
<br>
-- <br>
Darren Hart<br>
Intel Open Source Technology Center<br>
Yocto Project - Linux Kernel<br>
</font></blockquote></div><br>Darren<br><br>I waswwondering if a newer bios=
 has become available I haven&#39;t heard back from you after the above mai=
l and I haven&#39;t found a newer bios myself (but maybe I looked at the wr=
ong places). The one I got with the board is way too verbose making the boo=
t take way too long, causing the board to be used only rarely.<br>
<br>Frans<br>

--0016e64718ecc1f07404a8869a19--
