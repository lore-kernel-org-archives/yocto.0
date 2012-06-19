Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEB0DE013F7
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 19:40:02 -0700 (PDT)
Received: by eekb45 with SMTP id b45so2251625eek.35
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 19:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ldW9GqfBlhbBFif32bYX8WRAMFTOxEjIkVQQcFKOqws=;
	b=cS575UliEEraUqterhdBeB3K0pRGsp+5FydylRb59L9SdnAUIMUGd8nAYYOIjgz0gk
	cDl5bGy1nuh0lXvt5ELsNzXhqBWguXj06Mtt0PRONPhWqutzMA1lANo4nGqsTaBXyGzl
	Ql6TYKsXwcxBVHVdf4ecsqwYV7MvMCdg+c3E9m8bm0QkBdqoAbM+AE5AII/sKR2itq37
	UR1v2q6y6eXLoF32Gzmu0afrAU30UEPJWANhm+UyVomrspb4tY85PM/y/++mQMbacKQc
	8gwA+fC24IPnlB7GMSDimbA7utzHV8br1EJQ71wNaEU4aKDQ2dj3bqvSuU+QSpGVkdWl
	2vNg==
MIME-Version: 1.0
Received: by 10.14.187.141 with SMTP id y13mr3770198eem.79.1340073601673; Mon,
	18 Jun 2012 19:40:01 -0700 (PDT)
Received: by 10.14.188.11 with HTTP; Mon, 18 Jun 2012 19:40:01 -0700 (PDT)
In-Reply-To: <CANFv2E=jfiY05Rxpnhkz4o6aKNatdoC3o2RD53MFbj3k7Q0yeg@mail.gmail.com>
References: <4FDF9720.7080204@gmail.com> <87lijkuxir.fsf@sonatest.com>
	<4FDF9DC9.1000805@gmail.com>
	<CANFv2E=jfiY05Rxpnhkz4o6aKNatdoC3o2RD53MFbj3k7Q0yeg@mail.gmail.com>
Date: Mon, 18 Jun 2012 19:40:01 -0700
Message-ID: <CAMKF1sokUhf1LhfBxg_xK9R5JyvnFMswoHdB8xG7VJXT=AjDVg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: James Abernathy <jfabernathy@gmail.com>
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
X-List-Received-Date: Tue, 19 Jun 2012 02:40:03 -0000
Content-Type: multipart/alternative; boundary=bcaec52be429002b9b04c2ca338d

--bcaec52be429002b9b04c2ca338d
Content-Type: text/plain; charset=UTF-8

On Monday, June 18, 2012, James Abernathy <jfabernathy@gmail.com> wrote:
>
>
> On Mon, Jun 18, 2012 at 5:29 PM, jfabernathy <jfabernathy@gmail.com>
wrote:
>>
>> On 06/18/2012 05:21 PM, Marc Ferland wrote:
>>>
>>> jfabernathy<jfabernathy@gmail.com>  writes:
>>>
>>>>    I needed to do some network performance testing on a Crownbay board
and
>>>>    needed iperf in that environment.  Since I had the
core-image-sato-sdk
>>>>    image created, I just booted that and took the tarball from
Sourceforge
>>>>    and built it  per the readme file instructions:
>>>>    ./configure
>>>>    make
>>>>    make install
>>>>    After I completed my test, I thought about why not put that in my
list
>>>>    of personal recipes.  I found the previous version of iperf in the
>>>>    openembedded collection of benchmark recipes and just copied it
over.
>>>>    It built and worked fine.  There were a lot of items in the .bb
that I
>>>>    didn't understand, so I thought for fun I'd just try to build a
recipe
>>>>    for iperf 2.0.5 and see what happened.  My recipe is simple, mostly
>>>>    taken from the openembedded 2.0.4 version had stripped down:
>>>
>>> Hi JF,
>>>
>>> I add the same problem you had with the man page stuff, try this patch.
>>>


>>> Marc
>>
>> thanks, that patch fixed it from a build point of view. now I'll build
the image again and see what happens on the hardware.
>>
>> Jim A
>>
> As expected the new image booted and ran the iperf 2.0.5 just fine.  Are
there any plans to add this tool to the Yocto project??
>

You could have just looked into meta-oe/recipes-benchmarks
> Jim A
>

--bcaec52be429002b9b04c2ca338d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Monday, June 18, 2012, James Abernathy &lt;<a href=3D"mailto:jfa=
bernathy@gmail.com">jfabernathy@gmail.com</a>&gt; wrote:<br>&gt;<br>&gt;<br=
>&gt; On Mon, Jun 18, 2012 at 5:29 PM, jfabernathy &lt;<a href=3D"mailto:jf=
abernathy@gmail.com">jfabernathy@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>&gt;&gt; On 06/18/2012 05:21 PM, Marc Ferland wrote:<br>&gt;&gt=
;&gt;<br>&gt;&gt;&gt; jfabernathy&lt;<a href=3D"mailto:jfabernathy@gmail.co=
m">jfabernathy@gmail.com</a>&gt; =C2=A0writes:<br>&gt;&gt;&gt;<br>&gt;&gt;&=
gt;&gt; =C2=A0 =C2=A0I needed to do some network performance testing on a C=
rownbay board and<br>
&gt;&gt;&gt;&gt; =C2=A0 =C2=A0needed iperf in that environment. =C2=A0Since=
 I had the core-image-sato-sdk<br>&gt;&gt;&gt;&gt; =C2=A0 =C2=A0image creat=
ed, I just booted that and took the tarball from Sourceforge<br>&gt;&gt;&gt=
;&gt; =C2=A0 =C2=A0and built it =C2=A0per the readme file instructions:<br>
&gt;&gt;&gt;&gt; =C2=A0 =C2=A0./configure<br>&gt;&gt;&gt;&gt; =C2=A0 =C2=A0=
make<br>&gt;&gt;&gt;&gt; =C2=A0 =C2=A0make install<br>&gt;&gt;&gt;&gt; =C2=
=A0 =C2=A0After I completed my test, I thought about why not put that in my=
 list<br>&gt;&gt;&gt;&gt; =C2=A0 =C2=A0of personal recipes. =C2=A0I found t=
he previous version of iperf in the<br>
&gt;&gt;&gt;&gt; =C2=A0 =C2=A0openembedded collection of benchmark recipes =
and just copied it over.<br>&gt;&gt;&gt;&gt; =C2=A0 =C2=A0It built and work=
ed fine. =C2=A0There were a lot of items in the .bb that I<br>&gt;&gt;&gt;&=
gt; =C2=A0 =C2=A0didn&#39;t understand, so I thought for fun I&#39;d just t=
ry to build a recipe<br>
&gt;&gt;&gt;&gt; =C2=A0 =C2=A0for iperf 2.0.5 and see what happened. =C2=A0=
My recipe is simple, mostly<br>&gt;&gt;&gt;&gt; =C2=A0 =C2=A0taken from the=
 openembedded 2.0.4 version had stripped down:<br>&gt;&gt;&gt;<br>&gt;&gt;&=
gt; Hi JF,<br>&gt;&gt;&gt;<br>
&gt;&gt;&gt; I add the same problem you had with the man page stuff, try th=
is patch.<br>&gt;&gt;&gt;<br><br><br>&gt;&gt;&gt; Marc<br>&gt;&gt;<br>&gt;&=
gt; thanks, that patch fixed it from a build point of view. now I&#39;ll bu=
ild the image again and see what happens on the hardware.<br>
&gt;&gt;<br>&gt;&gt; Jim A<br>&gt;&gt;<br>&gt; As expected the new image bo=
oted and ran the iperf 2.0.5 just fine.=C2=A0 Are there any plans to add th=
is tool to the Yocto project??<br>&gt; <br><br>You could have just looked i=
nto meta-oe/recipes-benchmarks <br>
&gt; Jim A<br>&gt; =C2=A0

--bcaec52be429002b9b04c2ca338d--
