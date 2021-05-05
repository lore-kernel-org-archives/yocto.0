Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
 by mx.groups.io with SMTP id smtpd.web10.7039.1620216139223877539
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 May 2021 05:02:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=TJT5HD7Y;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.25, mailfrom: manwag@fastmail.fm)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 42AC9D5A
	for <yocto@lists.yoctoproject.org>; Wed,  5 May 2021 08:02:18 -0400 (EDT)
Received: from imap9 ([10.202.2.59])
  by compute3.internal (MEProxy); Wed, 05 May 2021 08:02:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm3; bh=19Sg5Npi0RX4zke5p9w3fhd2Ev8vCcf
	bdirG7D5FiKo=; b=TJT5HD7YSd3V6Jou9jIwY7DcLVIGhaXl8LFnc9nU7xFoPWf
	6prswSESmFH3JToWjPwCrbsjATafGhRBFtkSW2gmBgUyIiKpY7aNn1wfuRlDmNNG
	Va6ubh8aqbh/eN+kCEqAcJONwrJ6LuDm3mHlGWsbYXTd2r4NQt+kwUWZ3+rVzJmb
	AulQq27GoyzhtZekcGqPYcw5C4siuA0chGlSQFDzIIdGz/xE51WvVQyYmfOOHt+x
	4XV0VAObJjF21BjsOb75yZKdAuYlnmWB67yw8w9ROJHSJwGtEu0CMU2xuEDDnxK4
	uAQbp5H+W2/wzFv3FTH44kuycWHOjmM8gYNsvfA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=19Sg5N
	pi0RX4zke5p9w3fhd2Ev8vCcfbdirG7D5FiKo=; b=moC72N1gzLUx//U1Tm3gv9
	GkSYOByflFOwzJHKJRIQnG/eHXVoC/5LHcman+6VaVtboLkrmY2g9JE/O6shCAby
	j/Xc9kr5ziJJdtXbeOMHDeoEnAUK6bYzw9TtR8okbpqtbN7L5rcjhw1516uuLYWV
	0RZRI/S4PZxdH+xuSzJ6CIGG/WWAxz0ySFT01o5t8g6QgogrtARRhlcTDz/sRIzi
	9mSgG72UfOHQD9wKnrDzJT7/3JUxruRPsmqJmYI6x/ZHLOfY4RQeblJ0LqJ9dDof
	mmcYcOr76t8z5UCTOj6yK7zd2vIn6RUKejjoScbnvC055DC4UJD4ydSOCEBp4/CA
	==
X-ME-Sender: <xms:SYmSYMcrGxUL9ElTWD4NUjmYj0Cp5OC3r34YKH7qJ6Zu5gzejw5ZuA>
    <xme:SYmSYOOJUJvlKMFoEpnz_YzBDOmyu9DgLKa8Lk1gDJ1d2zv8XjhdbkcxKEMUmodD9
    5-ru283QYf6VUeC>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdefkedggeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfgjfhffhffvufgtsehttd
    ertderredtnecuhfhrohhmpedfofgrnhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceo
    ofgrnhghrghgsefhrghsthforghilhdrhffoqeenucggtffrrghtthgvrhhnpeffkeekff
    dtudevudfhueehuefhtddvieeujeevieetleellefhteehhedtleduffenucffohhmrghi
    nhephihotghtohhprhhojhgvtghtrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepofgrnhghrghgsefhrghsthforghilhdrhffo
X-ME-Proxy: <xmx:SYmSYNj_0GuE4rQYKN73T6exxFS00idW4PvT98GXYEAhFEATA-dngQ>
    <xmx:SYmSYB9r3B3BoP8os7Dufzsl_N10L0qczkbbI1hC0yUnzwVjtY3h4w>
    <xmx:SYmSYIs6750Oh9pQIiI29q5gFBvr93YgdhPs1jDHMp4iEibcmMQf0A>
    <xmx:SYmSYG6oxBFyt9Fuo5TDuul1d18fPc_8iAKMMoKg8z0xcKmf2yScgA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 89AEA2E0062; Wed,  5 May 2021 08:02:17 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-442-g5daca166b9-fm-20210428.001-g5daca166
Mime-Version: 1.0
Message-Id: <c72280d9-2a35-4774-aa2e-25f48141479f@www.fastmail.com>
In-Reply-To: <167B3E1B63645EE6.24705@lists.yoctoproject.org>
References: <167B3E1B63645EE6.24705@lists.yoctoproject.org>
Date: Wed, 05 May 2021 14:01:54 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi] Booting a Raspberry Pi 4 using PXE
Content-Type: text/plain

Hello all,

to be able to diagnose my problem, I worked on enabling uart console access to my Raspberry Pi 4B.

It seems the Raspberry Pi puts `8250.nr_uarts=0` in the linux kernel cmdline whenever the Raspi is booting over the network. This is preventing me from getting console access. When I provide the exact same set of files on a USB drive, 8250.nr_uarts is `1`.

Here's my `cmdline.txt`:
`dwc_otg.lpm_enable=0 console=tty1 console=serial0,115200 root=/dev/sda2 rootfstype=ext4 rootwait 8250.nr_uarts=1`

When I boot over network, `/proc/cmdline` is:
```
coherent_pool=1M 8250.nr_uarts=0 snd_bcm2835.enable_compat_alsa=0 snd_bcm2835.enable_hdmi=1 snd_bcm2835.enable_headphones=1  smsc95xx.macaddr=DC:A6:32:B8:04:5C vc_mem.mem_base=0x3eb00000 vc_mem.mem_size=0x3ff00000  dwc_otg.lpm_enable=0 console=tty1 console=ttyS0,115200 root=/dev/sda2 rootfstype=ext4 rootwait 8250.nr_uarts=0
```
Note that both occurences of 8250.nr_uarts got set to 0. Even the one which I deliberatedly set to 1.

When I boot using usb disk:
```
coherent_pool=1M 8250.nr_uarts=1 snd_bcm2835.enable_compat_alsa=0 snd_bcm2835.enable_hdmi=1 snd_bcm2835.enable_headphones=1  smsc95xx.macaddr=DC:A6:32:B8:04:5C vc_mem.mem_base=0x3eb00000 vc_mem.mem_size=0x3ff00000  dwc_otg.lpm_enable=0 console=tty1 console=ttyS0,115200 root=/dev/sda2 rootfstype=ext4 rootwait 8250.nr_uarts=1
```

Has anyone any background info on that? I provide the exact same set of device tree overlays in both cases.

Thank you,
Regards,
Manuel


Am So, 2. Mai 2021, um 13:59, schrieb Manuel Wagesreither:
> Hello all!
> 
> Since a certain eeprom version, the Raspberry Pi 4 can directly boot from network. Has anyone experience on this?
> 
> I already managed to to have the Raspi to load the kernel and all the device tree stuff over network. I then exported `build/tmp/work/raspberrypi4_64-poky-linux/bora-image/1.0-r0/rootfs/` as via nfs and changed the linux kernel commandline so it would use this share as nfsroot. At boot many failing services get reported and and the boot progress stops somewhere along the way. It tells me the system is in emergency mode and asks me for the root password for maintenance. I have an empty root password. When I press Control-D to continue, the same prompt reappears. Same when I simply press enter.
> 
> Has onyone any input for me? I guess I'll need to monitor what gets written to the serial port.
> 
> Regards,
> Manuel
> 
> 
> 
> 
> 
