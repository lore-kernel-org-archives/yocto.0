Return-Path: <carlon.luca@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDDA5E00ACE; Wed,  3 May 2017 05:26:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (carlon.luca[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.49 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3F65E00AA2
	for <yocto@yoctoproject.org>; Wed,  3 May 2017 05:26:42 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id b204so19653147oii.1
	for <yocto@yoctoproject.org>; Wed, 03 May 2017 05:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aNYwgZA5zsEcXx/eXp3E1UYUK3/tAyQlyRhfGIKyE34=;
	b=M5bUldplV0Czp1AreGr0Qy4zTay/R9eqpS+CAYOjXCp/mR9lcYQab2ybHK3oCeZnb8
	a5u3QT5gPk58Fy6QsGxZjEdFyDU7JcSJ9XJojwpbGILtb8gQE4wLALtbV4EOeWlUZd5G
	caJXyKWgdh63C4s+rmAVjeMeQqaYfHum+RSWNHcpQtj0SVUHyMOifXs4Z8iW+YFisuIz
	Bn6tGGdjMln7OZn0ImhXH5l6K9+F8ynDeWQcBULXaReZbbOCPmb8xwAyMgj1j5f6s63Z
	glAfugYqmmiQCta0sxRmIQQdrskvWkBG4MKkgNsYhYa+aecQRKgvSpuIxp3K9Uf6Nvu3
	rN7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aNYwgZA5zsEcXx/eXp3E1UYUK3/tAyQlyRhfGIKyE34=;
	b=dUDjLFDNYj2Q5321NfQ8dViqWdtWxxOqjv86qV8ckt6Ds204+dkWrkHC2jzHXR3RHn
	NJ3gUNfg8qyxYQ71i0kCrLUFAOaauytlHrcZfMJlxfADCC1uwdwnR0kh8e0MLsHbmy0u
	4x9vyLcqr4T1LRGwJSYj9858TTVpmUG3gmstY1aVH/0N8aSCcA586IHAFoiCISWx3lsd
	zTG8Yo8s21p+9NsBlNCrLtMtrgxsEly3pYu2XjSga9iF/2cFDEODP1OnkAb7YcSc/QMJ
	VZhlFun/50aFeab8YGFFdB9UXuHBt4DpmyCueeRntY0yyAF30u5QQZHyXYiz1RXZqBAV
	Rhfg==
X-Gm-Message-State: AN3rC/4ZT2q9pHf/3IZiNgHzNIlMOB9jYkcSqRiqA50NKpxM1iF9VBS4
	yXP/ssR4DiB5xt/T5UDMlkqeshG8AQ==
X-Received: by 10.157.43.116 with SMTP id f49mr12194198otd.216.1493814401609; 
	Wed, 03 May 2017 05:26:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.63.197 with HTTP; Wed, 3 May 2017 05:26:41 -0700 (PDT)
In-Reply-To: <CAC+thW0Lcmkn-zL_AyQXztQNywLxPAW0zFUM2YVCDvE8YcTFfw@mail.gmail.com>
References: <CAMC=D=s=KwPN8ydYD+u0CXKJ-w4f3OtKu6f_rx-egEomjx37+Q@mail.gmail.com>
	<CAC+thW08Otvupad2dbuodf9RgUStGrSPxmN536rmV5+E6gcw5w@mail.gmail.com>
	<CAMC=D=vHGZJA_+pR9GJawU63GuPmsLAvmqg3hi6ttnYhcmN-nA@mail.gmail.com>
	<CAC+thW3zTubp1by4i6it39bzvqkWMw4SExCHjSmc3OhmXrcwxw@mail.gmail.com>
	<CAMC=D=vgejGzJggU_DE13_tspbTZfi=4G9JShhXC8Q1XzWnxhg@mail.gmail.com>
	<CAC+thW0Lcmkn-zL_AyQXztQNywLxPAW0zFUM2YVCDvE8YcTFfw@mail.gmail.com>
From: Luca Carlon <carlon.luca@gmail.com>
Date: Wed, 3 May 2017 14:26:41 +0200
Message-ID: <CAMC=D=ts+93_6zoOgXtv9HkQ4GE897SiwJKHpEJbxt-KeO6J=A@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
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
X-List-Received-Date: Wed, 03 May 2017 12:26:48 -0000
Content-Type: multipart/alternative; boundary=001a113b1bccc4b545054e9dc4b6

--001a113b1bccc4b545054e9dc4b6
Content-Type: text/plain; charset=UTF-8

Hello,
thank you for your help. I followed your advice and I'm now able to build
rpi-test-image for raspberrypi2 and raspberrypi3. When I try
raspberrypi3-64 instead I'm getting a few errors. I fixed one build error,
but then I got: https://pastebin.com/pL2mei9s. It seems that those libs
were not added to the sysroot for some reason. I think those come from the
userspace package probably. As it seems to work for the other machines I'm
trying to determine what difference raspberrypi3-64 is introducing but for
the moment I'm failing. Any idea what is causing this error? Are you able
to build rpi-test-image? rpi-basic-image seems to work but not
rpi-test-image, which includes omxplayer and other libs that I need like
libEGL, libGLESv2, libopenmax etc...

These are my current conf files:

https://pastebin.com/LJnRfDUj
https://pastebin.com/axt9RLQS

Any idea why those libs cannot be found?
Thank you!
Regards.

Luca

On Sat, Apr 29, 2017 at 9:40 AM, Andrea Galbusera <gizero@gmail.com> wrote:

> On Sat, Apr 29, 2017 at 2:39 AM, Luca Carlon <carlon.luca@gmail.com>
> wrote:
>
>> Hello,
>> thank you very much for your advice. It seems I can build both a minimal
>> image and rpi-basic-image. I would like to test to see if the Pi is able to
>> boot with these images but it seems that the images directory does not
>> contain any sdimg file. By reading https://github.com/agherzan/me
>> ta-raspberrypi and https://github.com/Nuand/blade
>> RF/wiki/Creating-Linux-based-Embedded-System-Images-with-Yocto it seems
>> I should find a sdimg file to flash to the sdcard. I suppose this image
>> file contains both the boot and rootfs partitions. But it seems I do not
>> see this image at all, this is a list of what I can see in
>> tmp/deploy/images/raspberrypi3-64: https://pastebin.com/8XsRHzUY. I see
>> the rootfs filesystem that I can extract in a partition, but not the boot
>> partition the Pi needs. Maybe I'm missing some line in the conf files?
>>
>
> If you are using the local.conf you previously posted, the line:
>
> IMAGE_FSTYPES = "tar.xz"
>
> is overriding default configuration from rpi-base.inc in meta-raspberrypi
> which is:
>
> IMAGE_FSTYPES ?= "tar.bz2 ext3 rpi-sdimg"
>
> You can also consider using wic image format to generate a flashable image
> (see Yocto documentation on how to do that).
>

--001a113b1bccc4b545054e9dc4b6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div>thank you for your help. I followed your advice=
 and I&#39;m now able to build rpi-test-image for raspberrypi2 and raspberr=
ypi3. When I try raspberrypi3-64 instead I&#39;m getting a few errors. I fi=
xed one build error, but then I got:=C2=A0<a href=3D"https://pastebin.com/p=
L2mei9s">https://pastebin.com/pL2mei9s</a>. It seems that those libs were n=
ot added to the sysroot for some reason. I think those come from the usersp=
ace package probably. As it seems to work for the other machines I&#39;m tr=
ying to determine what difference raspberrypi3-64 is introducing but for th=
e moment I&#39;m failing. Any idea what is causing this error? Are you able=
 to build rpi-test-image? rpi-basic-image seems to work but not rpi-test-im=
age, which includes omxplayer and other libs that I need like libEGL, libGL=
ESv2, libopenmax etc...</div><div><br></div><div>These are my current conf =
files:</div><div><br></div><div><a href=3D"https://pastebin.com/LJnRfDUj">h=
ttps://pastebin.com/LJnRfDUj</a><br></div><div><a href=3D"https://pastebin.=
com/axt9RLQS">https://pastebin.com/axt9RLQS</a><br></div><div><br></div><di=
v>Any idea why those libs cannot be found?</div><div>Thank you!</div><div>R=
egards.</div><div><br></div><div>Luca</div></div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">On Sat, Apr 29, 2017 at 9:40 AM, Andrea Gal=
busera <span dir=3D"ltr">&lt;<a href=3D"mailto:gizero@gmail.com" target=3D"=
_blank">gizero@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote=
"><span class=3D"">On Sat, Apr 29, 2017 at 2:39 AM, Luca Carlon <span dir=
=3D"ltr">&lt;<a href=3D"mailto:carlon.luca@gmail.com" target=3D"_blank">car=
lon.luca@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr">Hello,<br>thank you very much for your =
advice. It seems I can build both a minimal image and rpi-basic-image. I wo=
uld like to test to see if the Pi is able to boot with these images but it =
seems that the images directory does not contain any sdimg file. By reading=
 <a href=3D"https://github.com/agherzan/meta-raspberrypi" target=3D"_blank"=
>https://github.com/agherzan/me<wbr>ta-raspberrypi</a> and <a href=3D"https=
://github.com/Nuand/bladeRF/wiki/Creating-Linux-based-Embedded-System-Image=
s-with-Yocto" target=3D"_blank">https://github.com/Nuand/blade<wbr>RF/wiki/=
Creating-Linux-based-<wbr>Embedded-System-Images-with-<wbr>Yocto</a> it see=
ms I should find a sdimg file to flash to the sdcard. I suppose this image =
file contains both the boot and rootfs partitions. But it seems I do not se=
e this image at all, this is a list of what I can see in tmp/deploy/images/=
raspberrypi3<wbr>-64: <a href=3D"https://pastebin.com/8XsRHzUY" target=3D"_=
blank">https://pastebin.com/8XsRHzUY</a>. I see the rootfs filesystem that =
I can extract in a partition, but not the boot partition the Pi needs. Mayb=
e I&#39;m missing some line in the conf files?<br></div></blockquote><div><=
br></div></span><div>If you are using the local.conf you previously posted,=
 the line:</div><div><br></div><div>IMAGE_FSTYPES =3D &quot;tar.xz&quot;<br=
></div><div><br></div><div>is overriding default configuration from rpi-bas=
e.inc in meta-raspberrypi which is:</div><div><br></div><div>IMAGE_FSTYPES =
?=3D &quot;tar.bz2 ext3 rpi-sdimg&quot;</div><div><br></div><div>You can al=
so consider using wic image format to generate a flashable image (see Yocto=
 documentation on how to do that).</div></div></div></div>
</blockquote></div><br></div>

--001a113b1bccc4b545054e9dc4b6--
