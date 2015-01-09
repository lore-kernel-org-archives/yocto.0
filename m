Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC3B0E0086E; Fri,  9 Jan 2015 01:20:51 -0800 (PST)
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
	*      [74.125.82.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 190F8E004D6
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 01:20:38 -0800 (PST)
Received: by mail-we0-f176.google.com with SMTP id w61so6857832wes.7
	for <yocto@yoctoproject.org>; Fri, 09 Jan 2015 01:20:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Qv+EqDdrfTeKLJaoMgXIfISQVe+HT/Usy+tYASRzhr4=;
	b=Ql6CUGLdgLEH6QXEIny9fFmBTWYupq783knS54f2UXClBXsa830iAE37mjxd/mYFLu
	byKW8qfCI+Ov/XDcXI3XdxnkXRXEwLbOxm4kjnLQjq9VeaLkg1iAcnZRgNgE/cvRTIaR
	+w1sS7PdQdTlZZwR65549up5lMwUc8kpVoZRTfsmjagj7+Xh6u6fUGKvcWxlrAFC/6IG
	wW90klP7aPh32Ox3cTqgUzaAZo+GwQbKPo7OyxkbQowEtQSCPcIyPaKSFEkk4PIPWLjt
	SnpwSxjYElMpsAoKjKkGcXbx+53vqRKQK7eGIrtK+YaNz4T57djssF23g3BW1N4N6bpS
	4IhQ==
X-Received: by 10.180.83.129 with SMTP id q1mr3196901wiy.8.1420795237923; Fri,
	09 Jan 2015 01:20:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.179.137 with HTTP; Fri, 9 Jan 2015 01:20:15 -0800 (PST)
In-Reply-To: <54AF3A37.5070800@gmail.com>
References: <CAEfap_C2-_1MfnZg=CTnP_bdd9tkbJ649UfXjXXmUqgiu+uTtw@mail.gmail.com>
	<54ADD758.90302@gmail.com>
	<CAEfap_D+Okcb20V7Sv+kCEJm8trVx1bWGRemT7AGWGyYy8_T_Q@mail.gmail.com>
	<54AEC351.5050905@gmail.com>
	<CAEfap_A7J95hb=idh6JhzYfx5pY4tWzmDHCMV1f4UexG+LQrDQ@mail.gmail.com>
	<54AF3A37.5070800@gmail.com>
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Fri, 9 Jan 2015 10:20:15 +0100
Message-ID: <CAEfap_B4G7yvW-yrLFxVp__Ov7=XQn3ZuxLTJBq-QyHnrML2Ow@mail.gmail.com>
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
X-List-Received-Date: Fri, 09 Jan 2015 09:20:51 -0000
X-Groupsio-MsgNum: 22882
Content-Type: multipart/mixed; boundary=14dae9cc928c749f38050c34abeb

--14dae9cc928c749f38050c34abeb
Content-Type: multipart/alternative; boundary=14dae9cc928c749f33050c34abe9

--14dae9cc928c749f33050c34abe9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Nick, attached is my kernel .bbappend and .cfg files of linux kernel
recipe of my own layer. In original meta layer nothing was changed.

However, I spent last night trying to resolve the problem and found out
that standard core-sato-image was missing
meta/recipes-core/initrdscripts
I added that to the local.conf file and also added grub to it.
I wonder how 'install' was possible without those scripts, well, never mind=
.
After building .hddimg again i was able to boot and install the image from
USB device to atom-pc. Installation seemed to work without problems BUT
after removing the usb device, boot FAILED: *not bootable device* - I was
crying out loud, belive me!, gave up and went directly to bed...

The same(built and generated at the same bitbake run) iso image is working
in virtual box like a charm.
There must be a difference/bug somewhere.
Vbox is creating partitions on hda, atom-pc has sda. Should not be a
problem, but still a difference.
Could you help me on that? There are 3 Partitions on /dev/sda:
/dev/sda1 - boot partition (no asterix in partition table visible, but no
asterix on Vbox partition table as well)
/dev/sda2 - rootfs
/dev/sda3 - swap

However, I will open another thread for this.

thank you and best regards
simon:-)

On Fri, Jan 9, 2015 at 3:17 AM, nick <xerofoify@gmail.com> wrote:

> Simon,
> Please send me your kernel bb recipes as there is probably an issue in
> them.
> Regards,
> Nick
>
> On 2015-01-08 03:58 PM, Simon Bolek wrote:
> > NIck, thank you. what do you mean by that? I followed the instructions
> from
> > here:
> >
> http://www.yoctoproject.org/docs/1.7/kernel-dev/kernel-dev.html#changing-=
the-configuration
> > is there something there I might be missing? Where is the part, 'linkin=
g
> > your kernels to the core-image-sato build'  that you are talking about?
> >
> > thank you and best regards
> > simon:-)
> >
> > On Thu, Jan 8, 2015 at 6:50 PM, nick <xerofoify@gmail.com> wrote:
> >
> >> Simon,
> >> Why are you not linking your kernels to the core-image-sato build.
> >> This seems to be the issue.
> >> Regards Nick
> >>
> >> On 2015-01-08 05:59 AM, Simon Bolek wrote:
> >>> Thank you Nick. I will try that, but this is not the point. I am tryi=
ng
> >> to
> >>> figure out why
> >>> *bitbake core-image-sato *
> >>> does not create /dev/ram nodes, although linux-yocto has them defiine=
d
> in
> >>> .config file.
> >>>
> >>> I also created:
> >>> mylayer/recipes-kernel/linux/linux_yocto_3.4.bbapend
> >>> mylayer/recipes-kernel/linux/linux_yocto_3.10.bbapend
> >>> mylayer/recipes-kernel/linux/linux_yocto_3.14.bbapend
> >>>
> >>> with the following content:
> >>>
> >>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
> >>> SRC_URI +=3D "file://ramdisk.cfg"
> >>>
> >>> and
> >>> mylayer/recipes-kernel/linux/files/ramdisk.cfg
> >>>
> >>> with content:
> >>> CONFIG_BLK_DEV_RAM=3Dy
> >>> CONFIG_BLK_DEV_RAM_COUNT=3D16
> >>> CONFIG_BLK_DEV_RAM_SIZE=3D4096
> >>>
> >>> and afterwards run the commands:
> >>> bitbake linux-yocto -c cleansstate
> >>> bitbake linux-yocto
> >>> bitbake core-image-sato
> >>>
> >>> again. Same result, no /dev/ram nodes under rootfs.
> >>>
> >>> What am i doing wrong?
> >>>
> >>> thank you
> >>> simon:-)
> >>>
> >>> On Thu, Jan 8, 2015 at 2:03 AM, nick <xerofoify@gmail.com> wrote:
> >>>
> >>>> Simon,
> >>>> Can you boot this on standard computer with qemu.
> >>>> Try that first and report back if that works.
> >>>> Nick
> >>>>
> >>>> On 2015-01-07 04:59 PM, Simon Bolek wrote:
> >>>>> Hello folks!
> >>>>>
> >>>>> I have the following problem/question.
> >>>>> 1) I built a standard .hddimg core-image-sato genericx86 on ubuntu
> >> 14.10
> >>>>> 2) Afterwards, this .hddimg was deployed to USB device (USB-ZIP
> method)
> >>>>> 3) Tried to boot Atom PC from the USB Device -> *ERROR: cound not
> found
> >>>>> ramdisk*
> >>>>>
> >>>>> so initrd is trying to find /dev/ram0 which does not exist in the
> >> image.
> >>>> I
> >>>>> checked rootfs and there is nothing under
> >>>>>
> >>>>
> >>
> ../poky/build/tmp/work/genericx86-poky-linux/core-image-sato/1.0-r0/rootf=
s/dev
> >>>>>
> >>>>> I googled this up and there is a thread telling to check the .confi=
g
> >> file
> >>>>> for *CONFIG_BLK_DEV_RAM *settings*.*
> >>>>> I have the following entries in:
> >>>>>
> >>>>
> >>
> ../poky/build/tmp/work/genericx86-poky-linux/linux-yocto/3.10.35+gitAUTOI=
NC+7df9ef8ee4_2ee37bfe73-r0/linux-genericx86-standard-build/.config
> >>>>> ...
> >>>>> CONFIG_BLK_DEV_RAM=3Dy
> >>>>> CONFIG_BLK_DEV_RAM_COUNT=3D16
> >>>>> CONFIG_BLK_DEV_RAM_SIZE=3D4096
> >>>>> ...
> >>>>>
> >>>>> I also *bitbake core-image-sato -c cleansstate* twice already.
> >>>>> I also* bitbake core-image-sato -c menuconfig *once more and
> >>>>> afterwards *bitbake
> >>>>> linux-yocto* again.
> >>>>> I also tried IRC channels, but no answer so far...
> >>>>>
> >>>>> Can anyone help me? How can i force bitbake to create /dev/ram0 und=
er
> >>>>> rootfs?
> >>>>> Or maybe there is another trick to boot the image from USB?
> >>>>>
> >>>>> best regards
> >>>>> simon:-)
> >>>>>
> >>>>> Viele Gr=C3=BCsse
> >>>>> Simon Bolek
> >>>>>
> >>>>> mit freundlichem Gruss / best regards / pozdrawiam / atentamente
> >>>>> Simon P. Bolek
> >>>>> ------------------------------------------------------
> >>>>> Dipl. Inf. Simon P. Bolek
> >>>>> SAP Consultant
> >>>>> Business Mobile and IVI Solutions
> >>>>> mailto: simon.bolek@arcom-ivi.de
> >>>>> http://www.arcom-ivi.de/
> >>>>> XING: https://www.xing.com/profile/SimonP_Bolek
> >>>>>
> >>>>>
> >>>>>
> >>>>
> >>>
> >>
> >
>

--14dae9cc928c749f33050c34abe9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi Nick, attached is my kernel =
.bbappend and .cfg files of linux kernel recipe of my own layer. In origina=
l meta layer nothing was changed.<br></div><div class=3D"gmail_extra"><br>H=
owever, I spent last night trying to resolve the problem and found out that=
 standard core-sato-image was missing <br>meta/recipes-core/initrdscripts<b=
r></div><div class=3D"gmail_extra">I added that to the local.conf file and =
also added grub to it. <br></div><div class=3D"gmail_extra">I wonder how &#=
39;install&#39; was possible without those scripts, well, never mind.<br>Af=
ter building .hddimg again i was able to boot and install the image from US=
B device to atom-pc. Installation seemed to work without problems BUT after=
 removing the usb device, boot FAILED: <b>not bootable device</b> - I was c=
rying out loud, belive me!, gave up and went directly to bed...<br><br></di=
v><div class=3D"gmail_extra">The same(built and generated at the same bitba=
ke run) iso image is working in virtual box like a charm.<br></div><div cla=
ss=3D"gmail_extra">There must be a difference/bug somewhere. <br></div><div=
 class=3D"gmail_extra">Vbox is creating partitions on hda, atom-pc has sda.=
 Should not be a problem, but still a difference. <br></div><div class=3D"g=
mail_extra">Could you help me on that? There are 3 Partitions on /dev/sda: =
<br></div><div class=3D"gmail_extra">/dev/sda1 - boot partition (no asterix=
 in partition table visible, but no asterix on Vbox partition table as well=
)<br></div><div class=3D"gmail_extra">/dev/sda2 - rootfs<br></div><div clas=
s=3D"gmail_extra">/dev/sda3 - swap<br></div><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra">However, I will open another thread for th=
is.<br></div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra=
">thank you and best regards<br>simon:-)<br><br></div><div class=3D"gmail_e=
xtra"><div class=3D"gmail_quote">On Fri, Jan 9, 2015 at 3:17 AM, nick <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:xerofoify@gmail.com" target=3D"_blank">x=
erofoify@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
Simon,<br>
Please send me your kernel bb recipes as there is probably an issue in<br>
them.<br>
Regards,<br>
Nick<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On 2015-01-08 03:58 PM, Simon Bolek wrote:<br>
&gt; NIck, thank you. what do you mean by that? I followed the instructions=
 from<br>
&gt; here:<br>
&gt; <a href=3D"http://www.yoctoproject.org/docs/1.7/kernel-dev/kernel-dev.=
html#changing-the-configuration" target=3D"_blank">http://www.yoctoproject.=
org/docs/1.7/kernel-dev/kernel-dev.html#changing-the-configuration</a><br>
&gt; is there something there I might be missing? Where is the part, &#39;l=
inking<br>
&gt; your kernels to the core-image-sato build&#39;=C2=A0 that you are talk=
ing about?<br>
&gt;<br>
&gt; thank you and best regards<br>
&gt; simon:-)<br>
&gt;<br>
&gt; On Thu, Jan 8, 2015 at 6:50 PM, nick &lt;<a href=3D"mailto:xerofoify@g=
mail.com">xerofoify@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; Simon,<br>
&gt;&gt; Why are you not linking your kernels to the core-image-sato build.=
<br>
&gt;&gt; This seems to be the issue.<br>
&gt;&gt; Regards Nick<br>
&gt;&gt;<br>
&gt;&gt; On 2015-01-08 05:59 AM, Simon Bolek wrote:<br>
&gt;&gt;&gt; Thank you Nick. I will try that, but this is not the point. I =
am trying<br>
&gt;&gt; to<br>
&gt;&gt;&gt; figure out why<br>
&gt;&gt;&gt; *bitbake core-image-sato *<br>
&gt;&gt;&gt; does not create /dev/ram nodes, although linux-yocto has them =
defiined in<br>
&gt;&gt;&gt; .config file.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I also created:<br>
&gt;&gt;&gt; mylayer/recipes-kernel/linux/linux_yocto_3.4.bbapend<br>
&gt;&gt;&gt; mylayer/recipes-kernel/linux/linux_yocto_3.10.bbapend<br>
&gt;&gt;&gt; mylayer/recipes-kernel/linux/linux_yocto_3.14.bbapend<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; with the following content:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;<br>
&gt;&gt;&gt; SRC_URI +=3D &quot;file://ramdisk.cfg&quot;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; and<br>
&gt;&gt;&gt; mylayer/recipes-kernel/linux/files/ramdisk.cfg<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; with content:<br>
&gt;&gt;&gt; CONFIG_BLK_DEV_RAM=3Dy<br>
&gt;&gt;&gt; CONFIG_BLK_DEV_RAM_COUNT=3D16<br>
&gt;&gt;&gt; CONFIG_BLK_DEV_RAM_SIZE=3D4096<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; and afterwards run the commands:<br>
&gt;&gt;&gt; bitbake linux-yocto -c cleansstate<br>
&gt;&gt;&gt; bitbake linux-yocto<br>
&gt;&gt;&gt; bitbake core-image-sato<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; again. Same result, no /dev/ram nodes under rootfs.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; What am i doing wrong?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; thank you<br>
&gt;&gt;&gt; simon:-)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Thu, Jan 8, 2015 at 2:03 AM, nick &lt;<a href=3D"mailto:xer=
ofoify@gmail.com">xerofoify@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Simon,<br>
&gt;&gt;&gt;&gt; Can you boot this on standard computer with qemu.<br>
&gt;&gt;&gt;&gt; Try that first and report back if that works.<br>
&gt;&gt;&gt;&gt; Nick<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On 2015-01-07 04:59 PM, Simon Bolek wrote:<br>
&gt;&gt;&gt;&gt;&gt; Hello folks!<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; I have the following problem/question.<br>
&gt;&gt;&gt;&gt;&gt; 1) I built a standard .hddimg core-image-sato genericx=
86 on ubuntu<br>
&gt;&gt; 14.10<br>
&gt;&gt;&gt;&gt;&gt; 2) Afterwards, this .hddimg was deployed to USB device=
 (USB-ZIP method)<br>
&gt;&gt;&gt;&gt;&gt; 3) Tried to boot Atom PC from the USB Device -&gt; *ER=
ROR: cound not found<br>
&gt;&gt;&gt;&gt;&gt; ramdisk*<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; so initrd is trying to find /dev/ram0 which does not e=
xist in the<br>
&gt;&gt; image.<br>
&gt;&gt;&gt;&gt; I<br>
&gt;&gt;&gt;&gt;&gt; checked rootfs and there is nothing under<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt; ../poky/build/tmp/work/genericx86-poky-linux/core-image-sato/1.0-r=
0/rootfs/dev<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; I googled this up and there is a thread telling to che=
ck the .config<br>
&gt;&gt; file<br>
&gt;&gt;&gt;&gt;&gt; for *CONFIG_BLK_DEV_RAM *settings*.*<br>
&gt;&gt;&gt;&gt;&gt; I have the following entries in:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt; ../poky/build/tmp/work/genericx86-poky-linux/linux-yocto/3.10.35+g=
itAUTOINC+7df9ef8ee4_2ee37bfe73-r0/linux-genericx86-standard-build/.config<=
br>
&gt;&gt;&gt;&gt;&gt; ...<br>
&gt;&gt;&gt;&gt;&gt; CONFIG_BLK_DEV_RAM=3Dy<br>
&gt;&gt;&gt;&gt;&gt; CONFIG_BLK_DEV_RAM_COUNT=3D16<br>
&gt;&gt;&gt;&gt;&gt; CONFIG_BLK_DEV_RAM_SIZE=3D4096<br>
&gt;&gt;&gt;&gt;&gt; ...<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; I also *bitbake core-image-sato -c cleansstate* twice =
already.<br>
&gt;&gt;&gt;&gt;&gt; I also* bitbake core-image-sato -c menuconfig *once mo=
re and<br>
&gt;&gt;&gt;&gt;&gt; afterwards *bitbake<br>
&gt;&gt;&gt;&gt;&gt; linux-yocto* again.<br>
&gt;&gt;&gt;&gt;&gt; I also tried IRC channels, but no answer so far...<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Can anyone help me? How can i force bitbake to create =
/dev/ram0 under<br>
&gt;&gt;&gt;&gt;&gt; rootfs?<br>
&gt;&gt;&gt;&gt;&gt; Or maybe there is another trick to boot the image from=
 USB?<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; best regards<br>
&gt;&gt;&gt;&gt;&gt; simon:-)<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Viele Gr=C3=BCsse<br>
&gt;&gt;&gt;&gt;&gt; Simon Bolek<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; mit freundlichem Gruss / best regards / pozdrawiam / a=
tentamente<br>
&gt;&gt;&gt;&gt;&gt; Simon P. Bolek<br>
&gt;&gt;&gt;&gt;&gt; ------------------------------------------------------=
<br>
&gt;&gt;&gt;&gt;&gt; Dipl. Inf. Simon P. Bolek<br>
&gt;&gt;&gt;&gt;&gt; SAP Consultant<br>
&gt;&gt;&gt;&gt;&gt; Business Mobile and IVI Solutions<br>
&gt;&gt;&gt;&gt;&gt; mailto: <a href=3D"mailto:simon.bolek@arcom-ivi.de">si=
mon.bolek@arcom-ivi.de</a><br>
&gt;&gt;&gt;&gt;&gt; <a href=3D"http://www.arcom-ivi.de/" target=3D"_blank"=
>http://www.arcom-ivi.de/</a><br>
&gt;&gt;&gt;&gt;&gt; XING: <a href=3D"https://www.xing.com/profile/SimonP_B=
olek" target=3D"_blank">https://www.xing.com/profile/SimonP_Bolek</a><br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div></div>

--14dae9cc928c749f33050c34abe9--

--14dae9cc928c749f38050c34abeb
Content-Type: application/octet-stream; name="linux-yocto_3.4.bbappend"
Content-Disposition: attachment; filename="linux-yocto_3.4.bbappend"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_i4pcaf240

IyBFeGFtcGxlIHVzZSBvZiBjb25maWd1cmF0aW9uIGZyYWdtZW50cyBmb3IgYnVzeWJveCwgd2hp
Y2ggdXNlcyB0aGUgc2FtZQojIG1lY2hhbmlzbSBhcyB0aGUgbGludXgteW9jdG8ga2VybmVsIHJl
Y2lwZS4KIwojIFRoZSBlbnRyaWVzIGhlcmUgd2lsbCBvdmVycmlkZSBhbnkgZW50cmllcyBpbiB0
aGUgYmFzZSBidXN5Ym94IHJlY2lwZQojCiMgTW9yZSBkZXRhaWxzIGNhbiBiZSBmb3VuZCBpbiB0
aGUgS2VybmVsIERldiBNYW51YWwKIyBodHRwOi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvZG9jcy9j
dXJyZW50L2tlcm5lbC1kZXYva2VybmVsLWRldi5odG1sI2NoYW5naW5nLXRoZS1jb25maWd1cmF0
aW9uCgpGSUxFU0VYVFJBUEFUSFNfcHJlcGVuZCA6PSAiJHtUSElTRElSfS9maWxlczoiClNSQ19V
UkkgKz0gImZpbGU6Ly9yYW1kaXNrLmNmZyIK

--14dae9cc928c749f38050c34abeb
Content-Type: application/octet-stream; name="ramdisk.cfg"
Content-Disposition: attachment; filename="ramdisk.cfg"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_i4pcaiq61

Q09ORklHX0JMS19ERVZfUkFNPXkKQ09ORklHX0JMS19ERVZfUkFNX0NPVU5UPTE2CkNPTkZJR19C
TEtfREVWX1JBTV9TSVpFPTQwOTYK

--14dae9cc928c749f38050c34abeb--
