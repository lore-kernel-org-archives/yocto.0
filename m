Return-Path: <ashcharles@gmail.com>
Received: from mail-ve0-f175.google.com (mail-ve0-f175.google.com
	[209.85.128.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF233E0090A
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 14:06:28 -0800 (PST)
Received: by mail-ve0-f175.google.com with SMTP id oy12so4507243veb.20
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 14:06:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=H7xI7Bj1hKUfVwGLsSIdc7SjkH1AN1TQwJYfS0lOPiM=;
	b=AepDJ6s1vrrsdkhup9G79XJHVd+i5q2sZgZmUF0zMm4zJEHs9e6P5fFVlCi2is4whA
	r3SDn8crdcnbcDzxNgfO1x0CDHXRc+OzT9oYhzyxKOZ+82AXZhbFLom4YPsjvVlz41gS
	7i7HW7biXYj4zyrsk7lp/3hFbpNP1R/GM1LqG+Xl0KbMsW/+yixbOi3dVf1yK+86+Vmy
	7AYXwBDxRCLxEnI+NKB+/NQ/1rD/BA68zi8OOs1ePU3NI2gXP62XFciAqPLpXphdNIyE
	vfMrr+7sOSvMwe7Yc2/NBrDHKBqfR2J/+SdIWZIYkXbKGdgJg4WCB3nJtBaWCdJzZIlG
	9Ufg==
X-Received: by 10.58.161.227 with SMTP id xv3mr3045533veb.31.1393538787047;
	Thu, 27 Feb 2014 14:06:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.45.134 with HTTP; Thu, 27 Feb 2014 14:05:56 -0800 (PST)
From: Ash Charles <ashcharles@gmail.com>
Date: Thu, 27 Feb 2014 14:05:56 -0800
Message-ID: <CAK8F28nj1CNzSGxJegJDjgP7f=OGAUbNPY9ak9ea+JoAOEKhYg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Using MACHINE_EXTRA_RDEPENDS to install wifi Firmware
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
X-List-Received-Date: Thu, 27 Feb 2014 22:06:29 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I'm seeing warnings like
"
WARNING: The recipe linux-firmware is trying to install files into a
shared area when those files already exist. Those files and their
manifest location are:
   /home/ash/Store/Yocto/yocto/build/tmp/sysroots/overo/lib/firmware/whiteheat.fw
   Matched in manifest-overo-linux-gumstix
...
"
when building a core-image-minimal.  It looks like the linux-firmware
is getting pulled in resulting in these warnings because I have this
line in my machine/overo.conf file:
"
...
MACHINE_EXTRA_RDEPENDS += "linux-firmware-sd8686"
...
"

I added this to make sure the firmware for my wifi chip was getting
installed as directed per [1] but I'm thinking that this is not
correct.

What is the correct way to ensure my firmware gets installed or will
it anyway by virtue of the kernel being included in the build?

Thanks,
Ash

[1] http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-MACHINE_EXTRA_RDEPENDS

