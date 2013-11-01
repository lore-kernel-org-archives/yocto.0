Return-Path: <vidal.develone@gmail.com>
Received: from mail-qe0-f43.google.com (mail-qe0-f43.google.com
	[209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4F39E016D7
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 16:40:15 -0700 (PDT)
Received: by mail-qe0-f43.google.com with SMTP id nc12so2998335qeb.30
	for <yocto@yoctoproject.org>; Fri, 01 Nov 2013 16:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Rsw3XHqHT1gwDI60sEi3UfJ2iM/OfmqrfcM4/tBYPDw=;
	b=L/eEFhTMbkQJxadsy3z+Jf8Gb2TIWp7qHzoM1jPznSfEtpo2gddTXt60SwmOJKps4x
	gViYFjC/I76/MyCsfpiifaHBFTnjNBZ6+zz8SnVKdTUphq1T5Bps6FYEh6l7zwuN9tQ1
	Dp6g9nKjE8Xz9dsn929+6v4Fvr8Y/RCrhvkIPVWEWGAWDXTX9pSWtXkNG75kMpYWw7Sj
	n6wG1UZynsCK7Vsm30RLx//opsnGFGKUgym7MMiH5Lkaz1D6dQmPw80CXi6JQDRFYgW3
	OP5vZLQcNvuKDDqNyyMbgl9jKAD/IifThC87hO9zyLNN7HONvbwYNTkplDb9HarAXkcu
	r5VQ==
MIME-Version: 1.0
X-Received: by 10.49.5.231 with SMTP id v7mr7203767qev.58.1383349215044; Fri,
	01 Nov 2013 16:40:15 -0700 (PDT)
Received: by 10.140.37.81 with HTTP; Fri, 1 Nov 2013 16:40:14 -0700 (PDT)
In-Reply-To: <CAMCfZKGYOVG-hwJwj4Wf_6mfxM9U4=_51eMDxD2yw-h=neuGcQ@mail.gmail.com>
References: <CANwz6nxT34jJGydYGe=snHHijwMdMOKdOgnxQWCp0KGkBN4OHw@mail.gmail.com>
	<CAMKF1spw=Kr99nmVHjAw8PELK6E768RBpgxLCZFMcdMyConSEg@mail.gmail.com>
	<CANwz6nyYTVxmNfxK2kK0Z54uDw+Yq=RRTzmpXvJz19MDCB47MA@mail.gmail.com>
	<CAMKF1spP+BYrodrAoWzO=ZCfDqhpN=1-BnmDMr80-_f+pupdtQ@mail.gmail.com>
	<CANwz6nzjixVwB1Q=nJ6JCQCJOw-uJe7edmC4gn+FVZ9mK8_-6A@mail.gmail.com>
	<CAMKF1srnJLpErc_xjcQOXRTsjM38EaZ8jqHMKpUveumGj1x1XA@mail.gmail.com>
	<CANwz6nyiOxvNPtfY5Csx+Y4f7ZaBX1sMWvUHEqyaO0URipwyKQ@mail.gmail.com>
	<CAMKF1sqz5jgt68wQutE4u8=jUqqQGwm7P7rRUpiSM=9t0VFe9g@mail.gmail.com>
	<CANwz6nwHiS2Fk_w5CmNy_63W7QPvS_LY-HCd=xG1S_sbBrmazg@mail.gmail.com>
	<CAMCfZKGYOVG-hwJwj4Wf_6mfxM9U4=_51eMDxD2yw-h=neuGcQ@mail.gmail.com>
Date: Fri, 1 Nov 2013 17:40:14 -0600
Message-ID: <CANwz6nxdVQRyG=mdzHmp=2Lf+K70C1Ox2EmEbNaOG_TyihUs6w@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
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
X-List-Received-Date: Fri, 01 Nov 2013 23:40:17 -0000
X-Groupsio-MsgNum: 16900
Content-Type: multipart/mixed; boundary=047d7bdc9c5290427304ea2616e2

--047d7bdc9c5290427304ea2616e2
Content-Type: multipart/alternative; boundary=047d7bdc9c5290426f04ea2616e0

--047d7bdc9c5290426f04ea2616e0
Content-Type: text/plain; charset=ISO-8859-1

Hello All,
Some progress getting the zImage to boot which was another problem before
not getting /dev/video0.
for the camera.

I have been trying to get 3.10.11 from dora to boot.
This kinda of works the following is in my uEnv.txt.
vram=16M
mpurate=1000
mmcboot=echo Booting from mmc ...; run mmcargs;mmc rescan ; fatload mmc 0:1
0x80300000 zImage; bootz 0x80300000
This will now boot with the command run mmcboot

These are the files on my  /run/media/vidal/BOOT
3.2.28  3.4.43  MLO  u-boot.img  uEnv.txt  zImage.

With 3.2.28 and 3.4.43 I was just switching uImage,.u-boot.bin & MLO worked
okay with either kernel.
With 3.10.11 I needed to replace uImage with zImage and MLO and u-boot.img
This kernel is not working as well as 3.4.36 no lsusb
root@beagleboard:~# lsusb --verbose
unable to initialize libusb: -99
No /dev/video0.
see attached.
My next steps will be using the rootfs that was built with dora and 3.10.11
kernel,
I will be adding the zImage-omap3-beagle-xm.dtb that was introduce with my
dora.
The attached file has the boot and dmesg.

Any any all help will be welcomed..
Have a great weekend



On Thu, Oct 31, 2013 at 5:27 PM, Diego Sueiro <diego.sueiro@gmail.com>wrote:

> Edward,
>
> Is uvcvideo module loaded?
> What is lsmod and dmesg output when webcam is connected?
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/
>
>
> 2013/10/31 Edward Vidal <vidal.develone@gmail.com>
>
>> Hello,
>> I had just recently built angstrom a few days ago.  I tried the kernel
>> that was built with 3.2.28 with the same results still not getting a
>> /dev/video0.
>> I did the following steps since angstrom uses meta-beagleboard, in hopes
>> of getting a kernel 3.8 version.
>>
>> git commit -a
>> git checkout -b wkg-angstrom-v2013.06-yocto1.4
>> origin/angstrom-v2013.06-yocto1.4
>> ./oebb.sh config beagleboard
>> ./oebb.sh update
>>
>>  . .oe/environment-angstrom-v2013.06
>> MACHINE=beagleboard bitbake console-image
>> rm -rf build/tmp-angstrom_v2012_12-eglibc/
>>
>> Even with meta-beagleboard at
>> commit cdaa65dba20da97be7793404bcc90c498771fb04
>> Author: Koen Kooi <koen@dominion.thruhere.net>
>> Date:   Wed Oct 30 18:31:21 2013 +0100
>>
>>     contrib: bone-flash-tool: use --numeric-owner with tar to keep file
>> ownershi
>>
>>     Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
>> Which is a dylan branch it still was building a 3.2.28 kernel
>>
>> git checkout -b 3.8 feb3ea180018d0f
>> commit feb3ea180018d0f64f406f208827413b91122b07
>> Author: Koen Kooi <koen@dominion.thruhere.net>
>> Date:   Sun Oct 27 17:17:06 2013 +0100
>>
>>     linux-mainline 3.8: ADC and MIDI cape patches
>>
>>     Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
>> It still tries to build a 3.2.28 kernel.
>> What should I do to force it to build the 3.8 kernel?
>>
>> Any and all help will be appreciated.
>> Thanks to all
>>
>>
>> On Thu, Oct 31, 2013 at 11:08 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>>> On Thu, Oct 31, 2013 at 9:54 AM, Edward Vidal <vidal.develone@gmail.com>
>>> wrote:
>>> > hello,
>>> > I removed the bus
>>> > udevadm test --action=add /usr/src/kernel/sysfs
>>> >
>>> > run_command: calling: test
>>> > adm_test: version 182
>>> > This program is for debugging only, it does not run any program,
>>> > specified by a RUN key. It may show incorrect results, because
>>> > some values may be different, or not available at a simulation run.
>>> >
>>> > builtin_kmod_init: load module index
>>> > add_matching_files: unable to open '/var/run/udev/rules.d': No such
>>> file or
>>> > directory
>>> > parse_file: reading '/etc/udev/rules.d/10-c920.rules' as rules file
>>> > still no /dev/video0
>>> >
>>> > cat /etc/udev/rules.d/10-c920.rules
>>> > SUBSYSTEM=="video4linux",  ATTRS{idvendor}=="0x046d",
>>> > ATTRS{idProduct}=="0x082d", NAME="video0", MODE:="0660",
>>> RUN="/bin/mknod
>>> > /dev/video0 c 81 0"
>>> > still no /dev/video0
>>> > The camera is working correctly on my fedora 18 x86_64.
>>>
>>> OK so atleast your rules file is correct syntax wise. Why not try the
>>> 3.8 kernel from meta-beagleboard ?
>>>
>>> >
>>> > Note:
>>> > * Before camera connected
>>> > ** After camera connected
>>> > Linux sim4.swbell.net 3.9.2-200.fc18.x86_64 #1 SMP Mon May 13
>>> 13:59:47 UTC
>>> > 2013 x86_64 x86_64 x86_64 GNU/Linux
>>> >
>>> > Module                  Size  Used by
>>> > **snd_usb_audio         145223  1
>>> > **snd_usbmidi_lib        24713  1 snd_usb_audio
>>> > **snd_rawmidi            29531  1 snd_usbmidi_lib
>>> >
>>> > *snd_hwdep              17650  1 snd_hda_codec
>>> > **snd_hwdep              17650  2 snd_usb_audio,snd_hda_codec
>>> >
>>> > *snd_seq_device         14136  1 snd_seq
>>> > **snd_seq_device         14136  2 snd_seq,snd_rawmidi
>>> >
>>> > *snd                    79379  19
>>> >
>>> snd_hda_codec_realtek,snd_hwdep,snd_timer,snd_hda_codec_hdmi,snd_pcm,snd_seq,snd_hda_codec,snd_hda_intel,snd_seq_device
>>> > **snd                    79379  24
>>> >
>>> snd_hda_codec_realtek,snd_usb_audio,snd_hwdep,snd_timer,snd_hda_codec_hdmi,snd_pcm,snd_seq,snd_rawmidi,snd_usbmidi_lib,snd_hda_codec,snd_hda_intel,snd_seq_device
>>> >
>>> > *video                  18991  0
>>> > **video                  18991  0
>>> >
>>> > This is the beagleboard
>>> >  lsmod
>>> > Module                  Size  Used by
>>> > nls_iso8859_1           3673  1
>>> > nls_cp437               5339  1
>>> > I am going to be checking the video is a module or built into the
>>> kernel of
>>> > the
>>> >  uname -a
>>> > Linux beagleboard 3.4.36-yocto-standard #1 Mon Oct 28 21:58:22 MDT 2013
>>> > armv7l GNU/Linux
>>> >
>>> > Thanks
>>> >
>>> >
>>> > On Thu, Oct 31, 2013 at 10:23 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>> >>
>>> >> On Thu, Oct 31, 2013 at 8:45 AM, Edward Vidal <
>>> vidal.develone@gmail.com>
>>> >> wrote:
>>> >> >
>>> >> > Do I add RUN+="/bin/mknod /dev/video0 c 81 0" see below new version
>>> of
>>> >> > 1--c920.rules
>>> >> > cat 10-c920.rules
>>> >> > SUBSYSTEM=="video4linux", BUS=="usb", ATTRS{idvendor}=="0x046d",
>>> >> > ATTRS{idProduct}=="0x082d", NAME="video0", MODE:="0660",
>>> >> > RUN+="/bin/mknod
>>> >> > /dev/video0 c 81 0"
>>> >>
>>> >> get rid of BUS construct there
>>> >
>>> >
>>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--047d7bdc9c5290426f04ea2616e0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div>Hello All,<br=
></div><div>Some progress getting the zImage to boot which was another prob=
lem before not getting /dev/video0.<br></div><div>for the camera.<br><br></=
div>
I have been trying to get 3.10.11 from dora to boot.<br>This kinda of works=
 the following is in my uEnv.txt.<br>vram=3D16M<br>mpurate=3D1000<br>mmcboo=
t=3Decho Booting from mmc ...; run mmcargs;mmc rescan ; fatload mmc 0:1 0x8=
0300000 zImage; bootz 0x80300000<br>
</div>This will now boot with the command run mmcboot<br><br>These are the =
files on my=A0 /run/media/vidal/BOOT<br>3.2.28=A0 3.4.43=A0 MLO=A0 u-boot.i=
mg=A0 uEnv.txt=A0 zImage.<br><br></div><div>With 3.2.28 and 3.4.43 I was ju=
st switching uImage,.u-boot.bin &amp; MLO worked okay with either kernel.<b=
r>
</div><div>With 3.10.11 I needed to replace uImage with zImage and MLO and =
u-boot.img <br></div>This kernel is not working as well as 3.4.36 no lsusb<=
br>root@beagleboard:~# lsusb --verbose<br>unable to initialize libusb: -99<=
br>
</div>No /dev/video0.<br></div>see attached.<br></div>My next steps will be=
 using the rootfs that was built with dora and 3.10.11 kernel,<br></div>I w=
ill be adding the zImage-omap3-beagle-xm.dtb that was introduce with my dor=
a.<br>
</div>The attached file has the boot and dmesg.<br><br>Any any all help wil=
l be welcomed..<br></div>Have a great weekend<br><div><div><div><div><div><=
div><div><br></div></div></div></div></div></div></div></div><div class=3D"=
gmail_extra">
<br><br><div class=3D"gmail_quote">On Thu, Oct 31, 2013 at 5:27 PM, Diego S=
ueiro <span dir=3D"ltr">&lt;<a href=3D"mailto:diego.sueiro@gmail.com" targe=
t=3D"_blank">diego.sueiro@gmail.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">
<div dir=3D"ltr">Edward,<div><br></div><div>Is uvcvideo module loaded?</div=
><div>What is lsmod and dmesg output when webcam is connected?</div><div cl=
ass=3D"gmail_extra"><br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,</=
div>


<div><br></div>--<br>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n rol=
l*/<br></div></div>
<br><br><div class=3D"gmail_quote">2013/10/31 Edward Vidal <span dir=3D"ltr=
">&lt;<a href=3D"mailto:vidal.develone@gmail.com" target=3D"_blank">vidal.d=
evelone@gmail.com</a>&gt;</span><br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div><div class=3D"h5">

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
Koen Kooi &lt;<a href=3D"mailto:koen@dominion.thruhere.net" target=3D"_blan=
k">koen@dominion.thruhere.net</a>&gt;<br>



Date:=A0=A0 Wed Oct 30 18:31:21 2013 +0100<br><br>=A0=A0=A0 contrib: bone-f=
lash-tool: use --numeric-owner with tar to keep file ownershi<br>=A0=A0=A0 =
<br>=A0=A0=A0 Signed-off-by: Koen Kooi &lt;<a href=3D"mailto:koen@dominion.=
thruhere.net" target=3D"_blank">koen@dominion.thruhere.net</a>&gt;<br>



</div>Which is a dylan branch it still was building a 3.2.28 kernel<br><br>=
git checkout -b 3.8 feb3ea180018d0f<br>commit feb3ea180018d0f64f406f2088274=
13b91122b07<br>Author: Koen Kooi &lt;<a href=3D"mailto:koen@dominion.thruhe=
re.net" target=3D"_blank">koen@dominion.thruhere.net</a>&gt;<br>



Date:=A0=A0 Sun Oct 27 17:17:06 2013 +0100<br><br>=A0=A0=A0 linux-mainline =
3.8: ADC and MIDI cape patches<br>=A0=A0=A0 <br>=A0=A0=A0 Signed-off-by: Ko=
en Kooi &lt;<a href=3D"mailto:koen@dominion.thruhere.net" target=3D"_blank"=
>koen@dominion.thruhere.net</a>&gt;<br>



</div>It still tries to build a 3.2.28 kernel.<br></div><div>What should I =
do to force it to build the 3.8 kernel?<br><br></div><div>Any and all help =
will be appreciated.<br></div></div>Thanks to all<br></div>

<div><div><div class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Thu, Oct 31, 2013 at 11:08 AM, Khem R=
aj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_b=
lank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">



<div>On Thu, Oct 31, 2013 at 9:54 AM, Edward Vidal &lt;<a href=3D"mailto:vi=
dal.develone@gmail.com" target=3D"_blank">vidal.develone@gmail.com</a>&gt; =
wrote:<br>
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
<div><div><br>
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
hem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Oct 31, 2013 at 8:45 AM, Edward Vidal &lt;<a href=3D"mailt=
o:vidal.develone@gmail.com" target=3D"_blank">vidal.develone@gmail.com</a>&=
gt;<br>
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
</div></div><br></div></div><div class=3D"im">_____________________________=
__________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></div></blockquote></div><br></div></div>
</blockquote></div><br></div>

--047d7bdc9c5290426f04ea2616e0--

--047d7bdc9c5290427304ea2616e2
Content-Type: text/plain; charset=US-ASCII; name="capture.txt"
Content-Disposition: attachment; filename="capture.txt"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hni1wggt0

KiAtICogUW9kZW0gMC4xLjIgQ2FwdHVyZSBHZW5lcmF0ZWQgRnJpLCAwMSBOb3YgMjAxMyAxNzox
NDoyOSAtMDYwMCBCRUdJTiAqIC0gKgoKClUtQm9vdCBTUEwgMjAxMy4wNyAoT2N0IDMxIDIwMTMg
LSAyMzoyNTo1NSkKT01BUCBTRC9NTUM6IDAKcmVhZGluZyB1LWJvb3QuaW1nCnJlYWRpbmcgdS1i
b290LmltZwoKClUtQm9vdCAyMDEzLjA3IChPY3QgMzEgMjAxMyAtIDIzOjI1OjU1KQoKT01BUDM2
MzAvMzczMC1HUCBFUzEuMiwgQ1BVLU9QUDIsIEwzLTE2NU1IeiwgTWF4IENQVSBDbG9jayAxIEdo
egpPTUFQMyBCZWFnbGUgYm9hcmQgKyBMUEREUi9OQU5ECkkyQzogICByZWFkeQpEUkFNOiAgNTEy
IE1pQgpOQU5EOiAgMCBNaUIKTU1DOiAgIE9NQVAgU0QvTU1DOiAwCioqKiBXYXJuaW5nIC0gcmVh
ZGVudigpIGZhaWxlZCwgdXNpbmcgZGVmYXVsdCBlbnZpcm9ubWVudAoKSW46ICAgIHNlcmlhbApP
dXQ6ICAgc2VyaWFsCkVycjogICBzZXJpYWwKQmVhZ2xlIHhNIFJldiBDCk5vIEVFUFJPTSBvbiBl
eHBhbnNpb24gYm9hcmQKRGllIElEICM0ZmU4MDAwMjlmZjgwMDAwMDE2MDcxNjQwZTAxZDAwNgpt
dXNiLWhkcmM6IENvbmZpZ0RhdGE9MHhkZSAoVVRNSS04LCBkeW4gRklGT3MsIGJ1bGsgY29tYmlu
ZSwgYnVsayBzcGxpdCwgSEItSVNPIApSeCwgSEItSVNPIFR4LCBTb2Z0Q29ubikKbXVzYi1oZHJj
OiBNSERSQyBSVEwgdmVyc2lvbiAxLjgwMCAKbXVzYi1oZHJjOiBzZXR1cCBmaWZvX21vZGUgNApt
dXNiLWhkcmM6IDI4LzMxIG1heCBlcCwgMTYzODQvMTYzODQgbWVtb3J5ClVTQiBQZXJpcGhlcmFs
IG1vZGUgY29udHJvbGxlciBhdCA0ODBhYjAwMCB1c2luZyBQSU8sIElSUSAwCk5ldDogICB1c2Jf
ZXRoZXIKSGl0IGFueSBrZXkgdG8gc3RvcCBhdXRvYm9vdDogIDMgIDIgIDEgIDAgCm1tYzAgaXMg
Y3VycmVudCBkZXZpY2UKZ3BpbzogcGluIDE3MyAoZ3BpbyAxNzMpIHZhbHVlIGlzIDAKZ3Bpbzog
cGluIDQgKGdwaW8gNCkgdmFsdWUgaXMgMApTRC9NTUMgZm91bmQgb24gZGV2aWNlIDAKcmVhZGlu
ZyB1RW52LnR4dAoxMzUgYnl0ZXMgcmVhZCBpbiA0IG1zICgzMi4yIEtpQi9zKQpMb2FkZWQgZW52
aXJvbm1lbnQgZnJvbSB1RW52LnR4dApJbXBvcnRpbmcgZW52aXJvbm1lbnQgZnJvbSBtbWMgLi4u
CioqIEZpbGUgbm90IGZvdW5kIC9ib290L3VJbWFnZSAqKgpCb290aW5nIGZyb20gbmFuZCAuLi4K
Cm5vIGRldmljZXMgYXZhaWxhYmxlCldyb25nIEltYWdlIEZvcm1hdCBmb3IgYm9vdG0gY29tbWFu
ZApFUlJPUjogY2FuJ3QgZ2V0IGtlcm5lbCBpbWFnZSEKT01BUDMgYmVhZ2xlYm9hcmQub3JnICMg
cnVuIG1tY2Jvb3QKQm9vdGluZyBmcm9tIG1tYyAuLi4KcmVhZGluZyB6SW1hZ2UKNDY0Mjc3NiBi
eXRlcyByZWFkIGluIDI4OCBtcyAoMTUuNCBNaUIvcykKS2VybmVsIGltYWdlIEAgMHg4MDMwMDAw
MCBbIDB4MDAwMDAwIC0gMHg0NmQ3ZDggXQoKU3RhcnRpbmcga2VybmVsIC4uLgoKQm9vdGluZyBM
aW51eCBvbiBwaHlzaWNhbCBDUFUgMHgwCkluaXRpYWxpemluZyBjZ3JvdXAgc3Vic3lzIGNwdXNl
dApJbml0aWFsaXppbmcgY2dyb3VwIHN1YnN5cyBjcHUKSW5pdGlhbGl6aW5nIGNncm91cCBzdWJz
eXMgY3B1YWNjdApMaW51eCB2ZXJzaW9uIDMuMTAuMTEteW9jdG8tc3RhbmRhcmQgKHZpZGFsQHdz
MDA5LnN3YmVsbC5uZXQpIChnY2MgdmVyc2lvbiA0LjguMQogKEdDQykgKSAjMSBUaHUgT2N0IDMx
IDIyOjA3OjI2IE1EVCAyMDEzCkNQVTogQVJNdjcgUHJvY2Vzc29yIFs0MTNmYzA4Ml0gcmV2aXNp
b24gMiAoQVJNdjcpLCBjcj0xMGM1M2M3ZApDUFU6IFBJUFQgLyBWSVBUIG5vbmFsaWFzaW5nIGRh
dGEgY2FjaGUsIFZJUFQgYWxpYXNpbmcgaW5zdHJ1Y3Rpb24gY2FjaGUKTWFjaGluZTogT01BUDMg
QmVhZ2xlIEJvYXJkCk1lbW9yeSBwb2xpY3k6IEVDQyBkaXNhYmxlZCwgRGF0YSBjYWNoZSB3cml0
ZWJhY2sKQ1BVOiBBbGwgQ1BVKHMpIHN0YXJ0ZWQgaW4gU1ZDIG1vZGUuCk9NQVAzNjMwIEVTMS4y
IChsMmNhY2hlIGl2YSBzZ3ggbmVvbiBpc3AgMTkybWh6X2NsayApCkJ1aWx0IDEgem9uZWxpc3Rz
IGluIFpvbmUgb3JkZXIsIG1vYmlsaXR5IGdyb3VwaW5nIG9uLiAgVG90YWwgcGFnZXM6IDEyOTc5
MgpLZXJuZWwgY29tbWFuZCBsaW5lOiBjb25zb2xlPXR0eU8yLDExNTIwMG44IG1wdXJhdGU9MTAw
MCBidWRkeT1ub25lIGNhbWVyYT1ub25lIAp2cmFtPTE2TSBvbWFwZmIubW9kZT1kdmk6NjQweDQ4
ME1SLTE2QDYwIG9tYXBkc3MuZGVmX2Rpc3A9ZHZpIHJvb3Q9L2Rldi9tbWNibGswcAoyIHJ3IHJv
b3Rmc3R5cGU9ZXh0MyByb290d2FpdApQSUQgaGFzaCB0YWJsZSBlbnRyaWVzOiAyMDQ4IChvcmRl
cjogMSwgODE5MiBieXRlcykKRGVudHJ5IGNhY2hlIGhhc2ggdGFibGUgZW50cmllczogNjU1MzYg
KG9yZGVyOiA2LCAyNjIxNDQgYnl0ZXMpCklub2RlLWNhY2hlIGhhc2ggdGFibGUgZW50cmllczog
MzI3NjggKG9yZGVyOiA1LCAxMzEwNzIgYnl0ZXMpCmFsbG9jYXRlZCAxMDQ4NTc2IGJ5dGVzIG9m
IHBhZ2VfY2dyb3VwCnBsZWFzZSB0cnkgJ2Nncm91cF9kaXNhYmxlPW1lbW9yeScgb3B0aW9uIGlm
IHlvdSBkb24ndCB3YW50IG1lbW9yeSBjZ3JvdXBzCk1lbW9yeTogNTExTUIgPSA1MTFNQiB0b3Rh
bApNZW1vcnk6IDUwNjc5NmsvNTA2Nzk2ayBhdmFpbGFibGUsIDE3NDkyayByZXNlcnZlZCwgMEsg
aGlnaG1lbQpWaXJ0dWFsIGtlcm5lbCBtZW1vcnkgbGF5b3V0OgogICAgdmVjdG9yICA6IDB4ZmZm
ZjAwMDAgLSAweGZmZmYxMDAwICAgKCAgIDQga0IpCiAgICBmaXhtYXAgIDogMHhmZmYwMDAwMCAt
IDB4ZmZmZTAwMDAgICAoIDg5NiBrQikKICAgIHZtYWxsb2MgOiAweGUwODAwMDAwIC0gMHhmZjAw
MDAwMCAgICggNDg4IE1CKQogICAgbG93bWVtICA6IDB4YzAwMDAwMDAgLSAweGUwMDAwMDAwICAg
KCA1MTIgTUIpCiAgICBwa21hcCAgIDogMHhiZmUwMDAwMCAtIDB4YzAwMDAwMDAgICAoICAgMiBN
QikKICAgIG1vZHVsZXMgOiAweGJmMDAwMDAwIC0gMHhiZmUwMDAwMCAgICggIDE0IE1CKQogICAg
ICAudGV4dCA6IDB4YzAwMDgwMDAgLSAweGMwOGQxODgwICAgKDg5OTkga0IpCiAgICAgIC5pbml0
IDogMHhjMDhkMjAwMCAtIDB4YzA5NTQyYjQgICAoIDUyMSBrQikKICAgICAgLmRhdGEgOiAweGMw
OTU2MDAwIC0gMHhjMDllYWZhMCAgICggNTk2IGtCKQogICAgICAgLmJzcyA6IDB4YzA5ZWFmYTAg
LSAweGMwYWE0MzYwICAgKCA3NDEga0IpClNMVUI6IEhXYWxpZ249NjQsIE9yZGVyPTAtMywgTWlu
T2JqZWN0cz0wLCBDUFVzPTEsIE5vZGVzPTEKTlJfSVJRUzoxNiBucl9pcnFzOjE2IDE2CklSUTog
Rm91bmQgYW4gSU5UQyBhdCAweGZhMjAwMDAwIChyZXZpc2lvbiA0LjApIHdpdGggOTYgaW50ZXJy
dXB0cwpUb3RhbCBvZiA5NiBpbnRlcnJ1cHRzIG9uIDEgYWN0aXZlIGNvbnRyb2xsZXIKQ2xvY2tp
bmcgcmF0ZSAoQ3J5c3RhbC9Db3JlL01QVSk6IDI2LjAvNDAwLzYwMCBNSHoKT01BUCBjbG9ja2V2
ZW50IHNvdXJjZTogdGltZXIxMiBhdCAzMjc2OCBIegpzY2hlZF9jbG9jazogMzIgYml0cyBhdCAz
MmtIeiwgcmVzb2x1dGlvbiAzMDUxN25zLCB3cmFwcyBldmVyeSAxMzEwNzE5OTltcwpPTUFQIGNs
b2Nrc291cmNlOiAzMmtfY291bnRlciBhdCAzMjc2OCBIegpDb25zb2xlOiBjb2xvdXIgZHVtbXkg
ZGV2aWNlIDgweDMwCkNhbGlicmF0aW5nIGRlbGF5IGxvb3AuLi4gMzI5LjMxIEJvZ29NSVBTIChs
cGo9MTY0NjU5MikKcGlkX21heDogZGVmYXVsdDogMzI3NjggbWluaW11bTogMzAxClNlY3VyaXR5
IEZyYW1ld29yayBpbml0aWFsaXplZApNb3VudC1jYWNoZSBoYXNoIHRhYmxlIGVudHJpZXM6IDUx
MgpJbml0aWFsaXppbmcgY2dyb3VwIHN1YnN5cyBkZWJ1ZwpJbml0aWFsaXppbmcgY2dyb3VwIHN1
YnN5cyBtZW1vcnkKSW5pdGlhbGl6aW5nIGNncm91cCBzdWJzeXMgZGV2aWNlcwpJbml0aWFsaXpp
bmcgY2dyb3VwIHN1YnN5cyBmcmVlemVyCkluaXRpYWxpemluZyBjZ3JvdXAgc3Vic3lzIG5ldF9j
bHMKSW5pdGlhbGl6aW5nIGNncm91cCBzdWJzeXMgYmxraW8KQ1BVOiBUZXN0aW5nIHdyaXRlIGJ1
ZmZlciBjb2hlcmVuY3k6IG9rCmZ0cmFjZTogYWxsb2NhdGluZyAyNDIyNCBlbnRyaWVzIGluIDcy
IHBhZ2VzClNldHRpbmcgdXAgc3RhdGljIGlkZW50aXR5IG1hcCBmb3IgMHhjMDYwYmRkMCAtIDB4
YzA2MGJlMjgKZGV2dG1wZnM6IGluaXRpYWxpemVkCnhvcjogbWVhc3VyaW5nIHNvZnR3YXJlIGNo
ZWNrc3VtIHNwZWVkCiAgIGFybTRyZWdzICA6ICAgNjIyLjgwMCBNQi9zZWMKICAgOHJlZ3MgICAg
IDogICA0NTkuMjAwIE1CL3NlYwogICAzMnJlZ3MgICAgOiAgIDU5OC44MDAgTUIvc2VjCnhvcjog
dXNpbmcgZnVuY3Rpb246IGFybTRyZWdzICg2MjIuODAwIE1CL3NlYykKcGluY3RybCBjb3JlOiBp
bml0aWFsaXplZCBwaW5jdHJsIHN1YnN5c3RlbQpyZWd1bGF0b3ItZHVtbXk6IG5vIHBhcmFtZXRl
cnMKTkVUOiBSZWdpc3RlcmVkIHByb3RvY29sIGZhbWlseSAxNgpETUE6IHByZWFsbG9jYXRlZCAy
NTYgS2lCIHBvb2wgZm9yIGF0b21pYyBjb2hlcmVudCBhbGxvY2F0aW9ucwpvbWFwLWdwbWMgb21h
cC1ncG1jOiBHUE1DIHJldmlzaW9uIDUuMApPTUFQIEdQSU8gaGFyZHdhcmUgdmVyc2lvbiAyLjUK
b21hcF9tdXhfaW5pdDogQWRkIHBhcnRpdGlvbjogIzE6IGNvcmUsIGZsYWdzOiA0Ck9NQVAzIEJl
YWdsZSBSZXY6IHhNIEMKb21hcF9tdXhfZ2V0X2J5X25hbWU6IENvdWxkIG5vdCBmaW5kIHNpZ25h
bCB1YXJ0NF9yeC51YXJ0NF9yeApSZXByb2dyYW1taW5nIFNEUkMgY2xvY2sgdG8gNDAwMDAwMDAw
IEh6Cmh3LWJyZWFrcG9pbnQ6IGRlYnVnIGFyY2hpdGVjdHVyZSAweDQgdW5zdXBwb3J0ZWQuCiBv
bWFwLW1jYnNwLjI6IGFsaWFzIGZjayBhbHJlYWR5IGV4aXN0cwogb21hcC1tY2JzcC4zOiBhbGlh
cyBmY2sgYWxyZWFkeSBleGlzdHMKU3dpdGNoZWQgdG8gbmV3IGNsb2NraW5nIHJhdGUgKENyeXN0
YWwvQ29yZS9NUFUpOiAyNi4wLzQwMC82MDAgTUh6Ck9NQVAgRE1BIGhhcmR3YXJlIHJldmlzaW9u
IDUuMAogYXJtLXBtdTogYWxpYXMgZmNrIGFscmVhZHkgZXhpc3RzCmJpbzogY3JlYXRlIHNsYWIg
PGJpby0wPiBhdCAwCnJhaWQ2OiBpbnQzMngxICAgICA4MSBNQi9zCnJhaWQ2OiBpbnQzMngyICAg
ICA5OCBNQi9zCnJhaWQ2OiBpbnQzMng0ICAgICA4MiBNQi9zCnJhaWQ2OiBpbnQzMng4ICAgICA4
NCBNQi9zCnJhaWQ2OiB1c2luZyBhbGdvcml0aG0gaW50MzJ4MiAoOTggTUIvcykKcmFpZDY6IHVz
aW5nIGludHgxIHJlY292ZXJ5IGFsZ29yaXRobQpvbWFwLWRtYS1lbmdpbmUgb21hcC1kbWEtZW5n
aW5lOiBPTUFQIERNQSBlbmdpbmUgZHJpdmVyClNDU0kgc3Vic3lzdGVtIGluaXRpYWxpemVkCnVz
YmNvcmU6IHJlZ2lzdGVyZWQgbmV3IGludGVyZmFjZSBkcml2ZXIgdXNiZnMKdXNiY29yZTogcmVn
aXN0ZXJlZCBuZXcgaW50ZXJmYWNlIGRyaXZlciBodWIKdXNiY29yZTogcmVnaXN0ZXJlZCBuZXcg
ZGV2aWNlIGRyaXZlciB1c2IKdHdsIDEtMDA0ODogUElIIChpcnEgMjMpIGNoYWluaW5nIElSUXMg
MzM4Li4zNDYKdHdsIDEtMDA0ODogcG93ZXIgKGlycSAzNDMpIGNoYWluaW5nIElSUXMgMzQ2Li4z
NTMKdHdsNDAzMF9ncGlvIHR3bDQwMzBfZ3BpbzogZ3BpbyAoaXJxIDMzOCkgY2hhaW5pbmcgSVJR
cyAzNTQuLjM3MQpoc3VzYjJfcmVzZXQ6IDMzMDAgbVYgCmhzdXNiMl92Y2M6IDMzMDAgbVYgCnZk
ZF9tcHVfaXZhOiA2MDAgPC0tPiAxNDUwIG1WIG5vcm1hbCAKdmRkX2NvcmU6IDYwMCA8LS0+IDE0
NTAgbVYgbm9ybWFsIApWTU1DMTogMTg1MCA8LS0+IDMxNTAgbVYgYXQgMzE1MCBtViBub3JtYWwg
c3RhbmRieQpWREFDOiAxODAwIG1WIG5vcm1hbCBzdGFuZGJ5ClZEVkk6IDE4MDAgbVYgbm9ybWFs
IHN0YW5kYnkKVlNJTTogMTgwMCA8LS0+IDMwMDAgbVYgYXQgMTgwMCBtViBub3JtYWwgc3RhbmRi
eQpvbWFwX2kyYyBvbWFwX2kyYy4xOiBidXMgMSByZXY0LjQgYXQgMjYwMCBrSHoKb21hcF9pMmMg
b21hcF9pMmMuMzogYnVzIDMgcmV2NC40IGF0IDEwMCBrSHoKQWR2YW5jZWQgTGludXggU291bmQg
QXJjaGl0ZWN0dXJlIERyaXZlciBJbml0aWFsaXplZC4KY2ZnODAyMTE6IENhbGxpbmcgQ1JEQSB0
byB1cGRhdGUgd29ybGQgcmVndWxhdG9yeSBkb21haW4KU3dpdGNoaW5nIHRvIGNsb2Nrc291cmNl
IDMya19jb3VudGVyCk5FVDogUmVnaXN0ZXJlZCBwcm90b2NvbCBmYW1pbHkgMgpUQ1AgZXN0YWJs
aXNoZWQgaGFzaCB0YWJsZSBlbnRyaWVzOiA0MDk2IChvcmRlcjogMywgMzI3NjggYnl0ZXMpClRD
UCBiaW5kIGhhc2ggdGFibGUgZW50cmllczogNDA5NiAob3JkZXI6IDIsIDE2Mzg0IGJ5dGVzKQpU
Q1A6IEhhc2ggdGFibGVzIGNvbmZpZ3VyZWQgKGVzdGFibGlzaGVkIDQwOTYgYmluZCA0MDk2KQpU
Q1A6IHJlbm8gcmVnaXN0ZXJlZApVRFAgaGFzaCB0YWJsZSBlbnRyaWVzOiAyNTYgKG9yZGVyOiAw
LCA0MDk2IGJ5dGVzKQpVRFAtTGl0ZSBoYXNoIHRhYmxlIGVudHJpZXM6IDI1NiAob3JkZXI6IDAs
IDQwOTYgYnl0ZXMpCk5FVDogUmVnaXN0ZXJlZCBwcm90b2NvbCBmYW1pbHkgMQpSUEM6IFJlZ2lz
dGVyZWQgbmFtZWQgVU5JWCBzb2NrZXQgdHJhbnNwb3J0IG1vZHVsZS4KUlBDOiBSZWdpc3RlcmVk
IHVkcCB0cmFuc3BvcnQgbW9kdWxlLgpSUEM6IFJlZ2lzdGVyZWQgdGNwIHRyYW5zcG9ydCBtb2R1
bGUuClJQQzogUmVnaXN0ZXJlZCB0Y3AgTkZTdjQuMSBiYWNrY2hhbm5lbCB0cmFuc3BvcnQgbW9k
dWxlLgpDUFUgUE1VOiBwcm9iaW5nIFBNVSBvbiBDUFUgMApodyBwZXJmZXZlbnRzOiBlbmFibGVk
IHdpdGggQVJNdjcgQ29ydGV4LUE4IFBNVSBkcml2ZXIsIDUgY291bnRlcnMgYXZhaWxhYmxlCk5G
UzogUmVnaXN0ZXJpbmcgdGhlIGlkX3Jlc29sdmVyIGtleSB0eXBlCktleSB0eXBlIGlkX3Jlc29s
dmVyIHJlZ2lzdGVyZWQKS2V5IHR5cGUgaWRfbGVnYWN5IHJlZ2lzdGVyZWQKYmlvOiBjcmVhdGUg
c2xhYiA8YmlvLTE+IGF0IDEKQnRyZnMgbG9hZGVkCmF1ZnMgMy4xMC0yMDEzMDgxOQptc2dtbmkg
aGFzIGJlZW4gc2V0IHRvIDk4OQpCbG9jayBsYXllciBTQ1NJIGdlbmVyaWMgKGJzZykgZHJpdmVy
IHZlcnNpb24gMC40IGxvYWRlZCAobWFqb3IgMjUyKQppbyBzY2hlZHVsZXIgbm9vcCByZWdpc3Rl
cmVkCmlvIHNjaGVkdWxlciBkZWFkbGluZSByZWdpc3RlcmVkCmlvIHNjaGVkdWxlciBjZnEgcmVn
aXN0ZXJlZCAoZGVmYXVsdCkKT01BUCBEU1MgcmV2IDIuMApvbWFwZmIgb21hcGZiOiBubyBkcml2
ZXIgZm9yIGRpc3BsYXk6IGR2aQpvbWFwZmIgb21hcGZiOiBmYWlsZWQgdG8gZmluZCBkZWZhdWx0
IGRpc3BsYXkKb21hcGZiIG9tYXBmYjogZmFpbGVkIHRvIHNldHVwIG9tYXBmYgpvbWFwZmI6IHBy
b2JlIG9mIG9tYXBmYiBmYWlsZWQgd2l0aCBlcnJvciAtMjIKb21hcF91YXJ0LjA6IHR0eU8wIGF0
IE1NSU8gMHg0ODA2YTAwMCAoaXJxID0gODgpIGlzIGEgT01BUCBVQVJUMApvbWFwX3VhcnQuMTog
dHR5TzEgYXQgTU1JTyAweDQ4MDZjMDAwIChpcnEgPSA4OSkgaXMgYSBPTUFQIFVBUlQxCm9tYXBf
dWFydC4yOiB0dHlPMiBhdCBNTUlPIDB4NDkwMjAwMDAgKGlycSA9IDkwKSBpcyBhIE9NQVAgVUFS
VDIKY29uc29sZSBbdHR5TzJdIGVuYWJsZWQKb21hcF91YXJ0LjM6IHR0eU8zIGF0IE1NSU8gMHg0
OTA0MjAwMCAoaXJxID0gOTYpIGlzIGEgT01BUCBVQVJUMwpicmQ6IG1vZHVsZSBsb2FkZWQKVHJ5
aW5nIE9ORkkgcHJvYmUgaW4gMTYgYml0cyBtb2RlLCBhYm9ydGluZyAhCk5vIE5BTkQgZGV2aWNl
IGZvdW5kCk5vIE5BTkQgZGV2aWNlIGZvdW5kCnVzYmNvcmU6IHJlZ2lzdGVyZWQgbmV3IGludGVy
ZmFjZSBkcml2ZXIga2F3ZXRoCnBlZ2FzdXM6IHYwLjkuMyAoMjAxMy8wNC8yNSksIFBlZ2FzdXMv
UGVnYXN1cyBJSSBVU0IgRXRoZXJuZXQgZHJpdmVyCnVzYmNvcmU6IHJlZ2lzdGVyZWQgbmV3IGlu
dGVyZmFjZSBkcml2ZXIgcGVnYXN1cwp1c2Jjb3JlOiByZWdpc3RlcmVkIG5ldyBpbnRlcmZhY2Ug
ZHJpdmVyIHJ0bDgxNTAKdXNiY29yZTogcmVnaXN0ZXJlZCBuZXcgaW50ZXJmYWNlIGRyaXZlciBh
c2l4CnVzYmNvcmU6IHJlZ2lzdGVyZWQgbmV3IGludGVyZmFjZSBkcml2ZXIgYXg4ODE3OV8xNzhh
CnVzYmNvcmU6IHJlZ2lzdGVyZWQgbmV3IGludGVyZmFjZSBkcml2ZXIgY2RjX2V0aGVyCnVzYmNv
cmU6IHJlZ2lzdGVyZWQgbmV3IGludGVyZmFjZSBkcml2ZXIgZG05NjAxCnVzYmNvcmU6IHJlZ2lz
dGVyZWQgbmV3IGludGVyZmFjZSBkcml2ZXIgc21zYzc1eHgKdXNiY29yZTogcmVnaXN0ZXJlZCBu
ZXcgaW50ZXJmYWNlIGRyaXZlciBzbXNjOTV4eAp1c2Jjb3JlOiByZWdpc3RlcmVkIG5ldyBpbnRl
cmZhY2UgZHJpdmVyIG5ldDEwODAKdXNiY29yZTogcmVnaXN0ZXJlZCBuZXcgaW50ZXJmYWNlIGRy
aXZlciBjZGNfc3Vic2V0CnVzYmNvcmU6IHJlZ2lzdGVyZWQgbmV3IGludGVyZmFjZSBkcml2ZXIg
emF1cnVzCnVzYmNvcmU6IHJlZ2lzdGVyZWQgbmV3IGludGVyZmFjZSBkcml2ZXIgTU9TQ0hJUCB1
c2ItZXRoZXJuZXQgZHJpdmVyCnVzYmNvcmU6IHJlZ2lzdGVyZWQgbmV3IGludGVyZmFjZSBkcml2
ZXIgaW50NTF4MQp1c2Jjb3JlOiByZWdpc3RlcmVkIG5ldyBpbnRlcmZhY2UgZHJpdmVyIGNkY19u
Y20KZWhjaV9oY2Q6IFVTQiAyLjAgJ0VuaGFuY2VkJyBIb3N0IENvbnRyb2xsZXIgKEVIQ0kpIERy
aXZlcgplaGNpLW9tYXA6IE9NQVAtRUhDSSBIb3N0IENvbnRyb2xsZXIgZHJpdmVyCmVoY2ktb21h
cCBlaGNpLW9tYXAuMDogQ2FuJ3QgZ2V0IFBIWSBkZXZpY2UgZm9yIHBvcnQgMTogLTYKdXNiY29y
ZTogcmVnaXN0ZXJlZCBuZXcgaW50ZXJmYWNlIGRyaXZlciB1c2Itc3RvcmFnZQptdXNiLWhkcmMg
bXVzYi1oZHJjLjAuYXV0bzogbXVzYl9pbml0X2NvbnRyb2xsZXIgZmFpbGVkIHdpdGggc3RhdHVz
IC02Cm1vdXNlZGV2OiBQUy8yIG1vdXNlIGRldmljZSBjb21tb24gZm9yIGFsbCBtaWNlCnR3bF9y
dGMgdHdsX3J0YzogRW5hYmxpbmcgVFdMLVJUQwp0d2xfcnRjIHR3bF9ydGM6IHJ0YyBjb3JlOiBy
ZWdpc3RlcmVkIHR3bF9ydGMgYXMgcnRjMApvbWFwX3dkdDogT01BUCBXYXRjaGRvZyBUaW1lciBS
ZXYgMHgzMTogaW5pdGlhbCB0aW1lb3V0IDYwIHNlYwpjcHVpZGxlOiB1c2luZyBnb3Zlcm5vciBs
YWRkZXIKY3B1aWRsZTogdXNpbmcgZ292ZXJub3IgbWVudQpvbWFwLWRtYS1lbmdpbmUgb21hcC1k
bWEtZW5naW5lOiBhbGxvY2F0aW5nIGNoYW5uZWwgZm9yIDYyCm9tYXAtZG1hLWVuZ2luZSBvbWFw
LWRtYS1lbmdpbmU6IGFsbG9jYXRpbmcgY2hhbm5lbCBmb3IgNjEKdXNiY29yZTogcmVnaXN0ZXJl
ZCBuZXcgaW50ZXJmYWNlIGRyaXZlciB1c2JoaWQKdXNiaGlkOiBVU0IgSElEIGNvcmUgZHJpdmVy
Cm9tYXAtdHdsNDAzMCBvbWFwLXR3bDQwMzA6ICB0d2w0MDMwLWhpZmkgPC0+IG9tYXAtbWNic3Au
MiBtYXBwaW5nIG9rCm9wcm9maWxlOiB1c2luZyBhcm0vYXJtdjcKdTMyIGNsYXNzaWZpZXIKICAg
IEFjdGlvbnMgY29uZmlndXJlZApUQ1A6IGN1YmljIHJlZ2lzdGVyZWQKTkVUOiBSZWdpc3RlcmVk
IHByb3RvY29sIGZhbWlseSAxMApzaXQ6IElQdjYgb3ZlciBJUHY0IHR1bm5lbGluZyBkcml2ZXIK
TkVUOiBSZWdpc3RlcmVkIHByb3RvY29sIGZhbWlseSAxNwpLZXkgdHlwZSBkbnNfcmVzb2x2ZXIg
cmVnaXN0ZXJlZApWRlAgc3VwcG9ydCB2MC4zOiBpbXBsZW1lbnRvciA0MSBhcmNoaXRlY3R1cmUg
MyBwYXJ0IDMwIHZhcmlhbnQgYyByZXYgMwpUaHVtYkVFIENQVSBleHRlbnNpb24gc3VwcG9ydGVk
LgpWRFZJOiBpbmNvbXBsZXRlIGNvbnN0cmFpbnRzLCBsZWF2aW5nIG9uClZEQUM6IGluY29tcGxl
dGUgY29uc3RyYWludHMsIGxlYXZpbmcgb24KY29uc29sZSBbbmV0Y29uMF0gZW5hYmxlZApuZXRj
b25zb2xlOiBuZXR3b3JrIGxvZ2dpbmcgc3RhcnRlZAp0d2xfcnRjIHR3bF9ydGM6IHNldHRpbmcg
c3lzdGVtIGNsb2NrIHRvIDIwMTMtMTAtMjkgMTY6MDc6MDYgVVRDICgxMzgzMDYyODI2KQpBTFNB
IGRldmljZSBsaXN0OgogICMwOiBvbWFwM2JlYWdsZQpXYWl0aW5nIGZvciByb290IGRldmljZSAv
ZGV2L21tY2JsazBwMi4uLgptbWMwOiBob3N0IGRvZXMgbm90IHN1cHBvcnQgcmVhZGluZyByZWFk
LW9ubHkgc3dpdGNoLiBhc3N1bWluZyB3cml0ZS1lbmFibGUuCm1tYzA6IG5ldyBoaWdoIHNwZWVk
IFNESEMgY2FyZCBhdCBhZGRyZXNzIDEyMzQKbW1jYmxrMDogbW1jMDoxMjM0IFNBMDRHIDMuNjcg
R2lCIAogbW1jYmxrMDogcDEgcDIKa2pvdXJuYWxkIHN0YXJ0aW5nLiAgQ29tbWl0IGludGVydmFs
IDUgc2Vjb25kcwpFWFQzLWZzIChtbWNibGswcDIpOiB1c2luZyBpbnRlcm5hbCBqb3VybmFsCkVY
VDMtZnMgKG1tY2JsazBwMik6IHJlY292ZXJ5IGNvbXBsZXRlCkVYVDMtZnMgKG1tY2JsazBwMik6
IG1vdW50ZWQgZmlsZXN5c3RlbSB3aXRoIG9yZGVyZWQgZGF0YSBtb2RlClZGUzogTW91bnRlZCBy
b290IChleHQzIGZpbGVzeXN0ZW0pIG9uIGRldmljZSAxNzk6Mi4KZGV2dG1wZnM6IG1vdW50ZWQK
RnJlZWluZyB1bnVzZWQga2VybmVsIG1lbW9yeTogNTIwSyAoYzA4ZDIwMDAgLSBjMDk1NDAwMCkK
SU5JVDogdmVyc2lvbiAyLjg4IGJvb3RpbmcKRXJyb3Igb3BlbmluZyAvZGV2L2ZiMDogTm8gc3Vj
aCBmaWxlIG9yIGRpcmVjdG9yeQpTdGFydGluZyB1ZGV2CnVkZXZkWzc2XTogc3RhcnRpbmcgdmVy
c2lvbiAxODIKRkFULWZzIChtbWNibGswcDEpOiBjb2RlcGFnZSBjcDQzNyBub3QgZm91bmQKU3Rh
cnRpbmcgQm9vdGxvZyBkYWVtb246IGJvb3Rsb2dkLgpBTFNBOiBSZXN0b3JpbmcgbWl4ZXIgc2V0
dGluZ3MuLi4KQ29uZmlndXJpbmcgbmV0d29yayBpbnRlcmZhY2VzLi4uIGlmY29uZmlnOiBTSU9D
R0lGRkxBR1M6IE5vIHN1Y2ggZGV2aWNlCmlmY29uZmlnOiBTSU9DR0lGRkxBR1M6IE5vIHN1Y2gg
ZGV2aWNlClN0YXJ0aW5nIHJwY2JpbmQgZGFlbW9uLi4uZG9uZS4KSU5JVDogRW50ZXJpbmcgcnVu
bGV2ZWw6IDUKU3RhcnRpbmcgWHNlcnZlcgpvcGVuIC9kZXYvZmIwOiBObyBzdWNoIGZpbGUgb3Ig
ZGlyZWN0b3J5ClN0YXJ0aW5nIHN5c3RlbSBtZXNzYWdlIGJ1czogZGJ1cy4KU3RhcnRpbmcgQ29u
bmVjdGlvbiBNYW5hZ2VyClN0YXJ0aW5nIE9wZW5CU0QgU2VjdXJlIFNoZWxsIHNlcnZlcjogc3No
ZApkb25lLgpTdGFydGluZyBhZHZhbmNlZCBwb3dlciBtYW5hZ2VtZW50IGRhZW1vbjogYXBtZC4K
YXBtZFs1NDZdOiBhcG1kIDMuMi4xIGludGVyZmFjaW5nIHdpdGggYXBtIGRyaXZlciAxLjEzIGFu
ZCBBUE0gQklPUyAxLjIKU3RhcnRpbmcgRGlzdHJpYnV0ZWQgQ29tcGlsZXIgRGFlbW9uOiBkaXN0
Y2MuClN0YXJ0aW5nIHN5c2xvZ2Qva2xvZ2Q6IGRvbmUKICogU3RhcnRpbmcgQXZhaGkgbUROUy9E
TlMtU0QgRGFlbW9uOiBhdmFoaS1kYWVtb24KWyBvayBdClN0YXJ0aW5nIFRlbGVwaG9ueSBkYWVt
b24KU3RhcnRpbmcgTGludXggTkZDIGRhZW1vbgpwczogaW52YWxpZCBvcHRpb24gLS0gJ2EnCkJ1
c3lCb3ggdjEuMjAuMiAoMjAxMy0xMC0yOCAyMjoyMjozNSBNRFQpIG11bHRpLWNhbGwgYmluYXJ5
LgoKVXNhZ2U6IHBzIAoKY3Vwczogc3RhcnRlZCBzY2hlZHVsZXIuClN0YXJ0aW5nIE9Qcm9maWxl
VUkgc2VydmVyClN0YXJ0aW5nIHRjZi1hZ2VudDogT0sKU3RvcHBpbmcgQm9vdGxvZyBkYWVtb246
IGJvb3Rsb2dkLgoKUG9reSA5LjAgKFlvY3RvIFByb2plY3QgMS40IFJlZmVyZW5jZSBEaXN0cm8p
IDEuNC4xIGJlYWdsZWJvYXJkIHR0eU8yCgpiZWFnbGVib2FyZCBsb2dpbjogcm9vdApyb290QGJl
YWdsZWJvYXJkOn4jIHVuYW1lIC1hCkxpbnV4IGJlYWdsZWJvYXJkIDMuMTAuMTEteW9jdG8tc3Rh
bmRhcmQgIzEgVGh1IE9jdCAzMSAyMjowNzoyNiBNRFQgMjAxMyBhcm12N2wgCkdOVS9MaW51eApy
b290QGJlYWdsZWJvYXJkOn4jIGxzbW9kCk1vZHVsZSAgICAgICAgICAgICAgICAgIFNpemUgIFVz
ZWQgYnkKcm9vdEBiZWFnbGVib2FyZDp+IyBscyAvZGV2L3Z2ICoKL2Rldi92Y3MgIC9kZXYvdmNz
MSAgL2Rldi92Y3MyL2Rldi92Y3NhICAvZGV2L3Zjc2ExICAvZGV2L3Zjc2EyCnJvb3RAYmVhZ2xl
Ym9hcmQ6fiMgbHMgICBlc3MgL2V0Yy91ZGV2L3J1bGVzLmQvMTAtYzkyMC5ydWxlcyAKU1VCU1lT
VEVNPT0idmlkZW80bGludXgiLCAgQVRUUlN7aWR2ZW5kb3J9PT0iMHgwNDZkIiwgQVRUUlN7aWRQ
cm9kdWN0fT09IjB4MDgyZCIKICwgTkFNRT0idmlkZW8wIiwgTU9ERTo9IjA2NjAiLCBSVU49Ii9i
aW4vbWtub2QgL2Rldi92aWRlbzAgYyA4MSAwIgovZXRjL3VkZXYvcnVsZXMuZC8xMC1jOTIwLnJ1
bGVzIChFTkQpcm9vdEBiZWFnbGVib2FyZDp+IyBkZW1lc2cgLWMKLXNoOiBkZW1lc2c6IGNvbW1h
bmQgbm90IGZvdW5kCnJvb3RAYmVhZ2xlYm9hcmQ6fiMgZGUgbWVzZyAtYwpbICAgIDAuMDAwMDAw
XSBCb290aW5nIExpbnV4IG9uIHBoeXNpY2FsIENQVSAweDAKWyAgICAwLjAwMDAwMF0gSW5pdGlh
bGl6aW5nIGNncm91cCBzdWJzeXMgY3B1c2V0ClsgICAgMC4wMDAwMDBdIEluaXRpYWxpemluZyBj
Z3JvdXAgc3Vic3lzIGNwdQpbICAgIDAuMDAwMDAwXSBJbml0aWFsaXppbmcgY2dyb3VwIHN1YnN5
cyBjcHVhY2N0ClsgICAgMC4wMDAwMDBdIExpbnV4IHZlcnNpb24gMy4xMC4xMS15b2N0by1zdGFu
ZGFyZCAodmlkYWxAd3MwMDkuc3diZWxsLm5ldCkgKGdjCmMgdmVyc2lvbiA0LjguMSAoR0NDKSAp
ICMxIFRodSBPY3QgMzEgMjI6MDc6MjYgTURUIDIwMTMKWyAgICAwLjAwMDAwMF0gQ1BVOiBBUk12
NyBQcm9jZXNzb3IgWzQxM2ZjMDgyXSByZXZpc2lvbiAyIChBUk12NyksIGNyPTEwYzUzYzdkClsg
ICAgMC4wMDAwMDBdIENQVTogUElQVCAvIFZJUFQgbm9uYWxpYXNpbmcgZGF0YSBjYWNoZSwgVklQ
VCBhbGlhc2luZyBpbnN0cnVjdGlvCm4gY2FjaGUKWyAgICAwLjAwMDAwMF0gTWFjaGluZTogT01B
UDMgQmVhZ2xlIEJvYXJkClsgICAgMC4wMDAwMDBdIE1lbW9yeSBwb2xpY3k6IEVDQyBkaXNhYmxl
ZCwgRGF0YSBjYWNoZSB3cml0ZWJhY2sKWyAgICAwLjAwMDAwMF0gT24gbm9kZSAwIHRvdGFscGFn
ZXM6IDEzMDgxNgpbICAgIDAuMDAwMDAwXSBmcmVlX2FyZWFfaW5pdF9ub2RlOiBub2RlIDAsIHBn
ZGF0IGMwOWUzZGRjLCBub2RlX21lbV9tYXAgYzBhYTUwMAowClsgICAgMC4wMDAwMDBdICAgTm9y
bWFsIHpvbmU6IDEwMjQgcGFnZXMgdXNlZCBmb3IgbWVtbWFwClsgICAgMC4wMDAwMDBdICAgTm9y
bWFsIHpvbmU6IDAgcGFnZXMgcmVzZXJ2ZWQKWyAgICAwLjAwMDAwMF0gICBOb3JtYWwgem9uZTog
MTMwODE2IHBhZ2VzLCBMSUZPIGJhdGNoOjMxClsgICAgMC4wMDAwMDBdIENQVTogQWxsIENQVShz
KSBzdGFydGVkIGluIFNWQyBtb2RlLgpbICAgIDAuMDAwMDAwXSBPTUFQMzYzMCBFUzEuMiAobDJj
YWNoZSBpdmEgc2d4IG5lb24gaXNwIDE5Mm1oel9jbGsgKQpbICAgIDAuMDAwMDAwXSBwY3B1LWFs
bG9jOiBzMCByMCBkMzI3NjggdTMyNzY4IGFsbG9jPTEqMzI3NjgKWyAgICAwLjAwMDAwMF0gcGNw
dS1hbGxvYzogWzBdIDAgClsgICAgMC4wMDAwMDBdIEJ1aWx0IDEgem9uZWxpc3RzIGluIFpvbmUg
b3JkZXIsIG1vYmlsaXR5IGdyb3VwaW5nIG9uLiAgVG90YWwgcGFnCmVzOiAxMjk3OTIKWyAgICAw
LjAwMDAwMF0gS2VybmVsIGNvbW1hbmQgbGluZTogY29uc29sZT10dHlPMiwxMTUyMDBuOCBtcHVy
YXRlPTEwMDAgYnVkZHk9bm8KbmUgY2FtZXJhPW5vbmUgdnJhbT0xNk0gb21hcGZiLm1vZGU9ZHZp
OjY0MHg0ODBNUi0xNkA2MCBvbWFwZHNzLmRlZl9kaXNwPWR2aSByb28KdD0vZGV2L21tY2JsazBw
MiBydyByb290ZnN0eXBlPWV4dDMgcm9vdHdhaXQKWyAgICAwLjAwMDAwMF0gUElEIGhhc2ggdGFi
bGUgZW50cmllczogMjA0OCAob3JkZXI6IDEsIDgxOTIgYnl0ZXMpClsgICAgMC4wMDAwMDBdIERl
bnRyeSBjYWNoZSBoYXNoIHRhYmxlIGVudHJpZXM6IDY1NTM2IChvcmRlcjogNiwgMjYyMTQ0IGJ5
dGVzKQpbICAgIDAuMDAwMDAwXSBJbm9kZS1jYWNoZSBoYXNoIHRhYmxlIGVudHJpZXM6IDMyNzY4
IChvcmRlcjogNSwgMTMxMDcyIGJ5dGVzKQpbICAgIDAuMDAwMDAwXSBhbGxvY2F0ZWQgMTA0ODU3
NiBieXRlcyBvZiBwYWdlX2Nncm91cApbICAgIDAuMDAwMDAwXSBwbGVhc2UgdHJ5ICdjZ3JvdXBf
ZGlzYWJsZT1tZW1vcnknIG9wdGlvbiBpZiB5b3UgZG9uJ3Qgd2FudCBtZW1vcgp5IGNncm91cHMK
WyAgICAwLjAwMDAwMF0gTWVtb3J5OiA1MTFNQiA9IDUxMU1CIHRvdGFsClsgICAgMC4wMDAwMDBd
IE1lbW9yeTogNTA2Nzk2ay81MDY3OTZrIGF2YWlsYWJsZSwgMTc0OTJrIHJlc2VydmVkLCAwSyBo
aWdobWVtClsgICAgMC4wMDAwMDBdIFZpcnR1YWwga2VybmVsIG1lbW9yeSBsYXlvdXQ6CiAgICB2
ZWN0b3IgIDogMHhmZmZmMDAwMCAtIDB4ZmZmZjEwMDAgICAoICAgNCBrQikKICAgIGZpeG1hcCAg
OiAweGZmZjAwMDAwIC0gMHhmZmZlMDAwMCAgICggODk2IGtCKQogICAgdm1hbGxvYyA6IDB4ZTA4
MDAwMDAgLSAweGZmMDAwMDAwICAgKCA0ODggTUIpCiAgICBsb3dtZW0gIDogMHhjMDAwMDAwMCAt
IDB4ZTAwMDAwMDAgICAoIDUxMiBNQikKICAgIHBrbWFwICAgOiAweGJmZTAwMDAwIC0gMHhjMDAw
MDAwMCAgICggICAyIE1CKQogICAgbW9kdWxlcyA6IDB4YmYwMDAwMDAgLSAweGJmZTAwMDAwICAg
KCAgMTQgTUIpCiAgICAgIC50ZXh0IDogMHhjMDAwODAwMCAtIDB4YzA4ZDE4ODAgICAoODk5OSBr
QikKICAgICAgLmluaXQgOiAweGMwOGQyMDAwIC0gMHhjMDk1NDJiNCAgICggNTIxIGtCKQogICAg
ICAuZGF0YSA6IDB4YzA5NTYwMDAgLSAweGMwOWVhZmEwICAgKCA1OTYga0IpCiAgICAgICAuYnNz
IDogMHhjMDllYWZhMCAtIDB4YzBhYTQzNjAgICAoIDc0MSBrQikKWyAgICAwLjAwMDAwMF0gU0xV
QjogSFdhbGlnbj02NCwgT3JkZXI9MC0zLCBNaW5PYmplY3RzPTAsIENQVXM9MSwgTm9kZXM9MQpb
ICAgIDAuMDAwMDAwXSBOUl9JUlFTOjE2IG5yX2lycXM6MTYgMTYKWyAgICAwLjAwMDAwMF0gSVJR
OiBGb3VuZCBhbiBJTlRDIGF0IDB4ZmEyMDAwMDAgKHJldmlzaW9uIDQuMCkgd2l0aCA5NiBpbnRl
cnJ1cHQKcwpbICAgIDAuMDAwMDAwXSBUb3RhbCBvZiA5NiBpbnRlcnJ1cHRzIG9uIDEgYWN0aXZl
IGNvbnRyb2xsZXIKWyAgICAwLjAwMDAwMF0gQ2xvY2tpbmcgcmF0ZSAoQ3J5c3RhbC9Db3JlL01Q
VSk6IDI2LjAvNDAwLzYwMCBNSHoKWyAgICAwLjAwMDAwMF0gT01BUCBjbG9ja2V2ZW50IHNvdXJj
ZTogdGltZXIxMiBhdCAzMjc2OCBIegpbICAgIDAuMDAwMDAwXSBzY2hlZF9jbG9jazogMzIgYml0
cyBhdCAzMmtIeiwgcmVzb2x1dGlvbiAzMDUxN25zLCB3cmFwcyBldmVyeSAxMwoxMDcxOTk5bXMK
WyAgICAwLjAwMDAwMF0gT01BUCBjbG9ja3NvdXJjZTogMzJrX2NvdW50ZXIgYXQgMzI3NjggSHoK
WyAgICAwLjAwMDAwMF0gQ29uc29sZTogY29sb3VyIGR1bW15IGRldmljZSA4MHgzMApbICAgIDAu
MDAwMTgzXSBDYWxpYnJhdGluZyBkZWxheSBsb29wLi4uIDMyOS4zMSBCb2dvTUlQUyAobHBqPTE2
NDY1OTIpClsgICAgMC4wNDEyOTBdIHBpZF9tYXg6IGRlZmF1bHQ6IDMyNzY4IG1pbmltdW06IDMw
MQpbICAgIDAuMDQxNDQyXSBTZWN1cml0eSBGcmFtZXdvcmsgaW5pdGlhbGl6ZWQKWyAgICAwLjA0
MTcxN10gTW91bnQtY2FjaGUgaGFzaCB0YWJsZSBlbnRyaWVzOiA1MTIKWyAgICAwLjA0MjQxOV0g
SW5pdGlhbGl6aW5nIGNncm91cCBzdWJzeXMgZGVidWcKWyAgICAwLjA0MjQ0OV0gSW5pdGlhbGl6
aW5nIGNncm91cCBzdWJzeXMgbWVtb3J5ClsgICAgMC4wNDI0ODBdIEluaXRpYWxpemluZyBjZ3Jv
dXAgc3Vic3lzIGRldmljZXMKWyAgICAwLjA0MjQ4MF0gSW5pdGlhbGl6aW5nIGNncm91cCBzdWJz
eXMgZnJlZXplcgpbICAgIDAuMDQyNTEwXSBJbml0aWFsaXppbmcgY2dyb3VwIHN1YnN5cyBuZXRf
Y2xzClsgICAgMC4wNDI1MTBdIEluaXRpYWxpemluZyBjZ3JvdXAgc3Vic3lzIGJsa2lvClsgICAg
MC4wNDI1NzJdIENQVTogVGVzdGluZyB3cml0ZSBidWZmZXIgY29oZXJlbmN5OiBvawpbICAgIDAu
MDQyNjAyXSBmdHJhY2U6IGFsbG9jYXRpbmcgMjQyMjQgZW50cmllcyBpbiA3MiBwYWdlcwpbICAg
IDAuMTM5NDM0XSBTZXR0aW5nIHVwIHN0YXRpYyBpZGVudGl0eSBtYXAgZm9yIDB4YzA2MGJkZDAg
LSAweGMwNjBiZTI4ClsgICAgMC4xNDY1MTRdIGRldnRtcGZzOiBpbml0aWFsaXplZApbICAgIDAu
MjEyMDM2XSB4b3I6IG1lYXN1cmluZyBzb2Z0d2FyZSBjaGVja3N1bSBzcGVlZApbICAgIDAuMjkw
MTkxXSAgICBhcm00cmVncyAgOiAgIDYyMi44MDAgTUIvc2VjClsgICAgMC4zNzM2MjZdICAgIDhy
ZWdzICAgICA6ICAgNDU5LjIwMCBNQi9zZWMKWyAgICAwLjQ1NzA5Ml0gICAgMzJyZWdzICAgIDog
ICA1OTguODAwIE1CL3NlYwpbICAgIDAuNDU3MDkyXSB4b3I6IHVzaW5nIGZ1bmN0aW9uOiBhcm00
cmVncyAoNjIyLjgwMCBNQi9zZWMpClsgICAgMC40NTcxMjJdIHBpbmN0cmwgY29yZTogaW5pdGlh
bGl6ZWQgcGluY3RybCBzdWJzeXN0ZW0KWyAgICAwLjQ1NzU4MF0gcmVndWxhdG9yLWR1bW15OiBu
byBwYXJhbWV0ZXJzClsgICAgMC40NTc5NDZdIE5FVDogUmVnaXN0ZXJlZCBwcm90b2NvbCBmYW1p
bHkgMTYKWyAgICAwLjQ1ODcwOV0gRE1BOiBwcmVhbGxvY2F0ZWQgMjU2IEtpQiBwb29sIGZvciBh
dG9taWMgY29oZXJlbnQgYWxsb2NhdGlvbnMKWyAgICAwLjQ1OTA3NV0gb21hcC1ncG1jIG9tYXAt
Z3BtYzogR1BNQyByZXZpc2lvbiA1LjAKWyAgICAwLjQ2MDg0NV0gT01BUCBHUElPIGhhcmR3YXJl
IHZlcnNpb24gMi41ClsgICAgMC40NjQyNjNdIG9tYXBfbXV4X2luaXQ6IEFkZCBwYXJ0aXRpb246
ICMxOiBjb3JlLCBmbGFnczogNApbICAgIDAuNDY1NTQ1XSBPTUFQMyBCZWFnbGUgUmV2OiB4TSBD
ClsgICAgMC40NjgzODNdIG9tYXBfbXV4X2dldF9ieV9uYW1lOiBDb3VsZCBub3QgZmluZCBzaWdu
YWwgdWFydDRfcngudWFydDRfcngKWyAgICAwLjQ3NDUxN10gUmVwcm9ncmFtbWluZyBTRFJDIGNs
b2NrIHRvIDQwMDAwMDAwMCBIegpbICAgIDAuNDc2MjI2XSBody1icmVha3BvaW50OiBkZWJ1ZyBh
cmNoaXRlY3R1cmUgMHg0IHVuc3VwcG9ydGVkLgpbICAgIDAuNDc5MzM5XSAgb21hcC1tY2JzcC4y
OiBhbGlhcyBmY2sgYWxyZWFkeSBleGlzdHMKWyAgICAwLjQ3OTU4M10gIG9tYXAtbWNic3AuMzog
YWxpYXMgZmNrIGFscmVhZHkgZXhpc3RzClsgICAgMC40ODA0MzhdIFN3aXRjaGVkIHRvIG5ldyBj
bG9ja2luZyByYXRlIChDcnlzdGFsL0NvcmUvTVBVKTogMjYuMC80MDAvNjAwIE1ICnoKWyAgICAw
LjQ4MDYyMV0gT01BUCBETUEgaGFyZHdhcmUgcmV2aXNpb24gNS4wClsgICAgMC40ODE4NzJdICBh
cm0tcG11OiBhbGlhcyBmY2sgYWxyZWFkeSBleGlzdHMKWyAgICAwLjQ4ODY3N10gYmlvOiBjcmVh
dGUgc2xhYiA8YmlvLTA+IGF0IDAKWyAgICAwLjYyNDA4NF0gcmFpZDY6IGludDMyeDEgICAgIDgx
IE1CL3MKWyAgICAwLjc2NjIzNV0gcmFpZDY6IGludDMyeDIgICAgIDk4IE1CL3MKWyAgICAwLjkw
ODI2NF0gcmFpZDY6IGludDMyeDQgICAgIDgyIE1CL3MKWyAgICAxLjA0OTY1Ml0gcmFpZDY6IGlu
dDMyeDggICAgIDg0IE1CL3MKWyAgICAxLjA0OTY1Ml0gcmFpZDY6IHVzaW5nIGFsZ29yaXRobSBp
bnQzMngyICg5OCBNQi9zKQpbICAgIDEuMDQ5NjgyXSByYWlkNjogdXNpbmcgaW50eDEgcmVjb3Zl
cnkgYWxnb3JpdGhtClsgICAgMS4wNjM1MzddIG9tYXAtZG1hLWVuZ2luZSBvbWFwLWRtYS1lbmdp
bmU6IE9NQVAgRE1BIGVuZ2luZSBkcml2ZXIKWyAgICAxLjA2NDI3MF0gU0NTSSBzdWJzeXN0ZW0g
aW5pdGlhbGl6ZWQKWyAgICAxLjA2NDU0NF0gdXNiY29yZTogcmVnaXN0ZXJlZCBuZXcgaW50ZXJm
YWNlIGRyaXZlciB1c2JmcwpbICAgIDEuMDY0NjA1XSB1c2Jjb3JlOiByZWdpc3RlcmVkIG5ldyBp
bnRlcmZhY2UgZHJpdmVyIGh1YgpbICAgIDEuMDY0OTcxXSB1c2Jjb3JlOiByZWdpc3RlcmVkIG5l
dyBkZXZpY2UgZHJpdmVyIHVzYgpbICAgIDEuMDY5MzY2XSB0d2wgMS0wMDQ4OiBQSUggKGlycSAy
MykgY2hhaW5pbmcgSVJRcyAzMzguLjM0NgpbICAgIDEuMDY5NDg4XSB0d2wgMS0wMDQ4OiBwb3dl
ciAoaXJxIDM0MykgY2hhaW5pbmcgSVJRcyAzNDYuLjM1MwpbICAgIDEuMDcwNDA0XSB0d2w0MDMw
X2dwaW8gdHdsNDAzMF9ncGlvOiBncGlvIChpcnEgMzM4KSBjaGFpbmluZyBJUlFzIDM1NC4uMzcx
ClsgICAgMS4wNzEzMTldIGhzdXNiMl9yZXNldDogMzMwMCBtViAKWyAgICAxLjA3MjA1Ml0gaHN1
c2IyX3ZjYzogMzMwMCBtViAKWyAgICAxLjA3MjYwMV0gdmRkX21wdV9pdmE6IDYwMCA8LS0+IDE0
NTAgbVYgbm9ybWFsIApbICAgIDEuMDcyOTk4XSB2ZGRfY29yZTogNjAwIDwtLT4gMTQ1MCBtViBu
b3JtYWwgClsgICAgMS4wNzM1MTZdIFZNTUMxOiAxODUwIDwtLT4gMzE1MCBtViBhdCAzMTUwIG1W
IG5vcm1hbCBzdGFuZGJ5ClsgICAgMS4wNzQwMDVdIFZEQUM6IDE4MDAgbVYgbm9ybWFsIHN0YW5k
YnkKWyAgICAxLjA3NDUyM10gVkRWSTogMTgwMCBtViBub3JtYWwgc3RhbmRieQpbICAgIDEuMDc1
MTk1XSBWU0lNOiAxODAwIDwtLT4gMzAwMCBtViBhdCAxODAwIG1WIG5vcm1hbCBzdGFuZGJ5Clsg
ICAgMS4wNzU1MDBdIG9tYXBfaTJjIG9tYXBfaTJjLjE6IGJ1cyAxIHJldjQuNCBhdCAyNjAwIGtI
egpbICAgIDEuMDc2MDgwXSBvbWFwX2kyYyBvbWFwX2kyYy4zOiBidXMgMyByZXY0LjQgYXQgMTAw
IGtIegpbICAgIDEuMDc2NDc3XSBBZHZhbmNlZCBMaW51eCBTb3VuZCBBcmNoaXRlY3R1cmUgRHJp
dmVyIEluaXRpYWxpemVkLgpbICAgIDEuMDc3NDg0XSBjZmc4MDIxMTogQ2FsbGluZyBDUkRBIHRv
IHVwZGF0ZSB3b3JsZCByZWd1bGF0b3J5IGRvbWFpbgpbICAgIDEuMDc5MDQwXSBTd2l0Y2hpbmcg
dG8gY2xvY2tzb3VyY2UgMzJrX2NvdW50ZXIKWyAgICAxLjEzNzYzNF0gTkVUOiBSZWdpc3RlcmVk
IHByb3RvY29sIGZhbWlseSAyClsgICAgMS4xMzgzOTddIFRDUCBlc3RhYmxpc2hlZCBoYXNoIHRh
YmxlIGVudHJpZXM6IDQwOTYgKG9yZGVyOiAzLCAzMjc2OCBieXRlcykKWyAgICAxLjEzODQ4OF0g
VENQIGJpbmQgaGFzaCB0YWJsZSBlbnRyaWVzOiA0MDk2IChvcmRlcjogMiwgMTYzODQgYnl0ZXMp
ClsgICAgMS4xMzg1NDldIFRDUDogSGFzaCB0YWJsZXMgY29uZmlndXJlZCAoZXN0YWJsaXNoZWQg
NDA5NiBiaW5kIDQwOTYpClsgICAgMS4xMzg2NDFdIFRDUDogcmVubyByZWdpc3RlcmVkClsgICAg
MS4xMzg2NDFdIFVEUCBoYXNoIHRhYmxlIGVudHJpZXM6IDI1NiAob3JkZXI6IDAsIDQwOTYgYnl0
ZXMpClsgICAgMS4xMzg2NzFdIFVEUC1MaXRlIGhhc2ggdGFibGUgZW50cmllczogMjU2IChvcmRl
cjogMCwgNDA5NiBieXRlcykKWyAgICAxLjEzOTAzOF0gTkVUOiBSZWdpc3RlcmVkIHByb3RvY29s
IGZhbWlseSAxClsgICAgMS4xMzk1MjZdIFJQQzogUmVnaXN0ZXJlZCBuYW1lZCBVTklYIHNvY2tl
dCB0cmFuc3BvcnQgbW9kdWxlLgpbICAgIDEuMTM5NTU2XSBSUEM6IFJlZ2lzdGVyZWQgdWRwIHRy
YW5zcG9ydCBtb2R1bGUuClsgICAgMS4xMzk1NTZdIFJQQzogUmVnaXN0ZXJlZCB0Y3AgdHJhbnNw
b3J0IG1vZHVsZS4KWyAgICAxLjEzOTU1Nl0gUlBDOiBSZWdpc3RlcmVkIHRjcCBORlN2NC4xIGJh
Y2tjaGFubmVsIHRyYW5zcG9ydCBtb2R1bGUuClsgICAgMS4xNDExNzRdIENQVSBQTVU6IHByb2Jp
bmcgUE1VIG9uIENQVSAwClsgICAgMS4xNDEyMDRdIGh3IHBlcmZldmVudHM6IGVuYWJsZWQgd2l0
aCBBUk12NyBDb3J0ZXgtQTggUE1VIGRyaXZlciwgNSBjb3VudGVyCnMgYXZhaWxhYmxlClsgICAg
MS4zNjMxMjhdIE5GUzogUmVnaXN0ZXJpbmcgdGhlIGlkX3Jlc29sdmVyIGtleSB0eXBlClsgICAg
MS4zNjMyMjBdIEtleSB0eXBlIGlkX3Jlc29sdmVyIHJlZ2lzdGVyZWQKWyAgICAxLjM2MzIyMF0g
S2V5IHR5cGUgaWRfbGVnYWN5IHJlZ2lzdGVyZWQKWyAgICAxLjM2NDY1NF0gYmlvOiBjcmVhdGUg
c2xhYiA8YmlvLTE+IGF0IDEKWyAgICAxLjM2NTg0NF0gQnRyZnMgbG9hZGVkClsgICAgMS4zNjY0
ODVdIGF1ZnMgMy4xMC0yMDEzMDgxOQpbICAgIDEuMzY2NTE2XSBtc2dtbmkgaGFzIGJlZW4gc2V0
IHRvIDk4OQpbICAgIDEuMzY4NDk5XSBCbG9jayBsYXllciBTQ1NJIGdlbmVyaWMgKGJzZykgZHJp
dmVyIHZlcnNpb24gMC40IGxvYWRlZCAobWFqb3IgMgo1MikKWyAgICAxLjM2ODUzMF0gaW8gc2No
ZWR1bGVyIG5vb3AgcmVnaXN0ZXJlZApbICAgIDEuMzY4NTMwXSBpbyBzY2hlZHVsZXIgZGVhZGxp
bmUgcmVnaXN0ZXJlZApbICAgIDEuMzY4NzEzXSBpbyBzY2hlZHVsZXIgY2ZxIHJlZ2lzdGVyZWQg
KGRlZmF1bHQpClsgICAgMS4zNjk0NzZdIE9NQVAgRFNTIHJldiAyLjAKWyAgICAxLjM3MTM5OF0g
b21hcGZiIG9tYXBmYjogbm8gZHJpdmVyIGZvciBkaXNwbGF5OiBkdmkKWyAgICAxLjM3MTQyOV0g
b21hcGZiIG9tYXBmYjogZmFpbGVkIHRvIGZpbmQgZGVmYXVsdCBkaXNwbGF5ClsgICAgMS4zNzE1
ODJdIG9tYXBmYiBvbWFwZmI6IGZhaWxlZCB0byBzZXR1cCBvbWFwZmIKWyAgICAxLjM3MTU4Ml0g
b21hcGZiOiBwcm9iZSBvZiBvbWFwZmIgZmFpbGVkIHdpdGggZXJyb3IgLTIyClsgICAgMS40NDEw
NDBdIG9tYXBfdWFydC4wOiB0dHlPMCBhdCBNTUlPIDB4NDgwNmEwMDAgKGlycSA9IDg4KSBpcyBh
IE9NQVAgVUFSVDAKWyAgICAxLjQ0MTYxOV0gb21hcF91YXJ0LjE6IHR0eU8xIGF0IE1NSU8gMHg0
ODA2YzAwMCAoaXJxID0gODkpIGlzIGEgT01BUCBVQVJUMQpbICAgIDEuNDQyMTk5XSBvbWFwX3Vh
cnQuMjogdHR5TzIgYXQgTU1JTyAweDQ5MDIwMDAwIChpcnEgPSA5MCkgaXMgYSBPTUFQIFVBUlQy
ClsgICAgMi4wMTM4NTRdIGNvbnNvbGUgW3R0eU8yXSBlbmFibGVkClsgICAgMi4wMTY3MjNdIG9t
YXBfdWFydC4zOiB0dHlPMyBhdCBNTUlPIDB4NDkwNDIwMDAgKGlycSA9IDk2KSBpcyBhIE9NQVAg
VUFSVDMKWyAgICAyLjAzMTA5N10gYnJkOiBtb2R1bGUgbG9hZGVkClsgICAgMi4wMzQzOTNdIFRy
eWluZyBPTkZJIHByb2JlIGluIDE2IGJpdHMgbW9kZSwgYWJvcnRpbmcgIQpbICAgIDIuMDM4NzI2
XSBObyBOQU5EIGRldmljZSBmb3VuZApbICAgIDIuMDQwOTg1XSBObyBOQU5EIGRldmljZSBmb3Vu
ZApbICAgIDIuMDQ0NTg2XSB1c2Jjb3JlOiByZWdpc3RlcmVkIG5ldyBpbnRlcmZhY2UgZHJpdmVy
IGthd2V0aApbICAgIDIuMDQ5MTMzXSBwZWdhc3VzOiB2MC45LjMgKDIwMTMvMDQvMjUpLCBQZWdh
c3VzL1BlZ2FzdXMgSUkgVVNCIEV0aGVybmV0IGRyaQp2ZXIKWyAgICAyLjA1NTYwM10gdXNiY29y
ZTogcmVnaXN0ZXJlZCBuZXcgaW50ZXJmYWNlIGRyaXZlciBwZWdhc3VzClsgICAgMi4wNjAyNzJd
IHVzYmNvcmU6IHJlZ2lzdGVyZWQgbmV3IGludGVyZmFjZSBkcml2ZXIgcnRsODE1MApbICAgIDIu
MDY0OTEwXSB1c2Jjb3JlOiByZWdpc3RlcmVkIG5ldyBpbnRlcmZhY2UgZHJpdmVyIGFzaXgKWyAg
ICAyLjA2OTI3NF0gdXNiY29yZTogcmVnaXN0ZXJlZCBuZXcgaW50ZXJmYWNlIGRyaXZlciBheDg4
MTc5XzE3OGEKWyAgICAyLjA3NDM0MF0gdXNiY29yZTogcmVnaXN0ZXJlZCBuZXcgaW50ZXJmYWNl
IGRyaXZlciBjZGNfZXRoZXIKWyAgICAyLjA3OTE5M10gdXNiY29yZTogcmVnaXN0ZXJlZCBuZXcg
aW50ZXJmYWNlIGRyaXZlciBkbTk2MDEKWyAgICAyLjA4Mzc0MF0gdXNiY29yZTogcmVnaXN0ZXJl
ZCBuZXcgaW50ZXJmYWNlIGRyaXZlciBzbXNjNzV4eApbICAgIDIuMDg4NTAwXSB1c2Jjb3JlOiBy
ZWdpc3RlcmVkIG5ldyBpbnRlcmZhY2UgZHJpdmVyIHNtc2M5NXh4ClsgICAgMi4wOTMyMzFdIHVz
YmNvcmU6IHJlZ2lzdGVyZWQgbmV3IGludGVyZmFjZSBkcml2ZXIgbmV0MTA4MApbICAgIDIuMDk3
ODY5XSB1c2Jjb3JlOiByZWdpc3RlcmVkIG5ldyBpbnRlcmZhY2UgZHJpdmVyIGNkY19zdWJzZXQK
WyAgICAyLjEwMjc4M10gdXNiY29yZTogcmVnaXN0ZXJlZCBuZXcgaW50ZXJmYWNlIGRyaXZlciB6
YXVydXMKWyAgICAyLjEwNzMzMF0gdXNiY29yZTogcmVnaXN0ZXJlZCBuZXcgaW50ZXJmYWNlIGRy
aXZlciBNT1NDSElQIHVzYi1ldGhlcm5ldCBkcmkKdmVyClsgICAgMi4xMTM4NjFdIHVzYmNvcmU6
IHJlZ2lzdGVyZWQgbmV3IGludGVyZmFjZSBkcml2ZXIgaW50NTF4MQpbICAgIDIuMTE4NDk5XSB1
c2Jjb3JlOiByZWdpc3RlcmVkIG5ldyBpbnRlcmZhY2UgZHJpdmVyIGNkY19uY20KWyAgICAyLjEy
MzEwN10gZWhjaV9oY2Q6IFVTQiAyLjAgJ0VuaGFuY2VkJyBIb3N0IENvbnRyb2xsZXIgKEVIQ0kp
IERyaXZlcgpbICAgIDIuMTI4NjAxXSBlaGNpLW9tYXA6IE9NQVAtRUhDSSBIb3N0IENvbnRyb2xs
ZXIgZHJpdmVyClsgICAgMi4xMzI4NzNdIGVoY2ktb21hcCBlaGNpLW9tYXAuMDogQ2FuJ3QgZ2V0
IFBIWSBkZXZpY2UgZm9yIHBvcnQgMTogLTYKWyAgICAyLjEzODUxOV0gdXNiY29yZTogcmVnaXN0
ZXJlZCBuZXcgaW50ZXJmYWNlIGRyaXZlciB1c2Itc3RvcmFnZQpbICAgIDIuMTQzNTg1XSBtdXNi
LWhkcmMgbXVzYi1oZHJjLjAuYXV0bzogbXVzYl9pbml0X2NvbnRyb2xsZXIgZmFpbGVkIHdpdGgg
c3RhdAp1cyAtNgpbICAgIDIuMTUwODQ4XSBtb3VzZWRldjogUFMvMiBtb3VzZSBkZXZpY2UgY29t
bW9uIGZvciBhbGwgbWljZQpbICAgIDIuMTU2MjgwXSB0d2xfcnRjIHR3bF9ydGM6IEVuYWJsaW5n
IFRXTC1SVEMKWyAgICAyLjE2MTkyNl0gdHdsX3J0YyB0d2xfcnRjOiBydGMgY29yZTogcmVnaXN0
ZXJlZCB0d2xfcnRjIGFzIHJ0YzAKWyAgICAyLjE2ODMwNF0gb21hcF93ZHQ6IE9NQVAgV2F0Y2hk
b2cgVGltZXIgUmV2IDB4MzE6IGluaXRpYWwgdGltZW91dCA2MCBzZWMKWyAgICAyLjE3NDI4NV0g
Y3B1aWRsZTogdXNpbmcgZ292ZXJub3IgbGFkZGVyClsgICAgMi4xNzcyMTVdIGNwdWlkbGU6IHVz
aW5nIGdvdmVybm9yIG1lbnUKWyAgICAyLjE4MDgxNl0gb21hcC1kbWEtZW5naW5lIG9tYXAtZG1h
LWVuZ2luZTogYWxsb2NhdGluZyBjaGFubmVsIGZvciA2MgpbICAgIDIuMTg2MzQwXSBvbWFwLWRt
YS1lbmdpbmUgb21hcC1kbWEtZW5naW5lOiBhbGxvY2F0aW5nIGNoYW5uZWwgZm9yIDYxClsgICAg
Mi41NTk1MDldIHVzYmNvcmU6IHJlZ2lzdGVyZWQgbmV3IGludGVyZmFjZSBkcml2ZXIgdXNiaGlk
ClsgICAgMi41NjM5OTVdIHVzYmhpZDogVVNCIEhJRCBjb3JlIGRyaXZlcgpbICAgIDIuNjUyOTU0
XSBvbWFwLXR3bDQwMzAgb21hcC10d2w0MDMwOiAgdHdsNDAzMC1oaWZpIDwtPiBvbWFwLW1jYnNw
LjIgbWFwcGluZwogb2sKWyAgICAyLjY2MTI4NV0gb3Byb2ZpbGU6IHVzaW5nIGFybS9hcm12Nwpb
ICAgIDIuNjYzOTA5XSB1MzIgY2xhc3NpZmllcgpbICAgIDIuNjY1Mzc0XSAgICAgQWN0aW9ucyBj
b25maWd1cmVkClsgICAgMi42Njc5NjhdIFRDUDogY3ViaWMgcmVnaXN0ZXJlZApbICAgIDIuNjcw
OTI4XSBORVQ6IFJlZ2lzdGVyZWQgcHJvdG9jb2wgZmFtaWx5IDEwClsgICAgMi42NzUxMDldIHNp
dDogSVB2NiBvdmVyIElQdjQgdHVubmVsaW5nIGRyaXZlcgpbICAgIDIuNjc5NDczXSBORVQ6IFJl
Z2lzdGVyZWQgcHJvdG9jb2wgZmFtaWx5IDE3ClsgICAgMi42ODI5MjJdIEtleSB0eXBlIGRuc19y
ZXNvbHZlciByZWdpc3RlcmVkClsgICAgMi42ODYzNDBdIFZGUCBzdXBwb3J0IHYwLjM6IGltcGxl
bWVudG9yIDQxIGFyY2hpdGVjdHVyZSAzIHBhcnQgMzAgdmFyaWFudCBjCiByZXYgMwpbICAgIDIu
Njk3MTEzXSBUaHVtYkVFIENQVSBleHRlbnNpb24gc3VwcG9ydGVkLgpbICAgIDIuNzAxMTcxXSBW
RFZJOiBpbmNvbXBsZXRlIGNvbnN0cmFpbnRzLCBsZWF2aW5nIG9uClsgICAgMi43MDUyMDBdIFZE
QUM6IGluY29tcGxldGUgY29uc3RyYWludHMsIGxlYXZpbmcgb24KWyAgICAyLjcwOTY4Nl0gY29u
c29sZSBbbmV0Y29uMF0gZW5hYmxlZApbICAgIDIuNzEyMTg4XSBuZXRjb25zb2xlOiBuZXR3b3Jr
IGxvZ2dpbmcgc3RhcnRlZApbICAgIDIuNzE2NTIyXSB0d2xfcnRjIHR3bF9ydGM6IHNldHRpbmcg
c3lzdGVtIGNsb2NrIHRvIDIwMTMtMTAtMjkgMTY6MDc6MDYgVVRDIAooMTM4MzA2MjgyNikKWyAg
ICAyLjcyNDE4Ml0gQUxTQSBkZXZpY2UgbGlzdDoKWyAgICAyLjcyNTkyMV0gICAjMDogb21hcDNi
ZWFnbGUKWyAgICAyLjcyODMzMl0gV2FpdGluZyBmb3Igcm9vdCBkZXZpY2UgL2Rldi9tbWNibGsw
cDIuLi4KWyAgICAyLjczNzY3MF0gbW1jMDogaG9zdCBkb2VzIG5vdCBzdXBwb3J0IHJlYWRpbmcg
cmVhZC1vbmx5IHN3aXRjaC4gYXNzdW1pbmcgd3IKaXRlLWVuYWJsZS4KWyAgICAyLjc0NzEwMF0g
bW1jMDogbmV3IGhpZ2ggc3BlZWQgU0RIQyBjYXJkIGF0IGFkZHJlc3MgMTIzNApbICAgIDIuNzUy
MDQ0XSBtbWNibGswOiBtbWMwOjEyMzQgU0EwNEcgMy42NyBHaUIgClsgICAgMi43NTc3ODFdICBt
bWNibGswOiBwMSBwMgpbICAgMTMuNjI2MDk4XSBram91cm5hbGQgc3RhcnRpbmcuICBDb21taXQg
aW50ZXJ2YWwgNSBzZWNvbmRzClsgICAxNC4yNjkwNDJdIEVYVDMtZnMgKG1tY2JsazBwMik6IHVz
aW5nIGludGVybmFsIGpvdXJuYWwKWyAgIDE0LjI4MTczOF0gRVhUMy1mcyAobW1jYmxrMHAyKTog
cmVjb3ZlcnkgY29tcGxldGUKWyAgIDE0LjI4NTQwMF0gRVhUMy1mcyAobW1jYmxrMHAyKTogbW91
bnRlZCBmaWxlc3lzdGVtIHdpdGggb3JkZXJlZCBkYXRhIG1vZGUKWyAgIDE0LjI5MTM1MV0gVkZT
OiBNb3VudGVkIHJvb3QgKGV4dDMgZmlsZXN5c3RlbSkgb24gZGV2aWNlIDE3OToyLgpbICAgMTQu
MzAxOTcxXSBkZXZ0bXBmczogbW91bnRlZApbICAgMTQuMzA0NzQ4XSBGcmVlaW5nIHVudXNlZCBr
ZXJuZWwgbWVtb3J5OiA1MjBLIChjMDhkMjAwMCAtIGMwOTU0MDAwKQpbICAgMTUuMjA4NDY1XSB1
ZGV2ZFs3Nl06IHN0YXJ0aW5nIHZlcnNpb24gMTgyClsgICAxOC42ODE0MjddIEZBVC1mcyAobW1j
YmxrMHAxKTogY29kZXBhZ2UgY3A0Mzcgbm90IGZvdW5kCnJvb3RAYmVhZ2xlYm9hcmQ6fiMgZG1l
c2cgLWMgIApyb290QGJlYWdsZWJvYXJkOn4jIGRtZXNnIApyb290QGJlYWdsZWJvYXJkOn4jIGxz
dXNiIC0tdmVyYm9zZQp1bmFibGUgdG8gaW5pdGlhbGl6ZSBsaWJ1c2I6IC05OQpyb290QGJlYWds
ZWJvYXJkOn4jIGxzdXNiCnVuYWJsZSB0byBpbml0aWFsaXplIGxpYnVzYjogLTk5CnJvb3RAYmVh
Z2xlYm9hcmQ6fiMgCiogLSAqIFFvZGVtIDAuMS4yIENhcHR1cmUgR2VuZXJhdGVkIEZyaSwgMDEg
Tm92IDIwMTMgMTc6MTg6MjcgLTA2MDAgRU5EICogLSAqCg==

--047d7bdc9c5290427304ea2616e2--
