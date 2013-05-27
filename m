Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f45.google.com (mail-oa0-f45.google.com
	[209.85.219.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D23DE013A2
	for <yocto@yoctoproject.org>; Mon, 27 May 2013 00:03:29 -0700 (PDT)
Received: by mail-oa0-f45.google.com with SMTP id j6so8539187oag.32
	for <yocto@yoctoproject.org>; Mon, 27 May 2013 00:03:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=GiiKO3e7uS88FZm7Puc3WYMVnqLPWrEZdS0FCbAGwRs=;
	b=UYTYM5/uXULtaCvB4gDhi8uiTgILI47N54UYF3COGfc5npIuxcjaAsJxeamh0Ret8s
	aCDPxLJWvgy8SC951/btgEf6Lfi5AJMqiDouH6JjYeo02+OSSmgTIyWHUyEts4krMsSD
	4P/oJGuElOx9MAmYJbQJYWOrEqWeDGJH8ec2s69fGb+nw3BQsYm0eGA6KEUPE1TQQIu4
	mSkiNWpCEvXHSXnHVMeIgSY3B+K+gON+VrVbiPqe/pFFjN6tCqdd3VCFINmbLOvVYk17
	GAewvI8F67su3svxn/sWvGnJP9TKziLpPs9PbjMHyaL8AZXM9tRiyb/botXQVO7gK8//
	aHsw==
X-Received: by 10.60.94.113 with SMTP id db17mr9553882oeb.62.1369638209061;
	Mon, 27 May 2013 00:03:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.27.165 with HTTP; Mon, 27 May 2013 00:03:08 -0700 (PDT)
In-Reply-To: <5394411.Nd6qyTtVKA@helios>
References: <loom.20130525T145157-762@post.gmane.org>
	<5394411.Nd6qyTtVKA@helios>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 27 May 2013 09:03:08 +0200
Message-ID: <CAP71Wjx3xV7t5WUA_rEraDd3p0R2OE1mkZtOGkXFEk1hjEf2pg@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQm2B66SghKpuQcpsvwkLDjZhA7DYE8SNHULo5BjmndZKC15nsqCDg16a7iYlLgCoKFXiYXF
Cc: Yocto list discussion <yocto@yoctoproject.org>,
	Jack <jackrubby2010@gmail.com>
Subject: Re: How can I remove packages from rootfs file ?
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
X-List-Received-Date: Mon, 27 May 2013 07:03:29 -0000
Content-Type: multipart/alternative; boundary=089e011777e9ec17e004ddadbeca

--089e011777e9ec17e004ddadbeca
Content-Type: text/plain; charset=ISO-8859-1

On Sun, May 26, 2013 at 1:41 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Saturday 25 May 2013 13:58:46 Jack wrote:
> > I maked a fsl-image-minaml rootfs file and customized it with adding
> > particular packages. For example, I added
> > IMAGE_INSTALL_append_pn-fsl-image-minimal = " task-core-ssh-openssh
> > task-core-nfs-server" in local.conf file. The problem is that, the rootfs
> > file has 6-7 MB capacity but this capacity of file is very high and not
> > acceptable to me. So how can I remove some packages from rootfs file
> that I
> > do not want ?
>
> There are several different aspects to answering this question.
>
> The list of packages to be installed is composed of several things - the
> list
> of packages specified in IMAGE_INSTALL, packages brought in by
> IMAGE_FEATURES,
> and packages brought in to satisfy dependencies of either of the first two.
>
> One way to analyse the contents of your image is to enable buildhistory [1]
> which gives you the full list of installed packages, installed packages by
> size, as well as graphs (.dot) that will show you the dependency
> relationships
> between the packages. These dot graphs can be viewed by converting them to
> images using the "dot" command (from graphviz) or using a viewer such as
> xdot
> [2].
>
> Once you've analysed things at this level, you may find there are
> dependency
> relationships that can't easily be broken, or some packages that are overly
> large. At this point you will need to start looking at changing the build
> configuraton of the packages in question - disabling optional functionalty,
> removing optional dependencies etc. (usually this would be done by changing
> DISTRO_FEATURES, modifying the kernel configuration, changing PACKAGECONFIG
> options for individual recipes, or if those aren't available modifying
> EXTRA_OECONF). How far you want to go with this depends on how much you
> want
> to optimise the size of your image.
>
> If you do find you need to go down the latter path, I'd recommend checking
> out
> Darren Hart's presentation "Tuning Embedded Linux - When Less is More" [3].
>
> > For example, remove packages like ar, arping,  basename, telnet, beep,
> .....
>
> Note that whilst some of these may be from packages you can remove, many of
> them may be functionality provided by busybox, i.e. where the command is
> just
> a symlink to the busybox binary. You can modify the busybox build-time
> configuration to disable these, but bear in mind that disabling them
> usually only saves you a few kB. For some applications that may be a useful
> saving, of course.
>

on top of that, i wanted to remind that there is a dedicated chapter in the
Yocto manual about building 'tiny' systems [1]. Also you don't mention
which 'DISTRO' you are using, so make sure that you are aware that Yocto
comes with Poky, and Poky-tiny as well, which according to
conf/distro/poky-tiny.conf says:

# Poky-tiny is intended to define a tiny Linux system comprised of a


# Linux kernel tailored to support each specific MACHINE and busybox.


# Poky-tiny sets some basic policy to ensure a usable system while still


# keeping the rootfs and kernel image as small as possible.



see [2]

Finally, note that some packages comes with builtin "RRECOMMENDS" which are
installed by default in the RootFS. If you are using IPK backend you can
use the variables BAD_RECOMMENDS to make sure that though packages are
marked as RRECOMMENDS, they aren't installed in the rootFS. I believe this
only works with IPK for now.


[1]
http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#building-a-tiny-system
[2]
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-yocto/conf/distro/poky-tiny.conf


>
> HTH.
>
> Cheers,
> Paul
>
> [1]
> http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#maintaining-build-output-quality
>
> [2] https://github.com/jrfonseca/xdot.py
>
> [3] Slides: http://elinux.org/images/2/2b/Elce11_hart.pdf
> Video: http://www.youtube.com/watch?v=WHLvI8j31vk
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e011777e9ec17e004ddadbeca
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Sun, May 26, 2013 at 1:41 PM, Paul Eggleton <span dir=3D"ltr">&l=
t;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.e=
ggleton@linux.intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D"im">On Saturday 25 May 2013 13:58:46 Jack wr=
ote:<br>


&gt; I maked a fsl-image-minaml rootfs file and customized it with adding<b=
r>
&gt; particular packages. For example, I added<br>
&gt; IMAGE_INSTALL_append_pn-fsl-image-minimal =3D &quot; task-core-ssh-ope=
nssh<br>
&gt; task-core-nfs-server&quot; in local.conf file. The problem is that, th=
e rootfs<br>
&gt; file has 6-7 MB capacity but this capacity of file is very high and no=
t<br>
&gt; acceptable to me. So how can I remove some packages from rootfs file t=
hat I<br>
&gt; do not want ?<br>
<br>
</div>There are several different aspects to answering this question.<br>
<br>
The list of packages to be installed is composed of several things - the li=
st<br>
of packages specified in IMAGE_INSTALL, packages brought in by IMAGE_FEATUR=
ES,<br>
and packages brought in to satisfy dependencies of either of the first two.=
<br>
<br>
One way to analyse the contents of your image is to enable buildhistory [1]=
<br>
which gives you the full list of installed packages, installed packages by<=
br>
size, as well as graphs (.dot) that will show you the dependency relationsh=
ips<br>
between the packages. These dot graphs can be viewed by converting them to<=
br>
images using the &quot;dot&quot; command (from graphviz) or using a viewer =
such as xdot<br>
[2].<br>
<br>
Once you&#39;ve analysed things at this level, you may find there are depen=
dency<br>
relationships that can&#39;t easily be broken, or some packages that are ov=
erly<br>
large. At this point you will need to start looking at changing the build<b=
r>
configuraton of the packages in question - disabling optional functionalty,=
<br>
removing optional dependencies etc. (usually this would be done by changing=
<br>
DISTRO_FEATURES, modifying the kernel configuration, changing PACKAGECONFIG=
<br>
options for individual recipes, or if those aren&#39;t available modifying<=
br>
EXTRA_OECONF). How far you want to go with this depends on how much you wan=
t<br>
to optimise the size of your image.<br>
<br>
If you do find you need to go down the latter path, I&#39;d recommend check=
ing out<br>
Darren Hart&#39;s presentation &quot;Tuning Embedded Linux - When Less is M=
ore&quot; [3].<br>
<div class=3D"im"><br>
&gt; For example, remove packages like ar, arping, =A0basename, telnet, bee=
p, .....<br>
<br>
</div>Note that whilst some of these may be from packages you can remove, m=
any of<br>
them may be functionality provided by busybox, i.e. where the command is ju=
st<br>
a symlink to the busybox binary. You can modify the busybox build-time<br>
configuration to disable these, but bear in mind that disabling them<br>
usually only saves you a few kB. For some applications that may be a useful=
<br>
saving, of course.<br></blockquote><div><br></div><div style>on top of that=
, i wanted to remind that there is a dedicated chapter in the Yocto manual =
about building &#39;tiny&#39; systems [1]. Also you don&#39;t mention which=
 &#39;DISTRO&#39; you are using, so make sure that you are aware that Yocto=
 comes with Poky, and Poky-tiny as well, which according to conf/distro/pok=
y-tiny.conf says:</div>

<div style><br></div><div style><div># Poky-tiny is intended to define a ti=
ny Linux system comprised of a =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0</div><div>

# Linux kernel tailored to support each specific MACHINE and busybox. =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div><div># =
Poky-tiny sets some basic policy to ensure a usable system while still =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div>

<div># keeping the rootfs and kernel image as small as possible. =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
=A0</div><div><br></div><div style>see [2]</div>

<div style><br></div></div><div style>Finally, note that some packages come=
s with builtin &quot;RRECOMMENDS&quot; which are installed by default in th=
e RootFS. If you are using IPK backend you can use the variables BAD_RECOMM=
ENDS to make sure that though packages are marked as RRECOMMENDS, they aren=
&#39;t installed in the rootFS. I believe this only works with IPK for now.=
</div>

<div style><br></div><div style><br></div><div style>[1]=A0<a href=3D"http:=
//www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#building-a-t=
iny-system">http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.=
html#building-a-tiny-system</a></div>

<div>[2]=A0<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/m=
eta-yocto/conf/distro/poky-tiny.conf">http://git.yoctoproject.org/cgit/cgit=
.cgi/poky/tree/meta-yocto/conf/distro/poky-tiny.conf</a></div><div>=A0</div=
>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">

<br>
HTH.<br>
<br>
Cheers,<br>
Paul<br>
<br>
[1] <a href=3D"http://www.yoctoproject.org/docs/current/ref-manual/ref-manu=
al.html#maintaining-build-output-quality" target=3D"_blank">http://www.yoct=
oproject.org/docs/current/ref-manual/ref-manual.html#maintaining-build-outp=
ut-quality</a><br>


<br>
[2] <a href=3D"https://github.com/jrfonseca/xdot.py" target=3D"_blank">http=
s://github.com/jrfonseca/xdot.py</a><br>
<br>
[3] Slides: <a href=3D"http://elinux.org/images/2/2b/Elce11_hart.pdf" targe=
t=3D"_blank">http://elinux.org/images/2/2b/Elce11_hart.pdf</a><br>
Video: <a href=3D"http://www.youtube.com/watch?v=3DWHLvI8j31vk" target=3D"_=
blank">http://www.youtube.com/watch?v=3DWHLvI8j31vk</a><br>
<span class=3D""><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span><div class=3D""><div class=3D"h5">___________________________=
____________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div></div>

--089e011777e9ec17e004ddadbeca--
