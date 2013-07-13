Return-Path: <paul.betafive@gmail.com>
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53AAAE0071F
	for <yocto@yoctoproject.org>; Sat, 13 Jul 2013 07:28:19 -0700 (PDT)
Received: by mail-ob0-f175.google.com with SMTP id xn12so12564544obc.34
	for <yocto@yoctoproject.org>; Sat, 13 Jul 2013 07:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:x-google-sender-auth:message-id
	:subject:to:content-type;
	bh=ELy03X9d1HaJb/hi1t8ySt9l/WxsFm/y7+8hAihG+Qs=;
	b=csuUSRKNc9vgA9jWMUjFaD4d08Zn6SykXrGyXruIBZZsP+aDFyRbOFqVKDtI8FyNAB
	Z168+yXxWMtsXOVtaY/V/x34HEGUd4nJyVN/3q1dZjN4OWvMXk11H+3dGGe87rb8bx1O
	SHr1bBJzyTp7M2PPtMlRMWDGPQx7piwLnvOKSO6mNvZvh+1lf/gfVo7VHJifWjyey5qf
	zR1zvx5BGwR4AdS7a+lb27frVn8TGqnQQrMe3P84Y3UnZKgztYUo9eM7H2SI4WSBV+a4
	887/Qf5oq4gCBzRdDwQ/6P6yIxAR3BYT2Y475RidoK7Q1wNyUCrF7Kwz9OXUJzzN7MzS
	nCPw==
X-Received: by 10.60.125.100 with SMTP id mp4mr38820841oeb.60.1373725698648;
	Sat, 13 Jul 2013 07:28:18 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.76.102.11 with HTTP; Sat, 13 Jul 2013 07:27:38 -0700 (PDT)
From: Paul Barker <paul@paulbarker.me.uk>
Date: Sat, 13 Jul 2013 15:27:38 +0100
X-Google-Sender-Auth: vfNcD4coBs2Cm8sOQpWpbKkaOYw
Message-ID: <CANyK_8f=m4k8AD63z8YT8ebi0Ayz_nJdH5codGWHVkDpW1iw=Q@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [meta-yocto-bsp] [dylan] linux-yocto_3.2 version mismatch
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
X-List-Received-Date: Sat, 13 Jul 2013 14:28:20 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'm building from the dylan branch with:

DISTRO = "poky"
MACHINE = "beagleboard"
PREFERRED_VERSION_linux-yocto = "3.2%"

BBLAYERS = " \
  .../poky/meta \
  .../poky/meta-yocto \
  .../poky/meta-yocto-bsp \
  .../meta-openembedded/meta-oe \
  .../meta-udaq \
  "

(meta-udaq is my private layer for this device)

I'm getting a file in tmp/deploy/images named
"uImage--3.2.32+git0+e7f2fdc48f8808887175f0328274a2668084738c_40bde7a43ef3cd85729ab02464a7ecdf71e522a6-r4.1.4-beagleboard-20130712125255.bin":
note the 3.2.32 version.

When running on the Beagleboard, uname -a reports version 3.2.18.

The commit hash 40bde7a43ef3cd85729ab02464a7ecdf71e522a6 is set in
.../poky/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.2.bbappend
and checking the git log for linux-yocto-3.2, this does refer to
version .18.

So my guess is we should do one of the following:
a) Modify PV (or LINUX_VERSION) in the bbappend to reflect the correct version?
b) Bump the git commit hash used for beagleboard to 3.2.32?

I know 3.2 is old, but the APIs I'm using for my kernel driver were
ditched in the 3.3 kernel release and 3.2 has a predicted upstream EOL
of 2016.

Thanks,

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

