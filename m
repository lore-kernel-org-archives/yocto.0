Return-Path: <vidal.develone@gmail.com>
Received: from mail-ee0-f52.google.com (mail-ee0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69F5CE01663
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 16:06:29 -0700 (PDT)
Received: by mail-ee0-f52.google.com with SMTP id c41so697773eek.11
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 16:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ARivW3i4zOF68OypRqqJu8ildUeJtVk7pOBQNgoNW6Q=;
	b=f5ZKMrzLYGHvGWp7Cv++XbX1InAUvBqjoVxWTzTZK1xTrAPCNrhG1qwoseJNiu7mRz
	q90Izhj5DWzbvC6mGgpGFABGz+41OPlCMyylbLs9h+UZtDTWOCXwt6wXRe70h9mVwj4V
	wEJDh6+LIymV8i8QiNjPS7CvwGSvhamgWEEbnfN0gZM4Vhe61DLCN+15ZzGwa6jy1n5h
	63lO2XimliybXG5apvXgQs/ugF34ysLVPqz9SrHng29FSnZ63JlTXyLCHa8ih9PlAGiR
	3T8ez2r9NdGexqtYKNofuci1nLIxV+0Mn1Oo78zbqFZS9Jv3Mm5dQVGbXDZl2OxemC48
	azpw==
MIME-Version: 1.0
X-Received: by 10.14.172.133 with SMTP id t5mr8236512eel.35.1381964788199;
	Wed, 16 Oct 2013 16:06:28 -0700 (PDT)
Received: by 10.223.97.70 with HTTP; Wed, 16 Oct 2013 16:06:28 -0700 (PDT)
In-Reply-To: <6C2F2091-CD52-4D83-AE39-80B5B5E32C62@gmail.com>
References: <CANwz6nz_dzPR9L2i39BXCSTHgWK+kLGs6ie-y806rBi-VMTcSw@mail.gmail.com>
	<6C2F2091-CD52-4D83-AE39-80B5B5E32C62@gmail.com>
Date: Wed, 16 Oct 2013 17:06:28 -0600
Message-ID: <CANwz6nztSJxx5NmTqy_D2jSDgKeFRT0y7Jj4Z6QjenCjTbvZug@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-xilinx
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
X-List-Received-Date: Wed, 16 Oct 2013 23:06:30 -0000
Content-Type: multipart/alternative; boundary=047d7b603dcc4af2f504e8e3c08f

--047d7b603dcc4af2f504e8e3c08f
Content-Type: text/plain; charset=ISO-8859-1

Hello Khem,
Thanks for the help after modifying my local.conf
MACHINE ?= "zedboard-zynq7"
My build "MACHINE=zedboard-zynq7 bitbake core-image-sato" is in the process
now 295 of 5076 tasks
should take a short time to complete.
regards



On Wed, Oct 16, 2013 at 4:45 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Oct 16, 2013, at 2:57 PM, Edward Vidal <vidal.develone@gmail.com>
> wrote:
>
> > Hello,
> > I built a zedboard core-image-sato on 09/21/13 with meta-xilinx at that
> time I had the following folders.
> >
> > meta-kc705
> > meta-zc702
> > meta-zedboard
> >
> > Build Configuration:
> > BB_VERSION        = "1.19.1"
> > BUILD_SYS         = "x86_64-linux"
> > NATIVELSBSTRING   = "Fedora-18"
> > TARGET_SYS        = "arm-poky-linux-gnueabi"
> > MACHINE           = "zedboard"
> > DISTRO            = "poky"
> > DISTRO_VERSION    = "1.4+snapshot-20130921"
> > TUNE_FEATURES     = " armv7a vfp neon zynq"
> > TARGET_FPU        = "vfp-neon"
> > meta
> > meta-yocto        = "(nobranch):3dee534f1e25109e0bdb681de0746c336f4b8840"
> > meta-xilinx
> > meta-kc705
> > meta-zc702
> > meta-zedboard     = "master:46f4c79d6d55b556a90bb0fd89c2c09acf2aebff"
> > meta-yocto-bsp    = "(nobranch):3dee534f1e25109e0bdb681de0746c336f4b8840"
> >
> > With the dora release I did a new clone of git://
> git.yoctoproject.org/meta-xilinx
> > now I do not see
> > meta-kc705
> > meta-zc702
> > meta-zedboard
> >
> > When I execute MACHINE=zedboard bitbake core-image-sato
> > ERROR:  OE-core's config sanity checker detected a potential
> misconfiguration.
> >     Either fix the cause of this error or at your own risk disable the
> checker (see sanity.conf).
> >     Following is the list of potential problems / advisories:
> >
> >     Please set a valid MACHINE in your local.conf or environment
> >
> > ERROR: Execution of event handler 'check_sanity_eventhandler' failed
> > In my local.conf I have the following.
> >
> > MACHINE ?= "zedboard"
> >
> > bblayers.conf
> > # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> > # changes incompatibly
> > LCONF_VERSION = "6"
> >
> > BBPATH = "${TOPDIR}"
> > BBFILES ?= ""
> >
> > BBLAYERS ?= " \
> >   /home/vidal/POKY/build101613_zedboard/poky/meta \
> >   /home/vidal/POKY/build101613_zedboard/poky/meta-yocto \
> >   /home/vidal/POKY/build101613_zedboard/poky/meta-xilinx \
> >   /home/vidal/POKY/build101613_zedboard/poky/meta-yocto-bsp \
> >   "
> > BBLAYERS_NON_REMOVABLE ?= " \
> >   /home/vidal/POKY/build101613_zedboard/poky/meta \
> >   /home/vidal/POKY/build101613_zedboard/poky/meta-yocto \
> >   "
> > Any help will be appreciated.
> > Regards
>
> it seems like layer went thru some restructuring e.g. see
> commit d9617006376d73e37f1db17857ee06c24e6b7c03
> Author: Nathan Rossi <nathan.rossi@xilinx.com>
> Date:   Fri Aug 2 12:41:14 2013 +1000
>
>     meta-*: Remove deprecated sublayers
>
>     * The machines supported in the sublayer BSPs are now supported in the
> base
>       meta-xilinx layer, these sublayers are no longer required.
>     * Relevant documentation has also been relocated into
> meta-xilinx/docs/*.
>
>
>
> So may be zedboard -> zedboard-zynq7
>
>
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7b603dcc4af2f504e8e3c08f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello Khem,<br></div>Thanks for the help af=
ter modifying my local.conf <br>MACHINE ?=3D &quot;zedboard-zynq7&quot;<br>=
</div>My build &quot;MACHINE=3Dzedboard-zynq7 bitbake core-image-sato&quot;=
 is in the process now 295 of 5076 tasks<br>
</div>should take a short time to complete.<br>regards <br><div><div><div><=
br></div></div></div></div><div class=3D"gmail_extra"><br><br><div class=3D=
"gmail_quote">On Wed, Oct 16, 2013 at 4:45 PM, Khem Raj <span dir=3D"ltr">&=
lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.c=
om</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5"><br>
On Oct 16, 2013, at 2:57 PM, Edward Vidal &lt;<a href=3D"mailto:vidal.devel=
one@gmail.com">vidal.develone@gmail.com</a>&gt; wrote:<br>
<br>
&gt; Hello,<br>
&gt; I built a zedboard core-image-sato on 09/21/13 with meta-xilinx at tha=
t time I had the following folders.<br>
&gt;<br>
&gt; meta-kc705<br>
&gt; meta-zc702<br>
&gt; meta-zedboard<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.19.1&quot;<br>
&gt; BUILD_SYS =A0 =A0 =A0 =A0 =3D &quot;x86_64-linux&quot;<br>
&gt; NATIVELSBSTRING =A0 =3D &quot;Fedora-18&quot;<br>
&gt; TARGET_SYS =A0 =A0 =A0 =A0=3D &quot;arm-poky-linux-gnueabi&quot;<br>
&gt; MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;zedboard&quot;<br>
&gt; DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<br>
&gt; DISTRO_VERSION =A0 =A0=3D &quot;1.4+snapshot-20130921&quot;<br>
&gt; TUNE_FEATURES =A0 =A0 =3D &quot; armv7a vfp neon zynq&quot;<br>
&gt; TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp-neon&quot;<br>
&gt; meta<br>
&gt; meta-yocto =A0 =A0 =A0 =A0=3D &quot;(nobranch):3dee534f1e25109e0bdb681=
de0746c336f4b8840&quot;<br>
&gt; meta-xilinx<br>
&gt; meta-kc705<br>
&gt; meta-zc702<br>
&gt; meta-zedboard =A0 =A0 =3D &quot;master:46f4c79d6d55b556a90bb0fd89c2c09=
acf2aebff&quot;<br>
&gt; meta-yocto-bsp =A0 =A0=3D &quot;(nobranch):3dee534f1e25109e0bdb681de07=
46c336f4b8840&quot;<br>
&gt;<br>
&gt; With the dora release I did a new clone of git://<a href=3D"http://git=
.yoctoproject.org/meta-xilinx" target=3D"_blank">git.yoctoproject.org/meta-=
xilinx</a><br>
&gt; now I do not see<br>
&gt; meta-kc705<br>
&gt; meta-zc702<br>
&gt; meta-zedboard<br>
&gt;<br>
&gt; When I execute MACHINE=3Dzedboard bitbake core-image-sato<br>
&gt; ERROR: =A0OE-core&#39;s config sanity checker detected a potential mis=
configuration.<br>
&gt; =A0 =A0 Either fix the cause of this error or at your own risk disable=
 the checker (see sanity.conf).<br>
&gt; =A0 =A0 Following is the list of potential problems / advisories:<br>
&gt;<br>
&gt; =A0 =A0 Please set a valid MACHINE in your local.conf or environment<b=
r>
&gt;<br>
&gt; ERROR: Execution of event handler &#39;check_sanity_eventhandler&#39; =
failed<br>
&gt; In my local.conf I have the following.<br>
&gt;<br>
&gt; MACHINE ?=3D &quot;zedboard&quot;<br>
&gt;<br>
&gt; bblayers.conf<br>
&gt; # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf<b=
r>
&gt; # changes incompatibly<br>
&gt; LCONF_VERSION =3D &quot;6&quot;<br>
&gt;<br>
&gt; BBPATH =3D &quot;${TOPDIR}&quot;<br>
&gt; BBFILES ?=3D &quot;&quot;<br>
&gt;<br>
&gt; BBLAYERS ?=3D &quot; \<br>
&gt; =A0 /home/vidal/POKY/build101613_zedboard/poky/meta \<br>
&gt; =A0 /home/vidal/POKY/build101613_zedboard/poky/meta-yocto \<br>
&gt; =A0 /home/vidal/POKY/build101613_zedboard/poky/meta-xilinx \<br>
&gt; =A0 /home/vidal/POKY/build101613_zedboard/poky/meta-yocto-bsp \<br>
&gt; =A0 &quot;<br>
&gt; BBLAYERS_NON_REMOVABLE ?=3D &quot; \<br>
&gt; =A0 /home/vidal/POKY/build101613_zedboard/poky/meta \<br>
&gt; =A0 /home/vidal/POKY/build101613_zedboard/poky/meta-yocto \<br>
&gt; =A0 &quot;<br>
&gt; Any help will be appreciated.<br>
&gt; Regards<br>
<br>
</div></div>it seems like layer went thru some restructuring e.g. see<br>
commit d9617006376d73e37f1db17857ee06c24e6b7c03<br>
Author: Nathan Rossi &lt;<a href=3D"mailto:nathan.rossi@xilinx.com">nathan.=
rossi@xilinx.com</a>&gt;<br>
Date: =A0 Fri Aug 2 12:41:14 2013 +1000<br>
<br>
=A0 =A0 meta-*: Remove deprecated sublayers<br>
<br>
=A0 =A0 * The machines supported in the sublayer BSPs are now supported in =
the base<br>
=A0 =A0 =A0 meta-xilinx layer, these sublayers are no longer required.<br>
=A0 =A0 * Relevant documentation has also been relocated into meta-xilinx/d=
ocs/*.<br>
<br>
<br>
<br>
So may be zedboard -&gt; zedboard-zynq7<br>
<br>
<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
</blockquote></div><br></div>

--047d7b603dcc4af2f504e8e3c08f--
