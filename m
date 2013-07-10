Return-Path: <vidal.develone@gmail.com>
Received: from mail-ea0-f171.google.com (mail-ea0-f171.google.com
	[209.85.215.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D072E013CB
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2013 18:18:51 -0700 (PDT)
Received: by mail-ea0-f171.google.com with SMTP id m14so4407023eaj.16
	for <yocto@yoctoproject.org>; Tue, 09 Jul 2013 18:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=nNMolaw4+1U56zUIZeQerxtbmXLMbYJcYkQEe+zkh1A=;
	b=t48Nyg840fQvWwnPSU1gDRvWMpxwAFQZYDE60ROSbTjcIguhi836HQ4Xa/HlIVeWyL
	nCquy/6SvO0hP0a6FN+NNNtMLxfkNrFUsJNUXlf6CzTspy0U9vklQ8uST+pf4jMIlbt2
	LPKXckTEmukhIEfCWBHWwbYFkQ44WNCltWQFKhmpoMl05r/ZjPtwSfGjSlc78NSJzU27
	uIU+8RRkozCNhrVk66tYHwRyqGxdYXH6aDXtiplqNkTp2b3BMlqeGdiLLfsbpF6EJQOO
	X82q9Jj9qZMVYzQ/Hu0c8o+FEnBaZbSNlv2xxmZ+U525VDhFSDmLFfDeoWmWVc/jho7J
	DCUA==
MIME-Version: 1.0
X-Received: by 10.14.0.131 with SMTP id 3mr32684865eeb.98.1373419130648; Tue,
	09 Jul 2013 18:18:50 -0700 (PDT)
Received: by 10.223.74.139 with HTTP; Tue, 9 Jul 2013 18:18:50 -0700 (PDT)
In-Reply-To: <51DCAF93.2040703@balister.org>
References: <CANwz6nyMFGQXZ3w5wPrpJTb+aEQNXO_eqp_5aRvB_dyXmCj2Dw@mail.gmail.com>
	<51DCAF93.2040703@balister.org>
Date: Tue, 9 Jul 2013 19:18:50 -0600
Message-ID: <CANwz6nxvzeKjxf62tBzj4gB8fKUYGk+1t2mxTjk9FAjtSUSEDw@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: Philip Balister <philip@balister.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: poky and gnuradio
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
X-List-Received-Date: Wed, 10 Jul 2013 01:18:53 -0000
Content-Type: multipart/alternative; boundary=047d7b6042be691af704e11e0fc1

--047d7b6042be691af704e11e0fc1
Content-Type: text/plain; charset=ISO-8859-1

Phillip,
This just started after a git pull of meta-oe
This is what I found in
/home/vidal/POKY/build070913_dylan/poky/build/tmp/work/all-poky-linux/uhd-firmware/1_003.005.002-r0/temp/less
log.do_fetch.28656

 wget -t 2 -T 30 -nv --passive-ftp --no-check-certificate -P
/home/vidal/POKY/linux_src_dnloads/downloads '
http://sources.openembedded.org/uhd-images_003.005.002-release.tar.gz'
http://sources.openembedded.org/uhd-images_003.005.002-release.tar.gz:
2013-07-09 19:08:10 ERROR 404: Not Found.
I tried the above in a shell.

I also tried with firefox '
http://sources.openembedded.org/uhd-images_003.005.002-release.tar.gz' I
get the same error.
This new version of branch dylan does not include the gsl-1.15 (that you
added for me) instead it has gsl-1.12.
I also have not the upgrade of gnuplot-4.4.4 to gnuplot-4.6.3

Let me know if I can provide other information.
Thanks


On Tue, Jul 9, 2013 at 6:49 PM, Philip Balister <philip@balister.org> wrote:

> It is not clear from your email if the failure is only with dylan. Does
> one work and another build fail?
>
> Can you wget the url it is trying to fetch?
>
> Philip
>
> On 07/09/2013 08:38 PM, Edward Vidal wrote:
> > Hello,
> > What is the best method to you the dylan branch of meta-oe with an
> gnuradio
> > from meta-oe           =
> > "(nobranch):ed84e64d22400595b68da4e75b48ab7ecc342aa9"?
> >
> > Any and all help will be appreciated.
> >
> > Build Configuration:
> > BB_VERSION        = "1.18.0"
> > BUILD_SYS         = "x86_64-linux"
> > NATIVELSBSTRING   = "Fedora-18"
> > TARGET_SYS        = "arm-poky-linux-gnueabi"
> > MACHINE           = "beagleboard"
> > DISTRO            = "poky"
> > DISTRO_VERSION    = "1.4.1"
> > TUNE_FEATURES     = "armv7a vfp neon"
> > TARGET_FPU        = "vfp-neon"
> > meta
> > meta-yocto        = "dylan:64273e53f2789d2ea8393fc80909ac7086f168a7"
> > meta-oe           = "dylan:13ae5105ee30410136beeae66ec41ee4a8a2e2b0"
> > meta-java         = "master:59696d89fd33df6953dcb2dd54ccd3b362513f28"
> > meta-yocto-bsp    = "dylan:64273e53f2789d2ea8393fc80909ac7086f168a7"
> >
> > The above build gets the following errors.
> >
> > ERROR: Fetcher failure for URL: '
> >
> http://files.ettus.com/binaries/uhd_stable/releases/uhd_003.005.002-release/uhd-images_003.005.002-release.tar.gz
> '.
> > Checksum mismatch!
> > ERROR: Function failed: Fetcher failure for URL: '
> >
> http://files.ettus.com/binaries/uhd_stable/releases/uhd_003.005.002-release/uhd-images_003.005.002-release.tar.gz
> '.
> > Unable to fetch URL from any source.
> > ERROR: Logfile of failure stored in:
> >
> /home/vidal/POKY/build070913_dylan/poky/build/tmp/work/all-poky-linux/uhd-firmware/1_003.005.002-r0/temp/log.do_fetch.28656
> > ERROR: Task 3499
> >
> (/home/vidal/POKY/build070913_dylan/poky/meta-oe/meta-oe/recipes-connectivity/uhd/
> > uhd-firmware_003.005.002.bb, do_fetch) failed with exit code '1'
> >
> > I went back to a meta-oe branch that I had built for the beagleboard,
> > beaglebone, and pandaboard.
> >
> > Build Configuration:
> > BB_VERSION        = "1.18.0"
> > BUILD_SYS         = "x86_64-linux"
> > NATIVELSBSTRING   = "Fedora-18"
> > TARGET_SYS        = "arm-poky-linux-gnueabi"
> > MACHINE           = "beagleboard"
> > DISTRO            = "poky"
> > DISTRO_VERSION    = "1.4.1"
> > TUNE_FEATURES     = "armv7a vfp neon"
> > TARGET_FPU        = "vfp-neon"
> > meta
> > meta-yocto        = "dylan:64273e53f2789d2ea8393fc80909ac7086f168a7"
> > meta-oe           = "(nobranch):ed84e64d22400595b68da4e75b48ab7ecc342aa9"
> > meta-java         = "master:59696d89fd33df6953dcb2dd54ccd3b362513f28"
> > meta-yocto-bsp    = "dylan:64273e53f2789d2ea8393fc80909ac7086f168a7"
> >
> > Thanks
> >
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--047d7b6042be691af704e11e0fc1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Phillip,<br>This just started after a git pull o=
f meta-oe<br>This is what I found in <br>/home/vidal/POKY/build070913_dylan=
/poky/build/tmp/work/all-poky-linux/uhd-firmware/1_003.005.002-r0/temp/less=
 log.do_fetch.28656<br>
<br>=A0wget -t 2 -T 30 -nv --passive-ftp --no-check-certificate -P /home/vi=
dal/POKY/linux_src_dnloads/downloads &#39;<a href=3D"http://sources.openemb=
edded.org/uhd-images_003.005.002-release.tar.gz">http://sources.openembedde=
d.org/uhd-images_003.005.002-release.tar.gz</a>&#39;<br>
<a href=3D"http://sources.openembedded.org/uhd-images_003.005.002-release.t=
ar.gz">http://sources.openembedded.org/uhd-images_003.005.002-release.tar.g=
z</a>:<br>2013-07-09 19:08:10 ERROR 404: Not Found.<br></div>I tried the ab=
ove in a shell.<br>
<br>I also tried with firefox &#39;<a href=3D"http://sources.openembedded.o=
rg/uhd-images_003.005.002-release.tar.gz">http://sources.openembedded.org/u=
hd-images_003.005.002-release.tar.gz</a>&#39; I get the same error.<br></di=
v>
<div>This new version of branch dylan does not include the gsl-1.15 (that y=
ou added for me) instead it has gsl-1.12.<br>I also have not the upgrade of=
 gnuplot-4.4.4 to gnuplot-4.6.3<br>=A0<br>Let me know if I can provide othe=
r information.<br>
</div>Thanks<br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmai=
l_quote">On Tue, Jul 9, 2013 at 6:49 PM, Philip Balister <span dir=3D"ltr">=
&lt;<a href=3D"mailto:philip@balister.org" target=3D"_blank">philip@baliste=
r.org</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">It is not clear from your email if the failu=
re is only with dylan. Does<br>
one work and another build fail?<br>
<br>
Can you wget the url it is trying to fetch?<br>
<br>
Philip<br>
<div><div class=3D"h5"><br>
On 07/09/2013 08:38 PM, Edward Vidal wrote:<br>
&gt; Hello,<br>
&gt; What is the best method to you the dylan branch of meta-oe with an gnu=
radio<br>
&gt; from meta-oe =A0 =A0 =A0 =A0 =A0 =3D<br>
&gt; &quot;(nobranch):ed84e64d22400595b68da4e75b48ab7ecc342aa9&quot;?<br>
&gt;<br>
&gt; Any and all help will be appreciated.<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.18.0&quot;<br>
&gt; BUILD_SYS =A0 =A0 =A0 =A0 =3D &quot;x86_64-linux&quot;<br>
&gt; NATIVELSBSTRING =A0 =3D &quot;Fedora-18&quot;<br>
&gt; TARGET_SYS =A0 =A0 =A0 =A0=3D &quot;arm-poky-linux-gnueabi&quot;<br>
&gt; MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;beagleboard&quot;<br>
&gt; DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<br>
&gt; DISTRO_VERSION =A0 =A0=3D &quot;1.4.1&quot;<br>
&gt; TUNE_FEATURES =A0 =A0 =3D &quot;armv7a vfp neon&quot;<br>
&gt; TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp-neon&quot;<br>
&gt; meta<br>
&gt; meta-yocto =A0 =A0 =A0 =A0=3D &quot;dylan:64273e53f2789d2ea8393fc80909=
ac7086f168a7&quot;<br>
&gt; meta-oe =A0 =A0 =A0 =A0 =A0 =3D &quot;dylan:13ae5105ee30410136beeae66e=
c41ee4a8a2e2b0&quot;<br>
&gt; meta-java =A0 =A0 =A0 =A0 =3D &quot;master:59696d89fd33df6953dcb2dd54c=
cd3b362513f28&quot;<br>
&gt; meta-yocto-bsp =A0 =A0=3D &quot;dylan:64273e53f2789d2ea8393fc80909ac70=
86f168a7&quot;<br>
&gt;<br>
&gt; The above build gets the following errors.<br>
&gt;<br>
&gt; ERROR: Fetcher failure for URL: &#39;<br>
&gt; <a href=3D"http://files.ettus.com/binaries/uhd_stable/releases/uhd_003=
.005.002-release/uhd-images_003.005.002-release.tar.gz" target=3D"_blank">h=
ttp://files.ettus.com/binaries/uhd_stable/releases/uhd_003.005.002-release/=
uhd-images_003.005.002-release.tar.gz</a>&#39;.<br>

&gt; Checksum mismatch!<br>
&gt; ERROR: Function failed: Fetcher failure for URL: &#39;<br>
&gt; <a href=3D"http://files.ettus.com/binaries/uhd_stable/releases/uhd_003=
.005.002-release/uhd-images_003.005.002-release.tar.gz" target=3D"_blank">h=
ttp://files.ettus.com/binaries/uhd_stable/releases/uhd_003.005.002-release/=
uhd-images_003.005.002-release.tar.gz</a>&#39;.<br>

&gt; Unable to fetch URL from any source.<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/vidal/POKY/build070913_dylan/poky/build/tmp/work/all-poky-linux/=
uhd-firmware/1_003.005.002-r0/temp/log.do_fetch.28656<br>
&gt; ERROR: Task 3499<br>
&gt; (/home/vidal/POKY/build070913_dylan/poky/meta-oe/meta-oe/recipes-conne=
ctivity/uhd/<br>
&gt; <a href=3D"http://uhd-firmware_003.005.002.bb" target=3D"_blank">uhd-f=
irmware_003.005.002.bb</a>, do_fetch) failed with exit code &#39;1&#39;<br>
&gt;<br>
&gt; I went back to a meta-oe branch that I had built for the beagleboard,<=
br>
&gt; beaglebone, and pandaboard.<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.18.0&quot;<br>
&gt; BUILD_SYS =A0 =A0 =A0 =A0 =3D &quot;x86_64-linux&quot;<br>
&gt; NATIVELSBSTRING =A0 =3D &quot;Fedora-18&quot;<br>
&gt; TARGET_SYS =A0 =A0 =A0 =A0=3D &quot;arm-poky-linux-gnueabi&quot;<br>
&gt; MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;beagleboard&quot;<br>
&gt; DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<br>
&gt; DISTRO_VERSION =A0 =A0=3D &quot;1.4.1&quot;<br>
&gt; TUNE_FEATURES =A0 =A0 =3D &quot;armv7a vfp neon&quot;<br>
&gt; TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp-neon&quot;<br>
&gt; meta<br>
&gt; meta-yocto =A0 =A0 =A0 =A0=3D &quot;dylan:64273e53f2789d2ea8393fc80909=
ac7086f168a7&quot;<br>
&gt; meta-oe =A0 =A0 =A0 =A0 =A0 =3D &quot;(nobranch):ed84e64d22400595b68da=
4e75b48ab7ecc342aa9&quot;<br>
&gt; meta-java =A0 =A0 =A0 =A0 =3D &quot;master:59696d89fd33df6953dcb2dd54c=
cd3b362513f28&quot;<br>
&gt; meta-yocto-bsp =A0 =A0=3D &quot;dylan:64273e53f2789d2ea8393fc80909ac70=
86f168a7&quot;<br>
&gt;<br>
&gt; Thanks<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div></div>&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</blockquote></div><br></div>

--047d7b6042be691af704e11e0fc1--
