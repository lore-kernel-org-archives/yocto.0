Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1A82E008FB; Thu,  8 Jan 2015 03:00:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (simon.bolek[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.180 listed in list.dnswl.org]
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35501E008E5
	for <yocto@yoctoproject.org>; Thu,  8 Jan 2015 03:00:14 -0800 (PST)
Received: by mail-wi0-f180.google.com with SMTP id n3so2442568wiv.1
	for <yocto@yoctoproject.org>; Thu, 08 Jan 2015 03:00:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=R1g5UQaSVhK7kl7yVODxcvPVCB6SBiv5qgBrTlZKqjo=;
	b=Hev4gCP/jzQk0I70Y9/XGWiFhNvFRyep/Bvgbu2XS+hf32htyJGoy0wlbEuUqirexy
	v0n2KwqmA6Jw/DpLxaOuht4ZuAoUa/gEffwEX8uYzjqu0waUyZc1AD6bJY9SCFdbmm2u
	Z5bu7pIC0m4hupWvZcHXZCYfsPS5dGI/mGk8fCRBHzN1rk49psK0swHuyaok7AktmkNh
	0QzUvL7w7+9B2/6SgPllY91V7dlSxNooIU3e5zCJ2skLKWeFQtNxSrKef1G03VdIr/wt
	Apel8lXfp/x8m8+gAIjPHkVi3WNTVuHqSOaD7RZD3lQFCCe4jWK4Sz/+uW07gQNVyDcD
	Uq0A==
X-Received: by 10.194.62.19 with SMTP id u19mr18577591wjr.0.1420714812783;
	Thu, 08 Jan 2015 03:00:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.179.137 with HTTP; Thu, 8 Jan 2015 02:59:52 -0800 (PST)
In-Reply-To: <54ADD758.90302@gmail.com>
References: <CAEfap_C2-_1MfnZg=CTnP_bdd9tkbJ649UfXjXXmUqgiu+uTtw@mail.gmail.com>
	<54ADD758.90302@gmail.com>
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Thu, 8 Jan 2015 11:59:52 +0100
Message-ID: <CAEfap_D+Okcb20V7Sv+kCEJm8trVx1bWGRemT7AGWGyYy8_T_Q@mail.gmail.com>
To: nick <xerofoify@gmail.com>, yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 08 Jan 2015 11:00:18 -0000
Content-Type: multipart/alternative; boundary=047d7ba97cd4be4575050c21f1f1

--047d7ba97cd4be4575050c21f1f1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you Nick. I will try that, but this is not the point. I am trying to
figure out why
*bitbake core-image-sato *
does not create /dev/ram nodes, although linux-yocto has them defiined in
.config file.

I also created:
mylayer/recipes-kernel/linux/linux_yocto_3.4.bbapend
mylayer/recipes-kernel/linux/linux_yocto_3.10.bbapend
mylayer/recipes-kernel/linux/linux_yocto_3.14.bbapend

with the following content:

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
SRC_URI +=3D "file://ramdisk.cfg"

and
mylayer/recipes-kernel/linux/files/ramdisk.cfg

with content:
CONFIG_BLK_DEV_RAM=3Dy
CONFIG_BLK_DEV_RAM_COUNT=3D16
CONFIG_BLK_DEV_RAM_SIZE=3D4096

and afterwards run the commands:
bitbake linux-yocto -c cleansstate
bitbake linux-yocto
bitbake core-image-sato

again. Same result, no /dev/ram nodes under rootfs.

What am i doing wrong?

thank you
simon:-)

On Thu, Jan 8, 2015 at 2:03 AM, nick <xerofoify@gmail.com> wrote:

> Simon,
> Can you boot this on standard computer with qemu.
> Try that first and report back if that works.
> Nick
>
> On 2015-01-07 04:59 PM, Simon Bolek wrote:
> > Hello folks!
> >
> > I have the following problem/question.
> > 1) I built a standard .hddimg core-image-sato genericx86 on ubuntu 14.1=
0
> > 2) Afterwards, this .hddimg was deployed to USB device (USB-ZIP method)
> > 3) Tried to boot Atom PC from the USB Device -> *ERROR: cound not found
> > ramdisk*
> >
> > so initrd is trying to find /dev/ram0 which does not exist in the image=
.
> I
> > checked rootfs and there is nothing under
> >
> ../poky/build/tmp/work/genericx86-poky-linux/core-image-sato/1.0-r0/rootf=
s/dev
> >
> > I googled this up and there is a thread telling to check the .config fi=
le
> > for *CONFIG_BLK_DEV_RAM *settings*.*
> > I have the following entries in:
> >
> ../poky/build/tmp/work/genericx86-poky-linux/linux-yocto/3.10.35+gitAUTOI=
NC+7df9ef8ee4_2ee37bfe73-r0/linux-genericx86-standard-build/.config
> > ...
> > CONFIG_BLK_DEV_RAM=3Dy
> > CONFIG_BLK_DEV_RAM_COUNT=3D16
> > CONFIG_BLK_DEV_RAM_SIZE=3D4096
> > ...
> >
> > I also *bitbake core-image-sato -c cleansstate* twice already.
> > I also* bitbake core-image-sato -c menuconfig *once more and
> > afterwards *bitbake
> > linux-yocto* again.
> > I also tried IRC channels, but no answer so far...
> >
> > Can anyone help me? How can i force bitbake to create /dev/ram0 under
> > rootfs?
> > Or maybe there is another trick to boot the image from USB?
> >
> > best regards
> > simon:-)
> >
> > Viele Gr=C3=BCsse
> > Simon Bolek
> >
> > mit freundlichem Gruss / best regards / pozdrawiam / atentamente
> > Simon P. Bolek
> > ------------------------------------------------------
> > Dipl. Inf. Simon P. Bolek
> > SAP Consultant
> > Business Mobile and IVI Solutions
> > mailto: simon.bolek@arcom-ivi.de
> > http://www.arcom-ivi.de/
> > XING: https://www.xing.com/profile/SimonP_Bolek
> >
> >
> >
>

--047d7ba97cd4be4575050c21f1f1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Thank you Nick. I will try that=
, but this is not the point. I am trying to figure out why <br><i>bitbake c=
ore-image-sato </i><br>does not create /dev/ram nodes, although linux-yocto=
 has them defiined in .config file.<br></div><div class=3D"gmail_extra"><br=
></div><div class=3D"gmail_extra">I also created:<br>mylayer/recipes-kernel=
/linux/linux_yocto_3.4.bbapend<br>mylayer/recipes-kernel/linux/linux_yocto_=
3.10.bbapend<br>mylayer/recipes-kernel/linux/linux_yocto_3.14.bbapend<br><b=
r>with the following content:<br><br>FILESEXTRAPATHS_prepend :=3D &quot;${T=
HISDIR}/files:&quot;<br>SRC_URI +=3D &quot;file://ramdisk.cfg&quot;<br><br>=
and<br>mylayer/recipes-kernel/linux/files/ramdisk.cfg<br><br></div><div cla=
ss=3D"gmail_extra">with content:<br>CONFIG_BLK_DEV_RAM=3Dy<br>CONFIG_BLK_DE=
V_RAM_COUNT=3D16<br>CONFIG_BLK_DEV_RAM_SIZE=3D4096<br></div><div class=3D"g=
mail_extra"><br>and afterwards run the commands:<br></div><div class=3D"gma=
il_extra">bitbake linux-yocto -c cleansstate<br></div><div class=3D"gmail_e=
xtra">bitbake linux-yocto<br></div><div class=3D"gmail_extra">bitbake core-=
image-sato<br></div><div class=3D"gmail_extra"><br>again. Same result, no /=
dev/ram nodes under rootfs.<br></div><div class=3D"gmail_extra"><br>What am=
 i doing wrong?<br></div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">thank you <br>simon:-)<br></div><div class=3D"gmail_extra"><b=
r></div><div class=3D"gmail_extra"><div class=3D"gmail_quote">On Thu, Jan 8=
, 2015 at 2:03 AM, nick <span dir=3D"ltr">&lt;<a href=3D"mailto:xerofoify@g=
mail.com" target=3D"_blank">xerofoify@gmail.com</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">Simon,<br>
Can you boot this on standard computer with qemu.<br>
Try that first and report back if that works.<br>
Nick<br>
<span class=3D""><br>
On 2015-01-07 04:59 PM, Simon Bolek wrote:<br>
&gt; Hello folks!<br>
&gt;<br>
&gt; I have the following problem/question.<br>
&gt; 1) I built a standard .hddimg core-image-sato genericx86 on ubuntu 14.=
10<br>
&gt; 2) Afterwards, this .hddimg was deployed to USB device (USB-ZIP method=
)<br>
</span>&gt; 3) Tried to boot Atom PC from the USB Device -&gt; *ERROR: coun=
d not found<br>
&gt; ramdisk*<br>
<span class=3D"">&gt;<br>
&gt; so initrd is trying to find /dev/ram0 which does not exist in the imag=
e. I<br>
&gt; checked rootfs and there is nothing under<br>
&gt; ../poky/build/tmp/work/genericx86-poky-linux/core-image-sato/1.0-r0/ro=
otfs/dev<br>
&gt;<br>
&gt; I googled this up and there is a thread telling to check the .config f=
ile<br>
</span>&gt; for *CONFIG_BLK_DEV_RAM *settings*.*<br>
<span class=3D"">&gt; I have the following entries in:<br>
&gt; ../poky/build/tmp/work/genericx86-poky-linux/linux-yocto/3.10.35+gitAU=
TOINC+7df9ef8ee4_2ee37bfe73-r0/linux-genericx86-standard-build/.config<br>
&gt; ...<br>
&gt; CONFIG_BLK_DEV_RAM=3Dy<br>
&gt; CONFIG_BLK_DEV_RAM_COUNT=3D16<br>
&gt; CONFIG_BLK_DEV_RAM_SIZE=3D4096<br>
&gt; ...<br>
&gt;<br>
</span>&gt; I also *bitbake core-image-sato -c cleansstate* twice already.<=
br>
&gt; I also* bitbake core-image-sato -c menuconfig *once more and<br>
&gt; afterwards *bitbake<br>
&gt; linux-yocto* again.<br>
<div class=3D""><div class=3D"h5">&gt; I also tried IRC channels, but no an=
swer so far...<br>
&gt;<br>
&gt; Can anyone help me? How can i force bitbake to create /dev/ram0 under<=
br>
&gt; rootfs?<br>
&gt; Or maybe there is another trick to boot the image from USB?<br>
&gt;<br>
&gt; best regards<br>
&gt; simon:-)<br>
&gt;<br>
&gt; Viele Gr=C3=BCsse<br>
&gt; Simon Bolek<br>
&gt;<br>
&gt; mit freundlichem Gruss / best regards / pozdrawiam / atentamente<br>
&gt; Simon P. Bolek<br>
&gt; ------------------------------------------------------<br>
&gt; Dipl. Inf. Simon P. Bolek<br>
&gt; SAP Consultant<br>
&gt; Business Mobile and IVI Solutions<br>
&gt; mailto: <a href=3D"mailto:simon.bolek@arcom-ivi.de">simon.bolek@arcom-=
ivi.de</a><br>
&gt; <a href=3D"http://www.arcom-ivi.de/" target=3D"_blank">http://www.arco=
m-ivi.de/</a><br>
&gt; XING: <a href=3D"https://www.xing.com/profile/SimonP_Bolek" target=3D"=
_blank">https://www.xing.com/profile/SimonP_Bolek</a><br>
&gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div></div>

--047d7ba97cd4be4575050c21f1f1--
