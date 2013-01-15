Return-Path: <PatrickTurley@gamestop.com>
Received: from gsironport1.gamestop.com (mail1.gamestop.com [12.25.107.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E9FDE0047F
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 09:54:18 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.84,475,1355119200"; d="scan'208,217";a="6781477"
Received: from unknown (HELO GV1HQPEX01.babgsetc.pvt) ([172.22.1.244])
	by gsironport1.gamestop.com with ESMTP; 15 Jan 2013 11:54:17 -0600
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.222]) by
	GV1HQPEX01.babgsetc.pvt ([172.22.1.191]) with mapi id 14.02.0318.004;
	Tue, 15 Jan 2013 11:54:17 -0600
From: Patrick Turley <PatrickTurley@gamestop.com>
To: Brian Lloyd <blloyd@familyhonor.net>
Thread-Topic: [yocto] Build external module against Yocto kernel
Thread-Index: AQHN8q6s5QOP/6xKnEq8yLl/GYg/sJhLBNOAgAAApYCAAAxrAA==
Date: Tue, 15 Jan 2013 17:54:16 +0000
Message-ID: <5BEFD653CA8A8D47AA194ED30AB5968C35D715@GV1HQPEX03.babgsetc.pvt>
References: <5BEFD653CA8A8D47AA194ED30AB5968C35CD91@GV1HQPEX03.babgsetc.pvt>
	<1358269651.2479.5.camel@omclinuxballt.devnet.ordermatic.net>
	<1358269789.2479.6.camel@omclinuxballt.devnet.ordermatic.net>
In-Reply-To: <1358269789.2479.6.camel@omclinuxballt.devnet.ordermatic.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.1.244]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build external module against Yocto kernel
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
X-List-Received-Date: Tue, 15 Jan 2013 17:54:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5BEFD653CA8A8D47AA194ED30AB5968C35D715GV1HQPEX03babgset_"

--_000_5BEFD653CA8A8D47AA194ED30AB5968C35D715GV1HQPEX03babgset_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thank you for directing me toward that documentation. As it happens, I have=
 already read that, and it doesn't apply.

The section you mentioned begins with this text:

While it is always preferable to work with sources integrated into the Linu=
x kernel sources, if you need an external kernel module, the hello-mod.bb r=
ecipe is available as a template from which you can create your own out-of-=
tree Linux kernel module recipe.

The approach here is to create a recipe that will build a module outside th=
e kernel tree, but still within the Yocto system.

That isn't what I'm doing.

I have source code for a kernel module that is entirely outside Yocto.  I'm=
 *not* going to write a recipe for this module and integrate it into a Yoct=
o layer.

Here's a link to instructions on how I would do this in Ubuntu:

http://www.cyberciti.biz/tips/build-linux-kernel-module-against-installed-k=
ernel-source-tree.html

As you can see, Ubuntu (and, of course, other major distributions) have "ke=
rnel-headers" packages that carry all the artifacts one needs to build a mo=
dule "after the fact."

Does Yocto have a mechanism for packaging up the necessary artifacts and ma=
king them available *outside* the Yocto build system and long *after* the Y=
octo build is finished?  Does Yocto recognize the necessity of this?  The b=
est I've been able to do is point my module build process at something like=
 this:

LINUX_DIR=3D/home/pturley/yocto-mpu-build/tmp/work/dm8148_mpu-poky-linux-gn=
ueabi/linux-ti81xx-psp-2.6.37-r0+spawnlabs+r0/git

This works but it's messy, unreliable and inconvenient.

So, my question remains: Does Yocto have a graceful way of dealing with thi=
s situation, perhaps like Ubuntu and friends?


On Jan 15, 2013, at 11:09 AM, Brian Lloyd <blloyd@familyhonor.net<mailto:bl=
loyd@familyhonor.net>> wrote:

Or better yet, now that it is past initial, use http://www.yoctoproject.org=
/docs/1.4/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules. <ht=
tp://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.html#incorporating=
-out-of-tree-modules.%C2%A0>  :)
It worked fine for 1.2 (denzil) for me, though it is written for a later on=
e.

Brian

On Tue, 2013-01-15 at 11:07 -0600, Brian Lloyd wrote:
Try this in work documentation and let us know how it helps or if there is =
something missing that would help more:
http://www.yoctoproject.org/docs/hart/kernel-dev/kernel-dev.html#incorporat=
ing-out-of-tree-modules

I just did the exact same thing and was happy to discover there is support =
in yocto for doing just this.

Brian

On Mon, 2013-01-14 at 23:27 +0000, Patrick Turley wrote:

I have to build a module from a third-party that has nothing to do with Yoc=
to.

I want to build this module against the kernel Yocto is giving me.

The Make file for this module has a build command like this:

    make -C $(LINUX_DIR) M=3D`pwd` $(ENV) \
        EXTRA_CFLAGS=3D"$(EXTRA_CFLAGS)" modules

Obviously, this command needs to connect with either the Linux source tree =
or something like a "kernel-headers" package.

I used the meta-toolchain-sdk recipe to produce an SDK, and I installed it.=
 Unfortunately, I don't see a "kernel-header" equivalent in there.

This leads me to imagine I must point this command at some sub-tree within =
the Yocto output (probably under tmp/sysroots). And, if I want that tree av=
ailable elsewhere, I have to package it up into a tarball and transport it.

Usually, Yocto is way ahead of me on these sorts of things, and there's alr=
eady a graceful way to deal with this -- I just haven't figure it out yet.

What am I missing?

_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto



_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto




--_000_5BEFD653CA8A8D47AA194ED30AB5968C35D715GV1HQPEX03babgset_
Content-Type: text/html; charset="us-ascii"
Content-ID: <951E425B3A32DA4082586718C712669A@gamestop.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-lin=
e-break: after-white-space; ">
<div>Thank you for directing me toward that documentation.&nbsp;As it happe=
ns, I have already read that, and it doesn't apply.</div>
<div><br>
</div>
<div>The section you mentioned begins with this text:</div>
<div><br>
</div>
<blockquote style=3D"margin: 0 0 0 40px; border: none; padding: 0px;">
<div>While it is always preferable to work with sources integrated into the=
 Linux kernel sources, if you need an external kernel module, the
<code class=3D"filename" style=3D"font-size: 14px;">hello-mod.bb</code> rec=
ipe is available as a template from which you can create your own out-of-tr=
ee Linux kernel module recipe.</div>
</blockquote>
<div><br>
</div>
<div>The approach here is to create a recipe that will build a module outsi=
de the kernel tree, but still within the Yocto system. &nbsp;</div>
<div><br>
</div>
<div>That isn't what I'm doing.</div>
<div><br>
</div>
<div>I have source code for a kernel module that is entirely outside Yocto.=
 &nbsp;I'm *not* going to write a recipe for this module and integrate it i=
nto a Yocto layer.</div>
<div><br>
</div>
<div>
<div>Here's a link to instructions on how I would do this in Ubuntu:</div>
<div><br>
</div>
</div>
<blockquote style=3D"margin: 0 0 0 40px; border: none; padding: 0px;">
<div>
<div><a href=3D"http://www.cyberciti.biz/tips/build-linux-kernel-module-aga=
inst-installed-kernel-source-tree.html">http://www.cyberciti.biz/tips/build=
-linux-kernel-module-against-installed-kernel-source-tree.html</a></div>
</div>
</blockquote>
<div>
<div><br>
</div>
<div>As you can see, Ubuntu (and, of course, other major distributions) hav=
e &quot;kernel-headers&quot; packages that carry all the artifacts one need=
s to build a module &quot;after the fact.&quot;</div>
</div>
<div><br>
</div>
<div>Does Yocto have a mechanism for packaging up the necessary artifacts a=
nd making them available *outside* the Yocto build system and long *after* =
the Yocto build is finished? &nbsp;Does Yocto recognize the necessity of th=
is?&nbsp; The best I've been able to do is
 point my module build process at something like this:</div>
<div><br>
</div>
<div><font face=3D"Oxygen Mono" style=3D"font-size: 14px;">LINUX_DIR=3D/hom=
e/pturley/yocto-mpu-build/tmp/work/dm8148_mpu-poky-linux-gnueabi/linux-ti81=
xx-psp-2.6.37-r0&#43;spawnlabs&#43;r0/git</font></div>
<div><br>
</div>
<div>This works but it's messy, unreliable and inconvenient.</div>
<div><br>
</div>
<div>So, my question remains: Does Yocto have a graceful way of dealing wit=
h this situation, perhaps like Ubuntu and friends?</div>
<div><br>
</div>
<div><br>
</div>
<div>
<div>On Jan 15, 2013, at 11:09 AM, Brian Lloyd &lt;<a href=3D"mailto:blloyd=
@familyhonor.net">blloyd@familyhonor.net</a>&gt; wrote:</div>
<br class=3D"Apple-interchange-newline">
<blockquote type=3D"cite">
<meta name=3D"GENERATOR" content=3D"GtkHTML/4.4.4">
<div>Or better yet, now that it is past initial, use <a href=3D"http://www.=
yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.html#incorporating-out-of-t=
ree-modules.%C2%A0">
http://www.yoctoproject.org/docs/1.4/kernel-dev/kernel-dev.html#incorporati=
ng-out-of-tree-modules.&nbsp;</a> :)<br>
It worked fine for 1.2 (denzil) for me, though it is written for a later on=
e.<br>
<br>
Brian<br>
<br>
On Tue, 2013-01-15 at 11:07 -0600, Brian Lloyd wrote:<br>
<blockquote type=3D"CITE" style=3D"position: static; z-index: auto; ">Try t=
his in work documentation and let us know how it helps or if there is somet=
hing missing that would help more:<br>
<a href=3D"http://www.yoctoproject.org/docs/hart/kernel-dev/kernel-dev.html=
#incorporating-out-of-tree-modules">http://www.yoctoproject.org/docs/hart/k=
ernel-dev/kernel-dev.html#incorporating-out-of-tree-modules</a><br>
<br>
I just did the exact same thing and was happy to discover there is support =
in yocto for doing just this.<br>
<br>
Brian<br>
<br>
On Mon, 2013-01-14 at 23:27 &#43;0000, Patrick Turley wrote:
<blockquote type=3D"CITE" style=3D"position: static; z-index: auto; ">
<pre>I have to build a module from a third-party that has nothing to do wit=
h Yocto.

I want to build this module against the kernel Yocto is giving me.

The Make file for this module has a build command like this:

    make -C $(LINUX_DIR) M=3D`pwd` $(ENV) \
        EXTRA_CFLAGS=3D&quot;$(EXTRA_CFLAGS)&quot; modules

Obviously, this command needs to connect with either the Linux source tree =
or something like a &quot;kernel-headers&quot; package.

I used the meta-toolchain-sdk recipe to produce an SDK, and I installed it.=
 Unfortunately, I don't see a &quot;kernel-header&quot; equivalent in there=
.

This leads me to imagine I must point this command at some sub-tree within =
the Yocto output (probably under tmp/sysroots). And, if I want that tree av=
ailable elsewhere, I have to package it up into a tarball and transport it.

Usually, Yocto is way ahead of me on these sorts of things, and there's alr=
eady a graceful way to deal with this -- I just haven't figure it out yet.

What am I missing?

_______________________________________________
yocto mailing list
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoc=
toproject.org/listinfo/yocto</a>
</pre>
</blockquote>
<br>
<pre>_______________________________________________
yocto mailing list
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoc=
toproject.org/listinfo/yocto</a>
</pre>
</blockquote>
<br>
</div>
</blockquote>
</div>
<br>
</body>
</html>

--_000_5BEFD653CA8A8D47AA194ED30AB5968C35D715GV1HQPEX03babgset_--
