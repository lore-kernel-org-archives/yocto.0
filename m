Return-Path: <raj.khem@gmail.com>
Received: from mail-qa0-f49.google.com (mail-qa0-f49.google.com
	[209.85.216.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66B1BE01621
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 22:28:32 -0700 (PDT)
Received: by mail-qa0-f49.google.com with SMTP id k15so1658809qaq.8
	for <yocto@yoctoproject.org>; Fri, 04 Oct 2013 22:28:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=MV2nVG+gQHS73q4lpF7vowCg97rBzDPYKb3SjvzP6no=;
	b=F1A5t08VRGvQ5Iq9H8Pasid8RbE1wiwYk2CsBsYKpEMupFu75vHMPE+7fPHtVG0vXb
	GbB2N1L4WsLSv1DD+69Gd9jOF6sCMqFBxouW/cWFsB/2AG+R/Prf8r5FgVumBRDOyL2p
	wC2GFavQEk41bLXfOXfw9Ak9t3ckX6PV6GRicDwbOp1faQlSocW2gY02m6OP3+EJjrc5
	XX8oA55zi+gYgdW8M/rPDFVMCWX3eb0lDZEoxeluou9MdGhoLuFQdgrRs3/8eSAUc8PQ
	+/77XkoWIB/gc6S+vUtSztX046wGSnK1tPmgH8JU6fkTkRnsgvcSh2Z990rjVV4Li7ln
	pIZw==
MIME-Version: 1.0
X-Received: by 10.224.171.67 with SMTP id g3mr23202792qaz.13.1380950911330;
	Fri, 04 Oct 2013 22:28:31 -0700 (PDT)
Received: by 10.224.10.201 with HTTP; Fri, 4 Oct 2013 22:28:31 -0700 (PDT)
In-Reply-To: <CAPMH7-8xAYe1T=xsF4WGxbnWLYy6tejzTbVuxrgqvQXmYcWEAg@mail.gmail.com>
References: <CAPMH7-8xAYe1T=xsF4WGxbnWLYy6tejzTbVuxrgqvQXmYcWEAg@mail.gmail.com>
Date: Fri, 4 Oct 2013 22:28:31 -0700
Message-ID: <CAMKF1sqR82aeyHTDQH77zj5XPYUG0XeCEdOjDYskU6r0Mrk71w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Aman Sharma <amansh.sharma5@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error In java cross compilation using Yocto
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
X-List-Received-Date: Sat, 05 Oct 2013 05:28:35 -0000
Content-Type: multipart/alternative; boundary=047d7b67768885ace004e7f7b0c8

--047d7b67768885ace004e7f7b0c8
Content-Type: text/plain; charset=UTF-8

Apply
https://github.com/kraj/meta-java/commit/22983b1ab80b3393ecc27e5c3d3a9b52e3b8e692

On Friday, October 4, 2013, Aman Sharma wrote:

> Hi All,
>
> I need to cross compile openjdk-7-jre in ppc64 platform using Yocto.
>
> After setting the environment i am running "bitbake openjdok-7-jre"
> command but i am getting following error message:
>
> | Checking patches/icedtea-zero-hotspotfix.patch
> | Applying patches/icedtea-zero-hotspotfix.patch
> | patching file openjdk/hotspot/make/linux/makefiles/zeroshark.make
> *| Checking patches/icedtea-jdk-nio-use-host-cc.patch*
> *| 3 out of 6 hunks FAILED -- saving rejects to file
> openjdk/jdk/make/java/nio/Makefile.rej*
> *| 2 out of 2 hunks FAILED -- saving rejects to file
> openjdk/jdk/make/sun/Makefile.rej*
> *| ERROR patch patches/icedtea-jdk-nio-use-host-cc.patch FAILED!*
> *| WARNING make clean-patch before retrying a fix*
> *| make: *** [stamps/patch.stamp] Error 2*
> *| ERROR: oe_runmake failed*
> *| ERROR: Function failed: do_configure (see
> /home/vvdn/yocto_1.4/QorIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/ppce6500-fsl_networking-linux/openjdk-7-jre/25b30-2.3.12-r5.1/temp/log.do_configure.19910
> for further information)*
> ERROR: Task 6
> (/home/vvdn/yocto_1.4/QorIQ-SDK-V1.4-20130814-yocto/meta-java/recipes-core/openjdk/
> openjdk-7_25b30-2.3.12.bb, do_configure) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2674 tasks of which 2664 didn't need to be
> rerun and 1 failed.
> No currently running tasks (2674 of 2684)
>
> Summary: 1 task failed:
>
> /home/vvdn/yocto_1.4/QorIQ-SDK-V1.4-20130814-yocto/meta-java/recipes-core/openjdk/
> openjdk-7_25b30-2.3.12.bb, do_configure
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
> Please help me on fixing this issue.
>
> Thanks
> Aman Sharma
>
>

--047d7b67768885ace004e7f7b0c8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Apply=C2=A0<a href=3D"https://github.com/kraj/meta-java/commit/22983b1ab80b=
3393ecc27e5c3d3a9b52e3b8e692">https://github.com/kraj/meta-java/commit/2298=
3b1ab80b3393ecc27e5c3d3a9b52e3b8e692</a><br><br>On Friday, October 4, 2013,=
 Aman Sharma  wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi All,<div><br></div><div>=
I need to cross compile openjdk-7-jre in ppc64 platform using Yocto.</div><=
div>
<br></div><div>After setting the environment i am running &quot;bitbake ope=
njdok-7-jre&quot; command but i am getting following error message:</div>
<div><br></div><div><div>| Checking patches/icedtea-zero-hotspotfix.patch</=
div><div>| Applying patches/icedtea-zero-hotspotfix.patch</div><div>| patch=
ing file openjdk/hotspot/make/linux/makefiles/zeroshark.make</div><div>

<b>| Checking patches/icedtea-jdk-nio-use-host-cc.patch</b></div><div><b>| =
3 out of 6 hunks FAILED -- saving rejects to file openjdk/jdk/make/java/nio=
/Makefile.rej</b></div><div><b>| 2 out of 2 hunks FAILED -- saving rejects =
to file openjdk/jdk/make/sun/Makefile.rej</b></div>

<div><b>| ERROR patch patches/icedtea-jdk-nio-use-host-cc.patch FAILED!</b>=
</div><div><b>| WARNING make clean-patch before retrying a fix</b></div><di=
v><b>| make: *** [stamps/patch.stamp] Error 2</b></div><div><b>| ERROR: oe_=
runmake failed</b></div>

<div><b>| ERROR: Function failed: do_configure (see /home/vvdn/yocto_1.4/Qo=
rIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/ppce6500-fsl_ne=
tworking-linux/openjdk-7-jre/25b30-2.3.12-r5.1/temp/log.do_configure.19910 =
for further information)</b></div>

<div>ERROR: Task 6 (/home/vvdn/yocto_1.4/QorIQ-SDK-V1.4-20130814-yocto/meta=
-java/recipes-core/openjdk/<a href=3D"http://openjdk-7_25b30-2.3.12.bb" tar=
get=3D"_blank">openjdk-7_25b30-2.3.12.bb</a>, do_configure) failed with exi=
t code &#39;1&#39;</div>

<div>NOTE: Tasks Summary: Attempted 2674 tasks of which 2664 didn&#39;t nee=
d to be rerun and 1 failed.</div><div>No currently running tasks (2674 of 2=
684)</div><div><br></div><div>Summary: 1 task failed:</div><div>=C2=A0 /hom=
e/vvdn/yocto_1.4/QorIQ-SDK-V1.4-20130814-yocto/meta-java/recipes-core/openj=
dk/<a href=3D"http://openjdk-7_25b30-2.3.12.bb" target=3D"_blank">openjdk-7=
_25b30-2.3.12.bb</a>, do_configure</div>

<div>Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.</div></div><div><br></div><div><br></div><div>Please help me on fixing =
this issue.</div><div><br></div><div>Thanks</div><div>Aman Sharma</div>

<div><br></div></div>
</blockquote>

--047d7b67768885ace004e7f7b0c8--
