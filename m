Return-Path: <amusghatge@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8139E00873; Fri, 30 Jan 2015 03:20:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (amusghatge[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f196.google.com (mail-lb0-f196.google.com
	[209.85.217.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 318B7E00824
	for <yocto@yoctoproject.org>; Fri, 30 Jan 2015 03:20:04 -0800 (PST)
Received: by mail-lb0-f196.google.com with SMTP id 10so7038255lbg.3
	for <yocto@yoctoproject.org>; Fri, 30 Jan 2015 03:20:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=oAsNGC8Cen1K/pqUDyaHIAsk3Z9uHoKBPxLMn2cQjRg=;
	b=ErnNtTBKH2r0vRAmGlTIvhgCZAqUC72CISpqcAxML0SiHbOuchxXmjeBQA7kc0uOgv
	FyotIZJ6oMvBBZkElq0EcYhFcfFqJaMZpE8dSevZ+K7vac0SFedh6LEXuJ62IjWgiwYW
	56nN7hW993Do6SIOGUHQldPcJkQ/rVdDuvrqhMqwXyOQZLcsK2MA6uNAf6BrDCJKJjHk
	tJLDuVBjBsR9J+wPFgDzobQqUXZeJ5B23BHp6dBgSgOEC11o3ZgFTg9Lka8w9jVOezt4
	QEgYiRy/AgrfOnCzjgkdR0bWLi6rb7uyd83h/5U4OL7GeQp7MiTRq9H3IeBleS6GPMHZ
	nkGA==
MIME-Version: 1.0
X-Received: by 10.152.87.106 with SMTP id w10mr5893729laz.41.1422616802458;
	Fri, 30 Jan 2015 03:20:02 -0800 (PST)
Received: by 10.112.4.67 with HTTP; Fri, 30 Jan 2015 03:20:02 -0800 (PST)
Received: by 10.112.4.67 with HTTP; Fri, 30 Jan 2015 03:20:02 -0800 (PST)
Date: Fri, 30 Jan 2015 16:50:02 +0530
Message-ID: <CA+dzM_QFCqJLce1eOfNXGhE1M8AedrsWa00CZue7n1Zxw010Mg@mail.gmail.com>
From: amruuta ghatge <amusghatge@gmail.com>
To: yocto@yoctoproject.org
Subject: SPR issue while booting qemu for POWER PC ppce500v2
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
X-List-Received-Date: Fri, 30 Jan 2015 11:20:07 -0000
Content-Type: multipart/alternative; boundary=001a11c354fa2982fb050ddcc91b

--001a11c354fa2982fb050ddcc91b
Content-Type: text/plain; charset=UTF-8

Hello,

I am trying to perform LTP testing for POWER ppce500v2.

I used the following rfs and kernel image for testing the LTP test prefix
[cross build for ppce500ve using ppce500v2 custom toolchain] in QEMU system
mode.

http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/machines/qemu/qemuppc/core-image-sato-sdk-qemuppc.ext3


http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/machines/qemu/qemuppc/vmlinux--3.14.19+git0+fb6271a942_73e2411cdd-r0-qemuppc-20141016220152.bin

When configured for '-M ppce500 -cpu e500v2' it gave me the following error,

$ <path-sysroots>qemu-system-ppc -kernel
vmlinux--3.14.19+git0+fb6271a942_73e2411cdd-r0-qemuppc-20141016220152.bin
-net nic,model=pcnet -net tap,vlan=0,ifname=tap0,script=no,downscript=no
-cpu e500v2 -M ppce500 -hda
<path-qemuppc>core-image-base-qemuppc-20150112233527.rootfs.ext3 -no-reboot
-show-cursor -no-reboot -nographic -m 512 --append "root=/dev/hda rw
console=ttyS0 console=tty ip=192.168.7.2::192.168.7.1:255.255.255.0
mem=512M console=ttyS0"

Trying to write invalid spr 536 (0x218) 000034c0

Any pointers or inputs/suggestions will be highly appreciated.

Regards,

Amruta!!!

--001a11c354fa2982fb050ddcc91b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
Hello,<br></p>
<p dir=3D"ltr">I am trying to perform LTP testing for POWER ppce500v2.</p>
<p dir=3D"ltr">I used the following rfs and kernel image for testing the LT=
P test prefix [cross build for ppce500ve using ppce500v2 custom toolchain] =
in QEMU system mode.<br><br></p>
<p dir=3D"ltr"><a href=3D"http://downloads.yoctoproject.org/releases/yocto/=
yocto-1.7/machines/qemu/qemuppc/core-image-sato-sdk-qemuppc.ext3">http://do=
wnloads.yoctoproject.org/releases/yocto/yocto-1.7/machines/qemu/qemuppc/cor=
e-image-sato-sdk-qemuppc.ext3</a>=C2=A0=C2=A0=C2=A0</p>
<p dir=3D"ltr"><a href=3D"http://downloads.yoctoproject.org/releases/yocto/=
yocto-1.7/machines/qemu/qemuppc/vmlinux--3.14.19+git0+fb6271a942_73e2411cdd=
-r0-qemuppc-20141016220152.bin">http://downloads.yoctoproject.org/releases/=
yocto/yocto-1.7/machines/qemu/qemuppc/vmlinux--3.14.19+git0+fb6271a942_73e2=
411cdd-r0-qemuppc-20141016220152.bin</a><br><br></p>
<p dir=3D"ltr">When configured for &#39;-M ppce500 -cpu e500v2&#39; it gave=
 me the following error,<br><br></p>
<p dir=3D"ltr">$ &lt;path-sysroots&gt;qemu-system-ppc -kernel vmlinux--3.14=
.19+git0+fb6271a942_73e2411cdd-r0-qemuppc-20141016220152.bin -net nic,model=
=3Dpcnet -net tap,vlan=3D0,ifname=3Dtap0,script=3Dno,downscript=3Dno -cpu e=
500v2 -M ppce500 -hda &lt;path-qemuppc&gt;core-image-base-qemuppc-201501122=
33527.rootfs.ext3 -no-reboot -show-cursor -no-reboot -nographic -m 512 --ap=
pend &quot;root=3D/dev/hda rw console=3DttyS0 console=3Dtty ip=3D192.168.7.=
2::192.168.7.1:255.255.255.0 mem=3D512M console=3DttyS0&quot;</p>
<p dir=3D"ltr">Trying to write invalid spr 536 (0x218) 000034c0<br><br></p>
<p dir=3D"ltr">Any pointers or inputs/suggestions will be highly appreciate=
d.<br></p>
<p dir=3D"ltr">Regards,</p>
<p dir=3D"ltr">Amruta!!!<br>
</p>

--001a11c354fa2982fb050ddcc91b--
