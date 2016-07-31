Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8CFBE00D09; Sun, 31 Jul 2016 12:56:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, URIBL_BLACK autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.7 URIBL_BLACK Contains an URL listed in the URIBL
	blacklist *      [URIs: gherzan.ro]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 407B3E00CC3
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2016 12:56:24 -0700 (PDT)
Received: by mail-qt0-f194.google.com with SMTP id q11so7230495qtb.2
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2016 12:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GETm4/ftCV8aI72QoQYD5XYSoY5vS+zcjaQyTDG9Yl8=;
	b=xqJh7eoOVLs99AOFo1zNKP36T01LZFOibLezABMQSlOBluwgHgH+qzMKO8zwSKoAj/
	ep6uZ3EsfnB/ITnXMD5PKjQSt6mi/ti2Cdg73z/WsJ1ZpVD6w+iC/ksBioYE26+jhlCX
	+tKb6gfWzCbM+BKmXrB69Gr/Ruw6sGIiaTYs7C83JYYDEqD4uUHrEpgfWe91HTClXGWl
	RvXcWHDDHaRTa0lEZYKJ2wURCknh8P29S1929pAQyLeW4yCnt1gFqdqsBh2T6sA9NSQ1
	WAfqY/8hUg9z0QCwDcuJpbU4gyYmAB6NMFt8KXVtvdfuCnSkHj/xtN+3yOMzmGevDdrq
	0Ywg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GETm4/ftCV8aI72QoQYD5XYSoY5vS+zcjaQyTDG9Yl8=;
	b=LJjrkhwhWPm2hZ7q1Z2RCfUmNWeb3qHdgho5jyCmnUq+s8xIdRjJtIPxDt88BrrVc0
	FZ7tp9DIjyLt8MN/0dJ9TK0vgOz4ns0fp3PyEyI7Q5oiZA9HC4C/VAdMhDsQfQljFtdp
	XOOvPyvepTnAtMtJ3gp6wqrKDj3iAEExaNMgSkcrbshrGjucNZUbrknOS9DYzAN/VRa0
	qBLvvKZPX99wrQZNVXFJSPmbzNjMufzTNE7zISuRrQP7JBZh84yDT6GVvyB1LQPf+E/G
	+GophZRFDrRt4PB4t8mvV9zNGU8iReb+0BVD3p1RxvY8EcQJSLAMJtCnSf45nZagL/8W
	ejEA==
X-Gm-Message-State: AEkoout7EtaKOf4DGqO2UPZtP3KeegB5Teb0kIXOrpPwcQJcFEYUGfr0TPWXkQiKlwLmmK8VvqrZuaovfrMkjQ==
X-Received: by 10.237.35.76 with SMTP id i12mr82672948qtc.41.1469994983359;
	Sun, 31 Jul 2016 12:56:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Sun, 31 Jul 2016 12:56:22 -0700 (PDT)
Received: by 10.55.214.83 with HTTP; Sun, 31 Jul 2016 12:56:22 -0700 (PDT)
In-Reply-To: <20160731185258.GB29087@resin.home>
References: <1469104337-21068-1-git-send-email-herve.jourdain@neuf.fr>
	<20160731185258.GB29087@resin.home>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 31 Jul 2016 13:56:22 -0600
Message-ID: <CAMKF1sq4dMGCoF3H-4WwHW7t5APvZSHkhmrDHqFPh32hB_b4aQ@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v4 00/12] Support for VC4 graphics driver
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
X-List-Received-Date: Sun, 31 Jul 2016 19:56:26 -0000
Content-Type: multipart/alternative; boundary=001a113c8026ce0a820538f3e090

--001a113c8026ce0a820538f3e090
Content-Type: text/plain; charset=UTF-8

On Jul 31, 2016 12:54 PM, "Andrei Gherzan" <andrei@gherzan.ro> wrote:
>
> On Thu, Jul 21, 2016 at 08:32:05PM +0800, Herve Jourdain wrote:
> > v4 series:
> > a. rebased
> > b. Upstream-Status added to the patch to the VC4 driver (needed only
for kernel 4.4, accepted upstream in 4.7)
> >
> > v3 series:
> > a. patch rebased
> > b. new revision of kernel, to get a version of the VC4 graphics driver
that handles render nodes
> > c. patch to the VC4 driver to enable proper working of the render nodes
(need to add authorization for IOCTLs)
> >
> > v2 series:
> > a. Fix the 4.4.10 kernel revision
> > b. Effectively add vc4-kms-v3d overlay to the list of overlays to build
(forgotten previously)
> > c. Make the parameter to the v4c-kms-v3d overlay configurable
> > d. Add default values for the cma parameter to the v4c-kms-v3d overlay,
depending on the board (and the memory it has)
> >
> > This patch series enables the support for the VC4 graphics driver from
Eric Anholt.
> > There was a previous patch series by Javier Martinez Canillas, but it
required use of a different kernel.
> > VC4 is now supported in the raspberrypi official kernel, at least for
4.4.9+.
> > The support in 4.1 exists, but it is NOT STABLE, so it has been deemed
unreasonable to support VC4 with 4.1 kernels.
> >
> > THEREFORE, VC4 graphics is supported ONLY for kernel versions 4.4.9 and
later.
> >
> > This patch series proposes to support VC4 by only adding 'vc4graphics'
to MACHINE_FEATURES, for raspberrypi. If this is set, it will trigger all
the necessary configuration/changes to use the VC4 driver, including
mesa/wayland/weston currently, and adding the overlay required.
> > In order for this series to work, some previous patches are needed
(support for .dtbo, and fix of the mesa packaging when there is no DRI
driver).
> > The memory reserved for the VC4 driver has default values depending on
the version of the board used, but it can be configured by setting
VC4_CMA_SIZE to a value supported by the overlay ('cma-256', 'cma-192',
'cma-128', 'cma-96', 'cma-64').
> > 'cma-256' is the recommended value, but it might not be possible on
boards with 512MB or DRAM, or less...
> > 'cma-64' is known to not being able to support FHD/1080p.
> >
> > It was tested with wayland/weston, without the support for X11.
> >
> > This patch series depends on two other patch series previously posted,
that enable the support for .dtbo overlay files.
> >
> > Herve Jourdain (12):
> >   rpi-default-providers.inc: change default providers to support
> >     vc4graphics
> >   rpi-base.inc: add vc4-kms-v3d to the overlays to support vc4graphics
> >   raspberrypi.conf: set the default value of VC4_CMA_SIZE to support
> >     vc4graphics
> >   raspberrypi0.conf: set the default value of VC4_CMA_SIZE to support
> >     vc4graphics
> >   raspberrypi2.conf: set the default value of VC4_CMA_SIZE to support
> >     vc4graphics
> >   raspberrypi3.conf: set the default value of VC4_CMA_SIZE to support
> >     vc4graphics
> >   rpi-config_git.bb: add v4c overlay to config.txt to support
> >     vc4graphics
> >   wayland/weston_%.bbappend: modify configuration options to support
> >     vc4graphics
> >   weston/weston_%.bbappend: modify configuration options to support
> >     vc4graphics
> >   mesa_%.bbappend: new file to add the correct configuration options to
> >     support vc4graphics
> >   linux-rpi.inc: add the configuration options required to support
> >     vc4graphics
> >   linux-raspberrypi-4.4: add patch to enable proper operation of
> >     renderD128 device
> >
> >  conf/machine/include/rpi-base.inc                  |  1 +
> >  conf/machine/include/rpi-default-providers.inc     |  8 +++---
> >  conf/machine/raspberrypi.conf                      |  2 ++
> >  conf/machine/raspberrypi0.conf                     |  2 ++
> >  conf/machine/raspberrypi2.conf                     |  2 ++
> >  conf/machine/raspberrypi3.conf                     |  2 ++
> >  recipes-bsp/bootfiles/rpi-config_git.bb            | 10 +++++++-
> >  recipes-graphics/mesa/mesa_%.bbappend              |  4 +++
> >  recipes-graphics/wayland/weston_%.bbappend         |  6 ++---
> >  recipes-graphics/weston/weston_%.bbappend          | 13 +++++-----
> >  .../0002-vc4-ioctl-rendering-allow.patch           | 29
++++++++++++++++++++++
> >  recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  1 +
> >  recipes-kernel/linux/linux-rpi.inc                 | 10 ++++++++
> >  13 files changed, 75 insertions(+), 15 deletions(-)
> >  create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
> >  create mode 100644
recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-ioctl-rendering-allow.patch
> >
> > --
> > 2.7.4
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
> I would have wanted to merge this but they depend on dtbo support which
> doesn't have the required bits in oe.core. So I can't merge this until
> that lands in oe-core.

Let's wait for few days. I have staged it in my guthub tree. Until then
>
> Regards,
>
> --
> Andrei Gherzan
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113c8026ce0a820538f3e090
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On Jul 31, 2016 12:54 PM, &quot;Andrei Gherzan&quot; &lt;<a =
href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt;<br>
&gt; On Thu, Jul 21, 2016 at 08:32:05PM +0800, Herve Jourdain wrote:<br>
&gt; &gt; v4 series:<br>
&gt; &gt; a. rebased<br>
&gt; &gt; b. Upstream-Status added to the patch to the VC4 driver (needed o=
nly for kernel 4.4, accepted upstream in 4.7)<br>
&gt; &gt;<br>
&gt; &gt; v3 series:<br>
&gt; &gt; a. patch rebased<br>
&gt; &gt; b. new revision of kernel, to get a version of the VC4 graphics d=
river that handles render nodes<br>
&gt; &gt; c. patch to the VC4 driver to enable proper working of the render=
 nodes (need to add authorization for IOCTLs)<br>
&gt; &gt;<br>
&gt; &gt; v2 series:<br>
&gt; &gt; a. Fix the 4.4.10 kernel revision<br>
&gt; &gt; b. Effectively add vc4-kms-v3d overlay to the list of overlays to=
 build (forgotten previously)<br>
&gt; &gt; c. Make the parameter to the v4c-kms-v3d overlay configurable<br>
&gt; &gt; d. Add default values for the cma parameter to the v4c-kms-v3d ov=
erlay, depending on the board (and the memory it has)<br>
&gt; &gt;<br>
&gt; &gt; This patch series enables the support for the VC4 graphics driver=
 from Eric Anholt.<br>
&gt; &gt; There was a previous patch series by Javier Martinez Canillas, bu=
t it required use of a different kernel.<br>
&gt; &gt; VC4 is now supported in the raspberrypi official kernel, at least=
 for 4.4.9+.<br>
&gt; &gt; The support in 4.1 exists, but it is NOT STABLE, so it has been d=
eemed unreasonable to support VC4 with 4.1 kernels.<br>
&gt; &gt;<br>
&gt; &gt; THEREFORE, VC4 graphics is supported ONLY for kernel versions 4.4=
.9 and later.<br>
&gt; &gt;<br>
&gt; &gt; This patch series proposes to support VC4 by only adding &#39;vc4=
graphics&#39; to MACHINE_FEATURES, for raspberrypi. If this is set, it will=
 trigger all the necessary configuration/changes to use the VC4 driver, inc=
luding mesa/wayland/weston currently, and adding the overlay required.<br>
&gt; &gt; In order for this series to work, some previous patches are neede=
d (support for .dtbo, and fix of the mesa packaging when there is no DRI dr=
iver).<br>
&gt; &gt; The memory reserved for the VC4 driver has default values dependi=
ng on the version of the board used, but it can be configured by setting VC=
4_CMA_SIZE to a value supported by the overlay (&#39;cma-256&#39;, &#39;cma=
-192&#39;, &#39;cma-128&#39;, &#39;cma-96&#39;, &#39;cma-64&#39;).<br>
&gt; &gt; &#39;cma-256&#39; is the recommended value, but it might not be p=
ossible on boards with 512MB or DRAM, or less...<br>
&gt; &gt; &#39;cma-64&#39; is known to not being able to support FHD/1080p.=
<br>
&gt; &gt;<br>
&gt; &gt; It was tested with wayland/weston, without the support for X11.<b=
r>
&gt; &gt;<br>
&gt; &gt; This patch series depends on two other patch series previously po=
sted, that enable the support for .dtbo overlay files.<br>
&gt; &gt;<br>
&gt; &gt; Herve Jourdain (12):<br>
&gt; &gt;=C2=A0 =C2=A0rpi-default-providers.inc: change default providers t=
o support<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0vc4graphics<br>
&gt; &gt;=C2=A0 =C2=A0rpi-base.inc: add vc4-kms-v3d to the overlays to supp=
ort vc4graphics<br>
&gt; &gt;=C2=A0 =C2=A0raspberrypi.conf: set the default value of VC4_CMA_SI=
ZE to support<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0vc4graphics<br>
&gt; &gt;=C2=A0 =C2=A0raspberrypi0.conf: set the default value of VC4_CMA_S=
IZE to support<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0vc4graphics<br>
&gt; &gt;=C2=A0 =C2=A0raspberrypi2.conf: set the default value of VC4_CMA_S=
IZE to support<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0vc4graphics<br>
&gt; &gt;=C2=A0 =C2=A0raspberrypi3.conf: set the default value of VC4_CMA_S=
IZE to support<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0vc4graphics<br>
&gt; &gt;=C2=A0 =C2=A0<a href=3D"http://rpi-config_git.bb">rpi-config_git.b=
b</a>: add v4c overlay to config.txt to support<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0vc4graphics<br>
&gt; &gt;=C2=A0 =C2=A0wayland/weston_%.bbappend: modify configuration optio=
ns to support<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0vc4graphics<br>
&gt; &gt;=C2=A0 =C2=A0weston/weston_%.bbappend: modify configuration option=
s to support<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0vc4graphics<br>
&gt; &gt;=C2=A0 =C2=A0mesa_%.bbappend: new file to add the correct configur=
ation options to<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0support vc4graphics<br>
&gt; &gt;=C2=A0 =C2=A0linux-rpi.inc: add the configuration options required=
 to support<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0vc4graphics<br>
&gt; &gt;=C2=A0 =C2=A0linux-raspberrypi-4.4: add patch to enable proper ope=
ration of<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0renderD128 device<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 conf/machine/include/rpi-base.inc=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 1 +<br>
&gt; &gt;=C2=A0 conf/machine/include/rpi-default-providers.inc=C2=A0 =C2=A0=
 =C2=A0|=C2=A0 8 +++---<br>
&gt; &gt;=C2=A0 conf/machine/raspberrypi.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 2 ++<br>
&gt; &gt;=C2=A0 conf/machine/raspberrypi0.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 2 ++<br>
&gt; &gt;=C2=A0 conf/machine/raspberrypi2.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 2 ++<br>
&gt; &gt;=C2=A0 conf/machine/raspberrypi3.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 2 ++<br>
&gt; &gt;=C2=A0 recipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb">=
rpi-config_git.bb</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 10 +++++++=
-<br>
&gt; &gt;=C2=A0 recipes-graphics/mesa/mesa_%.bbappend=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 4 +++<br>
&gt; &gt;=C2=A0 recipes-graphics/wayland/weston_%.bbappend=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0|=C2=A0 6 ++---<br>
&gt; &gt;=C2=A0 recipes-graphics/weston/weston_%.bbappend=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 | 13 +++++-----<br>
&gt; &gt;=C2=A0 .../0002-vc4-ioctl-rendering-allow.patch=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0| 29 ++++++++++++++++++++++<br>
&gt; &gt;=C2=A0 recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.=
4.bb">linux-raspberrypi_4.4.bb</a>=C2=A0 =C2=A0 =C2=A0 |=C2=A0 1 +<br>
&gt; &gt;=C2=A0 recipes-kernel/linux/linux-rpi.inc=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 10 ++++++++<br>
&gt; &gt;=C2=A0 13 files changed, 75 insertions(+), 15 deletions(-)<br>
&gt; &gt;=C2=A0 create mode 100644 recipes-graphics/mesa/mesa_%.bbappend<br=
>
&gt; &gt;=C2=A0 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4=
.4/0002-vc4-ioctl-rendering-allow.patch<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; 2.7.4<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https:/=
/lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
&gt; I would have wanted to merge this but they depend on dtbo support whic=
h<br>
&gt; doesn&#39;t have the required bits in oe.core. So I can&#39;t merge th=
is until<br>
&gt; that lands in oe-core.</p>
<p dir=3D"ltr">Let&#39;s wait for few days. I have staged it in my guthub t=
ree. Until then<br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt; --<br>
&gt; Andrei Gherzan<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
&gt;</p>

--001a113c8026ce0a820538f3e090--
