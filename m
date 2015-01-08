Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0566E004FF; Thu,  8 Jan 2015 12:58:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (simon.bolek[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9796E0048B
	for <yocto@yoctoproject.org>; Thu,  8 Jan 2015 12:58:41 -0800 (PST)
Received: by mail-wg0-f44.google.com with SMTP id b13so4776822wgh.3
	for <yocto@yoctoproject.org>; Thu, 08 Jan 2015 12:58:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=4SgOQ/VauPKQ0ESrOK3XtS861Qy9f0tGWStPdj9Vlx8=;
	b=IFrD9th3UcqgLr/a9OX1/cjgFyhLSiFtogDIiVF2g1LaXMWRJymCurUVrMVRZHEpDn
	OebQOWFHFWiv1I072ffnl7U7TWFhZQpdSN2GBE7r0csYe+NOSV+xN8puSrByJSBtwvPW
	YyfzG6/KtEPMyyfMM+U0wr4HRP3oKkrx+pAP90eY2vWvirdXAM46qGXrJmpcNVsFQMWD
	os+nLpbIxrnxCS1cp749yDeu7Vx0faYL3uk+UM1TSk2P8PJ+8hD7FM9Vfb0t9RxdAidY
	p51/TxPpKsfsPiX8CIudGmxR6nlmYf7KK/jnSRY40o0bwW7lp++ktG6dgPs0sghf25TS
	BRoQ==
X-Received: by 10.180.77.114 with SMTP id r18mr27521767wiw.8.1420750718968;
	Thu, 08 Jan 2015 12:58:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.179.137 with HTTP; Thu, 8 Jan 2015 12:58:18 -0800 (PST)
In-Reply-To: <54AEC351.5050905@gmail.com>
References: <CAEfap_C2-_1MfnZg=CTnP_bdd9tkbJ649UfXjXXmUqgiu+uTtw@mail.gmail.com>
	<54ADD758.90302@gmail.com>
	<CAEfap_D+Okcb20V7Sv+kCEJm8trVx1bWGRemT7AGWGyYy8_T_Q@mail.gmail.com>
	<54AEC351.5050905@gmail.com>
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Thu, 8 Jan 2015 21:58:18 +0100
Message-ID: <CAEfap_A7J95hb=idh6JhzYfx5pY4tWzmDHCMV1f4UexG+LQrDQ@mail.gmail.com>
To: nick <xerofoify@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Booting .hddimg from USB failed -> ramdisk not found /dev/ram0 - HELP!
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
X-List-Received-Date: Thu, 08 Jan 2015 20:58:45 -0000
Content-Type: multipart/alternative; boundary=f46d04389255eb27e7050c2a4d4d

--f46d04389255eb27e7050c2a4d4d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

NIck, thank you. what do you mean by that? I followed the instructions from
here:
http://www.yoctoproject.org/docs/1.7/kernel-dev/kernel-dev.html#changing-th=
e-configuration
is there something there I might be missing? Where is the part, 'linking
your kernels to the core-image-sato build'  that you are talking about?

thank you and best regards
simon:-)

On Thu, Jan 8, 2015 at 6:50 PM, nick <xerofoify@gmail.com> wrote:

> Simon,
> Why are you not linking your kernels to the core-image-sato build.
> This seems to be the issue.
> Regards Nick
>
> On 2015-01-08 05:59 AM, Simon Bolek wrote:
> > Thank you Nick. I will try that, but this is not the point. I am trying
> to
> > figure out why
> > *bitbake core-image-sato *
> > does not create /dev/ram nodes, although linux-yocto has them defiined =
in
> > .config file.
> >
> > I also created:
> > mylayer/recipes-kernel/linux/linux_yocto_3.4.bbapend
> > mylayer/recipes-kernel/linux/linux_yocto_3.10.bbapend
> > mylayer/recipes-kernel/linux/linux_yocto_3.14.bbapend
> >
> > with the following content:
> >
> > FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
> > SRC_URI +=3D "file://ramdisk.cfg"
> >
> > and
> > mylayer/recipes-kernel/linux/files/ramdisk.cfg
> >
> > with content:
> > CONFIG_BLK_DEV_RAM=3Dy
> > CONFIG_BLK_DEV_RAM_COUNT=3D16
> > CONFIG_BLK_DEV_RAM_SIZE=3D4096
> >
> > and afterwards run the commands:
> > bitbake linux-yocto -c cleansstate
> > bitbake linux-yocto
> > bitbake core-image-sato
> >
> > again. Same result, no /dev/ram nodes under rootfs.
> >
> > What am i doing wrong?
> >
> > thank you
> > simon:-)
> >
> > On Thu, Jan 8, 2015 at 2:03 AM, nick <xerofoify@gmail.com> wrote:
> >
> >> Simon,
> >> Can you boot this on standard computer with qemu.
> >> Try that first and report back if that works.
> >> Nick
> >>
> >> On 2015-01-07 04:59 PM, Simon Bolek wrote:
> >>> Hello folks!
> >>>
> >>> I have the following problem/question.
> >>> 1) I built a standard .hddimg core-image-sato genericx86 on ubuntu
> 14.10
> >>> 2) Afterwards, this .hddimg was deployed to USB device (USB-ZIP metho=
d)
> >>> 3) Tried to boot Atom PC from the USB Device -> *ERROR: cound not fou=
nd
> >>> ramdisk*
> >>>
> >>> so initrd is trying to find /dev/ram0 which does not exist in the
> image.
> >> I
> >>> checked rootfs and there is nothing under
> >>>
> >>
> ../poky/build/tmp/work/genericx86-poky-linux/core-image-sato/1.0-r0/rootf=
s/dev
> >>>
> >>> I googled this up and there is a thread telling to check the .config
> file
> >>> for *CONFIG_BLK_DEV_RAM *settings*.*
> >>> I have the following entries in:
> >>>
> >>
> ../poky/build/tmp/work/genericx86-poky-linux/linux-yocto/3.10.35+gitAUTOI=
NC+7df9ef8ee4_2ee37bfe73-r0/linux-genericx86-standard-build/.config
> >>> ...
> >>> CONFIG_BLK_DEV_RAM=3Dy
> >>> CONFIG_BLK_DEV_RAM_COUNT=3D16
> >>> CONFIG_BLK_DEV_RAM_SIZE=3D4096
> >>> ...
> >>>
> >>> I also *bitbake core-image-sato -c cleansstate* twice already.
> >>> I also* bitbake core-image-sato -c menuconfig *once more and
> >>> afterwards *bitbake
> >>> linux-yocto* again.
> >>> I also tried IRC channels, but no answer so far...
> >>>
> >>> Can anyone help me? How can i force bitbake to create /dev/ram0 under
> >>> rootfs?
> >>> Or maybe there is another trick to boot the image from USB?
> >>>
> >>> best regards
> >>> simon:-)
> >>>
> >>> Viele Gr=C3=BCsse
> >>> Simon Bolek
> >>>
> >>> mit freundlichem Gruss / best regards / pozdrawiam / atentamente
> >>> Simon P. Bolek
> >>> ------------------------------------------------------
> >>> Dipl. Inf. Simon P. Bolek
> >>> SAP Consultant
> >>> Business Mobile and IVI Solutions
> >>> mailto: simon.bolek@arcom-ivi.de
> >>> http://www.arcom-ivi.de/
> >>> XING: https://www.xing.com/profile/SimonP_Bolek
> >>>
> >>>
> >>>
> >>
> >
>

--f46d04389255eb27e7050c2a4d4d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>NIck, thank you. what do you mean by that? =
I followed the instructions from here:<br><a href=3D"http://www.yoctoprojec=
t.org/docs/1.7/kernel-dev/kernel-dev.html#changing-the-configuration">http:=
//www.yoctoproject.org/docs/1.7/kernel-dev/kernel-dev.html#changing-the-con=
figuration</a><br></div>is there something there I might be missing? Where =
is the part, &#39;linking your kernels to the core-image-sato build&#39;=C2=
=A0 that you are talking about?<br><br></div>thank you and best regards<br>=
</div>simon:-)<br><div><div><div class=3D"gmail_extra"><br><div class=3D"gm=
ail_quote">On Thu, Jan 8, 2015 at 6:50 PM, nick <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:xerofoify@gmail.com" target=3D"_blank">xerofoify@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Simon,<br>
Why are you not linking your kernels to the core-image-sato build.<br>
This seems to be the issue.<br>
Regards Nick<br>
<span class=3D""><br>
On 2015-01-08 05:59 AM, Simon Bolek wrote:<br>
&gt; Thank you Nick. I will try that, but this is not the point. I am tryin=
g to<br>
&gt; figure out why<br>
</span>&gt; *bitbake core-image-sato *<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt; does not create /dev/ram nodes=
, although linux-yocto has them defiined in<br>
&gt; .config file.<br>
&gt;<br>
&gt; I also created:<br>
&gt; mylayer/recipes-kernel/linux/linux_yocto_3.4.bbapend<br>
&gt; mylayer/recipes-kernel/linux/linux_yocto_3.10.bbapend<br>
&gt; mylayer/recipes-kernel/linux/linux_yocto_3.14.bbapend<br>
&gt;<br>
&gt; with the following content:<br>
&gt;<br>
&gt; FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;<br>
&gt; SRC_URI +=3D &quot;file://ramdisk.cfg&quot;<br>
&gt;<br>
&gt; and<br>
&gt; mylayer/recipes-kernel/linux/files/ramdisk.cfg<br>
&gt;<br>
&gt; with content:<br>
&gt; CONFIG_BLK_DEV_RAM=3Dy<br>
&gt; CONFIG_BLK_DEV_RAM_COUNT=3D16<br>
&gt; CONFIG_BLK_DEV_RAM_SIZE=3D4096<br>
&gt;<br>
&gt; and afterwards run the commands:<br>
&gt; bitbake linux-yocto -c cleansstate<br>
&gt; bitbake linux-yocto<br>
&gt; bitbake core-image-sato<br>
&gt;<br>
&gt; again. Same result, no /dev/ram nodes under rootfs.<br>
&gt;<br>
&gt; What am i doing wrong?<br>
&gt;<br>
&gt; thank you<br>
&gt; simon:-)<br>
&gt;<br>
&gt; On Thu, Jan 8, 2015 at 2:03 AM, nick &lt;<a href=3D"mailto:xerofoify@g=
mail.com">xerofoify@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; Simon,<br>
&gt;&gt; Can you boot this on standard computer with qemu.<br>
&gt;&gt; Try that first and report back if that works.<br>
&gt;&gt; Nick<br>
&gt;&gt;<br>
&gt;&gt; On 2015-01-07 04:59 PM, Simon Bolek wrote:<br>
&gt;&gt;&gt; Hello folks!<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I have the following problem/question.<br>
&gt;&gt;&gt; 1) I built a standard .hddimg core-image-sato genericx86 on ub=
untu 14.10<br>
&gt;&gt;&gt; 2) Afterwards, this .hddimg was deployed to USB device (USB-ZI=
P method)<br>
&gt;&gt;&gt; 3) Tried to boot Atom PC from the USB Device -&gt; *ERROR: cou=
nd not found<br>
&gt;&gt;&gt; ramdisk*<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; so initrd is trying to find /dev/ram0 which does not exist in =
the image.<br>
&gt;&gt; I<br>
&gt;&gt;&gt; checked rootfs and there is nothing under<br>
&gt;&gt;&gt;<br>
&gt;&gt; ../poky/build/tmp/work/genericx86-poky-linux/core-image-sato/1.0-r=
0/rootfs/dev<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I googled this up and there is a thread telling to check the .=
config file<br>
&gt;&gt;&gt; for *CONFIG_BLK_DEV_RAM *settings*.*<br>
&gt;&gt;&gt; I have the following entries in:<br>
&gt;&gt;&gt;<br>
&gt;&gt; ../poky/build/tmp/work/genericx86-poky-linux/linux-yocto/3.10.35+g=
itAUTOINC+7df9ef8ee4_2ee37bfe73-r0/linux-genericx86-standard-build/.config<=
br>
&gt;&gt;&gt; ...<br>
&gt;&gt;&gt; CONFIG_BLK_DEV_RAM=3Dy<br>
&gt;&gt;&gt; CONFIG_BLK_DEV_RAM_COUNT=3D16<br>
&gt;&gt;&gt; CONFIG_BLK_DEV_RAM_SIZE=3D4096<br>
&gt;&gt;&gt; ...<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I also *bitbake core-image-sato -c cleansstate* twice already.=
<br>
&gt;&gt;&gt; I also* bitbake core-image-sato -c menuconfig *once more and<b=
r>
&gt;&gt;&gt; afterwards *bitbake<br>
&gt;&gt;&gt; linux-yocto* again.<br>
&gt;&gt;&gt; I also tried IRC channels, but no answer so far...<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Can anyone help me? How can i force bitbake to create /dev/ram=
0 under<br>
&gt;&gt;&gt; rootfs?<br>
&gt;&gt;&gt; Or maybe there is another trick to boot the image from USB?<br=
>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; best regards<br>
&gt;&gt;&gt; simon:-)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Viele Gr=C3=BCsse<br>
&gt;&gt;&gt; Simon Bolek<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; mit freundlichem Gruss / best regards / pozdrawiam / atentamen=
te<br>
&gt;&gt;&gt; Simon P. Bolek<br>
&gt;&gt;&gt; ------------------------------------------------------<br>
&gt;&gt;&gt; Dipl. Inf. Simon P. Bolek<br>
&gt;&gt;&gt; SAP Consultant<br>
&gt;&gt;&gt; Business Mobile and IVI Solutions<br>
&gt;&gt;&gt; mailto: <a href=3D"mailto:simon.bolek@arcom-ivi.de">simon.bole=
k@arcom-ivi.de</a><br>
&gt;&gt;&gt; <a href=3D"http://www.arcom-ivi.de/" target=3D"_blank">http://=
www.arcom-ivi.de/</a><br>
&gt;&gt;&gt; XING: <a href=3D"https://www.xing.com/profile/SimonP_Bolek" ta=
rget=3D"_blank">https://www.xing.com/profile/SimonP_Bolek</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div></div></div></div>

--f46d04389255eb27e7050c2a4d4d--
