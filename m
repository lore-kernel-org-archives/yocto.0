Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18539E013D6
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 07:10:20 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id DDE95F8120A; Thu, 18 Jul 2013 08:10:19 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id B6E18F811F6;
	Thu, 18 Jul 2013 08:10:18 -0600 (MDT)
Message-ID: <51E7F74A.1060408@mlbassoc.com>
Date: Thu, 18 Jul 2013 08:10:18 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAHLvMfaELf9WAjgZJ_wLqGr1wv-wZK++5S27XYbs5ffu668ZRw@mail.gmail.com>
	<CAHLvMfaO2Ve+Z4D8_bKWSMAbskqwwJYjzLsVPvPy8z557Wesug@mail.gmail.com>
	<CAK18fxHz5rHig5tbLN4VjZAr6itpMUVmfem7bjYzbttbT6wN9g@mail.gmail.com>
	<CAHLvMfbsKb1gGPNxc9jprU0oDZDBtEVTp2sHyQOHgLDukdbXpQ@mail.gmail.com>
	<CANyK_8exV4-B3sKZMrqCz5fabn-Fzn22v-9L16BywEHsQE2XbA@mail.gmail.com>
	<CAHLvMfbLE6=inX1HB7K5UuOPakB=od-2v_hk=Bz-cviuBixT2A@mail.gmail.com>
	<CAHLvMfYLErYGHiqoAeDR-huW_0+AToErJ46EK=SQykZ1FBgL5Q@mail.gmail.com>
In-Reply-To: <CAHLvMfYLErYGHiqoAeDR-huW_0+AToErJ46EK=SQykZ1FBgL5Q@mail.gmail.com>
Subject: Re: [meta-raspberrypi] Network not working after first boot success
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
X-List-Received-Date: Thu, 18 Jul 2013 14:10:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-07-18 07:50, Rich Bayliss wrote:
> On 18 July 2013 12:28, Rich Bayliss <richbayliss@gmail.com> wrote:
>> On 18 July 2013 12:07, Paul Barker <paul@paulbarker.me.uk> wrote:
>>> On 18 July 2013 11:55, Rich Bayliss <richbayliss@gmail.com> wrote:
>>>>>>
>>>>>> Is this a known issue? Does anyone have any ideas?
>>>>>>
>>>
>>> Could you try running 'ip addr' and 'ip link' instead of 'ifconfig'?
>>> Just wondering whether they query information differently and might
>>> show something else. The other place to look is in the output of
>>> 'dmesg'.
>>>
>>> Does un-plugging and re-plugging the network cable (without running
>>> 'ifup' or 'ifdown') make any difference?
>>>
>>> --
>>> Paul Barker
>>>
>>> Email: paul@paulbarker.me.uk
>>> http://www.paulbarker.me.uk
>>
>> I have tried unplugging/replugging and it stays down.
>>
>> I have run the commands and there is a difference, however I also ran
>> "lsmod" and there is a big difference.
>>
>> Working:
>> root@raspberrypi:~# lsmod
>>      Not tainted
>> ipv6 281069 12 - Live 0xbf02c000
>> spidev 5343 0 - Live 0xbf022000
>> joydev 9477 0 - Live 0xbf01c000
>> evdev 9486 0 - Live 0xbf015000
>> leds_gpio 2194 0 - Live 0xbf011000
>> led_class 3581 1 leds_gpio, Live 0xbf00d000
>> spi_bcm2708 4631 0 - Live 0xbf004000
>> i2c_bcm2708 3879 0 - Live 0xbf000000
>>
>> Not working:
>> root@raspberrypi:~# lsmod
>>      Not tainted
>> ipv6 281069 12 - Live 0xbf00d000
>> joydev 9477 0 - Live 0xbf007000
>> evdev 9486 0 - Live 0xbf000000
>>
>> At this point, if I then do the "ifdown"/"ifup" dance, my connection
>> works, but not more modules are loaded - does this help you guys?
>>
>> --
>> Rich Bayliss
>
> I have connected a serial terminal now, and I can provide boot logs.
> It looks like maybe UDEV is causing/part of the issue. When it boots
> successfully, then I dont get a "udevadm settle" message:
>
> Starting udev
> [    3.085091] smsc95xx v1.0.4
> [    3.157196] smsc95xx 1-1.1:1.0: eth0: register 'smsc95xx' at
> usb-bcm2708_usb-1.1, smsc95xx USB 2.0 Ethernet, b8:27:eb:e1:f6:e2
> [    3.487588] udevd[74]: starting version 182
> Starting Bootlog daemon: bootlogd.
> [    6.162643] EXT4-fs (mmcblk0p2): re-mounted. Opts:
> errors=remount-ro,data=ordered
> Configuring network interfaces... udhcpc (v1.21.1) started
> Sending discover...
> [    9.138863] smsc95xx 1-1.1:1.0: eth0: link up, 100Mbps,
> full-duplex, lpa 0xC1E1
> Sending discover...
> Sending select for 192.168.1.110...
> Lease of 192.168.1.110 obtained, lease time 268435455
> /etc/udhcpc.d/50default: Adding DNS 192.168.1.254
> done.
>
> However when the network is broken I see the following:
>
> Starting udev
> [    5.342406] udevd[74]: starting version 182
> Starting Bootlog daemon: bootlogd.
> [    7.938281] EXT4-fs (mmcblk0p2): re-mounted. Opts:
> errors=remount-ro,data=ordered
>
> udevadm settle - timeout of 3 seconds reached, the event queue contains:
>    /sys/devices/platform/bcm2708_usb/usb1/1-1/1-1.1/1-1.1:1.0/net/eth0 (980)
>    /sys/devices/platform/mmc_host/mmc0/mmc0:8fe4/block/mmcblk0/mmcblk0p1 (985)
>    /sys/devices/platform/mmc_host/mmc0/mmc0:8fe4/block/mmcblk0/mmcblk0p2 (986)
> Configuring network interfaces... ifup: interface lo already configured
> ifup: interface eth0 already configured
> done.
>

This looks more like there is some state information left around
that is keeping the network from coming up - it thinks that it
already is up.

In your original post, you mentioned 'I pull the power/reboot'.  Is that
how you are rebooting the board, by just yanking the power?  If so, that
could definitely explain such a case where state information says one
thing and real life doesn't match.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

