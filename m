Return-Path: <vidal.develone@gmail.com>
Received: from mail-qc0-f180.google.com (mail-qc0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CB53E017D5
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 16:08:45 -0700 (PDT)
Received: by mail-qc0-f180.google.com with SMTP id e9so2047202qcy.25
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 16:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=jZZ/UaeV84dDUI6K/yIr9ZnboZv63AQCR+jLfaMulok=;
	b=wljFzP1Qmei0yKqlx6ZE2QOCmbfqB5oEVzIkNo43Ykd5gc7+rFHqGPOYByjeOlxfpo
	0F5vOjZYFBNyc4I4svXhwsKsN+I77LdGSYooF+baUr/1ikrBGWUpc+C4GNMLOKgb8+Mo
	+TKhMhClBFc1DnDljysyoeYsYSEW+dVZbIpQZKUoJDuNqOvub7+e97NbQLJWVz3J4LLu
	txJ092mo4nf2R3D5D/Wmtat1juEly656O27h+yaQbNoyiDT9RgI2pkUvcEFwCc7TS3vx
	8YeXOvT/RuvjsCbVIi5VWRrNO/1Hjnk/0i4RlrU7yjCmWM1zGV7dlhEdSxJ5xslg0vpw
	/Y4g==
MIME-Version: 1.0
X-Received: by 10.49.62.167 with SMTP id z7mr181051qer.67.1383260924558; Thu,
	31 Oct 2013 16:08:44 -0700 (PDT)
Received: by 10.96.26.37 with HTTP; Thu, 31 Oct 2013 16:08:44 -0700 (PDT)
In-Reply-To: <CAMKF1sqz5jgt68wQutE4u8=jUqqQGwm7P7rRUpiSM=9t0VFe9g@mail.gmail.com>
References: <CANwz6nxT34jJGydYGe=snHHijwMdMOKdOgnxQWCp0KGkBN4OHw@mail.gmail.com>
	<CAMKF1spw=Kr99nmVHjAw8PELK6E768RBpgxLCZFMcdMyConSEg@mail.gmail.com>
	<CANwz6nyYTVxmNfxK2kK0Z54uDw+Yq=RRTzmpXvJz19MDCB47MA@mail.gmail.com>
	<CAMKF1spP+BYrodrAoWzO=ZCfDqhpN=1-BnmDMr80-_f+pupdtQ@mail.gmail.com>
	<CANwz6nzjixVwB1Q=nJ6JCQCJOw-uJe7edmC4gn+FVZ9mK8_-6A@mail.gmail.com>
	<CAMKF1srnJLpErc_xjcQOXRTsjM38EaZ8jqHMKpUveumGj1x1XA@mail.gmail.com>
	<CANwz6nyiOxvNPtfY5Csx+Y4f7ZaBX1sMWvUHEqyaO0URipwyKQ@mail.gmail.com>
	<CAMKF1sqz5jgt68wQutE4u8=jUqqQGwm7P7rRUpiSM=9t0VFe9g@mail.gmail.com>
Date: Thu, 31 Oct 2013 17:08:44 -0600
Message-ID: <CANwz6nwHiS2Fk_w5CmNy_63W7QPvS_LY-HCd=xG1S_sbBrmazg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: adding a udev entry for a camera
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
X-List-Received-Date: Thu, 31 Oct 2013 23:08:46 -0000
Content-Type: multipart/alternative; boundary=047d7bdc0e3e0a458704ea118836

--047d7bdc0e3e0a458704ea118836
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I had just recently built angstrom a few days ago.  I tried the kernel that
was built with 3.2.28 with the same results still not getting a /dev/video0.
I did the following steps since angstrom uses meta-beagleboard, in hopes of
getting a kernel 3.8 version.

git commit -a
git checkout -b wkg-angstrom-v2013.06-yocto1.4
origin/angstrom-v2013.06-yocto1.4
./oebb.sh config beagleboard
./oebb.sh update

 . .oe/environment-angstrom-v2013.06
MACHINE=beagleboard bitbake console-image
rm -rf build/tmp-angstrom_v2012_12-eglibc/

Even with meta-beagleboard at
commit cdaa65dba20da97be7793404bcc90c498771fb04
Author: Koen Kooi <koen@dominion.thruhere.net>
Date:   Wed Oct 30 18:31:21 2013 +0100

    contrib: bone-flash-tool: use --numeric-owner with tar to keep file
ownershi

    Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
Which is a dylan branch it still was building a 3.2.28 kernel

git checkout -b 3.8 feb3ea180018d0f
commit feb3ea180018d0f64f406f208827413b91122b07
Author: Koen Kooi <koen@dominion.thruhere.net>
Date:   Sun Oct 27 17:17:06 2013 +0100

    linux-mainline 3.8: ADC and MIDI cape patches

    Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
It still tries to build a 3.2.28 kernel.
What should I do to force it to build the 3.8 kernel?

Any and all help will be appreciated.
Thanks to all


On Thu, Oct 31, 2013 at 11:08 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Thu, Oct 31, 2013 at 9:54 AM, Edward Vidal <vidal.develone@gmail.com>
> wrote:
> > hello,
> > I removed the bus
> > udevadm test --action=add /usr/src/kernel/sysfs
> >
> > run_command: calling: test
> > adm_test: version 182
> > This program is for debugging only, it does not run any program,
> > specified by a RUN key. It may show incorrect results, because
> > some values may be different, or not available at a simulation run.
> >
> > builtin_kmod_init: load module index
> > add_matching_files: unable to open '/var/run/udev/rules.d': No such file
> or
> > directory
> > parse_file: reading '/etc/udev/rules.d/10-c920.rules' as rules file
> > still no /dev/video0
> >
> > cat /etc/udev/rules.d/10-c920.rules
> > SUBSYSTEM=="video4linux",  ATTRS{idvendor}=="0x046d",
> > ATTRS{idProduct}=="0x082d", NAME="video0", MODE:="0660", RUN="/bin/mknod
> > /dev/video0 c 81 0"
> > still no /dev/video0
> > The camera is working correctly on my fedora 18 x86_64.
>
> OK so atleast your rules file is correct syntax wise. Why not try the
> 3.8 kernel from meta-beagleboard ?
>
> >
> > Note:
> > * Before camera connected
> > ** After camera connected
> > Linux sim4.swbell.net 3.9.2-200.fc18.x86_64 #1 SMP Mon May 13 13:59:47
> UTC
> > 2013 x86_64 x86_64 x86_64 GNU/Linux
> >
> > Module                  Size  Used by
> > **snd_usb_audio         145223  1
> > **snd_usbmidi_lib        24713  1 snd_usb_audio
> > **snd_rawmidi            29531  1 snd_usbmidi_lib
> >
> > *snd_hwdep              17650  1 snd_hda_codec
> > **snd_hwdep              17650  2 snd_usb_audio,snd_hda_codec
> >
> > *snd_seq_device         14136  1 snd_seq
> > **snd_seq_device         14136  2 snd_seq,snd_rawmidi
> >
> > *snd                    79379  19
> >
> snd_hda_codec_realtek,snd_hwdep,snd_timer,snd_hda_codec_hdmi,snd_pcm,snd_seq,snd_hda_codec,snd_hda_intel,snd_seq_device
> > **snd                    79379  24
> >
> snd_hda_codec_realtek,snd_usb_audio,snd_hwdep,snd_timer,snd_hda_codec_hdmi,snd_pcm,snd_seq,snd_rawmidi,snd_usbmidi_lib,snd_hda_codec,snd_hda_intel,snd_seq_device
> >
> > *video                  18991  0
> > **video                  18991  0
> >
> > This is the beagleboard
> >  lsmod
> > Module                  Size  Used by
> > nls_iso8859_1           3673  1
> > nls_cp437               5339  1
> > I am going to be checking the video is a module or built into the kernel
> of
> > the
> >  uname -a
> > Linux beagleboard 3.4.36-yocto-standard #1 Mon Oct 28 21:58:22 MDT 2013
> > armv7l GNU/Linux
> >
> > Thanks
> >
> >
> > On Thu, Oct 31, 2013 at 10:23 AM, Khem Raj <raj.khem@gmail.com> wrote:
> >>
> >> On Thu, Oct 31, 2013 at 8:45 AM, Edward Vidal <vidal.develone@gmail.com
> >
> >> wrote:
> >> >
> >> > Do I add RUN+="/bin/mknod /dev/video0 c 81 0" see below new version of
> >> > 1--c920.rules
> >> > cat 10-c920.rules
> >> > SUBSYSTEM=="video4linux", BUS=="usb", ATTRS{idvendor}=="0x046d",
> >> > ATTRS{idProduct}=="0x082d", NAME="video0", MODE:="0660",
> >> > RUN+="/bin/mknod
> >> > /dev/video0 c 81 0"
> >>
> >> get rid of BUS construct there
> >
> >
>

--047d7bdc0e3e0a458704ea118836
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hello,<br></div>I had just r=
ecently built angstrom a few days ago.=A0 I tried the kernel that was built=
 with 3.2.28 with the same results still not getting a /dev/video0.<br>I di=
d the following steps since angstrom uses meta-beagleboard, in hopes of get=
ting a kernel 3.8 version.<br>
<br>git commit -a<br>git checkout -b wkg-angstrom-v2013.06-yocto1.4 origin/=
angstrom-v2013.06-yocto1.4<br>./oebb.sh config beagleboard<br>./oebb.sh upd=
ate<br><br>=A0. .oe/environment-angstrom-v2013.06<br>MACHINE=3Dbeagleboard =
bitbake console-image<br>
rm -rf build/tmp-angstrom_v2012_12-eglibc/ <br><br></div>Even with meta-bea=
gleboard at <br>commit cdaa65dba20da97be7793404bcc90c498771fb04<br>Author: =
Koen Kooi &lt;<a href=3D"mailto:koen@dominion.thruhere.net">koen@dominion.t=
hruhere.net</a>&gt;<br>
Date:=A0=A0 Wed Oct 30 18:31:21 2013 +0100<br><br>=A0=A0=A0 contrib: bone-f=
lash-tool: use --numeric-owner with tar to keep file ownershi<br>=A0=A0=A0 =
<br>=A0=A0=A0 Signed-off-by: Koen Kooi &lt;<a href=3D"mailto:koen@dominion.=
thruhere.net">koen@dominion.thruhere.net</a>&gt;<br>
</div>Which is a dylan branch it still was building a 3.2.28 kernel<br><br>=
git checkout -b 3.8 feb3ea180018d0f<br>commit feb3ea180018d0f64f406f2088274=
13b91122b07<br>Author: Koen Kooi &lt;<a href=3D"mailto:koen@dominion.thruhe=
re.net">koen@dominion.thruhere.net</a>&gt;<br>
Date:=A0=A0 Sun Oct 27 17:17:06 2013 +0100<br><br>=A0=A0=A0 linux-mainline =
3.8: ADC and MIDI cape patches<br>=A0=A0=A0 <br>=A0=A0=A0 Signed-off-by: Ko=
en Kooi &lt;<a href=3D"mailto:koen@dominion.thruhere.net">koen@dominion.thr=
uhere.net</a>&gt;<br>
</div>It still tries to build a 3.2.28 kernel.<br></div><div>What should I =
do to force it to build the 3.8 kernel?<br><br></div>Any and all help will =
be appreciated.<br></div>Thanks to all<br></div><div class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Thu, Oct 31, 2013 at 11:08 AM, Khem R=
aj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_b=
lank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">
<div class=3D"im">On Thu, Oct 31, 2013 at 9:54 AM, Edward Vidal &lt;<a href=
=3D"mailto:vidal.develone@gmail.com">vidal.develone@gmail.com</a>&gt; wrote=
:<br>
&gt; hello,<br>
&gt; I removed the bus<br>
&gt; udevadm test --action=3Dadd /usr/src/kernel/sysfs<br>
&gt;<br>
&gt; run_command: calling: test<br>
&gt; adm_test: version 182<br>
&gt; This program is for debugging only, it does not run any program,<br>
&gt; specified by a RUN key. It may show incorrect results, because<br>
&gt; some values may be different, or not available at a simulation run.<br=
>
&gt;<br>
&gt; builtin_kmod_init: load module index<br>
&gt; add_matching_files: unable to open &#39;/var/run/udev/rules.d&#39;: No=
 such file or<br>
&gt; directory<br>
&gt; parse_file: reading &#39;/etc/udev/rules.d/10-c920.rules&#39; as rules=
 file<br>
&gt; still no /dev/video0<br>
&gt;<br>
&gt; cat /etc/udev/rules.d/10-c920.rules<br>
&gt; SUBSYSTEM=3D=3D&quot;video4linux&quot;, =A0ATTRS{idvendor}=3D=3D&quot;=
0x046d&quot;,<br>
&gt; ATTRS{idProduct}=3D=3D&quot;0x082d&quot;, NAME=3D&quot;video0&quot;, M=
ODE:=3D&quot;0660&quot;, RUN=3D&quot;/bin/mknod<br>
&gt; /dev/video0 c 81 0&quot;<br>
&gt; still no /dev/video0<br>
&gt; The camera is working correctly on my fedora 18 x86_64.<br>
<br>
</div>OK so atleast your rules file is correct syntax wise. Why not try the=
<br>
3.8 kernel from meta-beagleboard ?<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Note:<br>
&gt; * Before camera connected<br>
&gt; ** After camera connected<br>
&gt; Linux <a href=3D"http://sim4.swbell.net" target=3D"_blank">sim4.swbell=
.net</a> 3.9.2-200.fc18.x86_64 #1 SMP Mon May 13 13:59:47 UTC<br>
&gt; 2013 x86_64 x86_64 x86_64 GNU/Linux<br>
&gt;<br>
&gt; Module =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Size =A0Used by<br>
&gt; **snd_usb_audio =A0 =A0 =A0 =A0 145223 =A01<br>
&gt; **snd_usbmidi_lib =A0 =A0 =A0 =A024713 =A01 snd_usb_audio<br>
&gt; **snd_rawmidi =A0 =A0 =A0 =A0 =A0 =A029531 =A01 snd_usbmidi_lib<br>
&gt;<br>
&gt; *snd_hwdep =A0 =A0 =A0 =A0 =A0 =A0 =A017650 =A01 snd_hda_codec<br>
&gt; **snd_hwdep =A0 =A0 =A0 =A0 =A0 =A0 =A017650 =A02 snd_usb_audio,snd_hd=
a_codec<br>
&gt;<br>
&gt; *snd_seq_device =A0 =A0 =A0 =A0 14136 =A01 snd_seq<br>
&gt; **snd_seq_device =A0 =A0 =A0 =A0 14136 =A02 snd_seq,snd_rawmidi<br>
&gt;<br>
&gt; *snd =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A079379 =A019<br>
&gt; snd_hda_codec_realtek,snd_hwdep,snd_timer,snd_hda_codec_hdmi,snd_pcm,s=
nd_seq,snd_hda_codec,snd_hda_intel,snd_seq_device<br>
&gt; **snd =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A079379 =A024<br>
&gt; snd_hda_codec_realtek,snd_usb_audio,snd_hwdep,snd_timer,snd_hda_codec_=
hdmi,snd_pcm,snd_seq,snd_rawmidi,snd_usbmidi_lib,snd_hda_codec,snd_hda_inte=
l,snd_seq_device<br>
&gt;<br>
&gt; *video =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A018991 =A00<br>
&gt; **video =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A018991 =A00<br>
&gt;<br>
&gt; This is the beagleboard<br>
&gt; =A0lsmod<br>
&gt; Module =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Size =A0Used by<br>
&gt; nls_iso8859_1 =A0 =A0 =A0 =A0 =A0 3673 =A01<br>
&gt; nls_cp437 =A0 =A0 =A0 =A0 =A0 =A0 =A0 5339 =A01<br>
&gt; I am going to be checking the video is a module or built into the kern=
el of<br>
&gt; the<br>
&gt; =A0uname -a<br>
&gt; Linux beagleboard 3.4.36-yocto-standard #1 Mon Oct 28 21:58:22 MDT 201=
3<br>
&gt; armv7l GNU/Linux<br>
&gt;<br>
&gt; Thanks<br>
&gt;<br>
&gt;<br>
&gt; On Thu, Oct 31, 2013 at 10:23 AM, Khem Raj &lt;<a href=3D"mailto:raj.k=
hem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Oct 31, 2013 at 8:45 AM, Edward Vidal &lt;<a href=3D"mailt=
o:vidal.develone@gmail.com">vidal.develone@gmail.com</a>&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Do I add RUN+=3D&quot;/bin/mknod /dev/video0 c 81 0&quot; see=
 below new version of<br>
&gt;&gt; &gt; 1--c920.rules<br>
&gt;&gt; &gt; cat 10-c920.rules<br>
&gt;&gt; &gt; SUBSYSTEM=3D=3D&quot;video4linux&quot;, BUS=3D=3D&quot;usb&qu=
ot;, ATTRS{idvendor}=3D=3D&quot;0x046d&quot;,<br>
&gt;&gt; &gt; ATTRS{idProduct}=3D=3D&quot;0x082d&quot;, NAME=3D&quot;video0=
&quot;, MODE:=3D&quot;0660&quot;,<br>
&gt;&gt; &gt; RUN+=3D&quot;/bin/mknod<br>
&gt;&gt; &gt; /dev/video0 c 81 0&quot;<br>
&gt;&gt;<br>
&gt;&gt; get rid of BUS construct there<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--047d7bdc0e3e0a458704ea118836--
