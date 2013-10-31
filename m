Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FE33E017D6
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 16:34:28 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 70219F81221; Thu, 31 Oct 2013 17:34:28 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9943CF81220;
	Thu, 31 Oct 2013 17:34:27 -0600 (MDT)
Message-ID: <5272E904.1000109@mlbassoc.com>
Date: Thu, 31 Oct 2013 17:34:28 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANwz6nxT34jJGydYGe=snHHijwMdMOKdOgnxQWCp0KGkBN4OHw@mail.gmail.com>	<CAMKF1spw=Kr99nmVHjAw8PELK6E768RBpgxLCZFMcdMyConSEg@mail.gmail.com>	<CANwz6nyYTVxmNfxK2kK0Z54uDw+Yq=RRTzmpXvJz19MDCB47MA@mail.gmail.com>	<CAMKF1spP+BYrodrAoWzO=ZCfDqhpN=1-BnmDMr80-_f+pupdtQ@mail.gmail.com>	<CANwz6nzjixVwB1Q=nJ6JCQCJOw-uJe7edmC4gn+FVZ9mK8_-6A@mail.gmail.com>	<CAMKF1srnJLpErc_xjcQOXRTsjM38EaZ8jqHMKpUveumGj1x1XA@mail.gmail.com>	<CANwz6nyiOxvNPtfY5Csx+Y4f7ZaBX1sMWvUHEqyaO0URipwyKQ@mail.gmail.com>	<CAMKF1sqz5jgt68wQutE4u8=jUqqQGwm7P7rRUpiSM=9t0VFe9g@mail.gmail.com>
	<CANwz6nwHiS2Fk_w5CmNy_63W7QPvS_LY-HCd=xG1S_sbBrmazg@mail.gmail.com>
In-Reply-To: <CANwz6nwHiS2Fk_w5CmNy_63W7QPvS_LY-HCd=xG1S_sbBrmazg@mail.gmail.com>
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
X-List-Received-Date: Thu, 31 Oct 2013 23:34:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-10-31 17:08, Edward Vidal wrote:
> Hello,
> I had just recently built angstrom a few days ago.  I tried the kernel that was built with 3.2.28 with the same results still not getting a /dev/video0.
> I did the following steps since angstrom uses meta-beagleboard, in hopes of getting a kernel 3.8 version.
>
> git commit -a
> git checkout -b wkg-angstrom-v2013.06-yocto1.4 origin/angstrom-v2013.06-yocto1.4
> ./oebb.sh config beagleboard
> ./oebb.sh update
>
>   . .oe/environment-angstrom-v2013.06
> MACHINE=beagleboard bitbake console-image
> rm -rf build/tmp-angstrom_v2012_12-eglibc/
>
> Even with meta-beagleboard at
> commit cdaa65dba20da97be7793404bcc90c498771fb04
> Author: Koen Kooi <koen@dominion.thruhere.net <mailto:koen@dominion.thruhere.net>>
> Date:   Wed Oct 30 18:31:21 2013 +0100
>
>      contrib: bone-flash-tool: use --numeric-owner with tar to keep file ownershi
>
>      Signed-off-by: Koen Kooi <koen@dominion.thruhere.net <mailto:koen@dominion.thruhere.net>>
> Which is a dylan branch it still was building a 3.2.28 kernel
>
> git checkout -b 3.8 feb3ea180018d0f
> commit feb3ea180018d0f64f406f208827413b91122b07
> Author: Koen Kooi <koen@dominion.thruhere.net <mailto:koen@dominion.thruhere.net>>
> Date:   Sun Oct 27 17:17:06 2013 +0100
>
>      linux-mainline 3.8: ADC and MIDI cape patches
>
>      Signed-off-by: Koen Kooi <koen@dominion.thruhere.net <mailto:koen@dominion.thruhere.net>>
> It still tries to build a 3.2.28 kernel.
> What should I do to force it to build the 3.8 kernel?

Both meta-beagleboard and meta-ti seem to be stuck at 3.2.28 for the BeagleBoard.  Not unlike
my cell phone, old devices get left in the dust (even if they are only weeks old...)!

You might try building with meta-yocto-bsp as it will build 3.10+

>
> Any and all help will be appreciated.
> Thanks to all
>
>
> On Thu, Oct 31, 2013 at 11:08 AM, Khem Raj <raj.khem@gmail.com <mailto:raj.khem@gmail.com>> wrote:
>
>     On Thu, Oct 31, 2013 at 9:54 AM, Edward Vidal <vidal.develone@gmail.com <mailto:vidal.develone@gmail.com>> wrote:
>     > hello,
>     > I removed the bus
>     > udevadm test --action=add /usr/src/kernel/sysfs
>     >
>     > run_command: calling: test
>     > adm_test: version 182
>     > This program is for debugging only, it does not run any program,
>     > specified by a RUN key. It may show incorrect results, because
>     > some values may be different, or not available at a simulation run.
>     >
>     > builtin_kmod_init: load module index
>     > add_matching_files: unable to open '/var/run/udev/rules.d': No such file or
>     > directory
>     > parse_file: reading '/etc/udev/rules.d/10-c920.rules' as rules file
>     > still no /dev/video0
>     >
>     > cat /etc/udev/rules.d/10-c920.rules
>     > SUBSYSTEM=="video4linux",  ATTRS{idvendor}=="0x046d",
>     > ATTRS{idProduct}=="0x082d", NAME="video0", MODE:="0660", RUN="/bin/mknod
>     > /dev/video0 c 81 0"
>     > still no /dev/video0
>     > The camera is working correctly on my fedora 18 x86_64.
>
>     OK so atleast your rules file is correct syntax wise. Why not try the
>     3.8 kernel from meta-beagleboard ?
>
>     >
>     > Note:
>     > * Before camera connected
>     > ** After camera connected
>     > Linuxsim4.swbell.net <http://sim4.swbell.net> 3.9.2-200.fc18.x86_64 #1 SMP Mon May 13 13:59:47 UTC
>     > 2013 x86_64 x86_64 x86_64 GNU/Linux
>     >
>     > Module                  Size  Used by
>     > **snd_usb_audio         145223  1
>     > **snd_usbmidi_lib        24713  1 snd_usb_audio
>     > **snd_rawmidi            29531  1 snd_usbmidi_lib
>     >
>     > *snd_hwdep              17650  1 snd_hda_codec
>     > **snd_hwdep              17650  2 snd_usb_audio,snd_hda_codec
>     >
>     > *snd_seq_device         14136  1 snd_seq
>     > **snd_seq_device         14136  2 snd_seq,snd_rawmidi
>     >
>     > *snd                    79379  19
>     > snd_hda_codec_realtek,snd_hwdep,snd_timer,snd_hda_codec_hdmi,snd_pcm,snd_seq,snd_hda_codec,snd_hda_intel,snd_seq_device
>     > **snd                    79379  24
>     > snd_hda_codec_realtek,snd_usb_audio,snd_hwdep,snd_timer,snd_hda_codec_hdmi,snd_pcm,snd_seq,snd_rawmidi,snd_usbmidi_lib,snd_hda_codec,snd_hda_intel,snd_seq_device
>     >
>     > *video                  18991  0
>     > **video                  18991  0
>     >
>     > This is the beagleboard
>     >  lsmod
>     > Module                  Size  Used by
>     > nls_iso8859_1           3673  1
>     > nls_cp437               5339  1
>     > I am going to be checking the video is a module or built into the kernel of
>     > the
>     >  uname -a
>     > Linux beagleboard 3.4.36-yocto-standard #1 Mon Oct 28 21:58:22 MDT 2013
>     > armv7l GNU/Linux
>     >
>     > Thanks
>     >
>     >
>     > On Thu, Oct 31, 2013 at 10:23 AM, Khem Raj <raj.khem@gmail.com <mailto:raj.khem@gmail.com>> wrote:
>     >>
>     >> On Thu, Oct 31, 2013 at 8:45 AM, Edward Vidal <vidal.develone@gmail.com <mailto:vidal.develone@gmail.com>>
>     >> wrote:
>     >> >
>     >> > Do I add RUN+="/bin/mknod /dev/video0 c 81 0" see below new version of
>     >> > 1--c920.rules
>     >> > cat 10-c920.rules
>     >> > SUBSYSTEM=="video4linux", BUS=="usb", ATTRS{idvendor}=="0x046d",
>     >> > ATTRS{idProduct}=="0x082d", NAME="video0", MODE:="0660",
>     >> > RUN+="/bin/mknod
>     >> > /dev/video0 c 81 0"
>     >>
>     >> get rid of BUS construct there
>     >
>     >
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

