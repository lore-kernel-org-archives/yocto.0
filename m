Return-Path: <paul.betafive@gmail.com>
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D6EFE0137F
	for <yocto@yoctoproject.org>; Sat, 27 Apr 2013 09:14:22 -0700 (PDT)
Received: by mail-ob0-f171.google.com with SMTP id er7so4374040obc.30
	for <yocto@yoctoproject.org>; Sat, 27 Apr 2013 09:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:date:x-google-sender-auth:message-id
	:subject:from:to:content-type;
	bh=JbFdktdfTs3XR2f3X+t1eEk49DLGakAYZoOABy7mRgI=;
	b=coqxzKjLwph40ENylM7p6jt+PKhux5TDzuG6w737n447gPUQ3iFI4f/4Bg+bgahFYd
	uOsI5RB20v9TI0x7IIokLCwn47Ja3Ud8PDqKSP+uxmWT5665qfUFVMWzVj6EXATkVl7y
	oDZ6zOrrD/av7/UPj+m+1JceRoR3Ugy6t4YiZqMtIUueJb+/aEDyXCmU8PcEQekJWNSd
	FurQKeVxFe032eU2Yjk3F0mNqBDWvb96BvR2r2xAMvBZFAvSYHjAtTgtzJoN4SSm8nkE
	Gg7KG6VtG8fxIBkD2LqJEgKPhxOdOJLPOF7NvdBR/wlsK/GOa/I/IofTRXVcaar0yaWv
	SRzw==
MIME-Version: 1.0
X-Received: by 10.60.28.37 with SMTP id y5mr21268105oeg.134.1367079262164;
	Sat, 27 Apr 2013 09:14:22 -0700 (PDT)
Sender: paul.betafive@gmail.com
Received: by 10.76.2.72 with HTTP; Sat, 27 Apr 2013 09:14:22 -0700 (PDT)
Date: Sat, 27 Apr 2013 17:14:22 +0100
X-Google-Sender-Auth: nUL6ciJVqu0a5eUoSa1S9CWFtQU
Message-ID: <CANyK_8c2tTqktkHFuR+vzAGbsb3AKyFow1T4rU_aEnb8pdQnuw@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] Zenity is in meta-gnome
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
X-List-Received-Date: Sat, 27 Apr 2013 16:14:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

rpi-first-run-wizard depends on zenity, which is in meta-gnome.
However the README file for meta-raspberrypi says only oe-core and
meta-oe layers are required (lines 105 and 106 of the current README).

I'd say the 2 possible solutions are either listing meta-gnome as a
layer dependency or re-writing rpi-first-run-wizard to use something
else. I can write a patch for the former, the latter isn't really my
area of expertise.

Thoughts?

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

