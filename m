Return-Path: <elvis.dowson@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC7CEE0034A
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 09:37:22 -0700 (PDT)
Received: by yenm12 with SMTP id m12so2084261yen.35
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 09:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=8VbHU1ojn8ul9Xzoz6A8Ys9gv9b30v7QKKaqBLdLIGg=;
	b=ZoAMsbqZe9Lpf3rad/L5nM6vlMzj1IIPR5F0X3fb/4YN7vhZhFM/vcdau6oYoIJZdt
	AAcLsTM5xlr49xbDh24WqgPzbajkIREZ/cYG2jDQ5zhoLBw6j93usWOhEfVh3lnrAlDT
	mEiaBIj+KB2q3E6SPglGnaYi2NI78y03JpWbK9JMLMZ7rNsjaoUFs7B4U+FJReJ3IoMh
	RlglJ1rjbxY9M3VzMGL3HVIJjL1MmtnPr+oITffEwASbjmi2dXObQPVmNPOvq3uwo5/D
	rEfvoZtwa53R3/h+fOfaKOLCh1JJDWmT5n0Yqpaxn3CQCHz4+iMjxMmpbNvAIaWxPzUo
	Rheg==
Received: by 10.66.77.7 with SMTP id o7mr7411947paw.37.1344616641664;
	Fri, 10 Aug 2012 09:37:21 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id qp6sm3633209pbc.55.2012.08.10.09.37.19
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 10 Aug 2012 09:37:21 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Fri, 10 Aug 2012 20:37:16 +0400
Message-Id: <8A8AC1E4-4D09-41DF-9E0C-C7057C54A9FE@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: external-sourcery-toolchain: ERROR: QA Issue: No GNU_HASH in the elf binary
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
X-List-Received-Date: Fri, 10 Aug 2012 16:37:22 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_9AE10D72-B94F-49FD-B5FD-6BCEF45BE0C1"

--Apple-Mail=_9AE10D72-B94F-49FD-B5FD-6BCEF45BE0C1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
      I'm building with the mentor external-sourcery-toolchain.=20

I get the following error:

ERROR: QA Issue: No GNU_HASH in the elf binary: =
'/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/zip-3.0-r1/packages-spl=
it/zip/usr/bin/zipcloak'
ERROR: QA Issue: No GNU_HASH in the elf binary: =
'/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/zip-3.0-r1/packages-spl=
it/zip/usr/bin/zip'
ERROR: QA Issue: No GNU_HASH in the elf binary: =
'/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/zip-3.0-r1/packages-spl=
it/zip/usr/bin/zipsplit'
ERROR: QA Issue: No GNU_HASH in the elf binary: =
'/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/zip-3.0-r1/packages-spl=
it/zip/usr/bin/zipnote'
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa
ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/zip-3.0-r1/temp/log.do_p=
ackage.47453

Adding the following statement to zip.bb doesn't fix the problem, like =
it used to when using the gcc-4.x compilers:

TARGET_CC_ARCH +=3D "${LDFLAGS}"

Best regards,

Elvis Dowson=

--Apple-Mail=_9AE10D72-B94F-49FD-B5FD-6BCEF45BE0C1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; I'm building with the mentor =
external-sourcery-toolchain.&nbsp;</div><div><br></div><div>I get the =
following error:</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR: QA Issue: =
No GNU_HASH in the elf binary: =
'/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/zip-3.0-r1/packages-spl=
it/zip/usr/bin/zipcloak'</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">ERROR: QA Issue: No GNU_HASH in the elf =
binary: =
'/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/zip-3.0-r1/packages-spl=
it/zip/usr/bin/zip'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: QA Issue: No GNU_HASH in the elf =
binary: =
'/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/zip-3.0-r1/packages-spl=
it/zip/usr/bin/zipsplit'</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">ERROR: QA Issue: No GNU_HASH in the elf =
binary: =
'/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/zip-3.0-r1/packages-spl=
it/zip/usr/bin/zipnote'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: QA run found fatal errors. Please =
consider fixing them.</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Function failed: =
do_package_qa</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/zip-3.0-r1/temp/log.do_p=
ackage.47453</font></div></div><div><br></div><div>Adding the following =
statement to zip.bb doesn't fix the problem, like it used to when using =
the gcc-4.x compilers:</div><div><br></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">TARGET_CC_ARCH +=3D =
"${LDFLAGS}"</font></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_9AE10D72-B94F-49FD-B5FD-6BCEF45BE0C1--
