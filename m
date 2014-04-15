Return-Path: <jeremy@rhtech.co.nz>
Received: from linuxplesk9.openhost.net.nz (linuxplesk9.openhost.net.nz
	[119.47.118.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F7F3E00BE4
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 15:13:07 -0700 (PDT)
Received: (qmail 11319 invoked from network); 16 Apr 2014 10:13:06 +1200
Received: from 122-61-40-229.jetstream.xtra.co.nz (HELO ?192.168.1.98?)
	(122.61.40.229)
	by linuxplesk9.openhost.net.nz with (DHE-RSA-AES128-SHA encrypted) SMTP;
	16 Apr 2014 10:13:05 +1200
Message-ID: <534DAEF0.2000501@rhtech.co.nz>
Date: Wed, 16 Apr 2014 10:13:04 +1200
From: Jeremy Cole-Baker <jeremy@rhtech.co.nz>
Organization: Riverhead Technology
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Getting USB devices to work on BeagleBoard xM
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: jeremy@rhtech.co.nz
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 15 Apr 2014 22:13:11 -0000
Content-Type: multipart/alternative;
	boundary="------------060005030708030801010805"

--------------060005030708030801010805
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I've managed to build a couple of different recipes for my BeagleBoard 
(BeagleBoard xM Rev C), and also had a go at customising it.  I think 
I've tried core-image-minimal and core-image-basic.

The build works OK, and I can set up my micro SD card and get it to 
boot. I see lots of messages about loading drivers during boot, and I 
can log in to linux.

However, the USB devices don't seem to be working. The built in 
USB-Ethernet isn't there, and when I plug in a USB stick nothing happens 
- nothing in /dev/ and no messages in the system log.

I don't know whether this is something I missed in the build, or some 
configuration I need to do. I also don't know whether it is specific to 
the Beagle or a general problem. Unfortunately I am new to Kernel builds 
and device drivers.

Here's what I've looked into:

The boot-up messages indicate that the USB drivers are loaded, e.g.:

<snip>
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
...
usbcore: registered new interface driver smsc75xx
usbcore: registered new interface driver smsc95xx
...etc

(I think smsc95xx is the USB-Ethernet chip on the beagle board xM).

ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
ehci-omap: OMAP-EHCI Host Controller driver
ehci-omap 48064800.ehci: EHCI Host Controller
ehci-omap 48064800.ehci: new USB bus registered, assigned bus number 1
ehci-omap 48064800.ehci: irq 93, io mem 0x48064800
ehci-omap 48064800.ehci: USB 2.0 started, EHCI 1.00
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 3 ports detected
usbcore: registered new interface driver usb-storage
musb-hdrc musb-hdrc.0.auto: musb_init_controller failed with status -6
mousedev: PS/2 mouse device common for all mice
...Etc

There's a modprobe error which occurs a couple of times:

udevd[71]: starting version 175
modprobe: chdir(3.10.11-yocto-standard): No such file or directory

I also saw errors from the ethernet subsystem (?), along the lines of 
"eth0: device not found" and "usb0: device not found". This occurred 
during boot and also when I used "ifup eth0". I'm actually seeing a 
different error now: "ifconfig: SIOCGIFFLAGS: No such device". In either 
case, I think it's because something to do with the actual USB hardware 
is missing or not configured.

"lsmod" shows no modules loaded, i.e.:

root@beagleboard:~#lsmod
Module Size Used by
root@beagleboard:~#

Does this mean that the various device drivers, etc, above are built in 
to the kernel?

Any suggestions for how to diagnose / fix this problem? Anybody else 
have experience with the BeagleBoard xM? I'm a bit lost.

Thanks!


-- 
Riverhead Technology
Jeremy Cole-Baker
Ph. (+64) 27 673 0129
www.rhtech.co.nz


--------------060005030708030801010805
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hi, <br>
    <br>
    I've managed to build a couple of different recipes for my
    BeagleBoard (BeagleBoard xM Rev C), and also had a go at customising
    it.&nbsp; I think I've tried core-image-minimal and core-image-basic.<br>
    <br>
    The build works OK, and I can set up my micro SD card and get it to
    boot. I see lots of messages about loading drivers during boot, and
    I can log in to linux. <br>
    <br>
    However, the USB devices don't seem to be working. The built in
    USB-Ethernet isn't there, and when I plug in a USB stick nothing
    happens - nothing in /dev/ and no messages in the system log. <br>
    <br>
    I don't know whether this is something I missed in the build, or
    some configuration I need to do. I also don't know whether it is
    specific to the Beagle or a general problem. Unfortunately I am new
    to Kernel builds and device drivers. <br>
    <br>
    Here's what I've looked into: <br>
    <br>
    The boot-up messages indicate that the USB drivers are loaded, e.g.:<br>
    <br>
    &lt;snip&gt;<br>
    usbcore: registered new interface driver usbfs<br>
    usbcore: registered new interface driver hub<br>
    usbcore: registered new device driver usb<br>
    ...<br>
    usbcore: registered new interface driver smsc75xx<br>
    usbcore: registered new interface driver smsc95xx<br>
    ...etc<br>
    <br>
    (I think smsc95xx is the USB-Ethernet chip on the beagle board xM).
    <br>
    <br>
    ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver<br>
    ehci-omap: OMAP-EHCI Host Controller driver<br>
    ehci-omap 48064800.ehci: EHCI Host Controller<br>
    ehci-omap 48064800.ehci: new USB bus registered, assigned bus number
    1<br>
    ehci-omap 48064800.ehci: irq 93, io mem 0x48064800<br>
    ehci-omap 48064800.ehci: USB 2.0 started, EHCI 1.00<br>
    hub 1-0:1.0: USB hub found<br>
    hub 1-0:1.0: 3 ports detected<br>
    usbcore: registered new interface driver usb-storage<br>
    musb-hdrc musb-hdrc.0.auto: musb_init_controller failed with status
    -6<br>
    mousedev: PS/2 mouse device common for all mice<br>
    ...Etc<br>
    <br>
    There's a modprobe error which occurs a couple of times: <br>
    <br>
    udevd[71]: starting version 175<br>
    modprobe: chdir(3.10.11-yocto-standard): No such file or directory<br>
    <br>
    I also saw errors from the ethernet subsystem (?), along the lines
    of "eth0: device not found" and "usb0: device not found". This
    occurred during boot and also when I used "ifup eth0". I'm actually
    seeing a different error now: "ifconfig: SIOCGIFFLAGS: No such
    device". In either case, I think it's because something to do with
    the actual USB hardware is missing or not configured. <br>
    <br>
    "lsmod" shows no modules loaded, i.e.: <br>
    <br>
    <span style="color: rgb(51, 51, 51); font-family: Arial, sans-serif;
      font-size: 14px; font-style: normal; font-variant: normal;
      font-weight: normal; letter-spacing: normal; line-height: 19px;
      orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: auto;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255); display: inline !important;
      float: none;"><span class="Apple-converted-space"><span
          style="color: rgb(51, 51, 51); font-family: Arial, sans-serif;
          font-size: 14px; font-style: normal; font-variant: normal;
          font-weight: normal; letter-spacing: normal; line-height:
          19px; orphans: auto; text-align: start; text-indent: 0px;
          text-transform: none; white-space: normal; widows: auto;
          word-spacing: 0px; -webkit-text-stroke-width: 0px;
          background-color: rgb(255, 255, 255); display: inline
          !important; float: none;">root@beagleboard:~#<span
            class="Apple-converted-space">&nbsp;</span></span></span>lsmod <br>
      Module Size Used by</span><br>
    <span style="color: rgb(51, 51, 51); font-family: Arial, sans-serif;
      font-size: 14px; font-style: normal; font-variant: normal;
      font-weight: normal; letter-spacing: normal; line-height: 19px;
      orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: auto;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255); display: inline !important;
      float: none;">root@beagleboard:~#<span
        class="Apple-converted-space"> </span></span><br>
    <br>
    Does this mean that the various device drivers, etc, above are built
    in to the kernel?<br>
    <br>
    Any suggestions for how to diagnose / fix this problem? Anybody else
    have experience with the BeagleBoard xM? I'm a bit lost. <br>
    <br>
    Thanks!<br>
    <br>
    <br>
    <pre class="moz-signature" cols="72">-- 
Riverhead Technology
Jeremy Cole-Baker
Ph. (+64) 27 673 0129
<a class="moz-txt-link-abbreviated" href="http://www.rhtech.co.nz">www.rhtech.co.nz</a></pre>
  </body>
</html>

--------------060005030708030801010805--
