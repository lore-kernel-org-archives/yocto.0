Return-Path: <jfabernathy@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54144E00746
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 02:54:18 -0700 (PDT)
Received: by obbwd18 with SMTP id wd18so7667683obb.35
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 02:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=rWgpKUW00w5zaj9yD5ss2OIX5GdxCTWoTnDeNhUAkv0=;
	b=GtzoXX3UpMxJ2sOQqicOf0K3S0c+VvSSmqTCXKuMo5C0o7SoJboJ9hNwSFF7tIE7yc
	QNhwKfmtnlzVrb8m9bqkb+jwArwZIVJh0/pHlkwmtcNkhB3FwdsLSggy3g8QkosEgcQ8
	+bqxl2mocQrY2duLwYOb9H+opG7/6vBacCSOb9SV9ExQlnKbPXf20ua0UOPzghU8GWxB
	/CjVPGHUjYmPGhLRaq1UQWfO82mkhVYZzzApFUtEubLEoCFHND+3+3Z6tEK9/i5Vkoue
	hkSqXkGKioYvzGfAw9q30/F59UAnWK2QyNy2L6RxjxQAiMtGTBk+HvnWcCUyuBNuVzAA
	MWcw==
MIME-Version: 1.0
Received: by 10.60.6.132 with SMTP id b4mr18829454oea.22.1340099657616; Tue,
	19 Jun 2012 02:54:17 -0700 (PDT)
Received: by 10.76.166.202 with HTTP; Tue, 19 Jun 2012 02:54:17 -0700 (PDT)
In-Reply-To: <CAMKF1sokUhf1LhfBxg_xK9R5JyvnFMswoHdB8xG7VJXT=AjDVg@mail.gmail.com>
References: <4FDF9720.7080204@gmail.com> <87lijkuxir.fsf@sonatest.com>
	<4FDF9DC9.1000805@gmail.com>
	<CANFv2E=jfiY05Rxpnhkz4o6aKNatdoC3o2RD53MFbj3k7Q0yeg@mail.gmail.com>
	<CAMKF1sokUhf1LhfBxg_xK9R5JyvnFMswoHdB8xG7VJXT=AjDVg@mail.gmail.com>
Date: Tue, 19 Jun 2012 05:54:17 -0400
Message-ID: <CANFv2EkVK2NbXb4XCTz2K6ja61dWtORKX3_mrF49-P9dfkQhkQ@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Tue, 19 Jun 2012 09:54:18 -0000
Content-Type: multipart/alternative; boundary=e89a8fb1fbb40e4e9704c2d04453

--e89a8fb1fbb40e4e9704c2d04453
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jun 18, 2012 at 10:40 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On Monday, June 18, 2012, James Abernathy <jfabernathy@gmail.com> wrote:
> >
> >
> > On Mon, Jun 18, 2012 at 5:29 PM, jfabernathy <jfabernathy@gmail.com>
> wrote:
> >>
> >> On 06/18/2012 05:21 PM, Marc Ferland wrote:
> >>>
> >>> jfabernathy<jfabernathy@gmail.com>  writes:
> >>>
> >>>>    I needed to do some network performance testing on a Crownbay
> board and
> >>>>    needed iperf in that environment.  Since I had the
> core-image-sato-sdk
> >>>>    image created, I just booted that and took the tarball from
> Sourceforge
> >>>>    and built it  per the readme file instructions:
> >>>>    ./configure
> >>>>    make
> >>>>    make install
> >>>>    After I completed my test, I thought about why not put that in my
> list
> >>>>    of personal recipes.  I found the previous version of iperf in the
> >>>>    openembedded collection of benchmark recipes and just copied it
> over.
> >>>>    It built and worked fine.  There were a lot of items in the .bb
> that I
> >>>>    didn't understand, so I thought for fun I'd just try to build a
> recipe
> >>>>    for iperf 2.0.5 and see what happened.  My recipe is simple, mostly
> >>>>    taken from the openembedded 2.0.4 version had stripped down:
> >>>
> >>> Hi JF,
> >>>
> >>> I add the same problem you had with the man page stuff, try this patch.
> >>>
>
>
> >>> Marc
> >>
> >> thanks, that patch fixed it from a build point of view. now I'll build
> the image again and see what happens on the hardware.
> >>
> >> Jim A
> >>
> > As expected the new image booted and ran the iperf 2.0.5 just fine.  Are
> there any plans to add this tool to the Yocto project??
> >
>
> You could have just looked into meta-oe/recipes-benchmarks
> > Jim A
> >

You must have missed the earlier discussion.  I first got the iperf 2.0.4
from meta-oe, but wanted 2.0.5, so I just added it to my private collection
of apps.

Jim A

--e89a8fb1fbb40e4e9704c2d04453
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br>
<div class=3D"gmail_quote">On Mon, Jun 18, 2012 at 10:40 PM, Khem Raj <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">ra=
j.khem@gmail.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">
<div class=3D"HOEnZb">
<div class=3D"h5"><br><br>On Monday, June 18, 2012, James Abernathy &lt;<a =
href=3D"mailto:jfabernathy@gmail.com" target=3D"_blank">jfabernathy@gmail.c=
om</a>&gt; wrote:<br>&gt;<br>&gt;<br>&gt; On Mon, Jun 18, 2012 at 5:29 PM, =
jfabernathy &lt;<a href=3D"mailto:jfabernathy@gmail.com" target=3D"_blank">=
jfabernathy@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>&gt;&gt; On 06/18/2012 05:21 PM, Marc Ferland wrote:<br>&gt;&gt=
;&gt;<br>&gt;&gt;&gt; jfabernathy&lt;<a href=3D"mailto:jfabernathy@gmail.co=
m" target=3D"_blank">jfabernathy@gmail.com</a>&gt; =A0writes:<br>&gt;&gt;&g=
t;<br>
&gt;&gt;&gt;&gt; =A0 =A0I needed to do some network performance testing on =
a Crownbay board and<br>&gt;&gt;&gt;&gt; =A0 =A0needed iperf in that enviro=
nment. =A0Since I had the core-image-sato-sdk<br>&gt;&gt;&gt;&gt; =A0 =A0im=
age created, I just booted that and took the tarball from Sourceforge<br>
&gt;&gt;&gt;&gt; =A0 =A0and built it =A0per the readme file instructions:<b=
r>&gt;&gt;&gt;&gt; =A0 =A0./configure<br>&gt;&gt;&gt;&gt; =A0 =A0make<br>&g=
t;&gt;&gt;&gt; =A0 =A0make install<br>&gt;&gt;&gt;&gt; =A0 =A0After I compl=
eted my test, I thought about why not put that in my list<br>
&gt;&gt;&gt;&gt; =A0 =A0of personal recipes. =A0I found the previous versio=
n of iperf in the<br>&gt;&gt;&gt;&gt; =A0 =A0openembedded collection of ben=
chmark recipes and just copied it over.<br>&gt;&gt;&gt;&gt; =A0 =A0It built=
 and worked fine. =A0There were a lot of items in the .bb that I<br>
&gt;&gt;&gt;&gt; =A0 =A0didn&#39;t understand, so I thought for fun I&#39;d=
 just try to build a recipe<br>&gt;&gt;&gt;&gt; =A0 =A0for iperf 2.0.5 and =
see what happened. =A0My recipe is simple, mostly<br>&gt;&gt;&gt;&gt; =A0 =
=A0taken from the openembedded 2.0.4 version had stripped down:<br>
&gt;&gt;&gt;<br>&gt;&gt;&gt; Hi JF,<br>&gt;&gt;&gt;<br>&gt;&gt;&gt; I add t=
he same problem you had with the man page stuff, try this patch.<br>&gt;&gt=
;&gt;<br><br><br>&gt;&gt;&gt; Marc<br>&gt;&gt;<br>&gt;&gt; thanks, that pat=
ch fixed it from a build point of view. now I&#39;ll build the image again =
and see what happens on the hardware.<br>
&gt;&gt;<br>&gt;&gt; Jim A<br>&gt;&gt;<br>&gt; As expected the new image bo=
oted and ran the iperf 2.0.5 just fine.=A0 Are there any plans to add this =
tool to the Yocto project??<br>&gt; <br><br></div></div>You could have just=
 looked into meta-oe/recipes-benchmarks <br>
&gt; Jim A<br>&gt; =A0 </blockquote></div>
<div>You must have missed the earlier discussion.=A0 I first got the iperf =
2.0.4 from meta-oe, but wanted 2.0.5, so I just added it to my private coll=
ection of apps.</div>
<div>=A0</div>
<div>Jim A<br></div>

--e89a8fb1fbb40e4e9704c2d04453--
