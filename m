Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D09C7E00814; Thu,  7 Aug 2014 06:05:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1BFCE0082B
	for <yocto@yoctoproject.org>; Thu,  7 Aug 2014 06:05:19 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id CDAEBF811E3; Thu,  7 Aug 2014 07:05:18 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 632C5F811D9;
	Thu,  7 Aug 2014 07:05:16 -0600 (MDT)
Message-ID: <53E379A8.9060108@mlbassoc.com>
Date: Thu, 07 Aug 2014 07:05:44 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <53E25433.5020003@dfki.de> <53E2572F.8020107@mlbassoc.com>
	<53E3765A.10206@dfki.de>
In-Reply-To: <53E3765A.10206@dfki.de>
Subject: Re: Building yocto for Odroid XU. No login after boot.
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
X-List-Received-Date: Thu, 07 Aug 2014 13:05:24 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-08-07 06:51, Dr. Markus Eich wrote:
> Hi Gary,
>
> unfortunately, this didn't help much. I have compiled the kernel with the CONFIG_FHANDLE=y.
> I have also set all configs given in
>
> http://dominion.thruhere.net/koen/cms/recommended-kernel-config-options-for-a-modern-angstrom-system
>
> To pinpoint the error down, I have tried the kernel build from Yocto on a LINARO distro image. I have just replaced the kernel and the modules build with yocto.
>
> And voila: I have a login promt. If the complete distro is build with Yocto (the whole rootfs), I cannot log in.
>
> Has setting the SERIAL_CONSOLE = "115200 ttymxc0"  the same effect as giving the console param for the u-boot?
>
> i.e. I have something like
>
> #setenv bootrootfs "console=tty1 console=ttySAC2,115200n8 root=UUID=e139ce78-9841-40fe-8823-96a304a09859 rootwait rw" ?

Setting SERIAL_CONSOLE tells the build system (Yocto) what device to
use as the main console.  A login prompt will appear on this device
after bootup.  The 'console=XXX' settings to the kernel (from U-Boot)
tell the kernel where to send messages, especially the bootstrap messages.
These are subtly different uses but they should match.

In your case, I think you should have
   SERIAL_CONSOLE = "115200 ttySAC2"

> On 06.08.2014 18:26, Gary Thomas wrote:
>> On 2014-08-06 10:13, Dr. Markus Eich wrote:
>>> Dear all,
>>>
>>> I am trying to build an image for the Odroid XU, featuring the Samsung Octa 5 CPU
>>>
>>> I managed to build everything needed (modules, kernel, u-boot, etc.)
>>>
>>> The recipes can be found at: https://github.com/MarkusEich/meta-odroid.
>>>
>>> The last problem (hopefully last :-) I have is that I cannot log in after the kernel is loaded via UART console
>>>
>>> Maybe init.d or systemd is not setup properly?
>>>
>>> I am using the console-image-minimal.bb from meta.
>>>
>>> Here is the last console output. It seems that the kernel is loaded (including modules) and the rootfs is properly mounted. There is no error, there is simply no login or shell.
>>>
>>> Any ideas why I cannot login? Its a bit poking in the dark ATM.
>>
>> If you are using systemd, make sure your kernel is built with CONFIG_FHANDLE=y
>> Without this, systemd won't start a session on a serial port.
>>
>> If you're using the old sysvinit, make sure your console settings
>> are correct.  These normally live in your ${MACHINE}.conf and look
>> something like this:
>>   SERIAL_CONSOLE = "115200 ttymxc0"
>>
>> You might also want to remove 'quiet' from your kernel bootargs,
>> at least until you get things settled a bit more.
>>
>>> ==
>>>
>>> [    5.722795] CPUFREQ of CA7  L5 : 962500 uV
>>> [    5.726871] CPUFREQ of CA7  L6 : 950000 uV
>>> [    5.730947] CPUFREQ of CA7  L7 : 950000 uV
>>> [    5.735025] CPUFREQ of CA7  L8 : 950000 uV
>>> [    5.739095] CPUFREQ of CA7  L9 : 950000 uV
>>> [    5.743146] CPUFREQ of CA7  L10 : 950000 uV
>>> [    5.747336] CPUFREQ of CA7  L11 : 950000 uV
>>> [    5.751583] CPUFREQ of CA15 L0 : 1362500 uV
>>> [    5.755663] CPUFREQ of CA15 L1 : 1362500 uV
>>> [    5.759826] CPUFREQ of CA15 L2 : 1225000 uV
>>> [    5.764012] CPUFREQ of CA15 L3 : 1175000 uV
>>> [    5.768129] CPUFREQ of CA15 L4 : 1137500 uV
>>> [    5.772313] CPUFREQ of CA15 L5 : 1112500 uV
>>> [    5.776474] CPUFREQ of CA15 L6 : 1075000 uV
>>> [    5.780638] CPUFREQ of CA15 L7 : 1037500 uV
>>> [    5.784800] CPUFREQ of CA15 L8 : 1000000 uV
>>> [    5.788962] CPUFREQ of CA15 L9 : 975000 uV
>>> [    5.793010] CPUFREQ of CA15 L10 : 937500 uV
>>> [    5.797201] CPUFREQ of CA15 L11 : 912500 uV
>>> [    5.801368] CPUFREQ of CA15 L12 : 900000 uV
>>> [    5.805526] CPUFREQ of CA15 L13 : 900000 uV
>>> [    5.809689] CPUFREQ of CA15 L14 : 900000 uV
>>> [    5.813822] CPUFREQ of CA15 L15 : 900000 uV
>>> [    5.818018] CPUFREQ of CA15 L16 : 900000 uV
>>> [    5.822173] CPUFREQ of CA15 L17 : 900000 uV
>>> [    5.826338] CPUFREQ of CA15 L18 : 900000 uV
>>> [    5.830583] fout_apll[900000000]
>>> [    5.836287] S divider change for DFS of MIF block
>>> [    5.984276] init_volt[975000], freq[800000]
>>> [    5.987809] ALSA device list:
>>> [    5.989956]   #0: Odroid-max98090
>>> [    5.993533] Freeing init memory: 256K
>>> [    5.996898] Write protecting the kernel text section c0008000 - c09e2000
>>> [    6.003931] rodata_test: attempting to write to read-only section:
>>> [    6.009728] write to read-only section trapped, success
>>> [    6.055010] systemd-udevd[1299]: starting version 204
>>> [    6.350360] EXT4-fs (mmcblk0p2): recovery complete
>>> [    6.356827] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data mode. Opts: (null)
>>> INIT: version 2.88 booting
>>> Starting udev
>>> [    6.880415] udevd[1376]: starting version 182
>>> [    7.075108] EXT4-fs (mmcblk0p2): re-mounted. Opts: data=ordered
>>> Starting Bootlog daemon: bootlogd.
>>> [    7.369381] max77802_rtc_read_time: 114/7/6 16:10:3(3)
>>> INIT: Entering runlevel: 5
>>> Configuring network interfaces... ifconfig: SIOCGIFFLAGS: No such device
>>> [    7.431705] max77802_rtc_read_time: 114/7/6 16:10:4(3)
>>> Starting syslogd/klogd: done
>>> Stopping Bootlog daemon: bootlogd.
>>>
>>> ==
>>>
>>>
>>>
>>>
>>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

