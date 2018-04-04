Return-Path: <celledge@digitallumens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DDD0E00A75; Wed,  4 Apr 2018 08:07:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08979E008F2
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2018 08:07:00 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id x82so43426832wmg.1
	for <yocto@yoctoproject.org>; Wed, 04 Apr 2018 08:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=digitallumens-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wGuBkfGHGbifZAdgOq2Ui5IEioAYUYh+T7uN4Chha/w=;
	b=jY4zJaH6ZvdEv1RvX14nMk9wJaG7oAzTGY2cijQDCJb/2Xwc6qGWb5j2Ta0FmH/2g0
	/6IfN66aCJpTc+bcRN7s7wVqMCV4gWXGVqkB9cJJr0LNymiQLiPQPpk4ZRJu45HVJaw3
	Vv1ZrA9ntwak/WDzPbgwmdVRw+D6DS3EzUVf3tfVlWCqelAvNo8F/uizjS8Tja1XPiSp
	DQRH/XojuhQLG0QyAwHJZrGqsU7L0QK9W4PHM3lg4Xa+mDAg0qeQz1s9lM6WfTQQKPxj
	MsbTr9mVkC+U+qVJgyjA/Llql7YhqWTWT++rsQIUbp1kSgd5FzrS0nZfZbdI6xzO1sH/
	Gupw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wGuBkfGHGbifZAdgOq2Ui5IEioAYUYh+T7uN4Chha/w=;
	b=Z61Y4M/jOhmMfVqtRA/RfrjTExy5XUpt6rMFmfn5gY0KzryGwFgiBeAvParO9pA+wt
	UZJoWoWQr+tOWo5Kt3094fPqOZGVOOS8yrDfgcZ4uQAbiVXR94U3x2H8OBKtjydl3v2B
	ahMLzpVZyWP/ECkS/pjw/W7BEPvgx4bXTbpxlfjY8NXK6/NmDs8f1YORv5TDV3A99EsB
	sR7M//FJJrxqMWyJV7mmrtTzyNwO14bOJERoZR+lk+PRLx3ufE7qikG7Lv6B4VnQgaXS
	VovWcMemaiX38mVPRo+rpWU1N9IuJZKoacB4pCHeHShMxWx7dX9UFy+0z6ca9oKCQsDU
	9hCA==
X-Gm-Message-State: ALQs6tCWBE6kZqocNVFxF2ehbtZQk+ZU9M217fuUvinyxGO95M9Y9PIQ
	/Z3heG7uDoRNK+0cv9K18bGc4r3vm8m8BD/qKsz0lg==
X-Google-Smtp-Source: AIpwx4/7/Vv7BBjpkm+0xpJ4MwKnd8IevGd+uR+0Op3x86rB/xTntqCsEZKvqkWvQddNj3OqQ72AfkqnKiwuD/g//DM=
X-Received: by 10.46.144.2 with SMTP id h2mr11475738ljg.37.1522854419654; Wed,
	04 Apr 2018 08:06:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.46.146.85 with HTTP; Wed, 4 Apr 2018 08:06:58 -0700 (PDT)
In-Reply-To: <CAJ86T=VyAkzuVkfipRk+ofhr7b8fb1-9zMq2L2QdUswxEiapAQ@mail.gmail.com>
References: <CAGfzNig_csD+EtAShEV=zWpBhk7bfUdK3jWEq80T2pBYxcV7aQ@mail.gmail.com>
	<CAJ86T=VyAkzuVkfipRk+ofhr7b8fb1-9zMq2L2QdUswxEiapAQ@mail.gmail.com>
From: Chris Elledge <celledge@digitallumens.com>
Date: Wed, 4 Apr 2018 11:06:58 -0400
Message-ID: <CAGfzNijGSQsde9dRgxHvDmTu-LB2JaGS2D+U98J+a8=25MJ5xg@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: binutils 2.29.1 ARM Thumb kernel problem
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
X-List-Received-Date: Wed, 04 Apr 2018 15:07:04 -0000
Content-Type: multipart/alternative; boundary="089e0823a91cba87c80569072cfe"

--089e0823a91cba87c80569072cfe
Content-Type: text/plain; charset="UTF-8"

Thanks for the feedback. I rolled back binutils to 2.28.0 by copying the
yocto-2.3.3 binutils recipe directory into my custom layer. That has
resolved the issue.

I can confirm that binutils 2.29.0 also has the problem. I went from
yocto-2.3 to 2.4.2 so I hadn't tried binutils 2.29.0 previously. There are
also reports that openssl and libavcodec are broken when targeting an ARM
Thumb2 platform with binutils 2.29.*

-Chris

On Mon, Apr 2, 2018 at 7:14 PM, Andre McCurdy <armccurdy@gmail.com> wrote:

> On Mon, Apr 2, 2018 at 1:15 PM, Chris Elledge
> <celledge@digitallumens.com> wrote:
> > I recently upgraded my Yocto based project to Yocto 2.4.2, and I
> encountered
> > a problem when building my custom kernel for an AT91 SAMA5D3X platform.
> I've
> > been using an ARM Thumb2 kernel for a while successfully until this
> release.
> > It appears that the issue stems from the change to binutils version
> 2.29.1.
> >
> > Here's a good description of the problem:
> > https://patchwork.kernel.org/patch/10072695/
> >
> > I tried out their test script, and it flagged the arm-poky-linux-gnueabi-
> > toolchain built by Yocto 2.4.2 as being buggy. Has anyone else
> encountered
> > this problem and figured out a way around it without disabling Thumb
> > compilation of the kernel?
>
> Thanks for bringing up this issue. Reading through the various bug
> reports etc it not clear what the fix should be. Upstream binutils has
> not reverted the change and the upstream kernel still appears to rely
> on the pre-2.29.1 binutils behaviour.
>
> The simplest solution for OE 2.4 would seem to be to revert the change
> in binutils (rev e645cf4, which was added very close to the 2.29.1
> release).
>
> Longer term, it looks like the kernel will have to be updated to work
> with the most recent versions of binutils. A possible approach for
> that is hinted at in the kernel patch you provided a link for, ie
> update the "badr" macro in arch/arm/include/asm/assembler.h to OR the
> sym address with 1 instead of adding 1. e.g. something like changing:
>
>   #ifdef CONFIG_THUMB2_KERNEL
>   adr\c \rd, \sym + 1
>   #else
>
> to
>
>   #ifdef CONFIG_THUMB2_KERNEL
>   adr\c \rd, \sym
>   orr\c \rd, \rd, #1
>   #else
>
> The fact that it doesn't seem to have been fixed that way in the
> upstream kernel suggests that the kernel developers may be hoping to
> find a better solution though (ie one which avoids adding an extra
> instruction in the syscall fast path).
>
> So, without some more guidance from either upstream project, the best
> solution isn't clear. Perhaps you could try reverting the binutils
> change to get you up and running again in the short term and then ask
> on the ARM kernel mailing lists what the solution for Thumb2 with
> binutils >= 2.29.1 is expected to be?
>

--089e0823a91cba87c80569072cfe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the feedback. I rolled back binutils to 2.28.0 =
by copying the yocto-2.3.3 binutils recipe directory into my custom layer. =
That has resolved the issue.<div><br></div><div>I can confirm that binutils=
 2.29.0 also has the problem. I went from yocto-2.3 to 2.4.2 so I hadn&#39;=
t tried binutils 2.29.0 previously. There are also reports that openssl and=
 libavcodec are broken when targeting an ARM Thumb2 platform with binutils =
2.29.*</div><div><br></div><div>-Chris</div></div><div class=3D"gmail_extra=
"><br><div class=3D"gmail_quote">On Mon, Apr 2, 2018 at 7:14 PM, Andre McCu=
rdy <span dir=3D"ltr">&lt;<a href=3D"mailto:armccurdy@gmail.com" target=3D"=
_blank">armccurdy@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><span class=3D"">On Mon, Apr 2, 2018 at 1:15 PM, Chris Elledge<br>
&lt;<a href=3D"mailto:celledge@digitallumens.com">celledge@digitallumens.co=
m</a>&gt; wrote:<br>
&gt; I recently upgraded my Yocto based project to Yocto 2.4.2, and I encou=
ntered<br>
&gt; a problem when building my custom kernel for an AT91 SAMA5D3X platform=
. I&#39;ve<br>
&gt; been using an ARM Thumb2 kernel for a while successfully until this re=
lease.<br>
&gt; It appears that the issue stems from the change to binutils version 2.=
29.1.<br>
&gt;<br>
&gt; Here&#39;s a good description of the problem:<br>
&gt; <a href=3D"https://patchwork.kernel.org/patch/10072695/" rel=3D"norefe=
rrer" target=3D"_blank">https://patchwork.kernel.org/<wbr>patch/10072695/</=
a><br>
&gt;<br>
&gt; I tried out their test script, and it flagged the arm-poky-linux-gnuea=
bi-<br>
&gt; toolchain built by Yocto 2.4.2 as being buggy. Has anyone else encount=
ered<br>
&gt; this problem and figured out a way around it without disabling Thumb<b=
r>
&gt; compilation of the kernel?<br>
<br>
</span>Thanks for bringing up this issue. Reading through the various bug<b=
r>
reports etc it not clear what the fix should be. Upstream binutils has<br>
not reverted the change and the upstream kernel still appears to rely<br>
on the pre-2.29.1 binutils behaviour.<br>
<br>
The simplest solution for OE 2.4 would seem to be to revert the change<br>
in binutils (rev e645cf4, which was added very close to the 2.29.1<br>
release).<br>
<br>
Longer term, it looks like the kernel will have to be updated to work<br>
with the most recent versions of binutils. A possible approach for<br>
that is hinted at in the kernel patch you provided a link for, ie<br>
update the &quot;badr&quot; macro in arch/arm/include/asm/<wbr>assembler.h =
to OR the<br>
sym address with 1 instead of adding 1. e.g. something like changing:<br>
<br>
=C2=A0 #ifdef CONFIG_THUMB2_KERNEL<br>
=C2=A0 adr\c \rd, \sym + 1<br>
=C2=A0 #else<br>
<br>
to<br>
<br>
=C2=A0 #ifdef CONFIG_THUMB2_KERNEL<br>
=C2=A0 adr\c \rd, \sym<br>
=C2=A0 orr\c \rd, \rd, #1<br>
=C2=A0 #else<br>
<br>
The fact that it doesn&#39;t seem to have been fixed that way in the<br>
upstream kernel suggests that the kernel developers may be hoping to<br>
find a better solution though (ie one which avoids adding an extra<br>
instruction in the syscall fast path).<br>
<br>
So, without some more guidance from either upstream project, the best<br>
solution isn&#39;t clear. Perhaps you could try reverting the binutils<br>
change to get you up and running again in the short term and then ask<br>
on the ARM kernel mailing lists what the solution for Thumb2 with<br>
binutils &gt;=3D 2.29.1 is expected to be?<br>
</blockquote></div><br></div>

--089e0823a91cba87c80569072cfe--
