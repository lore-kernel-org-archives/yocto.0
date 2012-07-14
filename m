Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95A10E0027D
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 22:17:17 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so8077886pbb.35
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 22:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=NJuUlKSEXmeMQTz3E0bzQX+D+JCginQ+AWnIW6J4KuY=;
	b=plOVgk39CHOaB7k14jcKLWxmNImLtqFEvBBh5Mw3BcvyyXTXBCAlQPlDOirY+2Luha
	bGRzDLI7sO4N/P+hUqZF44SBFMkstSJvK42LUAmj2zW7H+Q7USkdUsZliysew+h2IVgr
	PoOQzuWnV9aMUDbAfk98xBjywTR8+zcVe7wMFIj1+xQvUHMYUl0VwGyNf5+ih9xaGZz2
	jQBxXOfC1ORyVOwQd/VTga2jpJb1ZLl8ILdfts4dcwgDVXNJA9e+II8AEcYylFbNF3K1
	Mz5EWHjD8z8XuujTixoO0WFp1r3nHP4Bug7BsiTvWUOEc/BYLOU7vyD6AcJcyQdB3fA8
	ppCg==
Received: by 10.68.233.201 with SMTP id ty9mr9127390pbc.34.1342243037230;
	Fri, 13 Jul 2012 22:17:17 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id gh9sm7392518pbc.20.2012.07.13.22.17.15
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 13 Jul 2012 22:17:16 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sat, 14 Jul 2012 09:17:11 +0400
Message-Id: <3D46D1AB-7917-4EB0-8515-D68409DD089A@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: ERROR: QA Issue: Architecture did not match (20 to 62) on /work/virtex5-poky-linux
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
X-List-Received-Date: Sat, 14 Jul 2012 05:17:17 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_9BCD68B9-6040-431B-B44E-E35FFA832577"

--Apple-Mail=_9BCD68B9-6040-431B-B44E-E35FFA832577
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
      How can I troubleshoot the following QA error:

NOTE: package linux-xilinx-2.6.38-r00: task do_populate_sysroot: =
Succeeded
ERROR: QA Issue: Architecture did not match (20 to 62) on =
/work/virtex5-poky-linux/linux-xilinx-2.6.38-r00/packages-split/kernel-dev=
/usr/src/kernel/scripts/kconfig/kxgettext.o
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa
ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-2.6.38-r00=
/temp/log.do_package.24970
NOTE: package linux-xilinx-2.6.38-r00: task do_package: Failed

Best regards,

Elvis Dowson=

--Apple-Mail=_9BCD68B9-6040-431B-B44E-E35FFA832577
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; How can I troubleshoot the following QA =
error:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">NOTE: package linux-xilinx-2.6.38-r00: task =
do_populate_sysroot: Succeeded</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR: QA Issue: =
Architecture did not match (20 to 62) on =
/work/virtex5-poky-linux/linux-xilinx-2.6.38-r00/packages-split/kernel-dev=
/usr/src/kernel/scripts/kconfig/kxgettext.o</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR: QA run =
found fatal errors. Please consider fixing them.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">ERROR: Function =
failed: do_package_qa</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ERROR: Logfile of failure stored in: =
/tool/yocto/poky/build/tmp/work/virtex5-poky-linux/linux-xilinx-2.6.38-r00=
/temp/log.do_package.24970</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: package =
linux-xilinx-2.6.38-r00: task do_package: =
Failed</font></div></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_9BCD68B9-6040-431B-B44E-E35FFA832577--
