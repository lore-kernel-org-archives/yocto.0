Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF6CAE00D63; Fri, 15 Apr 2016 10:15:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BE5AE0092C
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 10:14:59 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id p188so130172026oih.2
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 10:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=vhtZ5DsHrXVPSPnsH+oBHOC3+xkHGvJUPVn+txC3JBs=;
	b=e0c3P+bw74pWOp4ptD7pew92E5lcL6Isa2uceATFnM1YRoc+dMUWHPfhJsss0VWV7Z
	ZOWenG4H46aQCcB690yy4E2Kgs29tdxUFJlpi5VmLBQVeem3BwntOjRNs6BErGc/xf7O
	GFV18cboSALgwRCBO++sey7iPRWadFeH5oL2DWYSzCWYA1PhffcEtJf/gMd9BbnAhFQP
	YWlWYHKAa2pDGnyzo1qNk3d3GQYY2hxCmfM/dM9P1chlauv5Yj5MDKOzj6G66SNNfm9n
	EPyDuIEcFTha4tLysxXYaOxCZQgdtYfjLqdBewEYUVlaZXJ/Q20ypsmM6F0Fa1liLzDX
	egtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=vhtZ5DsHrXVPSPnsH+oBHOC3+xkHGvJUPVn+txC3JBs=;
	b=gCqP5iE1yhpQ7oB6uf4KdL24URE9RDE7P2qvyEof7gUczZp0b5zcHHKrmAXGWidObD
	dtLsuKcKNChbP3PL/CuCs1eaWNO3pa0EezQfiyoTTvubAYx3S2T+0n5jE7E19ukWwDus
	91kkpsBqDruudipDiRYDonywa8Ge02UYG42+gOCNAeUzj8MkZVmEGUudOv6IsuxKFjWM
	N/zv9ougyuEP2HNz2qSGEVa3Atfl0f//UMqHUvRcWOcdPEefEmDzrU9IwR3pPGBOIPs1
	Vz7yx9lrRnlE/22sMK/oIuaKnFnLPvBn13ea0X9Pm8UvyZ6E0vOMKwgQyzbfpaNJfucI
	48/g==
X-Gm-Message-State: AOPr4FW4sa44HjIq4WY+bbf2JsL1NbbVkXLqXbW8er9dQZ75K3bOVtGUnZsSj0riON0pd2+V1eqvX9VLiR1zSg==
MIME-Version: 1.0
X-Received: by 10.157.47.207 with SMTP id b15mr11514006otd.118.1460740499358; 
	Fri, 15 Apr 2016 10:14:59 -0700 (PDT)
Received: by 10.157.5.101 with HTTP; Fri, 15 Apr 2016 10:14:59 -0700 (PDT)
In-Reply-To: <14E4216AB3B3624BB1E80BC692D0F413D8D3A4F7@EU-EHV-EXM01-P.global.tektronix.net>
References: <14E4216AB3B3624BB1E80BC692D0F413D8D3A4F7@EU-EHV-EXM01-P.global.tektronix.net>
Date: Fri, 15 Apr 2016 13:14:59 -0400
Message-ID: <CADkTA4P1zrxf2Ob7NnLKRhm1XjA9AVFj=aD_bL9nhZZP-2a1QA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Vajzovic, Tom" <Tom.Vajzovic@irisys.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: module do_configure depends on kernel .config and headers
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
X-List-Received-Date: Fri, 15 Apr 2016 17:15:03 -0000
Content-Type: multipart/alternative; boundary=001a11353a2c92ca8c0530892600

--001a11353a2c92ca8c0530892600
Content-Type: text/plain; charset=UTF-8

On Fri, Apr 15, 2016 at 12:02 PM, Vajzovic, Tom <Tom.Vajzovic@irisys.co.uk>
wrote:

> Hi,
>
> I am using a meta layer provided by a SOM manufacturer.  They have a
> recipe which sets:
>
>
What branch are you using ? master ? jethro ? ... something else ? The
answer
changes with the branch you are using since the management of the kernel
source and build artifacts has changed over time.


> inherit module
>
> export KLIB_BUILD="${STAGING_KERNEL_DIR}"
> export KLIB="${D}"
>
> and then its do_configure script calls make, and the Makefile expects
> $(KLIB_BUILD)/.config to exist, and the kernel headers to be in the same
> place.
>
> This sometimes succeeds and sometimes fails, which I presume is to do with
> the order that the other entries in the run-queue are executed.
>
> I thought that this might be because the dependency on the kernel .config
> and headers is not correctly recorded in the recipe.
>
> I added a .bbappend file to the recipe in my own layer which contains:
>
> do_configure[depends] += "virtual/kernel:do_shared_workdir"
>
> But this has not resolved the problem.  I have used bitbake-layers to
> verify that my bbappend is being applied.
>
> So my questions are:
>
> Is $(KLIB_BUILD) the correct place to look for the kernel .config and
> headers?
>


The .config is in: STAGING_KERNEL_BUILDDIR, that also has any generated
files as part
of the build.

The headers are in the shared_workdir, as you had found: STAGING_KERNEL_DIR

.. so there's a split in the files, if you look in the git history of those
files you'll see the
reasons why it is like that (less disk i/o, build time, packaging/sharing
of source, etc).


>
> What is the correct way to record the dependency in the recipe?
>
> Why isn't this done in module.bbclass?  Wouldn't all modules depend on the
> kernel headers?
>

It pretty much does, with this in module-base.bbclass:

# This is instead of DEPENDS = "virtual/kernel"

do_configure[depends] += "virtual/kernel:do_compile_kernelmodules"


.. this isn't a simple place to wade in, I work on this quite a bit and I
still have to

double check things.
Bruce


>
> Thanks,
> Tom
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--001a11353a2c92ca8c0530892600
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Fri, Apr 15, 2016 at 12:02 PM, Vajzovic, Tom <span dir=3D"ltr">&lt;<=
a href=3D"mailto:Tom.Vajzovic@irisys.co.uk" target=3D"_blank">Tom.Vajzovic@=
irisys.co.uk</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(=
204,204,204);border-left-style:solid;padding-left:1ex">Hi,<br>
<br>
I am using a meta layer provided by a SOM manufacturer.=C2=A0 They have a r=
ecipe which sets:<br>
<br></blockquote><div><br></div><div>What branch are you using ? master ? j=
ethro ? ... something else ? The answer</div><div>changes with the branch y=
ou are using since the management of the kernel</div><div>source and build =
artifacts has changed over time.</div><div>=C2=A0</div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;borde=
r-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">
inherit module<br>
<br>
export KLIB_BUILD=3D&quot;${STAGING_KERNEL_DIR}&quot;<br>
export KLIB=3D&quot;${D}&quot;<br>
<br>
and then its do_configure script calls make, and the Makefile expects $(KLI=
B_BUILD)/.config to exist, and the kernel headers to be in the same place.<=
br>
<br>
This sometimes succeeds and sometimes fails, which I presume is to do with =
the order that the other entries in the run-queue are executed.<br>
<br>
I thought that this might be because the dependency on the kernel .config a=
nd headers is not correctly recorded in the recipe.<br>
<br>
I added a .bbappend file to the recipe in my own layer which contains:<br>
<br>
do_configure[depends] +=3D &quot;virtual/kernel:do_shared_workdir&quot;<br>
<br>
But this has not resolved the problem.=C2=A0 I have used bitbake-layers to =
verify that my bbappend is being applied.<br>
<br>
So my questions are:<br>
<br>
Is $(KLIB_BUILD) the correct place to look for the kernel .config and heade=
rs?<br></blockquote><div><br></div><div><br></div><div>The .config is in: S=
TAGING_KERNEL_BUILDDIR, that also has any generated files as part</div><div=
>of the build.</div><div><br></div><div>The headers are in the shared_workd=
ir, as you had found: STAGING_KERNEL_DIR</div><div><br></div><div>.. so the=
re&#39;s a split in the files, if you look in the git history of those file=
s you&#39;ll see the</div><div>reasons why it is like that (less disk i/o, =
build time, packaging/sharing of source, etc).</div>







<div>=C2=A0</div>







<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
<br>
What is the correct way to record the dependency in the recipe?<br>
<br>
Why isn&#39;t this done in module.bbclass?=C2=A0 Wouldn&#39;t all modules d=
epend on the kernel headers?<br></blockquote><div><br></div><div>It pretty =
much does, with this in module-base.bbclass:</div>







<div>







<p class=3D""><span class=3D""># This is instead of DEPENDS =3D &quot;virtu=
al/kernel&quot;</span></p><p class=3D""><span class=3D"">do_configure[depen=
ds] +=3D </span><span class=3D"">&quot;virtual/kernel:do_compile_kernelmodu=
les&quot;</span></p><p class=3D""><span class=3D""><br></span></p><p class=
=3D"">.. this isn&#39;t a simple place to wade in, I work on this quite a b=
it and I still have to</p><p class=3D"">double check things.</p></div><div>=
Bruce</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,20=
4);border-left-style:solid;padding-left:1ex">
<br>
Thanks,<br>
Tom<br>
<span><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div>&quot;Thou shalt not follow the NULL pointer, for chaos and madness =
await thee at its end&quot;</div>
</div></div>

--001a11353a2c92ca8c0530892600--
