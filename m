Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 258D1E004CF
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 08:48:59 -0700 (PDT)
Received: by mail-ie0-f179.google.com with SMTP id c13so25605445ieb.10
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 08:48:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=QB+0NABFFIhbTbKxx+S8VVtAu5MNkqfZWqZ79e7lZb0=;
	b=nWo52J3t2r41BQpEudhe+dZlcYINwhm7Xw33H+oZbZ8VlB1M1WvkDefs3DRva/m/0V
	lDRUbQ//OZmIQq+XtfrpI13z+rXKBmLzFppzDWpzTksGuWeUxVIjSQJYIx43NPoZ63Bm
	2FjpqbjO0P0CT3tnEIoVUM9iaIho7MW9KhpcGFRswhKn2IeWaT/JHRx1s3xO/4zYFNCK
	RHZyJg81JCray4K9/xTuT84nGAKaB/9H4eDCs4XRJmmoq2dbm9t8MdIPN2FNyRw8bIZq
	+mkttv6TZ05xhyW6kuds9BrJAwjfzq7CRP/Ql7edCYWkFj4Enyds3aZ9LWFF27gP/luj
	iuRw==
MIME-Version: 1.0
X-Received: by 10.50.111.166 with SMTP id ij6mr1611612igb.47.1369842538620;
	Wed, 29 May 2013 08:48:58 -0700 (PDT)
Received: by 10.50.34.163 with HTTP; Wed, 29 May 2013 08:48:58 -0700 (PDT)
In-Reply-To: <51A6200C.6030904@windriver.com>
References: <CAM1ZcoV_9+XL=Xef62zSo8y7LTLtfYj9DyRhy5dqpcW84=sy_g@mail.gmail.com>
	<20130529143948.GM3192@jama> <2809625.nUpYsyq62m@helios>
	<CAM1ZcoX-oZUqGky3NjVy5OZnGonwDS9RyJ59AnE2B8dDW=ujsA@mail.gmail.com>
	<51A6200C.6030904@windriver.com>
Date: Wed, 29 May 2013 16:48:58 +0100
Message-ID: <CAM1ZcoX5H=qsUt6Dg=0OMT3-5xYvt4JrZpFfsvMEWnU9yEGggQ@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: using module_autoload
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
X-List-Received-Date: Wed, 29 May 2013 15:48:59 -0000
Content-Type: multipart/alternative; boundary=047d7b41446ee9acdb04dddd5175

--047d7b41446ee9acdb04dddd5175
Content-Type: text/plain; charset=ISO-8859-1

Guys,
I'm using the gumstix repo
https://github.com/gumstix/Gumstix-YoctoProject-Repo and I don't have any
module-split bbclass.
The module.bbclass inherits module-base.bbclass and module_strip.bbclass,
but the latest is empty.
Do you think my problem could be related with that? module_strip is also
inherited by kernel.bbclass

thanks a lot,
Katu



2013/5/29 Bruce Ashfield <bruce.ashfield@windriver.com>

> On 13-05-29 11:32 AM, Katu Txakur wrote:
>
>> Martin, Paul, thanks for your help.
>> Yes, the recipe does inherit module.
>> Any other problem that you can think off?
>>
>
> Note: if you are on master, Martin said "module-split", not
> "module".
>
> Cheers,
>
> Bruce
>
>
>> Thanks a lot in advance,
>> Katu
>>
>>
>> 2013/5/29 Paul Eggleton <paul.eggleton@linux.intel.com
>> <mailto:paul.eggleton@linux.**intel.com <paul.eggleton@linux.intel.com>>>
>>
>>
>>     On Wednesday 29 May 2013 16:39:48 Martin Jansa wrote:
>>      > On Wed, May 29, 2013 at 02:01:11PM +0100, Katu Txakur wrote:
>>      > > Hi,
>>      > > I'm failing to load a kernel module named spike doing this:
>>      > > 1) add the recipe (inherit module), based in a Makefile with
>>      > > modules_install:
>>      > > $(MAKE) INSTALL_MOD_DIR=kernel/**drivers/spike -C $(KERNEL_SRC)
>>     M=$(SRC)
>>      > > modules_install
>>      > > 2) Add the package to the image with IMAGE_INSTALL += "spike"
>>     in the
>>      > > local.conf file
>>      > > 3) In the machine/mymachine.conf I've added
>>      > >
>>      > >         MACHINE_ESSENTIAL_EXTRA_**RRECOMMENDS += "spike"
>>      > >         module_autoload_spike = "spike"
>>      > >
>>      > > The driver gets added to the image and I can load it with
>>     insmod spike,
>>      > > however, I would like to load it at boot time.
>>      > > A workaround is to create a file with the name spike.conf and
>>     write spike
>>      > > inside. Copying that file to /etc/modules-load.d/spike.conf
>>      > > loads the driver correctly, but I need to do it from a recipe.
>>      > >
>>      > > Can anyone spot what am I doing wrong?
>>      >
>>      > module_autoload won't work with external module unless you
>>     inherit also
>>      > kernel-module-split
>>
>>     Note that module.bbclass already does this, so if the external
>>     module recipe
>>     already does "inherit module" then that is not the problem.
>>
>>     Cheers,
>>     Paul
>>
>>     --
>>
>>     Paul Eggleton
>>     Intel Open Source Technology Centre
>>
>>
>>
>>
>> ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
>

--047d7b41446ee9acdb04dddd5175
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Guys,<div style>I&#39;m using the gumstix repo=A0<a href=
=3D"https://github.com/gumstix/Gumstix-YoctoProject-Repo">https://github.co=
m/gumstix/Gumstix-YoctoProject-Repo</a>=A0and I don&#39;t have any module-s=
plit bbclass.</div>
<div style>The module.bbclass inherits module-base.bbclass and module_strip=
.bbclass, but the latest is empty.</div><div style>Do you think my problem =
could be related with that? module_strip is also inherited by kernel.bbclas=
s</div>
<div style><br></div><div style>thanks a lot,</div><div style>Katu</div><di=
v style><br></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gm=
ail_quote">2013/5/29 Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"mailto=
:bruce.ashfield@windriver.com" target=3D"_blank">bruce.ashfield@windriver.c=
om</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 13-05-29 11:32 AM, Katu=
 Txakur wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Martin, Paul, thanks for your help.<br>
Yes, the recipe does inherit module.<br>
Any other problem that you can think off?<br>
</blockquote>
<br></div>
Note: if you are on master, Martin said &quot;module-split&quot;, not<br>
&quot;module&quot;.<br>
<br>
Cheers,<br>
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">
<br>
Thanks a lot in advance,<br>
Katu<br>
<br>
<br>
2013/5/29 Paul Eggleton &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com=
" target=3D"_blank">paul.eggleton@linux.intel.com</a><br></div>
&lt;mailto:<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blan=
k">paul.eggleton@linux.<u></u>intel.com</a>&gt;&gt;<div><div class=3D"h5"><=
br>
<br>
=A0 =A0 On Wednesday 29 May 2013 16:39:48 Martin Jansa wrote:<br>
=A0 =A0 =A0&gt; On Wed, May 29, 2013 at 02:01:11PM +0100, Katu Txakur wrote=
:<br>
=A0 =A0 =A0&gt; &gt; Hi,<br>
=A0 =A0 =A0&gt; &gt; I&#39;m failing to load a kernel module named spike do=
ing this:<br>
=A0 =A0 =A0&gt; &gt; 1) add the recipe (inherit module), based in a Makefil=
e with<br>
=A0 =A0 =A0&gt; &gt; modules_install:<br>
=A0 =A0 =A0&gt; &gt; $(MAKE) INSTALL_MOD_DIR=3Dkernel/<u></u>drivers/spike =
-C $(KERNEL_SRC)<br>
=A0 =A0 M=3D$(SRC)<br>
=A0 =A0 =A0&gt; &gt; modules_install<br>
=A0 =A0 =A0&gt; &gt; 2) Add the package to the image with IMAGE_INSTALL +=
=3D &quot;spike&quot;<br>
=A0 =A0 in the<br>
=A0 =A0 =A0&gt; &gt; local.conf file<br>
=A0 =A0 =A0&gt; &gt; 3) In the machine/mymachine.conf I&#39;ve added<br>
=A0 =A0 =A0&gt; &gt;<br>
=A0 =A0 =A0&gt; &gt; =A0 =A0 =A0 =A0 MACHINE_ESSENTIAL_EXTRA_<u></u>RRECOMM=
ENDS +=3D &quot;spike&quot;<br>
=A0 =A0 =A0&gt; &gt; =A0 =A0 =A0 =A0 module_autoload_spike =3D &quot;spike&=
quot;<br>
=A0 =A0 =A0&gt; &gt;<br>
=A0 =A0 =A0&gt; &gt; The driver gets added to the image and I can load it w=
ith<br>
=A0 =A0 insmod spike,<br>
=A0 =A0 =A0&gt; &gt; however, I would like to load it at boot time.<br>
=A0 =A0 =A0&gt; &gt; A workaround is to create a file with the name spike.c=
onf and<br>
=A0 =A0 write spike<br>
=A0 =A0 =A0&gt; &gt; inside. Copying that file to /etc/modules-load.d/spike=
.conf<br>
=A0 =A0 =A0&gt; &gt; loads the driver correctly, but I need to do it from a=
 recipe.<br>
=A0 =A0 =A0&gt; &gt;<br>
=A0 =A0 =A0&gt; &gt; Can anyone spot what am I doing wrong?<br>
=A0 =A0 =A0&gt;<br>
=A0 =A0 =A0&gt; module_autoload won&#39;t work with external module unless =
you<br>
=A0 =A0 inherit also<br>
=A0 =A0 =A0&gt; kernel-module-split<br>
<br>
=A0 =A0 Note that module.bbclass already does this, so if the external<br>
=A0 =A0 module recipe<br>
=A0 =A0 already does &quot;inherit module&quot; then that is not the proble=
m.<br>
<br>
=A0 =A0 Cheers,<br>
=A0 =A0 Paul<br>
<br>
=A0 =A0 --<br>
<br>
=A0 =A0 Paul Eggleton<br>
=A0 =A0 Intel Open Source Technology Centre<br>
<br>
<br>
<br>
<br></div></div>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
<br>
</blockquote>
<br>
</blockquote></div><br></div>

--047d7b41446ee9acdb04dddd5175--
