Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qa0-f50.google.com (mail-qa0-f50.google.com
	[209.85.216.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 681DBE01494
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 02:08:25 -0700 (PDT)
Received: by mail-qa0-f50.google.com with SMTP id bv4so190214qab.2
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2013 02:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=JTywZiD8l9j3t8GmHUuuUGAPA4PPb+zcVD8dYqMfTs4=;
	b=FkdDNfzF6I1qYawaunSiqYjTlkuWofFS6bZziYWDFpIhnSJ3ZybXuZ0ZKRombP7ldm
	9/sPhN6Z+xFpe4kZ4E+rA5CBlfkflQ7VTKh00Gac49hvfBhIxLh2mORfLjO1n+L+t+ET
	nHmPjHKKuusV5jy6p9/DQh1GUN8YfxmEQircy991vSr2Jpp0oamG8Gc8VIBn5c3P4KwB
	saEoWaN9tYLvfi+mZ7NUqBg8UZpnxOcOMuGjB6BT9Aqx2I7EITLV60ULnzOMnxrl0mzs
	fNo9J7s/D5DJ4yW3kbOJzSet9gVIFF10Qse+W9yltzNkzgQMxe+c9A/xNVWCVqAy49aV
	CowA==
MIME-Version: 1.0
X-Received: by 10.224.110.205 with SMTP id o13mr7506725qap.81.1365152904687;
	Fri, 05 Apr 2013 02:08:24 -0700 (PDT)
Received: by 10.49.35.140 with HTTP; Fri, 5 Apr 2013 02:08:24 -0700 (PDT)
Date: Fri, 5 Apr 2013 11:08:24 +0200
Message-ID: <CAFyqS9rPxsUqhnNYzCVF4y96DoMDsF2LKV8Xk7ds7Ad3Y+3jYA@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: yocto@yoctoproject.org
Subject: USB Ethernet problems
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
X-List-Received-Date: Fri, 05 Apr 2013 09:08:25 -0000
Content-Type: multipart/alternative; boundary=20cf3063e315f2ba5004d9996de6

--20cf3063e315f2ba5004d9996de6
Content-Type: text/plain; charset=ISO-8859-1

Hi. In our configuration we do not have an on-board Ethernet device. It
connected to the USB-host adapter.
It seems that probing of such devices are done very late in the kernel
boot-up which means it gets out of sync with the network init script(s)
and the NIC thus has to be brought up manually after boot.

...
usb 1-1: new high-speed USB device number 2 using xusbps-ehci
hub 1-1:1.0: USB hub found
hub 1-1:1.0: 4 ports detected
VFS: Mounted root (ext2 filesystem) on device 1:0.
devtmpfs: mounted
Freeing init memory: 152K
INIT: version 2.88 booting
usb 1-1.4: new high-speed USB device number 3 using xusbps-ehci
Starting Bootlog daemon: bootlogd: cannot allocate pseudo tty: No such file
or directory
bootlogd.
Configuring network interfaces... ifconfig: SIOCGIFFLAGS: No such device
INIT: Entering runlevel: 5
Starting Dropbear SSH server: NET: Registered protocol family 10
dropbear.
Starting syslogd/klogd: done
Stopping Bootlog daemon: bootlogd.
asix 1-1.4:1.0: eth0: register 'asix' at usb-xusbps-ehci.0-1.4, ASIX
AX88772 USB 2.0 Ethernet, fc:75:16:cf:6a:86
...

Is there some way to configure a system through Yocto to handle this
scenario?

Hans

--20cf3063e315f2ba5004d9996de6
Content-Type: text/html; charset=ISO-8859-1

Hi. In our configuration we do not have an on-board Ethernet device. It connected to the USB-host adapter.<br>It seems that probing of such devices are done very late in the kernel boot-up which means it gets out of sync with the network init script(s)<br>
and the NIC thus has to be brought up manually after boot. <br><br>...<br>usb 1-1: new high-speed USB device number 2 using xusbps-ehci<br>hub 1-1:1.0: USB hub found<br>hub 1-1:1.0: 4 ports detected<br>VFS: Mounted root (ext2 filesystem) on device 1:0.<br>
devtmpfs: mounted<br>Freeing init memory: 152K<br>INIT: version 2.88 booting<br>usb 1-1.4: new high-speed USB device number 3 using xusbps-ehci<br>Starting Bootlog daemon: bootlogd: cannot allocate pseudo tty: No such file or directory<br>
bootlogd.<br>Configuring network interfaces... ifconfig: SIOCGIFFLAGS: No such device<br>INIT: Entering runlevel: 5<br>Starting Dropbear SSH server: NET: Registered protocol family 10<br>dropbear.<br>Starting syslogd/klogd: done<br>
Stopping Bootlog daemon: bootlogd.<br>asix 1-1.4:1.0: eth0: register &#39;asix&#39; at usb-xusbps-ehci.0-1.4, ASIX AX88772 USB 2.0 Ethernet, fc:75:16:cf:6a:86<br>...<br><br>Is there some way to configure a system through Yocto to handle this scenario?<br>
<br>Hans<br><br><br>

--20cf3063e315f2ba5004d9996de6--
