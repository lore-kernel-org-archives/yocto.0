Return-Path: <prof7bit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2345EE00CC1; Thu, 12 Oct 2017 03:33:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (prof7bit[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.181 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f181.google.com (mail-ua0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A2FDE00C96
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 03:32:59 -0700 (PDT)
Received: by mail-ua0-f181.google.com with SMTP id u32so2753579uau.0
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 03:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ayOe2ccAK38/vKXb58083dZGCRDOfjEQOsWbhU+OyV4=;
	b=Anqy0N5CR5FrvnejKtPAANE4LNwx8gO8pqJkr6Z5ziXnRKxQWyoVq2PtciClE2SwFT
	BAf1b9D9X25hZNfNuoFS5yej3bh9iUX5WtwZeTePA4rvYIwJSEzy0CQoUw+PkVsxpnw6
	o5wqdCAfN5HIRehnDUUhbUIQ1UI5Qo0xGPD6ojNjSCg0vz2W8GAXOpBntd1p23sc4ZXS
	769RMW2WVGeBcPfwUtV3941ll6FM+JFi1oN8g8C0yZ/OS+kt8unWIkM9O5FkURofYlRG
	5UkWY5DJM8OwEfCFEo282tNizaGgP9KhKC+bkStO/BUJT/FyCc3HOzG9mktaGMlIAY05
	x4rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ayOe2ccAK38/vKXb58083dZGCRDOfjEQOsWbhU+OyV4=;
	b=FurPiHPbhii4B3Q3xwQIvq6IY92Cui6+C9gdqp5Md86i91t85Dy5k2WPjDJBszRLTJ
	NOn7CbmZ+9/J+CqIjZxwPwIYpVvwW7ZhTTCxUP8DezPPOreV1G6n6h9GfzuwFfFXPXp5
	8osG/tj1P2jfDu6CRmHCceZl+59FY+yzyqziQwnoGZgA9kdcEmhDrTjId1FIzMTzWCK/
	56ixD1iokcYx+E0BpR9tQ73HmRhbsDGjhKg+6HTbyXtrJ+ay3MMhfVv1CI8yEBZ/Bws3
	ulhQXZ5kGLxufUyyPPJbzqVWSOcH+IZ+SYdmISDq9v3C4eUNmAqflaLdCZsCIF2FPtDv
	uQJg==
X-Gm-Message-State: AMCzsaWewEKiRH/qB/hCOnmWxxBlqvevC4vTM5CPj+t0/M9m4XNwXeT7
	q66s/OdclrtE50gTIwNhybiMWhgJ768gCkyFPC1wRg==
X-Google-Smtp-Source: AOwi7QDa/0lPrXAG98sk6gs06amvocpt14740+cjBLB3D+OPKMialy+xPlRzvvKi65kSTRY/OwY2kj4vIerfSjPFKjo=
X-Received: by 10.159.60.42 with SMTP id u42mr1456419uah.37.1507804378808;
	Thu, 12 Oct 2017 03:32:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.178.15 with HTTP; Thu, 12 Oct 2017 03:32:58 -0700 (PDT)
From: Bernd <prof7bit@gmail.com>
Date: Thu, 12 Oct 2017 12:32:58 +0200
Message-ID: <CAAkg2-n4nmbTHezWJk-JTjABhVEgdNyWGtJVqkEJ2KD9tfX7HA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: possible to append or patch existing machine .conf file?
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
X-List-Received-Date: Thu, 12 Oct 2017 10:33:01 -0000
Content-Type: text/plain; charset="UTF-8"

Suppose I have the following bugfix patch for a 3rd party machine conf
file I am using:

diff --git a/conf/machine/colibri-vf.conf b/conf/machine/colibri-vf.conf
index 3ddef79..ba47488 100644
--- a/conf/machine/colibri-vf.conf
+++ b/conf/machine/colibri-vf.conf
@@ -35,6 +35,6 @@ MKUBIFS_ARGS = " -c 8112 -e 124KiB -m 2KiB -F"
 UBINIZE_ARGS = " -p 128KiB -m 2048 -s 2048"
 UBI_VOLNAME = "rootfs"

-SERIAL_CONSOLE ?= "115200 ttyLP0"
+SERIAL_CONSOLE = "115200 ttyLP0"

 MACHINE_FEATURES += "usbgadget usbhost vfat alsa touchscreen"

Is there a proper way to somehow temporarily add something to my layer
to apply this patch until it makes its way upstream and into the
branch I am using? Or should I make my own machine file, include the
original one and then change the variable?

So far I have not found any elegant way to otherwise force this
variable to its correct value in my image recipe, the only way I have
found to work around this bug is to .bbappend the inittab recipe where
this variable is actually used and change the value of another
variable (SERIAL_CONSOLES, note the S at the end) which is derived
from SERIAL_CONSOLE right there in this bbappend file. This seems to
help.

But while doing this I have also noticed a strange anomaly in the
output of bitbake -e:

* When I change the variable in my image recipe then bitbake -e will
show another "set" access and both variables SERIAL_CONSOLE and
SERIAL_CONSOLES will have the correct value as intended by me but the
produced image will have the **wrong** entry in its inittab.

* When I bbappend the inittab recipe to set SERIAL_CONSOLES right
there where it is used then my final image will have a correct inittab
and the serial console will work bit there is **no** mention of that
variable change in the output of bitbake -e

* Only when I change the machine conf file iitself to set the variable
then bitbake -e and the produced image both show the correct entry.
Why does it behave that way?

