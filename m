Return-Path: <carlon.luca@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2843EE00A48; Fri, 28 Apr 2017 17:39:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (carlon.luca[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.52 listed in dnsbl.sorbs.net]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5A3CE009A5
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 17:39:17 -0700 (PDT)
Received: by mail-oi0-f52.google.com with SMTP id c62so2990407oif.2
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 17:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5dYlq0Np/nZSOEcnBKvZdnhCxlJQiw7lTiBTctBeM1w=;
	b=mPEIGtUEEvb6LiQgkjfLu515CKrDHcUeccIb3etq1h35DigGNSTcRrbzz8K+82BASc
	sGoVVC9/VLZA7e19UcFPcfYKFafPUSdKxUgChy58C8w8NKFSRNJSyrZ6dc+fp9FHanbj
	vejKngncDeSbBzAYHk0WLOy9unzFrw6Y8ePs7oq+e7jmhQsUH0DALiBtRzWbffOgPoN8
	y3KS5kxbjn+0pBJlbLi9sjiXJdUbn2Qk8oURAl/N9S6B9LK3ANYVGpRQBb6Pn9IzXMxw
	zImio4ncIoYs6vCibILLOM7CHYuKQ7BZsyl82ZekzsSwvm9wiyBjxSMIK7xrICQ/F5Df
	m1LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5dYlq0Np/nZSOEcnBKvZdnhCxlJQiw7lTiBTctBeM1w=;
	b=ahuk0r7wXlNfuriltLQC8plPQChVWHhpTep7kwg+4xEcBJ0BdB0YFi/uug3uZU8TMg
	LiaDJzoaGHoULkx5biaIt9qpH2lSBWJLqTREvp0k6JnXyNe+CqW4GSXQJB3mwzfZhyTc
	0wNC/fWu/khFsiMOixqtFJalmupQnah52GYnzQttj4BRD60l82QK3fIfXQEsFo/siO0P
	/96QRm+qvBQfIaIcmjyqRNNjqQ7sPt4EurW4WPahMh8wtL4THkiyh3PfDQde9juzR3JF
	iAS4Jz2aOBGdoCTSk8ZoSS95P5ZAR+uT7SgvKob4VtE+sFTF1rgMIaQX/bfgkzwoOm0k
	GiMg==
X-Gm-Message-State: AN3rC/4NB8BmSsswgMC4+BKcljdsx/g3KfTjaDYyR49M23rEPJhMEiH9
	YMnoLVOOCe2EMdfCtdA9T3WsnSxRmw==
X-Received: by 10.157.12.253 with SMTP id o58mr5777803otd.122.1493426356587;
	Fri, 28 Apr 2017 17:39:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.63.197 with HTTP; Fri, 28 Apr 2017 17:39:16 -0700 (PDT)
In-Reply-To: <CAC+thW3zTubp1by4i6it39bzvqkWMw4SExCHjSmc3OhmXrcwxw@mail.gmail.com>
References: <CAMC=D=s=KwPN8ydYD+u0CXKJ-w4f3OtKu6f_rx-egEomjx37+Q@mail.gmail.com>
	<CAC+thW08Otvupad2dbuodf9RgUStGrSPxmN536rmV5+E6gcw5w@mail.gmail.com>
	<CAMC=D=vHGZJA_+pR9GJawU63GuPmsLAvmqg3hi6ttnYhcmN-nA@mail.gmail.com>
	<CAC+thW3zTubp1by4i6it39bzvqkWMw4SExCHjSmc3OhmXrcwxw@mail.gmail.com>
From: Luca Carlon <carlon.luca@gmail.com>
Date: Sat, 29 Apr 2017 02:39:16 +0200
Message-ID: <CAMC=D=vgejGzJggU_DE13_tspbTZfi=4G9JShhXC8Q1XzWnxhg@mail.gmail.com>
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
X-List-Received-Date: Sat, 29 Apr 2017 00:39:21 -0000
Content-Type: multipart/alternative; boundary=001a114302607b94a5054e436b1e

--001a114302607b94a5054e436b1e
Content-Type: text/plain; charset=UTF-8

Hello,
thank you very much for your advice. It seems I can build both a minimal
image and rpi-basic-image. I would like to test to see if the Pi is able to
boot with these images but it seems that the images directory does not
contain any sdimg file. By reading
https://github.com/agherzan/meta-raspberrypi and
https://github.com/Nuand/bladeRF/wiki/Creating-Linux-based-Embedded-System-Images-with-Yocto
it seems I should find a sdimg file to flash to the sdcard. I suppose this
image file contains both the boot and rootfs partitions. But it seems I do
not see this image at all, this is a list of what I can see in
tmp/deploy/images/raspberrypi3-64: https://pastebin.com/8XsRHzUY. I see the
rootfs filesystem that I can extract in a partition, but not the boot
partition the Pi needs. Maybe I'm missing some line in the conf files?
Thank you!

Luca

On Fri, Apr 28, 2017 at 7:00 PM, Andrea Galbusera <gizero@gmail.com> wrote:

> On Fri, Apr 28, 2017 at 6:33 PM, Luca Carlon <carlon.luca@gmail.com>
> wrote:
>
>> Then it means I'm doing something wrong, I'm a beginner with yocto at the
>> moment. I hope this is what you are asking me:
>>
>> local.conf: https://pastebin.com/u6DjsNfC
>> bblayers.conf: https://pastebin.com/a27eCrkG
>>
>> and revisions:
>>
>> meta-raspberrypi: 28d4404f89eb59d406b4976c0e3f5ca19137ba74
>> poky: 924e576b8930fd2268d85f0b151e5f68a3c2afce
>> meta-openembedded: fe5c83312de11e80b85680ef237f8acb04b4b26e
>> meta-qt5: 3601fd2c5306ac6d5d0d536e0be8cbb90da9b4c1
>> meta-rpi: af19c1ccb2d863e41d863175a5c21a73eb682f79
>>
>> I guess some of these layers are unnecessary (I was trying to build a
>> different image at the beginning), but I assumed they should not hurt,
>> maybe I'm wrong?
>> Thank you for your help.
>>
>
> Uhmmm... never put meta-rpi into the mix but, as far as I can see from
> your logs, building the kernel fails for trying to
> build bcm2708-rpi-0-w.dtb which should not be in the list defined
> by KERNEL_DEVICETREE variable for MACHINE=raspberrypi3-64. My suggestion is
> to start with the simplest layer stack you can use to build an image for 64
> bit RPi3 which includes poky and meta-raspberrypi (maybe meta-oe is
> required also). Then I'd try with core-image-minimal and then scale up to
> other more featured images...
>

--001a114302607b94a5054e436b1e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br>thank you very much for your advice. It seems I =
can build both a minimal image and rpi-basic-image. I would like to test to=
 see if the Pi is able to boot with these images but it seems that the imag=
es directory does not contain any sdimg file. By reading <a href=3D"https:/=
/github.com/agherzan/meta-raspberrypi">https://github.com/agherzan/meta-ras=
pberrypi</a> and <a href=3D"https://github.com/Nuand/bladeRF/wiki/Creating-=
Linux-based-Embedded-System-Images-with-Yocto">https://github.com/Nuand/bla=
deRF/wiki/Creating-Linux-based-Embedded-System-Images-with-Yocto</a> it see=
ms I should find a sdimg file to flash to the sdcard. I suppose this image =
file contains both the boot and rootfs partitions. But it seems I do not se=
e this image at all, this is a list of what I can see in tmp/deploy/images/=
raspberrypi3-64: <a href=3D"https://pastebin.com/8XsRHzUY">https://pastebin=
.com/8XsRHzUY</a>. I see the rootfs filesystem that I can extract in a part=
ition, but not the boot partition the Pi needs. Maybe I&#39;m missing some =
line in the conf files?<br>Thank you!<br><br>Luca<br></div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">On Fri, Apr 28, 2017 at 7:00 PM, =
Andrea Galbusera <span dir=3D"ltr">&lt;<a href=3D"mailto:gizero@gmail.com" =
target=3D"_blank">gizero@gmail.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"g=
mail_quote"><span class=3D"">On Fri, Apr 28, 2017 at 6:33 PM, Luca Carlon <=
span dir=3D"ltr">&lt;<a href=3D"mailto:carlon.luca@gmail.com" target=3D"_bl=
ank">carlon.luca@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr">Then it means I&#39;m doing som=
ething wrong, I&#39;m a beginner with yocto at the moment. I hope this is w=
hat you are asking me:<br><br>local.conf: <a href=3D"https://pastebin.com/u=
6DjsNfC" target=3D"_blank">https://pastebin.com/u6DjsNfC</a><br>bblayers.co=
nf: <a href=3D"https://pastebin.com/a27eCrkG" target=3D"_blank">https://pas=
tebin.com/a27eCrkG</a><br><br>and revisions:<br><br>meta-raspberrypi: 28d44=
04f89eb59d406b4976c0e3f5c<wbr>a19137ba74<br>poky: 924e576b8930fd2268d85f0b1=
51e5f<wbr>68a3c2afce<br>meta-openembedded: fe5c83312de11e80b85680ef237f8a<w=
br>cb04b4b26e<br>meta-qt5: 3601fd2c5306ac6d5d0d536e0be8cb<wbr>b90da9b4c1<br=
>meta-rpi: af19c1ccb2d863e41d863175a5c21a<wbr>73eb682f79<br><br>I guess som=
e of these layers are unnecessary (I was trying to build a different image =
at the beginning), but I assumed they should not hurt, maybe I&#39;m wrong?=
<br>Thank you for your help.</div></blockquote><div><br></div></span><div>U=
hmmm... never put meta-rpi into the mix but, as far as I can see from your =
logs, building the kernel fails for trying to build=C2=A0bcm2708-rpi-0-w.dt=
b which should not be in the list defined by=C2=A0KERNEL_DEVICETREE variabl=
e for MACHINE=3Draspberrypi3-64. My suggestion is to start with the simples=
t layer stack you can use to build an image for 64 bit RPi3 which includes =
poky and meta-raspberrypi (maybe meta-oe is required also). Then I&#39;d tr=
y with core-image-minimal and then scale up to other more featured images..=
.</div></div></div></div>
</blockquote></div><br></div>

--001a114302607b94a5054e436b1e--
