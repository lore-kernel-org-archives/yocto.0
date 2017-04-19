Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A99A6E00A9B; Wed, 19 Apr 2017 04:01:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59F12E00A38
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 04:01:11 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id k87so18167932ioi.0
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 04:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=ex+ghz9Lt0fPmrVXtSA1ldalC8EWSLkE+sUJsTzX6Sg=;
	b=TylVbq+nJset1GaMnKFyq5kupn3ONDgTrVU/MXN2l/Tz//xgWkCpVtdqAaWc2xQe57
	n/zeDuo7fY7cE3TR1l47WInRGLVX/jLVmGX6qc0mrR4Yic9RVuM6E/jG9iS+6Jt+fZjn
	blQUhn6bFUpp4xxjojczUo1Fo7C6xIXFZdo1q0nd1B5VfFTfETPLUxJ4nRsf0IJ/LpYT
	6D5oeYIUVTnOX6hjwocZiDA1sN1oWSL4o/wt1n7mo7XJkzJKNkYrAkYcie46aHE0BCOX
	AcmOCbHkzLPmKOhr7k/mY/zIlc+m5xU0ICN5BJroELc2PY7uasY0xqca0xVAw28kdVWX
	xbGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=ex+ghz9Lt0fPmrVXtSA1ldalC8EWSLkE+sUJsTzX6Sg=;
	b=aFU4L1LhZYAl4zNDgZaQowtwvqH6MJYUfLPR4et5SfIe5WmDpbDbsSO7ENap0OTcQX
	M/6hOg5BDwJkMdgtTD4vAMY6eriWGVYkp09VpYYxOeN3eIhdFscx7qhNRTOsgYyTzo1C
	WehwJT0KO97Xrz1T7/nJ0d1MqG8xjERiI4dKvOV2046ZfbSNquIMeXu+0FW8RGGAWQWb
	AiVlT7Yokifj9JfCPgFOGsoQ8kKngpn1cKq1i2yib5UrKFalKb3egDAwr8kBOpPOGhsN
	SWeLbha/R3n8A7PvH4M9r/hqLEIMhwz1J17Ysv2hFbaNjgi5H/+49fN/tYf/G5w/6xVK
	PrJg==
X-Gm-Message-State: AN3rC/5cr3Z+6qfsrQ3kRqahW6IfXgpesQzlCTVwWq1fcqo+xacTE6Sl
	tSn7sGURZ2lcu9RfETJgPu3Pydo32loBKAU=
X-Received: by 10.107.37.85 with SMTP id l82mr2133035iol.162.1492599670430;
	Wed, 19 Apr 2017 04:01:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Wed, 19 Apr 2017 04:00:30 -0700 (PDT)
X-Originating-IP: [86.158.8.191]
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 19 Apr 2017 12:00:30 +0100
Message-ID: <CAK18fxEy4Gnns4q+MrXJj==hr0CRSJK3xB=sh-yCFRUsaG7PeQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-raspberrypi] Unified serial console device option
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
X-List-Received-Date: Wed, 19 Apr 2017 11:01:15 -0000
Content-Type: text/plain; charset=UTF-8

Hello all,

I'm trying to have the ability for user to use serial0 as serial port
on the header and serial1 (when available) for Bluetooth. In this way
rpi2 and rpi3 (32b) will have the same configuration. The story goes
identical for rpi0 and rpi0-wifi.

Now, what I was planning to do is:
1. create udev rules to generate the the symlinks accordingly to dt aliases.
2. add the above package (with the rules) as a machine recommends
(MACHINE_ESSENTIAL_*).
3. and then change all the SERIAL_CONSOLE = 'serial0 115200'

This works great with one exception: system parses the console
argument in cmdline and spawns through a generator a new getty
instance on that device. Adding systemd-serialgetty package will make
system have two getty services on the same device (serial0 and for
example AMA0) which is obviously unusable and wrong. Sysvinit works
ok.

Then I thought to make this completely optional:
1. create udev rules to generate the the symlinks accordingly to dt aliases.
2. make SERIAL_CONSOLE configurable (default assignments)
3. a user wanting to take advantage of the udev rules will have to add
the rpi udev rules to the image and modify in his/her local.conf
SERIAL_CONSOLE

Currently we have a cascade setup for our machine configuration: ex
rpi3 includes rpi2 and tweaks some things. We do this to avoid some
duplication (even though the gain is really minimal - 2-3 lines).
Anyway it is something after all.

This again looks fine but because we have machine which include other
machine conf, I endded up having a problem when I want to overwrite
both definitions: see rpi3 which includes rpi2 (defines a
SERIAL_CONSOLE) than overwrites SERIAL_CONSOLE.

What do you guys think as a way forward? One way would be to make the
boards definitions be stand alone and use default assignments which I
think it would fix everything and make the mechanism completely
optional.

BTW: This would unlock the ability to create a raspberrypi-all machine
that would work on any raspberry board (armv6 + wifi firmware + etc).

--
Andrei Gherzan

