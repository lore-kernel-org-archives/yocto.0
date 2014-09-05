Return-Path: <errordeveloper@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9FDEE00769; Fri,  5 Sep 2014 04:45:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (errordeveloper[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01E82E006EF
	for <yocto@yoctoproject.org>; Fri,  5 Sep 2014 04:45:29 -0700 (PDT)
Received: by mail-ig0-f171.google.com with SMTP id l13so919003iga.10
	for <yocto@yoctoproject.org>; Fri, 05 Sep 2014 04:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=FtE+dwdMypYPj2syhCK5NGPuVvsyW5Sh4wktpBHvz5s=;
	b=ll7Dxf+7Be3QW8U+7VP+eJ3fBLSuKTyP+oI52OKsq05+KaBnul8yE/T1D9h7MaOMLp
	3QFwqj6sunkcSHS3Ecy2UjFy8A64QVEjjPBiTFrrUTMwRqIs6zvCm5N4EoR02kRkAZmL
	efi1dXHKkZz7jwrlUCsbvCx06ZYomhYppWb1xVqjJfGlav7W8FLrdOloG45sfjB3W0za
	qVA8qqzD7cP5k359OKoZQFiFde/HN4PDYZK+aH5RoIoClQ58ulURqsXMcH4EzbmJm4JV
	EOR19KHete3WpKRA6YfLCOV3WcdZrIMPphVOCdEwBUzHOYmdILW1xaztdzxB9JsJfTVJ
	Gkkg==
MIME-Version: 1.0
X-Received: by 10.50.43.164 with SMTP id x4mr3671571igl.27.1409917528520; Fri,
	05 Sep 2014 04:45:28 -0700 (PDT)
Received: by 10.64.238.106 with HTTP; Fri, 5 Sep 2014 04:45:28 -0700 (PDT)
Date: Fri, 5 Sep 2014 12:45:28 +0100
Message-ID: <CAPhDKbHAzY4MikG=izTnfs3_wULDghYKhc5pThF5Ft4QbmA-+Q@mail.gmail.com>
From: Ilya Dmitrichenko <errordeveloper@gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: systemd crashes above emergency runlevel
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
X-List-Received-Date: Fri, 05 Sep 2014 11:45:30 -0000
Content-Type: text/plain; charset=ISO-8859-1

I have built an image form Beaglebone (white) with systemd instead of
sysvinit and it crashes after loading a few services. I'm suspecting
it's to do with getty taking over the console tty, but not quite sure.

What I see that the serial port terminal (tried screen and
miniterm.py) gets disconnected and something occurs to the FTDI serial
port so OS X kernel doesn't see it again.

I was able to boot with init=/bin/sh and set default.target to
emergency.target and from there calling `/sbin/init 1` started more
systemd units and then crashed the same way.

Any ideas?

-- 
Ilya

