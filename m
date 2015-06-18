Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C628BE00A51; Thu, 18 Jun 2015 01:34:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-lb0-f173.google.com (mail-lb0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB951E009D2
	for <yocto@yoctoproject.org>; Thu, 18 Jun 2015 01:33:59 -0700 (PDT)
Received: by lbbwc1 with SMTP id wc1so47832767lbb.2
	for <yocto@yoctoproject.org>; Thu, 18 Jun 2015 01:33:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=eoF0OX/HLv8VI2gH+CqJuC6An6It7AAmnzkpP9iXFeA=;
	b=V8Gw7YeUWUt2kXpyE4syiHYCgZJ1er/H7UenGArTs7A3PYEmYkKiQR41b12M6pXmIv
	p8UPiVO0tGRozLMKaARHSr0nG5RfX5vNY9wkzet/N3y8O3Lo76lr8SLhT/nvxdYtAp2q
	RLSrzRB0WLVlxW7N9b61slhNVwQ8Tf85FxDhEbk2cRRqmqSIjrI5mWsQzULiyAgtKziu
	daCu1VJQo/RYntCfNetzI/P9nBA+adhoGic0ov8PhKVLy+fMEHl6GJSESWaKKoa0nAwc
	x56TWcJhy81qo8cYajUjE3kaGDATk+HLEkNpVT+2Uz0U1AFEdiAMnhl+/6m8RCtez6Gz
	177w==
X-Gm-Message-State: ALoCoQmyc6aiFRhNAeutSTaoDCen2y4cBza5pwLGJoSKWJLc5fqtwNhojL8y2a6XyNq5c+pPNaE+
MIME-Version: 1.0
X-Received: by 10.152.238.39 with SMTP id vh7mr11805717lac.71.1434616437504;
	Thu, 18 Jun 2015 01:33:57 -0700 (PDT)
Received: by 10.112.147.232 with HTTP; Thu, 18 Jun 2015 01:33:57 -0700 (PDT)
X-Originating-IP: [94.144.63.224]
Received: by 10.112.147.232 with HTTP; Thu, 18 Jun 2015 01:33:57 -0700 (PDT)
In-Reply-To: <02ea01d0a99f$ec37d2c0$c4a77840$@neuf.fr>
References: <009101d0a8d9$c460eb40$4d22c1c0$@neuf.fr>
	<CAK18fxEc3T93vKFmRdxhRu5MHOZxM22xyBAfR+cAsnBiptwgUg@mail.gmail.com>
	<02ea01d0a99f$ec37d2c0$c4a77840$@neuf.fr>
Date: Thu, 18 Jun 2015 10:33:57 +0200
Message-ID: <CAK18fxG+HWcgNYmnspFVHdfi_Pzz5wK-vstJTAxti1pTz0943A@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] [PATCH] ds1307-rtc-overlay.dtb has been removed from the kernel tree, and most overlays have been moved to the dts/overlays directory
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
X-List-Received-Date: Thu, 18 Jun 2015 08:34:02 -0000
Content-Type: multipart/alternative; boundary=001a1133b44e25988f0518c6ab4a

--001a1133b44e25988f0518c6ab4a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

On 18 Jun 2015 10:22, "Herve Jourdain" <herve.jourdain@neuf.fr> wrote:
>
> Hi Andrei,
>
> Well, it seems that the current meta-raspberrypi is pulling the kernel
from github, and the kernel on github already has these "features" in.
> Which is why I could compile fine with the current meta-raspberrypi 2or 3
weeks ago, but it failed 2 days ago when I tried to do a fresh build...
> Therefore, I believe the change in the meta-raspberrypi is already needed
for the 3.18.y branch, because the kernel already has it.

This is interesting. I'll check it tonight.

>
> Regards,
>
> Herve
>
> -----Original Message-----
> From: Andrei Gherzan [mailto:andrei@gherzan.ro]
> Sent: jeudi 18 juin 2015 08:28
> To: Herve Jourdain
> Cc: Yocto Project
> Subject: Re: [yocto] [meta-raspberrypi] [PATCH] ds1307-rtc-overlay.dtb
has been removed from the kernel tree, and most overlays have been moved to
the dts/overlays directory
>
> Hello Herve,
>
> On Wed, Jun 17, 2015 at 10:43 AM, Herve Jourdain <herve.jourdain@neuf.fr>
wrote:
> > Hi,
> >
> >
> >
> > Actually, the situation is slightly more complex than I initially
supposed :
> > not only were some .dtb deleted, but also most were moved to the =C2=AB
> > overlays =C2=BB subdirectory.
> >
> > This is true for the kernel after git
> > 739c586c87576fb8ef151b5843ebed76c43a5221:
>
> These patches will first need to update kernel. So please send the Linux
update which is dependent on too. Submitting a patch is very simple and
there is documentation in the layer's README file. You can always use pull
requests in github and bitbucket too.
>
> > https://github.com/raspberrypi/linux/commit/739c586c87576fb8ef151b5843
> > ebed76c43a5221
> >
> > The following patch is making the whole thing compiling, and seems to
> > install them in the right places, but I=E2=80=99m not sure I=E2=80=99m =
creating the
> > directory needed for compiling the overlays at the best of places=E2=80=
=A6
> >
> > Anyway, here it goes:
> >
> >
> >
> > Signed-off-by: herve.jourdain@neuf.fr
> >
> >
> >
> > --- meta-raspberrypi/conf/machine/include/rpi-base.inc     2015-05-19
> > 10:34:22.099500543 +0800
> >
> > +++ meta-raspberrypi.new/conf/machine/include/rpi-base.inc 2015-06-17
> > 02:34:11.538069350 +0800
> >
> > @@ -23,18 +23,17 @@
> >
> >      bcm2708-rpi-b-plus.dtb \
> >
> >      bcm2709-rpi-2-b.dtb \
> >
> >      \
> >
> > -    ds1307-rtc-overlay.dtb \
> >
> > -    hifiberry-amp-overlay.dtb \
> >
> > -    hifiberry-dac-overlay.dtb \
> >
> > -    hifiberry-dacplus-overlay.dtb \
> >
> > -    hifiberry-digi-overlay.dtb \
> >
> > -    iqaudio-dac-overlay.dtb \
> >
> > -    iqaudio-dacplus-overlay.dtb \
> >
> > -    lirc-rpi-overlay.dtb \
> >
> > -    pcf8523-rtc-overlay.dtb \
> >
> > -    pps-gpio-overlay.dtb \
> >
> > -    w1-gpio-overlay.dtb \
> >
> > -    w1-gpio-pullup-overlay.dtb \
> >
> > +    overlays/hifiberry-amp-overlay.dtb \
> >
> > +    overlays/hifiberry-dac-overlay.dtb \
> >
> > +    overlays/hifiberry-dacplus-overlay.dtb \
> >
> > +    overlays/hifiberry-digi-overlay.dtb \
> >
> > +    overlays/i2c-rtc-overlay.dtb \
> >
> > +    overlays/iqaudio-dac-overlay.dtb \
> >
> > +    overlays/iqaudio-dacplus-overlay.dtb \
> >
> > +    overlays/lirc-rpi-overlay.dtb \
> >
> > +    overlays/pps-gpio-overlay.dtb \
> >
> > +    overlays/w1-gpio-overlay.dtb \
> >
> > +    overlays/w1-gpio-pullup-overlay.dtb \
> >
> >      "
>
> On the boot partition will these files be deployed as overlays/* ? If so,
does kernel knows to pick them up from this directory?
>
> >
> > KERNEL_IMAGETYPE ?=3D "Image"
> >
> > --- meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi.inc
> > 2015-05-19 10:34:22.103500543 +0800
> >
> > +++ meta-raspberrypi.new/recipes-kernel/linux/linux-raspberrypi.inc
> > 2015-06-17 04:34:03.562361029 +0800
> >
> > @@ -42,6 +42,9 @@
> >
> >  do_install_prepend() {
> >
> >      install -d ${D}/lib/firmware
> >
> > +    if [ -n "${KERNEL_DEVICETREE}" ]; then
> >
> > +          mkdir -p ${B}/arch/${ARCH}/boot/dts/overlays
> >
> > +    fi
> >
> > }
> >
> >  do_deploy_append() {
> >
> >
> >
> > Regards
> >
> >
> >
> > From: Herve Jourdain [mailto:herve.jourdain@neuf.fr]
> > Sent: mercredi 17 juin 2015 04:57
> > To: 'yocto@yoctoproject.org'
> > Subject: [meta-raspberrypi] ds1307-rtc-overlay.dtb has been removed
> > from the kernel tree
> >
> >
> >
> > Hi,
> >
> >
> >
> > I=E2=80=99m not sure about the formalism of submitting patches to this =
list,
> > so I hope you will forgive any misstep.
> >
> >
> >
> > Recently, the RaspberryPi kernel has removed some =E2=80=9Cdeprecated=
=E2=80=9D DTB
> > overlays from the kernel tree, causing the meta-raspberrypi layer to
> > fail at compile time.
> >
> > The failure message is:
> >
> > No rule to make target `arch/arm/boot/dts/ds1307-rtc-overlay.dtb'.
Stop.
> >
> >
> >
> > The DTB overlays that have been deleted are:
> >
> > ds1307-rtc-overlay
> >
> > pf2127-rtc-overlay
> >
> > pcf8523-rtc-overlay
> >
> > pfc8563-rtc-overlay
> >
> >
> >
> > They=E2=80=99ve been replaced by: i2c-rtc-overlay
> >
> >
> >
> > Therefore, the file conf/machine/include/rpi-base.inc must be modified
> > to accommodate those changes.
> >
> >
> >
> > The proposed patch is:
> >
> > --- meta-raspberrypi/conf/machine/include/rpi-base.inc     2015-06-10
> > 12:59:09.069237631 +0800
> >
> > +++ meta-raspberrypi.new/conf/machine/include/rpi-base.inc 2015-06-17
> > 01:11:58.125869271 +0800
> >
> > @@ -23,15 +23,14 @@
> >
> >      bcm2708-rpi-b-plus.dtb \
> >
> >      bcm2709-rpi-2-b.dtb \
> >
> >      \
> >
> > -    ds1307-rtc-overlay.dtb \
> >
> >      hifiberry-amp-overlay.dtb \
> >
> >      hifiberry-dac-overlay.dtb \
> >
> >      hifiberry-dacplus-overlay.dtb \
> >
> >      hifiberry-digi-overlay.dtb \
> >
> > +    i2c-rtc-overlay.dtb \
> >
> >      iqaudio-dac-overlay.dtb \
> >
> >      iqaudio-dacplus-overlay.dtb \
> >
> >      lirc-rpi-overlay.dtb \
> >
> > -    pcf8523-rtc-overlay.dtb \
> >
> >      pps-gpio-overlay.dtb \
> >
> >      w1-gpio-overlay.dtb \
> >
> >      w1-gpio-pullup-overlay.dtb \
> >
> > Signed-off-by: herve.jourdain@neuf.fr
> >
> >
> >
> > Regards
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>
>
>
> --
> Andrei Gherzan
> e: andrei@gherzan.ro
> w: www.gherzan.ro

--001a1133b44e25988f0518c6ab4a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hello,</p>
<p dir=3D"ltr">On 18 Jun 2015 10:22, &quot;Herve Jourdain&quot; &lt;<a href=
=3D"mailto:herve.jourdain@neuf.fr">herve.jourdain@neuf.fr</a>&gt; wrote:<br=
>
&gt;<br>
&gt; Hi Andrei,<br>
&gt;<br>
&gt; Well, it seems that the current meta-raspberrypi is pulling the kernel=
 from github, and the kernel on github already has these &quot;features&quo=
t; in.<br>
&gt; Which is why I could compile fine with the current meta-raspberrypi 2o=
r 3 weeks ago, but it failed 2 days ago when I tried to do a fresh build...=
<br>
&gt; Therefore, I believe the change in the meta-raspberrypi is already nee=
ded for the 3.18.y branch, because the kernel already has it.</p>
<p dir=3D"ltr">This is interesting. I&#39;ll check it tonight.</p>
<p dir=3D"ltr">&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt; Herve<br>
&gt;<br>
&gt; -----Original Message-----<br>
&gt; From: Andrei Gherzan [mailto:<a href=3D"mailto:andrei@gherzan.ro">andr=
ei@gherzan.ro</a>]<br>
&gt; Sent: jeudi 18 juin 2015 08:28<br>
&gt; To: Herve Jourdain<br>
&gt; Cc: Yocto Project<br>
&gt; Subject: Re: [yocto] [meta-raspberrypi] [PATCH] ds1307-rtc-overlay.dtb=
 has been removed from the kernel tree, and most overlays have been moved t=
o the dts/overlays directory<br>
&gt;<br>
&gt; Hello Herve,<br>
&gt;<br>
&gt; On Wed, Jun 17, 2015 at 10:43 AM, Herve Jourdain &lt;<a href=3D"mailto=
:herve.jourdain@neuf.fr">herve.jourdain@neuf.fr</a>&gt; wrote:<br>
&gt; &gt; Hi,<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Actually, the situation is slightly more complex than I initially=
 supposed :<br>
&gt; &gt; not only were some .dtb deleted, but also most were moved to the =
=C2=AB<br>
&gt; &gt; overlays =C2=BB subdirectory.<br>
&gt; &gt;<br>
&gt; &gt; This is true for the kernel after git<br>
&gt; &gt; 739c586c87576fb8ef151b5843ebed76c43a5221:<br>
&gt;<br>
&gt; These patches will first need to update kernel. So please send the Lin=
ux update which is dependent on too. Submitting a patch is very simple and =
there is documentation in the layer&#39;s README file. You can always use p=
ull requests in github and bitbucket too.<br>
&gt;<br>
&gt; &gt; <a href=3D"https://github.com/raspberrypi/linux/commit/739c586c87=
576fb8ef151b5843">https://github.com/raspberrypi/linux/commit/739c586c87576=
fb8ef151b5843</a><br>
&gt; &gt; ebed76c43a5221<br>
&gt; &gt;<br>
&gt; &gt; The following patch is making the whole thing compiling, and seem=
s to<br>
&gt; &gt; install them in the right places, but I=E2=80=99m not sure I=E2=
=80=99m creating the<br>
&gt; &gt; directory needed for compiling the overlays at the best of places=
=E2=80=A6<br>
&gt; &gt;<br>
&gt; &gt; Anyway, here it goes:<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: <a href=3D"mailto:herve.jourdain@neuf.fr">herve.jo=
urdain@neuf.fr</a><br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; --- meta-raspberrypi/conf/machine/include/rpi-base.inc=C2=A0 =C2=
=A0 =C2=A02015-05-19<br>
&gt; &gt; 10:34:22.099500543 +0800<br>
&gt; &gt;<br>
&gt; &gt; +++ meta-raspberrypi.new/conf/machine/include/rpi-base.inc 2015-0=
6-17<br>
&gt; &gt; 02:34:11.538069350 +0800<br>
&gt; &gt;<br>
&gt; &gt; @@ -23,18 +23,17 @@<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 bcm2708-rpi-b-plus.dtb \<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 bcm2709-rpi-2-b.dtb \<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 \<br>
&gt; &gt;<br>
&gt; &gt; -=C2=A0 =C2=A0 ds1307-rtc-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; -=C2=A0 =C2=A0 hifiberry-amp-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; -=C2=A0 =C2=A0 hifiberry-dac-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; -=C2=A0 =C2=A0 hifiberry-dacplus-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; -=C2=A0 =C2=A0 hifiberry-digi-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; -=C2=A0 =C2=A0 iqaudio-dac-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; -=C2=A0 =C2=A0 iqaudio-dacplus-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; -=C2=A0 =C2=A0 lirc-rpi-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; -=C2=A0 =C2=A0 pcf8523-rtc-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; -=C2=A0 =C2=A0 pps-gpio-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; -=C2=A0 =C2=A0 w1-gpio-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; -=C2=A0 =C2=A0 w1-gpio-pullup-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; +=C2=A0 =C2=A0 overlays/hifiberry-amp-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; +=C2=A0 =C2=A0 overlays/hifiberry-dac-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; +=C2=A0 =C2=A0 overlays/hifiberry-dacplus-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; +=C2=A0 =C2=A0 overlays/hifiberry-digi-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; +=C2=A0 =C2=A0 overlays/i2c-rtc-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; +=C2=A0 =C2=A0 overlays/iqaudio-dac-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; +=C2=A0 =C2=A0 overlays/iqaudio-dacplus-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; +=C2=A0 =C2=A0 overlays/lirc-rpi-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; +=C2=A0 =C2=A0 overlays/pps-gpio-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; +=C2=A0 =C2=A0 overlays/w1-gpio-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; +=C2=A0 =C2=A0 overlays/w1-gpio-pullup-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &quot;<br>
&gt;<br>
&gt; On the boot partition will these files be deployed as overlays/* ? If =
so, does kernel knows to pick them up from this directory?<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; KERNEL_IMAGETYPE ?=3D &quot;Image&quot;<br>
&gt; &gt;<br>
&gt; &gt; --- meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi.inc<b=
r>
&gt; &gt; 2015-05-19 10:34:22.103500543 +0800<br>
&gt; &gt;<br>
&gt; &gt; +++ meta-raspberrypi.new/recipes-kernel/linux/linux-raspberrypi.i=
nc<br>
&gt; &gt; 2015-06-17 04:34:03.562361029 +0800<br>
&gt; &gt;<br>
&gt; &gt; @@ -42,6 +42,9 @@<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 do_install_prepend() {<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 install -d ${D}/lib/firmware<br>
&gt; &gt;<br>
&gt; &gt; +=C2=A0 =C2=A0 if [ -n &quot;${KERNEL_DEVICETREE}&quot; ]; then<b=
r>
&gt; &gt;<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mkdir -p ${B}/arch/${ARCH}/bo=
ot/dts/overlays<br>
&gt; &gt;<br>
&gt; &gt; +=C2=A0 =C2=A0 fi<br>
&gt; &gt;<br>
&gt; &gt; }<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 do_deploy_append() {<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Regards<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; From: Herve Jourdain [mailto:<a href=3D"mailto:herve.jourdain@neu=
f.fr">herve.jourdain@neuf.fr</a>]<br>
&gt; &gt; Sent: mercredi 17 juin 2015 04:57<br>
&gt; &gt; To: &#39;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctopro=
ject.org</a>&#39;<br>
&gt; &gt; Subject: [meta-raspberrypi] ds1307-rtc-overlay.dtb has been remov=
ed<br>
&gt; &gt; from the kernel tree<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Hi,<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; I=E2=80=99m not sure about the formalism of submitting patches to=
 this list,<br>
&gt; &gt; so I hope you will forgive any misstep.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Recently, the RaspberryPi kernel has removed some =E2=80=9Cdeprec=
ated=E2=80=9D DTB<br>
&gt; &gt; overlays from the kernel tree, causing the meta-raspberrypi layer=
 to<br>
&gt; &gt; fail at compile time.<br>
&gt; &gt;<br>
&gt; &gt; The failure message is:<br>
&gt; &gt;<br>
&gt; &gt; No rule to make target `arch/arm/boot/dts/ds1307-rtc-overlay.dtb&=
#39;.=C2=A0 Stop.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; The DTB overlays that have been deleted are:<br>
&gt; &gt;<br>
&gt; &gt; ds1307-rtc-overlay<br>
&gt; &gt;<br>
&gt; &gt; pf2127-rtc-overlay<br>
&gt; &gt;<br>
&gt; &gt; pcf8523-rtc-overlay<br>
&gt; &gt;<br>
&gt; &gt; pfc8563-rtc-overlay<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; They=E2=80=99ve been replaced by: i2c-rtc-overlay<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Therefore, the file conf/machine/include/rpi-base.inc must be mod=
ified<br>
&gt; &gt; to accommodate those changes.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; The proposed patch is:<br>
&gt; &gt;<br>
&gt; &gt; --- meta-raspberrypi/conf/machine/include/rpi-base.inc=C2=A0 =C2=
=A0 =C2=A02015-06-10<br>
&gt; &gt; 12:59:09.069237631 +0800<br>
&gt; &gt;<br>
&gt; &gt; +++ meta-raspberrypi.new/conf/machine/include/rpi-base.inc 2015-0=
6-17<br>
&gt; &gt; 01:11:58.125869271 +0800<br>
&gt; &gt;<br>
&gt; &gt; @@ -23,15 +23,14 @@<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 bcm2708-rpi-b-plus.dtb \<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 bcm2709-rpi-2-b.dtb \<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 \<br>
&gt; &gt;<br>
&gt; &gt; -=C2=A0 =C2=A0 ds1307-rtc-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 hifiberry-amp-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 hifiberry-dac-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 hifiberry-dacplus-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 hifiberry-digi-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; +=C2=A0 =C2=A0 i2c-rtc-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 iqaudio-dac-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 iqaudio-dacplus-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 lirc-rpi-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; -=C2=A0 =C2=A0 pcf8523-rtc-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 pps-gpio-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 w1-gpio-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 w1-gpio-pullup-overlay.dtb \<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: <a href=3D"mailto:herve.jourdain@neuf.fr">herve.jo=
urdain@neuf.fr</a><br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Regards<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https:/=
/lists.yoctoproject.org/listinfo/yocto</a><br>
&gt; &gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; Andrei Gherzan<br>
&gt; e: <a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a><br>
&gt; w: <a href=3D"http://www.gherzan.ro">www.gherzan.ro</a><br>
</p>

--001a1133b44e25988f0518c6ab4a--
