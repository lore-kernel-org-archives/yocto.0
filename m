Return-Path: <vidal.develone@gmail.com>
Received: from mail-qc0-f169.google.com (mail-qc0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DB3FE017D3
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 09:54:55 -0700 (PDT)
Received: by mail-qc0-f169.google.com with SMTP id x12so1837206qcv.28
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 09:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=4BmxAxp0qgEa6axx1UH4TsDv31xxIOoAGnlk/pP8HpE=;
	b=TTE4pGRZpXmRbxtBkT+CTkwjdqgZPWV3JTuzdOXTv8HRIHpiBlTTcmY1MNfcaE1AnS
	CjWENgPWq4m2qLAubNWdbqZOxMaTcs6dIVsvhEVi6hg66XFxI2V0dnhTywkrq01l6KM2
	J4IWL5z5OsOwD1WuKAlGP5LO08nKlmZKL//1YkvHJCrRxznG/0X+/So09Rbnvyp5RHJT
	N2L1oDNh/RMDgPjCCWbZZMIKb3H6D7yW589Sh1nPC/UsRGBKpZvUNqPC6+l0ssuurzbE
	CNlLseW6MP7HOnkydG8D6QgR5xD0uwJUnyb8rzPIoQGOyeuxXvM8Xp9CEaRuA4tVdOpB
	zGaw==
MIME-Version: 1.0
X-Received: by 10.229.13.69 with SMTP id b5mr5554035qca.13.1383238494606; Thu,
	31 Oct 2013 09:54:54 -0700 (PDT)
Received: by 10.96.26.37 with HTTP; Thu, 31 Oct 2013 09:54:54 -0700 (PDT)
In-Reply-To: <CAMKF1srnJLpErc_xjcQOXRTsjM38EaZ8jqHMKpUveumGj1x1XA@mail.gmail.com>
References: <CANwz6nxT34jJGydYGe=snHHijwMdMOKdOgnxQWCp0KGkBN4OHw@mail.gmail.com>
	<CAMKF1spw=Kr99nmVHjAw8PELK6E768RBpgxLCZFMcdMyConSEg@mail.gmail.com>
	<CANwz6nyYTVxmNfxK2kK0Z54uDw+Yq=RRTzmpXvJz19MDCB47MA@mail.gmail.com>
	<CAMKF1spP+BYrodrAoWzO=ZCfDqhpN=1-BnmDMr80-_f+pupdtQ@mail.gmail.com>
	<CANwz6nzjixVwB1Q=nJ6JCQCJOw-uJe7edmC4gn+FVZ9mK8_-6A@mail.gmail.com>
	<CAMKF1srnJLpErc_xjcQOXRTsjM38EaZ8jqHMKpUveumGj1x1XA@mail.gmail.com>
Date: Thu, 31 Oct 2013 10:54:54 -0600
Message-ID: <CANwz6nyiOxvNPtfY5Csx+Y4f7ZaBX1sMWvUHEqyaO0URipwyKQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 31 Oct 2013 16:54:56 -0000
Content-Type: multipart/alternative; boundary=001a113315621c63db04ea0c4f06

--001a113315621c63db04ea0c4f06
Content-Type: text/plain; charset=ISO-8859-1

hello,
I removed the bus
udevadm test --action=add /usr/src/kernel/sysfs
run_command: calling: test
adm_test: version 182
This program is for debugging only, it does not run any program,
specified by a RUN key. It may show incorrect results, because
some values may be different, or not available at a simulation run.

builtin_kmod_init: load module index
add_matching_files: unable to open '/var/run/udev/rules.d': No such file or
directory
parse_file: reading '/etc/udev/rules.d/10-c920.rules' as rules file
still no /dev/video0

cat /etc/udev/rules.d/10-c920.rules
SUBSYSTEM=="video4linux",  ATTRS{idvendor}=="0x046d",
ATTRS{idProduct}=="0x082d", NAME="video0", MODE:="0660", RUN="/bin/mknod
/dev/video0 c 81 0"
still no /dev/video0
The camera is working correctly on my fedora 18 x86_64.

Note:
* Before camera connected
** After camera connected
Linux sim4.swbell.net 3.9.2-200.fc18.x86_64 #1 SMP Mon May 13 13:59:47 UTC
2013 x86_64 x86_64 x86_64 GNU/Linux

Module                  Size  Used by
**snd_usb_audio         145223  1
**snd_usbmidi_lib        24713  1 snd_usb_audio
**snd_rawmidi            29531  1 snd_usbmidi_lib

*snd_hwdep              17650  1 snd_hda_codec
**snd_hwdep              17650  2 snd_usb_audio,snd_hda_codec

*snd_seq_device         14136  1 snd_seq
**snd_seq_device         14136  2 snd_seq,snd_rawmidi

*snd                    79379  19
snd_hda_codec_realtek,snd_hwdep,snd_timer,snd_hda_codec_hdmi,snd_pcm,snd_seq,snd_hda_codec,snd_hda_intel,snd_seq_device
**snd                    79379  24
snd_hda_codec_realtek,snd_usb_audio,snd_hwdep,snd_timer,snd_hda_codec_hdmi,snd_pcm,snd_seq,snd_rawmidi,snd_usbmidi_lib,snd_hda_codec,snd_hda_intel,snd_seq_device

*video                  18991  0
**video                  18991  0

This is the beagleboard
 lsmod
Module                  Size  Used by
nls_iso8859_1           3673  1
nls_cp437               5339  1
I am going to be checking the video is a module or built into the kernel of
the
 uname -a
Linux beagleboard 3.4.36-yocto-standard #1 Mon Oct 28 21:58:22 MDT 2013
armv7l GNU/Linux

Thanks


On Thu, Oct 31, 2013 at 10:23 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Thu, Oct 31, 2013 at 8:45 AM, Edward Vidal <vidal.develone@gmail.com>
> wrote:
> >
> > Do I add RUN+="/bin/mknod /dev/video0 c 81 0" see below new version of
> > 1--c920.rules
> > cat 10-c920.rules
> > SUBSYSTEM=="video4linux", BUS=="usb", ATTRS{idvendor}=="0x046d",
> > ATTRS{idProduct}=="0x082d", NAME="video0", MODE:="0660", RUN+="/bin/mknod
> > /dev/video0 c 81 0"
>
> get rid of BUS construct there
>

--001a113315621c63db04ea0c4f06
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>hello,<br></div>I removed the bus <br>=
udevadm test --action=3Dadd /usr/src/kernel/sysfs<br>run_command: calling: =
test<br>adm_test: version 182<br>This program is for debugging only, it doe=
s not run any program,<br>
specified by a RUN key. It may show incorrect results, because<br>some valu=
es may be different, or not available at a simulation run.<br><br>builtin_k=
mod_init: load module index<br>add_matching_files: unable to open &#39;/var=
/run/udev/rules.d&#39;: No such file or directory<br>
parse_file: reading &#39;/etc/udev/rules.d/10-c920.rules&#39; as rules file=
<br></div>still no /dev/video0<br><br>cat /etc/udev/rules.d/10-c920.rules <=
br>SUBSYSTEM=3D=3D&quot;video4linux&quot;,=A0 ATTRS{idvendor}=3D=3D&quot;0x=
046d&quot;, ATTRS{idProduct}=3D=3D&quot;0x082d&quot;, NAME=3D&quot;video0&q=
uot;, MODE:=3D&quot;0660&quot;, RUN=3D&quot;/bin/mknod /dev/video0 c 81 0&q=
uot;<br>
</div>still no /dev/video0<br>The camera is working correctly on my fedora =
18 x86_64.<br><br>Note:<br>* Before camera connected<br>** After camera con=
nected <br>Linux <a href=3D"http://sim4.swbell.net">sim4.swbell.net</a> 3.9=
.2-200.fc18.x86_64 #1 SMP Mon May 13 13:59:47 UTC 2013 x86_64 x86_64 x86_64=
 GNU/Linux<br>
<br>Module=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Size=A0 Used =
by<br>**snd_usb_audio=A0=A0=A0=A0=A0=A0=A0=A0 145223=A0 1<br>**snd_usbmidi_=
lib=A0=A0=A0=A0=A0=A0=A0 24713=A0 1 snd_usb_audio<br>**snd_rawmidi=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 29531=A0 1 snd_usbmidi_lib<br><br>*snd_hwdep=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 17650=A0 1 snd_hda_codec<br>
**snd_hwdep=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 17650=A0 2 snd_usb_audio=
,snd_hda_codec<br><br>*snd_seq_device=A0=A0=A0=A0=A0=A0=A0=A0 14136=A0 1 sn=
d_seq<br>**snd_seq_device=A0=A0=A0=A0=A0=A0=A0=A0 14136=A0 2 snd_seq,snd_ra=
wmidi<br><br>*snd=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
79379=A0 19 snd_hda_codec_realtek,snd_hwdep,snd_timer,snd_hda_codec_hdmi,sn=
d_pcm,snd_seq,snd_hda_codec,snd_hda_intel,snd_seq_device<br>
**snd=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 79379=A0 24 =
snd_hda_codec_realtek,snd_usb_audio,snd_hwdep,snd_timer,snd_hda_codec_hdmi,=
snd_pcm,snd_seq,snd_rawmidi,snd_usbmidi_lib,snd_hda_codec,snd_hda_intel,snd=
_seq_device<br><br>*video=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 18991=A0 0<br>
**video=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 18991=A0 0<br></=
div><br>This is the beagleboard <br>=A0lsmod<br>Module=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Size=A0 Used by<br>nls_iso8859_1=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 3673=A0 1 <br>nls_cp437=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 5339=A0 1 <br>I am going to be checking the video is a module or =
built into the kernel of the <br>
=A0uname -a<br>Linux beagleboard 3.4.36-yocto-standard #1 Mon Oct 28 21:58:=
22 MDT 2013 armv7l GNU/Linux<br><br>Thanks<br></div><div class=3D"gmail_ext=
ra"><br><br><div class=3D"gmail_quote">On Thu, Oct 31, 2013 at 10:23 AM, Kh=
em Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Thu, Oct 31, 2013 at 8:=
45 AM, Edward Vidal &lt;<a href=3D"mailto:vidal.develone@gmail.com">vidal.d=
evelone@gmail.com</a>&gt; wrote:<br>

&gt;<br>
&gt; Do I add RUN+=3D&quot;/bin/mknod /dev/video0 c 81 0&quot; see below ne=
w version of<br>
&gt; 1--c920.rules<br>
&gt; cat 10-c920.rules<br>
&gt; SUBSYSTEM=3D=3D&quot;video4linux&quot;, BUS=3D=3D&quot;usb&quot;, ATTR=
S{idvendor}=3D=3D&quot;0x046d&quot;,<br>
&gt; ATTRS{idProduct}=3D=3D&quot;0x082d&quot;, NAME=3D&quot;video0&quot;, M=
ODE:=3D&quot;0660&quot;, RUN+=3D&quot;/bin/mknod<br>
&gt; /dev/video0 c 81 0&quot;<br>
<br>
</div>get rid of BUS construct there<br>
</blockquote></div><br></div>

--001a113315621c63db04ea0c4f06--
