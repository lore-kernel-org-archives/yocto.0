Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0A36E00A48; Sat, 29 Apr 2017 00:40:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.49 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14E11E009AA
	for <yocto@yoctoproject.org>; Sat, 29 Apr 2017 00:40:53 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id c62so7561875oif.2
	for <yocto@yoctoproject.org>; Sat, 29 Apr 2017 00:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QMKwbONKqbF+MXQPWC85fVkzlOz9pK/YSE+ZkhcxjQw=;
	b=lEXN6z4b/qhb2GBPuCz6+iFQR8DASW2fCAwn3xwEL+Y11+RgPLF/5plMDiIPmOtshS
	z7J/7giFVx4BAPzkI/B2x0m88csXxvMkMSIFjM9aVID3ixs2PrIagVn3pv0BEOq+1ibu
	gSYU8/jJUXk0AHk1PNH0G7Vzpbjueb9W7C7Jkgc2ozalalmfRbyo40EDbENeEVwYcvgu
	sOshBizAfmxaIgz/3MqytoPE+S7Z0q/uffi3r47eTfO1RFyke+JEzNfaDNpszzQes/cC
	+PedW+44Z+yM8D/eyNnteLjcmwFmXmJ5qbuJepCmN32vJ0FdrW9QdF4Sj90njrNjvzwT
	EiDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QMKwbONKqbF+MXQPWC85fVkzlOz9pK/YSE+ZkhcxjQw=;
	b=QKyhzbDyV4xs142Oc6bKrgMuluuxFQc1cDbc3p8yBTggAbFo7/TmVl2a8abd3OPpy2
	Gq7Wkf2DwRAulLLtEQksW9sPle+V2YUCEFfpuVtXbI1QecMaGttD/4U4SqUDy5ujDBhh
	zfDwDcwkAlo1mQagjrf8kq6iCXVe4nGObF1LGPha50qMUOiuD/NaeojdQc3vn7XmXz+L
	a+3LkXZRqJbC2mdfhdfAa3BggJqeJelnSIqz8+10m+VKfqHFYlYrufbUXP6IyNWcgz8y
	WwjTwBCgFAgRCgm56d7Opc541h5bzgQYOgiRJw7mpnjbDoJqnF8CIQmuxvaFx6KUSUzW
	rjiQ==
X-Gm-Message-State: AN3rC/4KKevbBP/T9nl5XK0zbLdyY3bDE/LxpGRkaAQgsslvEpssxMBN
	qQi3nM6hS3iU3VLT5WtaR6Vu/qBjug==
X-Received: by 10.202.4.211 with SMTP id 202mr6474208oie.41.1493451653003;
	Sat, 29 Apr 2017 00:40:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.24.107 with HTTP; Sat, 29 Apr 2017 00:40:52 -0700 (PDT)
In-Reply-To: <CAMC=D=vgejGzJggU_DE13_tspbTZfi=4G9JShhXC8Q1XzWnxhg@mail.gmail.com>
References: <CAMC=D=s=KwPN8ydYD+u0CXKJ-w4f3OtKu6f_rx-egEomjx37+Q@mail.gmail.com>
	<CAC+thW08Otvupad2dbuodf9RgUStGrSPxmN536rmV5+E6gcw5w@mail.gmail.com>
	<CAMC=D=vHGZJA_+pR9GJawU63GuPmsLAvmqg3hi6ttnYhcmN-nA@mail.gmail.com>
	<CAC+thW3zTubp1by4i6it39bzvqkWMw4SExCHjSmc3OhmXrcwxw@mail.gmail.com>
	<CAMC=D=vgejGzJggU_DE13_tspbTZfi=4G9JShhXC8Q1XzWnxhg@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Sat, 29 Apr 2017 09:40:52 +0200
Message-ID: <CAC+thW0Lcmkn-zL_AyQXztQNywLxPAW0zFUM2YVCDvE8YcTFfw@mail.gmail.com>
To: Luca Carlon <carlon.luca@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Building rpi-test-image for Pi3 64 bit
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
X-List-Received-Date: Sat, 29 Apr 2017 07:40:55 -0000
Content-Type: multipart/alternative; boundary=001a113b31ea443ead054e494f59

--001a113b31ea443ead054e494f59
Content-Type: text/plain; charset=UTF-8

On Sat, Apr 29, 2017 at 2:39 AM, Luca Carlon <carlon.luca@gmail.com> wrote:

> Hello,
> thank you very much for your advice. It seems I can build both a minimal
> image and rpi-basic-image. I would like to test to see if the Pi is able to
> boot with these images but it seems that the images directory does not
> contain any sdimg file. By reading https://github.com/agherzan/
> meta-raspberrypi and https://github.com/Nuand/bladeRF/wiki/Creating-Linux-
> based-Embedded-System-Images-with-Yocto it seems I should find a sdimg
> file to flash to the sdcard. I suppose this image file contains both the
> boot and rootfs partitions. But it seems I do not see this image at all,
> this is a list of what I can see in tmp/deploy/images/raspberrypi3-64:
> https://pastebin.com/8XsRHzUY. I see the rootfs filesystem that I can
> extract in a partition, but not the boot partition the Pi needs. Maybe I'm
> missing some line in the conf files?
>

If you are using the local.conf you previously posted, the line:

IMAGE_FSTYPES = "tar.xz"

is overriding default configuration from rpi-base.inc in meta-raspberrypi
which is:

IMAGE_FSTYPES ?= "tar.bz2 ext3 rpi-sdimg"

You can also consider using wic image format to generate a flashable image
(see Yocto documentation on how to do that).

--001a113b31ea443ead054e494f59
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On S=
at, Apr 29, 2017 at 2:39 AM, Luca Carlon <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:carlon.luca@gmail.com" target=3D"_blank">carlon.luca@gmail.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr">Hello,<br>thank you very much for your advice. It seems I can bu=
ild both a minimal image and rpi-basic-image. I would like to test to see i=
f the Pi is able to boot with these images but it seems that the images dir=
ectory does not contain any sdimg file. By reading <a href=3D"https://githu=
b.com/agherzan/meta-raspberrypi" target=3D"_blank">https://github.com/agher=
zan/<wbr>meta-raspberrypi</a> and <a href=3D"https://github.com/Nuand/blade=
RF/wiki/Creating-Linux-based-Embedded-System-Images-with-Yocto" target=3D"_=
blank">https://github.com/Nuand/<wbr>bladeRF/wiki/Creating-Linux-<wbr>based=
-Embedded-System-Images-<wbr>with-Yocto</a> it seems I should find a sdimg =
file to flash to the sdcard. I suppose this image file contains both the bo=
ot and rootfs partitions. But it seems I do not see this image at all, this=
 is a list of what I can see in tmp/deploy/images/<wbr>raspberrypi3-64: <a =
href=3D"https://pastebin.com/8XsRHzUY" target=3D"_blank">https://pastebin.c=
om/8XsRHzUY</a>. I see the rootfs filesystem that I can extract in a partit=
ion, but not the boot partition the Pi needs. Maybe I&#39;m missing some li=
ne in the conf files?<br></div></blockquote><div><br></div><div>If you are =
using the local.conf you previously posted, the line:</div><div><br></div><=
div>IMAGE_FSTYPES =3D &quot;tar.xz&quot;<br></div><div><br></div><div>is ov=
erriding default configuration from rpi-base.inc in meta-raspberrypi which =
is:</div><div><br></div><div>IMAGE_FSTYPES ?=3D &quot;tar.bz2 ext3 rpi-sdim=
g&quot;</div><div><br></div><div>You can also consider using wic image form=
at to generate a flashable image (see Yocto documentation on how to do that=
).</div></div></div></div>

--001a113b31ea443ead054e494f59--
