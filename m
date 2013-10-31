Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B520E017D3
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 10:08:45 -0700 (PDT)
Received: by mail-ie0-f179.google.com with SMTP id aq17so5644030iec.10
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 10:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=yuadVd6b0KodQEJy55SpdtaoLB0bm0yAqpWjcUyML9U=;
	b=QtuQ2aiDG5v9To/2vTAPtNu7am6DqcITdm5Q9o4UthQ3OJaiS3F4OYeg9fHGJMc0p/
	6hqBsbmagr/F3DbC/zrU4/sy5zzzsR1sWUHujGWz2Zd9ktSYscG+OAtPDOfmPp+Yf/Ju
	Nz8tl5btxJawrG5E1eqNm5IWhzM7qUy6eKYHTuBiDbwE74RwqRWS9hQnvyc5+/usEAgz
	vFQ/MgXfcHb8Slu7swx1FX+lEe7gaRe/9ySj6kQGdP8LaRpK2f2CWCOrzxD07TbMK7dG
	upzP3T5n69yxMbyb3wpvl+eHqqagiRYMe96xwrRJ1n1AoADf21K3FrAiRZ3bYsCkwV8S
	4vmQ==
X-Received: by 10.50.57.44 with SMTP id f12mr248128igq.39.1383239325306; Thu,
	31 Oct 2013 10:08:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Thu, 31 Oct 2013 10:08:15 -0700 (PDT)
In-Reply-To: <CANwz6nyiOxvNPtfY5Csx+Y4f7ZaBX1sMWvUHEqyaO0URipwyKQ@mail.gmail.com>
References: <CANwz6nxT34jJGydYGe=snHHijwMdMOKdOgnxQWCp0KGkBN4OHw@mail.gmail.com>
	<CAMKF1spw=Kr99nmVHjAw8PELK6E768RBpgxLCZFMcdMyConSEg@mail.gmail.com>
	<CANwz6nyYTVxmNfxK2kK0Z54uDw+Yq=RRTzmpXvJz19MDCB47MA@mail.gmail.com>
	<CAMKF1spP+BYrodrAoWzO=ZCfDqhpN=1-BnmDMr80-_f+pupdtQ@mail.gmail.com>
	<CANwz6nzjixVwB1Q=nJ6JCQCJOw-uJe7edmC4gn+FVZ9mK8_-6A@mail.gmail.com>
	<CAMKF1srnJLpErc_xjcQOXRTsjM38EaZ8jqHMKpUveumGj1x1XA@mail.gmail.com>
	<CANwz6nyiOxvNPtfY5Csx+Y4f7ZaBX1sMWvUHEqyaO0URipwyKQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 31 Oct 2013 10:08:15 -0700
Message-ID: <CAMKF1sqz5jgt68wQutE4u8=jUqqQGwm7P7rRUpiSM=9t0VFe9g@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
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
X-List-Received-Date: Thu, 31 Oct 2013 17:08:46 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 31, 2013 at 9:54 AM, Edward Vidal <vidal.develone@gmail.com> wrote:
> hello,
> I removed the bus
> udevadm test --action=add /usr/src/kernel/sysfs
>
> run_command: calling: test
> adm_test: version 182
> This program is for debugging only, it does not run any program,
> specified by a RUN key. It may show incorrect results, because
> some values may be different, or not available at a simulation run.
>
> builtin_kmod_init: load module index
> add_matching_files: unable to open '/var/run/udev/rules.d': No such file or
> directory
> parse_file: reading '/etc/udev/rules.d/10-c920.rules' as rules file
> still no /dev/video0
>
> cat /etc/udev/rules.d/10-c920.rules
> SUBSYSTEM=="video4linux",  ATTRS{idvendor}=="0x046d",
> ATTRS{idProduct}=="0x082d", NAME="video0", MODE:="0660", RUN="/bin/mknod
> /dev/video0 c 81 0"
> still no /dev/video0
> The camera is working correctly on my fedora 18 x86_64.

OK so atleast your rules file is correct syntax wise. Why not try the
3.8 kernel from meta-beagleboard ?

>
> Note:
> * Before camera connected
> ** After camera connected
> Linux sim4.swbell.net 3.9.2-200.fc18.x86_64 #1 SMP Mon May 13 13:59:47 UTC
> 2013 x86_64 x86_64 x86_64 GNU/Linux
>
> Module                  Size  Used by
> **snd_usb_audio         145223  1
> **snd_usbmidi_lib        24713  1 snd_usb_audio
> **snd_rawmidi            29531  1 snd_usbmidi_lib
>
> *snd_hwdep              17650  1 snd_hda_codec
> **snd_hwdep              17650  2 snd_usb_audio,snd_hda_codec
>
> *snd_seq_device         14136  1 snd_seq
> **snd_seq_device         14136  2 snd_seq,snd_rawmidi
>
> *snd                    79379  19
> snd_hda_codec_realtek,snd_hwdep,snd_timer,snd_hda_codec_hdmi,snd_pcm,snd_seq,snd_hda_codec,snd_hda_intel,snd_seq_device
> **snd                    79379  24
> snd_hda_codec_realtek,snd_usb_audio,snd_hwdep,snd_timer,snd_hda_codec_hdmi,snd_pcm,snd_seq,snd_rawmidi,snd_usbmidi_lib,snd_hda_codec,snd_hda_intel,snd_seq_device
>
> *video                  18991  0
> **video                  18991  0
>
> This is the beagleboard
>  lsmod
> Module                  Size  Used by
> nls_iso8859_1           3673  1
> nls_cp437               5339  1
> I am going to be checking the video is a module or built into the kernel of
> the
>  uname -a
> Linux beagleboard 3.4.36-yocto-standard #1 Mon Oct 28 21:58:22 MDT 2013
> armv7l GNU/Linux
>
> Thanks
>
>
> On Thu, Oct 31, 2013 at 10:23 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Thu, Oct 31, 2013 at 8:45 AM, Edward Vidal <vidal.develone@gmail.com>
>> wrote:
>> >
>> > Do I add RUN+="/bin/mknod /dev/video0 c 81 0" see below new version of
>> > 1--c920.rules
>> > cat 10-c920.rules
>> > SUBSYSTEM=="video4linux", BUS=="usb", ATTRS{idvendor}=="0x046d",
>> > ATTRS{idProduct}=="0x082d", NAME="video0", MODE:="0660",
>> > RUN+="/bin/mknod
>> > /dev/video0 c 81 0"
>>
>> get rid of BUS construct there
>
>

