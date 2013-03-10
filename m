Return-Path: <insop.song@gmail.com>
Received: from mail-we0-f181.google.com (mail-we0-f181.google.com
	[74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F088EE0121B
	for <yocto@yoctoproject.org>; Sun, 10 Mar 2013 04:17:10 -0700 (PDT)
Received: by mail-we0-f181.google.com with SMTP id t44so2563798wey.40
	for <yocto@yoctoproject.org>; Sun, 10 Mar 2013 04:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:from:date:message-id:subject:to
	:content-type; bh=KrV8BjXwP0ceRRoiK5tdFMe7TCfr6WrIlp0Anw8Bx/s=;
	b=vnksZjiCIDepTNCQwNhsvg9oTGbPCW7VosFR23a1TfIHO9Rtn4XeMPNWuTqYB7/1gS
	av5x19mkc8eT11+s6CQkXiKGOSyAAJuwmrXsHqCWmbc4rDUn5gqDBDOOcwoe+h45nc1v
	IC+IcnANg95mnWkioobG+lJnhVfSAp/xHhwNhkGwm67SxnqYyRGSOxdyYXoQC6DhjoYc
	C2u4IfJDEMJDy1DK8FNwTJkSDwWaliL/StniOarlgViPYYIvuuwKP1M081M1F8C+mW8w
	MvxxJvmU7JmfehHElhpPel+boT7wBALp067/gOXQgmRH22XLqmNFcSfsQyDnTGAASWOL
	3zvw==
X-Received: by 10.180.76.84 with SMTP id i20mr7097679wiw.9.1362914229235; Sun,
	10 Mar 2013 04:17:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Sun, 10 Mar 2013 04:16:47 -0700 (PDT)
From: Insop Song <insop.song@gmail.com>
Date: Sun, 10 Mar 2013 04:16:47 -0700
Message-ID: <CACzyEJ_9EjNYwy=uy-h-wAyfFXfFQqiHKdavMPaTS8Fcso1H1w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Loading a new yocto image to Intel Fri2 board
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
X-List-Received-Date: Sun, 10 Mar 2013 11:17:11 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I have a question on loading a new yocto image to Intel Fri2 board.

1. Board: Intel Fri2
--------------------------

2. Image: self built sato image with meta-fri2
--------------------------
I've followed an instruction from
http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/meta-fri2/README
so do dd image of my sato image to usb as described
- "dd if=core-image-sato-fri2-20101207053738.hddimg of=/dev/sdf"

3. Sympton: stuck during boot and no ttyusb access
--------------------------
And connect it to the host USB port.
Then I can see the new grub menu that has "boot" and "install", so
selected "boot"

However, booting was stuck at around this line,
- "0000:03:0a.2: ttyPCH1 at I/O 0x2050 (irq = 41) is a pch_uart"

And I am not able to get the ttyUSB console working either.

4. Others: official sato image for Fri2 is not working either
--------------------------
Also just to make sure I "dd" the image from the official hdd img, but
the result is the same as my own image.

Anyone has tried the same? please let me know.

Thank you very much,

Insop

