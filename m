Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BC7DE017D2
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 09:35:03 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id C2AC1F811DF; Thu, 31 Oct 2013 10:35:02 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7E2A5F811DE;
	Thu, 31 Oct 2013 10:34:55 -0600 (MDT)
Message-ID: <527286AF.10802@mlbassoc.com>
Date: Thu, 31 Oct 2013 10:34:55 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <CANwz6nxT34jJGydYGe=snHHijwMdMOKdOgnxQWCp0KGkBN4OHw@mail.gmail.com>
	<CAMKF1spw=Kr99nmVHjAw8PELK6E768RBpgxLCZFMcdMyConSEg@mail.gmail.com>
	<CANwz6nyYTVxmNfxK2kK0Z54uDw+Yq=RRTzmpXvJz19MDCB47MA@mail.gmail.com>
	<CAMKF1spP+BYrodrAoWzO=ZCfDqhpN=1-BnmDMr80-_f+pupdtQ@mail.gmail.com>
	<CANwz6nzjixVwB1Q=nJ6JCQCJOw-uJe7edmC4gn+FVZ9mK8_-6A@mail.gmail.com>
	<52727D75.5050207@mlbassoc.com>
	<CAMKF1spmKAm7JmxLqT1JDGn14aRi7DaC2T2jtUErrXT4P7=OGQ@mail.gmail.com>
In-Reply-To: <CAMKF1spmKAm7JmxLqT1JDGn14aRi7DaC2T2jtUErrXT4P7=OGQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 31 Oct 2013 16:35:04 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-10-31 10:20, Khem Raj wrote:
> On Thu, Oct 31, 2013 at 8:55 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>> On 2013-10-31 09:45, Edward Vidal wrote:
>>>
>>> Hello all,
>>> less /etc/udev/rules.d/10-c920.rules
>>> WARNING: terminal is not fully functional
>>> SUBSYSTEM=="video4linux", BUS=="usb", ATTRS{idvendor}=="0x046d",
>>> ATTRS{idProduct
>>> }=="0x082d", NAME="video0", MODE:="0660"
>>> It appears the key BUS is not correct based on the tests below.
>>> My mknod is /bin/mknod.
>>> find / -name sysfs
>>> /usr/include/sysfs
>>> /usr/src/kernel/fs/sysfs
>>
>>
>> Note: chasing this udev behaviour is a waste of time if the kernel doesn't
>> recognize
>> and support your device.
>
> Look at the first post. Its recognised and displayed ok with lsusb.

That doesn't mean it has a driver which hooks it into the video subsystem
(which is what will evoke the creation of /dev/video*)

>
>>
>> Have you even looked to see if this camera is supported in your kernel?  I
>> could
>> not find a driver for it when I looked, even in the latest mainline kernel.
>>
>> What kernel are you trying to use?
>>
>>>
>>> udevadm test --action=add /usr/include/sysfs or udevadm test --action=add
>>> /usr/src/kernel/fs/sysfs unable to open device
>>> '/sys/usr/src/kernel/fs/sysfs'
>>> run_command: calling: test
>>> adm_test: version 182
>>> This program is for debugging only, it does not run any program,
>>> specified by a RUN key. It may show incorrect results, because
>>> some values may be different, or not available at a simulation run.
>>>
>>> builtin_kmod_init: load module index
>>> add_matching_files: unable to open '/var/run/udev/rules.d': No such file
>>> or directory
>>> parse_file: reading '/etc/udev/rules.d/10-c920.rules' as rules file
>>> add_rule: unknown key 'BUS' in /etc/udev/rules.d/10-c920.rules:1
>>> add_rule: invalid rule '/etc/udev/rules.d/10-c920.rules:1'
>>>
>>> lots of output
>>>
>>> udev_rules_new: rules use 18408 bytes tokens (1534 * 12 bytes), 12756
>>> bytes buffer
>>> udev_rules_new: temporary index used 12800 bytes (640 * 20 bytes)
>>> unable to open device '/sys/usr/include/sysfs'
>>> builtin_kmod_exit: unload module index
>>>
>>> Do I add RUN+="/bin/mknod /dev/video0 c 81 0" see below new version of
>>> 1--c920.rules
>>> cat 10-c920.rules
>>> SUBSYSTEM=="video4linux", BUS=="usb", ATTRS{idvendor}=="0x046d",
>>> ATTRS{idProduct}=="0x082d", NAME="video0", MODE:="0660", RUN+="/bin/mknod
>>> /dev/video0 c 81 0"
>>> udevadm test --action=add /usr/src/kernel/fs/sysfs
>>> run_command: calling: test
>>> adm_test: version 182
>>> This program is for debugging only, it does not run any program,
>>> specified by a RUN key. It may show incorrect results, because
>>> some values may be different, or not available at a simulation run.
>>>
>>> builtin_kmod_init: load module index
>>> add_matching_files: unable to open '/var/run/udev/rules.d': No such file
>>> or directory
>>> parse_file: reading '/etc/udev/rules.d/10-c920.rules' as rules file
>>> add_rule: unknown key 'BUS' in /etc/udev/rules.d/10-c920.rules:1
>>> add_rule: invalid rule '/etc/udev/rules.d/10-c920.rules:1'
>>>
>>> Where do you find information for working with rules other than just some
>>> examples?
>>>
>>> Thanks
>>>
>>>
>>> On Thu, Oct 31, 2013 at 8:41 AM, Khem Raj <raj.khem@gmail.com
>>> <mailto:raj.khem@gmail.com>> wrote:
>>>
>>>
>>>      On Wed, Oct 30, 2013 at 6:12 PM, Edward Vidal
>>> <vidal.develone@gmail.com <mailto:vidal.develone@gmail.com>> wrote:
>>>      > Hello,
>>>      > This is when I connect the camera
>>>      > udevadm monitor test
>>>      > monitor will print the received events for:
>>>      > UDEV - the event which udev sends out after rule processing
>>>      > KERNEL - the kernel uevent
>>>      >
>>>      > KERNEL[803.263336] add
>>>      > /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4
>>> (usb)
>>>      > KERNEL[803.267456] add
>>>      >
>>> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0
>>>      > (usb)
>>>      > KERNEL[803.269287] add
>>>      >
>>> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1
>>>      > (usb)
>>>      > KERNEL[803.269958] add
>>>      >
>>> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2
>>>      > (usb)
>>>      > KERNEL[803.270721] add
>>>      >
>>> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3
>>>      > (usb)
>>>      > KERNEL[803.276214] add
>>>      >
>>> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_device/usbdev1.15
>>>      > (usb_device)**********
>>>      > UDEV  [803.277191] add
>>>      > /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4
>>> (usb)
>>>      > UDEV  [803.306091] add
>>>      >
>>> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_device/usbdev1.15
>>>      > (usb_device)
>>>      > UDEV  [803.318603] add
>>>      >
>>> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2
>>>      > (usb)
>>>      > UDEV  [803.324249] add
>>>      >
>>> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1
>>>      > (usb)
>>>      > UDEV  [803.329712] add
>>>      >
>>> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0
>>>      > (usb)
>>>      > UDEV  [803.333160] add
>>>      >
>>> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3
>>>      > (usb)
>>>      >
>>>      > still no /dev/video0
>>>      > ls -la /dev/v*
>>>      > crw-rw---- 1 root tty 7,   0 Jan  1  2000 /dev/vcs
>>>      > crw-rw---- 1 root tty 7,   1 Jan  1  2000 /dev/vcs1
>>>      > crw-rw---- 1 root tty 7,   2 Jan  1  2000 /dev/vcs2
>>>      > crw-rw---- 1 root tty 7,   3 Oct 29 13:51 /dev/vcs3
>>>      > crw-rw---- 1 root tty 7, 128 Jan  1  2000 /dev/vcsa
>>>      > crw-rw---- 1 root tty 7, 129 Jan  1  2000 /dev/vcsa1
>>>      > crw-rw---- 1 root tty 7, 130 Jan  1  2000 /dev/vcsa2
>>>      > crw-rw---- 1 root tty 7, 131 Oct 29 13:51 /dev/vcsa3
>>>      > root@beagleboard:~# lsusb
>>>      > Bus 001 Device 002: ID 0424:9514 Standard Microsystems Corp.
>>>      > Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
>>>      > Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
>>>      > Bus 001 Device 003: ID 0424:ec00 Standard Microsystems Corp.
>>>      > Bus 001 Device 004: ID 0409:0059 NEC Corp. HighSpeed Hub
>>>      > Bus 001 Device 005: ID 413c:2005 Dell Computer Corp. RT7D50 Keyboard
>>>      > Bus 001 Device 006: ID 046d:c001 Logitech, Inc. N48/M-BB48
>>> [FirstMouse Plus]
>>>      > Bus 001 Device 015: ID 046d:082d Logitech, Inc.
>>>      >
>>> ***********************************************************************************
>>>      >
>>>      >
>>>      > udevadm monitor --udev
>>>      > monitor will print the received events for:
>>>      > UDEV - the event which udev sends out after rule processing
>>>      > camera removed*****************************************************
>>>      > UDEV  [1325.916811] remove
>>>      >
>>> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1
>>>      > (usb)
>>>      > UDEV  [1325.918489] remove
>>>      >
>>> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0
>>>      > (usb)
>>>      > UDEV  [1325.919282] remove
>>>      >
>>> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2
>>>      > (usb)
>>>      > UDEV  [1325.923005] remove
>>>      >
>>> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3
>>>      > (usb)
>>>      > UDEV  [1325.928437] remove
>>>      >
>>> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_device/usbdev1.15
>>>      > (usb_device)
>>>      > UDEV  [1325.932709] remove
>>>      > /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4
>>> (usb)
>>>      > camera added
>>>      >
>>> ***************************************************************************
>>>      > UDEV  [1329.344727] add
>>>      > /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4
>>> (usb)
>>>      > UDEV  [1329.376313] add
>>>      >
>>> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/usb_device/usbdev1.16
>>>      > (usb_device)
>>>      > UDEV  [1329.389008] add
>>>      >
>>> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.2
>>>      > (usb)
>>>      > UDEV  [1329.396241] add
>>>      >
>>> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.1
>>>      > (usb)
>>>      > UDEV  [1329.401795] add
>>>      >
>>> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.0
>>>      > (usb)
>>>      > UDEV  [1329.406739] add
>>>      >
>>> /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3.4/1-2.3.4:1.3
>>>      > (usb)
>>>      >
>>>      > This is what I get in /var/log/messages
>>>      > Oct 29 14:17:28 beagleboarduser.info <http://user.info> kernel: usb
>>> 1-2.3.4: USB disconnect,
>>>      > device number 16
>>>      > Oct 29 14:17:31 beagleboarduser.info <http://user.info> kernel: usb
>>> 1-2.3.4: new high-speed
>>>
>>>      > USB device number 17 using ehci-omap
>>>      > Is there anything else that I can test  / provide
>>>
>>>      OK another thing to try is
>>>
>>>      udevadm test --action=add /sys/....
>>>
>>>      where /sys/... is path to your device in sysfs
>>>
>>>      this should give enough reason to what udev is doing when its getting
>>> an add
>>>      event for this device.
>>>
>>>      Secondly in your udev rule refer mknod with absolute path like
>>>      /sbin/mknod or /bin/mknod where ever it is
>>>
>>>
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>> --
>> ------------------------------------------------------------
>> Gary Thomas                 |  Consulting for the
>> MLB Associates              |    Embedded world
>> ------------------------------------------------------------
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

