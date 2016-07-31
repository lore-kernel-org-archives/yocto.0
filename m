Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C4AAE00D09; Sun, 31 Jul 2016 12:52:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f195.google.com (mail-qt0-f195.google.com
	[209.85.216.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8C58E00CFF
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2016 12:52:16 -0700 (PDT)
Received: by mail-qt0-f195.google.com with SMTP id j37so7235546qta.0
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2016 12:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fa2KR10L99haO4wqhD+QyF6EUEhkHptLbPIznQRNJsM=;
	b=hVLGzrNGBZNG3puJxp6lTa6wU+OrOgUqhp2emvmNgR1Foos5aQlcDgn5N6nOkULVbd
	yjzSD3toxUlWIfdj0wiloxmmCyXXP7NxXdsKI17YswBjxV90La2r2gxsgT3AaddXEb9Q
	l2YhtDx4s68zRAkfi8aSI3aLlk0C1taDTXZrspiTD9PwMpVdmWmyfQ07b2UsFD3SdKwI
	DQbTYtJBqNLWXCHvPADK0v52t2ndrnxByVDVtxoItdL6S9YjzoqkOMb0sdkuZfd5JrzG
	QgKa6NvNsWse3vKkS0Dte8MmDGibqkI0vuodESdXOrw9H76nEMpqqtRT2BbRa4k7IwRU
	GseA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fa2KR10L99haO4wqhD+QyF6EUEhkHptLbPIznQRNJsM=;
	b=PL7DVV6QNcT0yETF9wFesIrKPYTfrPCOF+lBocnuEG/4TvPjKqOxWU0ct8aNgHMMge
	b4chiMQkfh0oS6kJxsIkPnoocyP2al8zAkiFCtUI8SUq/51xj3MtP3fYxF4Dp3tEBD6c
	HHUcBJa9Nm9+HBfe6I4HzxwGuCI46UNWRAyKiDJmeFDyG3oX+bRvHlzY4I8DT7h+zhb0
	supJ+9F3QGGIiMwg+kJAQgK3itdGmAJur2CCr5agdUT+faR8JFNWHEqVzpWOX2bXSmX5
	amv5IPkrpTx3wvZwd5o5rZ/+KM2BzPpAfCDASVkRBowCvgFa3hSdFCLYeNw30c1YY9xc
	S64Q==
X-Gm-Message-State: AEkoousyuiel4epClCb/KGUkD06GlD3g+1H7n+mhojjMCT1Zad0UfQADOt5ufSpS8ZWkrSkE3wsfOwi+Vw6B8w==
X-Received: by 10.200.56.155 with SMTP id f27mr83173412qtc.26.1469994735622;
	Sun, 31 Jul 2016 12:52:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Sun, 31 Jul 2016 12:52:14 -0700 (PDT)
Received: by 10.55.214.83 with HTTP; Sun, 31 Jul 2016 12:52:14 -0700 (PDT)
In-Reply-To: <CAMKF1sp4pS2+7gkr2RttBbkGiifWqSOEX2J09ygK3uZnVbAKwg@mail.gmail.com>
References: <1469052039-7746-1-git-send-email-herve.jourdain@neuf.fr>
	<70B61AEF-DB1A-4E60-8A14-878623073F1A@gmail.com>
	<20160731184820.GA29087@resin.home>
	<CAMKF1soL5FLZNAvZm3qdGyqj-XYuKWMgnepb_r1Vs6hHuCLgLg@mail.gmail.com>
	<CAMKF1sp4pS2+7gkr2RttBbkGiifWqSOEX2J09ygK3uZnVbAKwg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 31 Jul 2016 13:52:14 -0600
Message-ID: <CAMKF1soRNGyMpYL17y5VxBeHpVEhn0hnWKgPg8BBZXpUTF-5Mw@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v6 0/4] Support for .dtbo files for dtb overlays, required by kernels 4.4.6+
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
X-List-Received-Date: Sun, 31 Jul 2016 19:52:20 -0000
Content-Type: multipart/alternative; boundary=001a113783be09e1680538f3d256

--001a113783be09e1680538f3d256
Content-Type: text/plain; charset=UTF-8

On Jul 31, 2016 12:48 PM, "Andrei Gherzan" <andrei@gherzan.ro> wrote:
>
> On Thu, Jul 28, 2016 at 06:41:25PM -0700, Khem Raj wrote:
> >
> > > On Jul 20, 2016, at 3:00 PM, Herve Jourdain <herve.jourdain@neuf.fr>
wrote:
> > >
> > > v6: rebased
> > >
> > > v5: modifications after more review
> > > * Added an Upstream-Status to the kernel patch
> > > * Only one instance of KERNEL_DEVICETREE defined (with the new .dtbo
syntax)
> > > * Modification of the KERNEL_DEVICETREE is done in
linux-raspberry-base.bbclass, based on the kernel version
> > >
> > > v4: rebased
> > > For kernels 4.4.9+, the behavior for the device tree overlays loading
has been modified on RaspberryPi.
> > > For overlays, it loads .dtbo files, not .dtb anymore.
> > > Also, it does not check for -overlay extension, so the name of the
overlay that is placed in the "overlays" directory must be
<overlay_name>.dtbo, instead of <overlay_name>-overlay.dtb.
> > >
> > > This patch addresses the issue for kernels 4.4+, while keeping the
same behavior for older kernels.
> > > This patch must be used in conjunction with another patch to
meta/recipes-kernel/linux-dtb.inc, which will allow the processing of .dtbo
files for overlays, instead of only .dtb like before.
> > >
> > > .dtb are still in use, but only for the "real" device trees (not the
overlays).
> >
> > I have staged this series in
> >
> > https://github.com/kraj/meta-raspberrypi kraj/master
> >
> > However, this all has to wait on two things.
> >
> > The OE-core patch
> >
> > https://patchwork.openembedded.org/patch/123747/
> >
>
> What is happening with this patch? So I can't merge these as long as
> this one is not merged.

Yes. I am working on upstreaming it. We have to wait until this goes in. I
have staged all rpi patches in my tree. So obe place to look for all
>
> > and we need to branch out for krogoth
> >
> > >
> > > Herve Jourdain (4):
> > >  linux-raspberrypi_4.4.bb: support for .dtbo files for dtb overlays
> > >  rpi-base.inc: support for .dtbo files for dtb overlays
> > >  linux-raspberrypi-base.bbclass: support for .dtbo files for dtb
> > >    overlays
> > >  sdcard_image-rpi.bbclass: support for .dtbo files for dtb overlays
> > >
> > > classes/linux-raspberrypi-base.bbclass             | 19 ++++++----
> > > classes/sdcard_image-rpi.bbclass                   | 15 +++++---
> > > conf/machine/include/rpi-base.inc                  | 30
+++++++--------
> > > .../0001-fix-dtbo-rules.patch                      | 44
++++++++++++++++++++++
> > > recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  1 +
> > > 5 files changed, 81 insertions(+), 28 deletions(-)
> > > create mode 100644
recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
> > >
> > > --
> > > 2.7.4
> > >
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> >
>
>
>
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
> --
> Andrei Gherzan

--001a113783be09e1680538f3d256
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On Jul 31, 2016 12:48 PM, &quot;Andrei Gherzan&quot; &lt;<a =
href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt;<br>
&gt; On Thu, Jul 28, 2016 at 06:41:25PM -0700, Khem Raj wrote:<br>
&gt; &gt;<br>
&gt; &gt; &gt; On Jul 20, 2016, at 3:00 PM, Herve Jourdain &lt;<a href=3D"m=
ailto:herve.jourdain@neuf.fr">herve.jourdain@neuf.fr</a>&gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; v6: rebased<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; v5: modifications after more review<br>
&gt; &gt; &gt; * Added an Upstream-Status to the kernel patch<br>
&gt; &gt; &gt; * Only one instance of KERNEL_DEVICETREE defined (with the n=
ew .dtbo syntax)<br>
&gt; &gt; &gt; * Modification of the KERNEL_DEVICETREE is done in linux-ras=
pberry-base.bbclass, based on the kernel version<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; v4: rebased<br>
&gt; &gt; &gt; For kernels 4.4.9+, the behavior for the device tree overlay=
s loading has been modified on RaspberryPi.<br>
&gt; &gt; &gt; For overlays, it loads .dtbo files, not .dtb anymore.<br>
&gt; &gt; &gt; Also, it does not check for -overlay extension, so the name =
of the overlay that is placed in the &quot;overlays&quot; directory must be=
 &lt;overlay_name&gt;.dtbo, instead of &lt;overlay_name&gt;-overlay.dtb.<br=
>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; This patch addresses the issue for kernels 4.4+, while keepi=
ng the same behavior for older kernels.<br>
&gt; &gt; &gt; This patch must be used in conjunction with another patch to=
 meta/recipes-kernel/linux-dtb.inc, which will allow the processing of .dtb=
o files for overlays, instead of only .dtb like before.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; .dtb are still in use, but only for the &quot;real&quot; dev=
ice trees (not the overlays).<br>
&gt; &gt;<br>
&gt; &gt; I have staged this series in<br>
&gt; &gt;<br>
&gt; &gt; <a href=3D"https://github.com/kraj/meta-raspberrypi">https://gith=
ub.com/kraj/meta-raspberrypi</a> kraj/master<br>
&gt; &gt;<br>
&gt; &gt; However, this all has to wait on two things.<br>
&gt; &gt;<br>
&gt; &gt; The OE-core patch<br>
&gt; &gt;<br>
&gt; &gt; <a href=3D"https://patchwork.openembedded.org/patch/123747/">http=
s://patchwork.openembedded.org/patch/123747/</a><br>
&gt; &gt;<br>
&gt;<br>
&gt; What is happening with this patch? So I can&#39;t merge these as long =
as<br>
&gt; this one is not merged.</p>
<p dir=3D"ltr">Yes. I am working on upstreaming it. We have to wait until t=
his goes in. I have staged all rpi patches in my tree. So obe place to look=
 for all<br>
&gt;<br>
&gt; &gt; and we need to branch out for krogoth<br>
&gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Herve Jourdain (4):<br>
&gt; &gt; &gt;=C2=A0 <a href=3D"http://linux-raspberrypi_4.4.bb">linux-rasp=
berrypi_4.4.bb</a>: support for .dtbo files for dtb overlays<br>
&gt; &gt; &gt;=C2=A0 rpi-base.inc: support for .dtbo files for dtb overlays=
<br>
&gt; &gt; &gt;=C2=A0 linux-raspberrypi-base.bbclass: support for .dtbo file=
s for dtb<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 overlays<br>
&gt; &gt; &gt;=C2=A0 sdcard_image-rpi.bbclass: support for .dtbo files for =
dtb overlays<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; classes/linux-raspberrypi-base.bbclass=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| 19 ++++++----<br>
&gt; &gt; &gt; classes/sdcard_image-rpi.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 15 +++++---<br>
&gt; &gt; &gt; conf/machine/include/rpi-base.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 30 +++++++--------<br>
&gt; &gt; &gt; .../0001-fix-dtbo-rules.patch=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 44 ++++++++++++++++++++++<b=
r>
&gt; &gt; &gt; recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.4=
.bb">linux-raspberrypi_4.4.bb</a>=C2=A0 =C2=A0 =C2=A0 |=C2=A0 1 +<br>
&gt; &gt; &gt; 5 files changed, 81 insertions(+), 28 deletions(-)<br>
&gt; &gt; &gt; create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.=
4/0001-fix-dtbo-rules.patch<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; 2.7.4<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; _______________________________________________<br>
&gt; &gt; &gt; yocto mailing list<br>
&gt; &gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject=
.org</a><br>
&gt; &gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">ht=
tps://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt; &gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; &gt; --<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https:/=
/lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; Andrei Gherzan<br></p>

--001a113783be09e1680538f3d256--
