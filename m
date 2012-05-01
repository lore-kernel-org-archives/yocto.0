Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98402E01374
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 07:21:23 -0700 (PDT)
Received: by yenl3 with SMTP id l3so2404634yen.35
	for <yocto@yoctoproject.org>; Tue, 01 May 2012 07:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=jfmfMAYSFLMReqt84U5bfPTWnWkaetUTGxEhNZ7oMxI=;
	b=SkJXei7BnIiLtPFyEqFZF4hA2RM4qFIlVi5QNO2F+fyqoIVRhXym34HWeHNIo2NyeP
	DFx4KJRkW7PtW25Qteb+DSGidSgvvvQjkwaImEyW/W/oViE/BSLcO/NAoppFOStxkIIZ
	EUhWGOdqK5rYnW8Ey4aVwZXMCGFjn2WcxPNiuMEDqZq03AjHiBArgN3jH7hA6SQshk+Z
	z7g2qBqMciSVLqJ21NgMJujZSwOVcO4uv2/LUe47HPNIqo6cTaTPbaK+U7OpyE6FqLeF
	fV0j2nb/lN8YXAHsVfr68oBhN7iFbZOY8Cr/fXE/9NI+V9UBIchLTntfMJsIjCGIdSeG
	q0/Q==
MIME-Version: 1.0
Received: by 10.68.202.130 with SMTP id ki2mr13105096pbc.52.1335882081621;
	Tue, 01 May 2012 07:21:21 -0700 (PDT)
Received: by 10.68.48.164 with HTTP; Tue, 1 May 2012 07:21:21 -0700 (PDT)
Date: Tue, 1 May 2012 16:21:21 +0200
Message-ID: <CACW_hTYtBp5Px_7bYcKY86fqisZEgX7PvJS4kk6JPf2Xrn8TDA@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: yocto@yoctoproject.org
Subject: bsp experiences
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 01 May 2012 14:21:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

Dear all,

In this email I'd like to share my experiences wrt creating a new bsp.
I hope this is useful for someone (e.g. for updating the doc). Feel
free to point out the n00bish errors I made, or where I could have
improved.

Aim was to bring my current board (powerpc mpc8313e based) onto yocto 1.2
This board is already working under oe classic.

I started fetching poky-denzil-7.0.
Tested by building core-image-minimal. No problems here.

Then I wanted to add my own bsp. Decided to use the bsp-guide as a starter.

Tried to use yocto-bsp with the standard 7.0 setup (where there is a
poky-denzil-7.0-build dir adjacent to the soruce dir).
yocto-bsp when invoked complained with:
IOError: [Errno 2] No such file or directory:
'/home/frans/poky-denzil-7.0/scripts/../build/conf/bblayers.conf'

I resolved this for now by making /home/frans/poky-denzil-7.0/build/ a
symlink to /home/frans/poky-denzil-7.0-build
Not sure if that is the desired solution but anyway this allowed me to
move forward

Reinvoked yocto-bsp create, this indeed gave progress.
Now had to decide on the machine branch to start this on. As mpc8315
is fairly close decide to start with that one.
tuning support was a bit tough. The 8313 machine conf file in
oe-classic said ppce300c3, so used ppce300c2 as a starter
next modified the file that contains the device tree to the default 8313 dts.

That generated the layer.
Still had to add the layer to bblayers.conf (I was somewhat surprised
by this as the script before complained about not being able to find
that file so I somehow expected it to be added automatically)

Also went to conf/machine in my bsp and changed it to use
tune-ppce300c3 instead of c2, and created this include file by copying
the c2 file to c3 and renaming all references to c2 by c3 (as these
were the only changes when comparing the oe classic c2 and c3 tune inc
files.

While building core-image-minimal, building the kernel failed because
recipes-kernel/linux/linux-yocto_3.2.bbappend had some references to
mpc8315*. Replaced these with mpc8313*. (not fully sure if that is
fully sound though; anyway I need to hack the kernel part anyway).
And now, while typing this, things are happily humming along, giving
me time to type this message.

Next step is probably see if I can run the executables created; if so,
move on to adding my own image recipe, and see if I can get that
going.
After that hack the kernel recipe (so it uses my own defconfig and
device tree, and add our own drivers).
I'll write a followup email if there are things that could e.g. be
avoided by updating the docs.

Frans

