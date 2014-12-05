Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12266E0090A; Thu,  4 Dec 2014 18:11:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuq825[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9799E0089B
	for <yocto@yoctoproject.org>; Thu,  4 Dec 2014 18:11:37 -0800 (PST)
Received: by mail-ig0-f176.google.com with SMTP id l13so88185iga.3
	for <yocto@yoctoproject.org>; Thu, 04 Dec 2014 18:11:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=b2cSeGRIfjZBt2iYo131JhRLboJ0HANUlDmd7mK8EWc=;
	b=Ab2mvQnBbg6PNIVp1iLpTr1mfG9sZe481rT2oQlmnETgPn85C/a4/zllBnLWoCEXPC
	ygbn3i75nqMziUVxiUriTSzHR/8IuSbERcKHaREpLDjacIT665qC3V04ELIQxWrJAH11
	gFwaV8+sTLVBi0HZPiQLVgyYuRLUUS7ZmOwFegwTIncMy1YaeWaxJylQcthvQTQeIbqN
	+YWWBa/Y5pktuAOTLHylcj/SJtSAkRBmaJ/Cfw8SciRBwVnTt+MzFx5ALmMVmCJ0l6mp
	61xGDJnBO32AdI0InR8k11S6sIOBOsh5r1mhbOyRxnpfejsAtIh32l+lBZZUyWr+k3uO
	kbhQ==
MIME-Version: 1.0
X-Received: by 10.50.79.232 with SMTP id m8mr364096igx.11.1417745496816; Thu,
	04 Dec 2014 18:11:36 -0800 (PST)
Received: by 10.107.10.7 with HTTP; Thu, 4 Dec 2014 18:11:36 -0800 (PST)
Date: Fri, 5 Dec 2014 10:11:36 +0800
Message-ID: <CAKGbVbu0YsX18JUF89ec-6M8yUCHnfAM5B7ERQNiAYHTALJ8Bw@mail.gmail.com>
From: Qiang Yu <yuq825@gmail.com>
To: yocto@yoctoproject.org
Subject: prelink & mklibs problem
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
X-List-Received-Date: Fri, 05 Dec 2014 02:11:48 -0000
Content-Type: multipart/alternative; boundary=089e013a0606b8419d05096e988e

--089e013a0606b8419d05096e988e
Content-Type: text/plain; charset=UTF-8

Hi all,

I'm building a image with local.conf:
USER_CLASSES ?= "buildstats image-mklibs image-prelink"

but I think prelink does nothing on my image, because the MD5SUM is the
same before and after
the prelink stage. The mklibs stage is also strange not print anything. How
to make prelink and
mklibs really work?

Here is the log of log.do_rootfs:

NOTE: ###### Generate images #######
NOTE: Executing mklibs_optimize_image ...
DEBUG: Executing shell function mklibs_optimize_image
DEBUG: Shell function mklibs_optimize_image finished
NOTE: Executing prelink_image ...
DEBUG: Executing shell function prelink_image
Size before prelinking 49304.
/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
/sbin/fstab-decode: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3
as dynamic linker
/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
/sbin/bootlogd: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as
dynamic linker
/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
/sbin/killall5: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as
dynamic linker
/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
/sbin/init.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3
as dynamic linker
/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
/sbin/halt.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3
as dynamic linker
/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
/sbin/shutdown.sysvinit: Using /lib/ld-linux-armhf.so.3, not
/lib/ld-linux.so.3 as dynamic linker
/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
/sbin/runlevel.sysvinit: Using /lib/ld-linux-armhf.so.3, not
/lib/ld-linux.so.3 as dynamic linker
/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
/usr/sbin/dropbearmulti: Using /lib/ld-linux-armhf.so.3, not
/lib/ld-linux.so.3 as dynamic linker
/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
/bin/mountpoint.sysvinit: Using /lib/ld-linux-armhf.so.3, not
/lib/ld-linux.so.3 as dynamic linker
/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
/bin/busybox.suid: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3
as dynamic linker
/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
/bin/busybox.nosuid: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3
as dynamic linker
/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
/usr/bin/utmpdump.sysvinit: Using /lib/ld-linux-armhf.so.3, not
/lib/ld-linux.so.3 as dynamic linker
/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
/usr/bin/mesg.sysvinit: Using /lib/ld-linux-armhf.so.3, not
/lib/ld-linux.so.3 as dynamic linker
/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
/usr/bin/last.sysvinit: Using /lib/ld-linux-armhf.so.3, not
/lib/ld-linux.so.3 as dynamic linker
/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
/usr/bin/opkg-cl: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as
dynamic linker
/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /usr/bin/bmw:
Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker
/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink:
/usr/bin/wall.sysvinit: Using /lib/ld-linux-armhf.so.3, not
/lib/ld-linux.so.3 as dynamic linker
Size after prelinking 49304.
DEBUG: Shell function prelink_image finished

Regards,
Qiang

--089e013a0606b8419d05096e988e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;m building a image with l=
ocal.conf:</div><div>USER_CLASSES ?=3D &quot;buildstats image-mklibs image-=
prelink&quot;<br></div><div><br></div><div>but I think prelink does nothing=
 on my image, because the MD5SUM is the same before and after</div><div>the=
 prelink stage. The mklibs stage is also strange not print anything. How to=
 make prelink and</div><div>mklibs really work?</div><div><br></div><div>He=
re is the log of log.do_rootfs:</div><div><br></div><div><div>NOTE: ###### =
Generate images #######</div><div>NOTE: Executing mklibs_optimize_image ...=
</div><div>DEBUG: Executing shell function mklibs_optimize_image</div><div>=
DEBUG: Shell function mklibs_optimize_image finished</div><div>NOTE: Execut=
ing prelink_image ...</div><div>DEBUG: Executing shell function prelink_ima=
ge</div><div>Size before prelinking 49304.</div><div>/opt/yocto/rootfs/tmp/=
sysroots/x86_64-linux/usr/sbin/prelink: /sbin/fstab-decode: Using /lib/ld-l=
inux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/opt/yo=
cto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /sbin/bootlogd: Usin=
g /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><=
div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /sbin/kil=
lall5: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic li=
nker</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink=
: /sbin/init.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so=
.3 as dynamic linker</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/=
usr/sbin/prelink: /sbin/halt.sysvinit: Using /lib/ld-linux-armhf.so.3, not =
/lib/ld-linux.so.3 as dynamic linker</div><div>/opt/yocto/rootfs/tmp/sysroo=
ts/x86_64-linux/usr/sbin/prelink: /sbin/shutdown.sysvinit: Using /lib/ld-li=
nux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/opt/yoc=
to/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /sbin/runlevel.sysvin=
it: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linke=
r</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /=
usr/sbin/dropbearmulti: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.s=
o.3 as dynamic linker</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux=
/usr/sbin/prelink: /bin/mountpoint.sysvinit: Using /lib/ld-linux-armhf.so.3=
, not /lib/ld-linux.so.3 as dynamic linker</div><div>/opt/yocto/rootfs/tmp/=
sysroots/x86_64-linux/usr/sbin/prelink: /bin/busybox.suid: Using /lib/ld-li=
nux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/opt/yoc=
to/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /bin/busybox.nosuid: =
Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</d=
iv><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /usr/=
bin/utmpdump.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so=
.3 as dynamic linker</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/=
usr/sbin/prelink: /usr/bin/mesg.sysvinit: Using /lib/ld-linux-armhf.so.3, n=
ot /lib/ld-linux.so.3 as dynamic linker</div><div>/opt/yocto/rootfs/tmp/sys=
roots/x86_64-linux/usr/sbin/prelink: /usr/bin/last.sysvinit: Using /lib/ld-=
linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</div><div>/opt/y=
octo/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /usr/bin/opkg-cl: U=
sing /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic linker</di=
v><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelink: /usr/b=
in/bmw: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linux.so.3 as dynamic l=
inker</div><div>/opt/yocto/rootfs/tmp/sysroots/x86_64-linux/usr/sbin/prelin=
k: /usr/bin/wall.sysvinit: Using /lib/ld-linux-armhf.so.3, not /lib/ld-linu=
x.so.3 as dynamic linker</div><div>Size after prelinking 49304.</div><div>D=
EBUG: Shell function prelink_image finished</div></div><div><br></div><div>=
Regards,</div><div>Qiang</div><div><br></div></div>

--089e013a0606b8419d05096e988e--
