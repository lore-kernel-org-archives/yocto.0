Return-Path: <elvis.dowson@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81497E01245
	for <yocto@yoctoproject.org>; Tue,  7 Aug 2012 13:10:36 -0700 (PDT)
Received: by ggcs6 with SMTP id s6so16346ggc.35
	for <yocto@yoctoproject.org>; Tue, 07 Aug 2012 13:10:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:mime-version:content-type:subject:date:in-reply-to:to
	:references:message-id:x-mailer;
	bh=+b57haFBS9093NkLXP6ZMWfw7+fN+RknO1TUyL/CzaY=;
	b=Nq2NDQNAKlBzHBwH1FbWiSh6aS46D1lOpo+GvZPkhal3Z229ePAzjaBBORbGi1HRSM
	Pz62+Gc06qUaQQg0Qn3IBU6nkVNgmEhFPKxST5naD5ccoudWJuPCpsCu5HX0Kj/41PRx
	ZMUt7XTES7EG4d+jPriY2lR3dNR+xgQBnY6FjAJrfR+S0GW3qSxGv4Awy2tOkJZxFdla
	13sbi110gq64HM3CCUPgbQ0ndUNxblo58DBk9AO5UbF1n+dB1ByK69OXSVVYs9zZe7ns
	P3l42KB+AAC59Llbhofms7dOG44QLWM3AmVcWHQMm+K3piM2i4Cq/upUta7il+jH8ZXW
	hnYQ==
Received: by 10.66.75.133 with SMTP id c5mr28760665paw.24.1344370235265;
	Tue, 07 Aug 2012 13:10:35 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id qx8sm8344766pbc.63.2012.08.07.13.10.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 07 Aug 2012 13:10:34 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1278)
Date: Wed, 8 Aug 2012 00:10:28 +0400
In-Reply-To: <CAMKF1sqiFrHqg6HNvRwX_1Wg=Nfq8_141-XaJ=E2qFQyUsSJEA@mail.gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<654A270B-9C72-4BEA-B51D-79E4C6441594@gmail.com>
	<15982971-CA6D-4E45-833F-AC4E5AA95331@gmail.com>
	<8FA59113-59B4-4F16-B5D5-40CB3011BDE6@gmail.com>
	<73D923A6-DA97-45D8-88FD-8629055D72AD@gmail.com>
	<8E8CFCED-8C1A-48E8-B9E3-C6AB27CD9750@gmail.com>
	<299D147C-2889-4DE7-9972-A81315B5AC3B@gmail.com>
	<CAMKF1sq1AkaPnTqfijxH4MtN2_YKsHMLQ0rVdX_ObEBxVkS3tQ@mail.gmail.com>
	<5EE8E4F2-1FD4-47B7-A2A1-94BFBC4A46F8@gmail.com>
	<CAMKF1spzF44X-iKuz2UCaXfX8Dbf59BSJcG=0nodqvRUpQnmFw@mail.gmail.com>
	<C72B7149-B2B8-46D6-A270-23BB55DFC733@gmail.com>
	<CAMKF1sqiFrHqg6HNvRwX_1Wg=Nfq8_141-XaJ=E2qFQyUsSJEA@mail.gmail.com>
Message-Id: <931ADA5B-6471-40DB-8943-D7D6CA564C35@gmail.com>
X-Mailer: Apple Mail (2.1278)
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
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
X-List-Received-Date: Tue, 07 Aug 2012 20:10:36 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B9CA4AF5-36D0-43D7-8E22-DBDFB9037F8D"

--Apple-Mail=_B9CA4AF5-36D0-43D7-8E22-DBDFB9037F8D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
        I decided to modify the bash and busybox recipes to build =
statically, and try to create a core-image-minimal root filesystem, so =
that I can get a sensible prompt with paths set, etc, to debug the =
dynamic linking issue.

Just copying a static bash binary to the root of the ramdisk image and =
specifying init=3D/bash didn't work for a static bash+core-image-minimal =
root filesystem, it aborts with a panic. If I have only the bash =
executable in the ramdisk and nothing else, it displays the bash prompt.

Now, I've noticed something weird during core-image-minimal image =
generation.=20

When I build the static versions of bash, the size of the binary is 8MB, =
but when I explore the binary in the tar.gz image or extract it to my =
ramdisk, it shows as being only 1.6MB.

How can there be a difference between the statically built bash file=20

=
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/bash-4.2-r4/image/bin/ba=
sh (8MB)

and in the file contained in the core-image-minimal-virtex-5.tar.gz=20

/bin/bash (1.6MB)

I'm seeing the same discrepancy for busybox

=
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/busybox-1.19.4-r18/image=
/bin/busybox (8.2 MB)

and in the generate rootfs image

/bin/busybox (1.4MB)

This shouldn't happen, right?=20

Best regards,

Elvis Dowson=

--Apple-Mail=_B9CA4AF5-36D0-43D7-8E22-DBDFB9037F8D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; &nbsp; I decided to modify the bash and =
busybox recipes to build statically, and try to create a =
core-image-minimal root filesystem, so that I can get a sensible prompt =
with paths set, etc, to debug the dynamic linking =
issue.</div><div><br></div><div>Just copying a static bash binary to the =
root of the ramdisk image and specifying init=3D/bash didn't work for a =
static bash+core-image-minimal root filesystem, it aborts with a panic. =
If I have only the bash executable in the ramdisk and nothing else, it =
displays the bash prompt.</div><div><br></div><div>Now, I've noticed =
something weird during core-image-minimal image =
generation.&nbsp;</div><div><br></div><div>When I build the static =
versions of bash, the size of the binary is 8MB, but when I explore the =
binary in the tar.gz image or extract it to my ramdisk, it shows as =
being only 1.6MB.</div><div><br></div><div>How can there be a difference =
between the statically built bash =
file&nbsp;</div><div><br></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" =
size=3D"2">/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/bash-4.2-r4/i=
mage/bin/bash (8MB)</font></div><div><br></div><div>and in the file =
contained in the =
core-image-minimal-virtex-5.tar.gz&nbsp;</div><div><br></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">/bin/bash =
(1.6MB)</font></div><div><br></div><div>I'm seeing the same discrepancy =
for busybox</div><div><br></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" =
size=3D"2">/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/busybox-1.19.=
4-r18/image/bin/busybox (8.2 MB)</font></div><div><br></div><div>and in =
the generate rootfs image</div><div><br></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">/bin/busybox =
(1.4MB)</font></div><div><br></div><div>This shouldn't happen, =
right?&nbsp;</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_B9CA4AF5-36D0-43D7-8E22-DBDFB9037F8D--
