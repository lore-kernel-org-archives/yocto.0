Return-Path: <jfabernathy@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B48AAE013F7
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 18:34:05 -0700 (PDT)
Received: by obbwd18 with SMTP id wd18so7040208obb.35
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 18:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ZZh8/dgwXICBmL9UlS+xb9IZbp9G/TF9dWQy/sNYdc0=;
	b=cHE0Vwhoq7mAHOLCwOYNZv5rEC2OqAn8WfWOtz3S5Zf5ypZYCm7FjtWYGLgZn2HTVK
	5tg+HJvk1ohDAa+StXoWUWUfhgW9iO7HQr8qclIxCY/Zp3phmARkf2GkipNUARfH2ofM
	lc2yWMtCTuAV9V0WKTHHP93hbsAagbu3ewyoxgXz2DCuwVil1TXpvfTMNEm//d+4/14J
	aq7PzNCSXB4ADVtq40tNXXeKdITY2RVs3cfaOP2SC4u1mnL3BYjZm0UGHbMBB7s0stVB
	qVO1bDUXENH4M3rVOL08OrQDtMPjpSfGiHZOIadre2JaETMTQ/1zvl+B5ivuHcagbkh+
	CSvA==
MIME-Version: 1.0
Received: by 10.60.28.37 with SMTP id y5mr17593141oeg.35.1340069643974; Mon,
	18 Jun 2012 18:34:03 -0700 (PDT)
Received: by 10.76.1.45 with HTTP; Mon, 18 Jun 2012 18:34:03 -0700 (PDT)
In-Reply-To: <4FDF9DC9.1000805@gmail.com>
References: <4FDF9720.7080204@gmail.com> <87lijkuxir.fsf@sonatest.com>
	<4FDF9DC9.1000805@gmail.com>
Date: Mon, 18 Jun 2012 21:34:03 -0400
Message-ID: <CANFv2E=jfiY05Rxpnhkz4o6aKNatdoC3o2RD53MFbj3k7Q0yeg@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: Marc Ferland <ferlandm@sonatest.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: basic recipe building - iperf
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
X-List-Received-Date: Tue, 19 Jun 2012 01:34:05 -0000
Content-Type: multipart/alternative; boundary=e89a8fb1f7f01a77db04c2c9471e

--e89a8fb1f7f01a77db04c2c9471e
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jun 18, 2012 at 5:29 PM, jfabernathy <jfabernathy@gmail.com> wrote:

>  On 06/18/2012 05:21 PM, Marc Ferland wrote:
>
>> jfabernathy<jfabernathy@gmail.**com <jfabernathy@gmail.com>>  writes:
>>
>>    I needed to do some network performance testing on a Crownbay board and
>>>    needed iperf in that environment.  Since I had the core-image-sato-sdk
>>>    image created, I just booted that and took the tarball from
>>> Sourceforge
>>>    and built it  per the readme file instructions:
>>>    ./configure
>>>    make
>>>    make install
>>>    After I completed my test, I thought about why not put that in my list
>>>    of personal recipes.  I found the previous version of iperf in the
>>>    openembedded collection of benchmark recipes and just copied it over.
>>>    It built and worked fine.  There were a lot of items in the .bb that I
>>>    didn't understand, so I thought for fun I'd just try to build a recipe
>>>    for iperf 2.0.5 and see what happened.  My recipe is simple, mostly
>>>    taken from the openembedded 2.0.4 version had stripped down:
>>>
>> Hi JF,
>>
>> I add the same problem you had with the man page stuff, try this patch.
>>
>> Marc
>>
> thanks, that patch fixed it from a build point of view. now I'll build the
> image again and see what happens on the hardware.
>
> Jim A
>
> As expected the new image booted and ran the iperf 2.0.5 just fine.  Are
there any plans to add this tool to the Yocto project??

Jim A

--e89a8fb1f7f01a77db04c2c9471e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br>
<div class=3D"gmail_quote">On Mon, Jun 18, 2012 at 5:29 PM, jfabernathy <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:jfabernathy@gmail.com" target=3D"_blan=
k">jfabernathy@gmail.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">
<div class=3D"HOEnZb">
<div class=3D"h5">On 06/18/2012 05:21 PM, Marc Ferland wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">jfabernathy&lt;<a href=3D"mailto:jfab=
ernathy@gmail.com" target=3D"_blank">jfabernathy@gmail.<u></u>com</a>&gt; =
=A0writes:<br>
<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">=A0 =A0I needed to do some network pe=
rformance testing on a Crownbay board and<br>=A0 =A0needed iperf in that en=
vironment. =A0Since I had the core-image-sato-sdk<br>
=A0 =A0image created, I just booted that and took the tarball from Sourcefo=
rge<br>=A0 =A0and built it =A0per the readme file instructions:<br>=A0 =A0.=
/configure<br>=A0 =A0make<br>=A0 =A0make install<br>=A0 =A0After I complete=
d my test, I thought about why not put that in my list<br>
=A0 =A0of personal recipes. =A0I found the previous version of iperf in the=
<br>=A0 =A0openembedded collection of benchmark recipes and just copied it =
over.<br>=A0 =A0It built and worked fine. =A0There were a lot of items in t=
he .bb that I<br>
=A0 =A0didn&#39;t understand, so I thought for fun I&#39;d just try to buil=
d a recipe<br>=A0 =A0for iperf 2.0.5 and see what happened. =A0My recipe is=
 simple, mostly<br>=A0 =A0taken from the openembedded 2.0.4 version had str=
ipped down:<br>
</blockquote>Hi JF,<br><br>I add the same problem you had with the man page=
 stuff, try this patch.<br><br>Marc<br></blockquote></div></div>thanks, tha=
t patch fixed it from a build point of view. now I&#39;ll build the image a=
gain and see what happens on the hardware.<br>
<br>Jim A<br><br></blockquote></div>
<div>As expected the new image booted and ran the iperf 2.0.5 just fine.=A0=
 Are there any plans to add this tool to the Yocto project??</div>
<div>=A0</div>
<div>Jim A</div>
<div><br>=A0</div>

--e89a8fb1f7f01a77db04c2c9471e--
