Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8B6EE0073F
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 15:29:31 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 973E5F811E1; Thu, 15 Aug 2013 16:29:31 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id CB2D7F811DC;
	Thu, 15 Aug 2013 16:29:30 -0600 (MDT)
Message-ID: <520D564D.5070103@mlbassoc.com>
Date: Thu, 15 Aug 2013 16:29:33 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: systemd support?
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
X-List-Received-Date: Thu, 15 Aug 2013 22:29:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I tried to take my existing Poky/Yocto system (using my own $DISTRO
which is a derivative of poky) and enable systemd.  I'm using today's
master:
   meta              = "cutting-edge:ff10f72abda52315b892c64f711096772d9a4c1c"

Sadly, building the simplest image fails with this error:

| update-alternatives: Linking /local/p60_systemd/tmp/work/cobra3530p60-amltd-linux-gnueabi/amltd-console-image/1.0-r0/rootfs//sbin/poweroff to /sbin/poweroff.sysvinit
| update-alternatives: Linking /local/p60_systemd/tmp/work/cobra3530p60-amltd-linux-gnueabi/amltd-console-image/1.0-r0/rootfs//usr/bin/last to /usr/bin/last.sysvinit
| update-alternatives: Linking /local/p60_systemd/tmp/work/cobra3530p60-amltd-linux-gnueabi/amltd-console-image/1.0-r0/rootfs//usr/bin/mesg to /usr/bin/mesg.sysvinit
| update-alternatives: Linking /local/p60_systemd/tmp/work/cobra3530p60-amltd-linux-gnueabi/amltd-console-image/1.0-r0/rootfs//usr/bin/utmpdump to /usr/bin/utmpdump.sysvinit
| update-alternatives: Linking /local/p60_systemd/tmp/work/cobra3530p60-amltd-linux-gnueabi/amltd-console-image/1.0-r0/rootfs//usr/bin/wall to /usr/bin/wall.sysvinit
| ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored.
|  Adding system startup for /local/p60_systemd/tmp/work/cobra3530p60-amltd-linux-gnueabi/amltd-console-image/1.0-r0/rootfs/etc/init.d/systemd-udevd.
| update-alternatives: Linking /local/p60_systemd/tmp/work/cobra3530p60-amltd-linux-gnueabi/amltd-console-image/1.0-r0/rootfs//usr/bin/scp to /usr/sbin/dropbearmulti
| update-alternatives: Linking /local/p60_systemd/tmp/work/cobra3530p60-amltd-linux-gnueabi/amltd-console-image/1.0-r0/rootfs//usr/bin/ssh to /usr/sbin/dropbearmulti
|  Adding system startup for /local/p60_systemd/tmp/work/cobra3530p60-amltd-linux-gnueabi/amltd-console-image/1.0-r0/rootfs/etc/init.d/dropbear.
|  Adding system startup for /local/p60_systemd/tmp/work/cobra3530p60-amltd-linux-gnueabi/amltd-console-image/1.0-r0/rootfs/etc/init.d/networking.

I wasn't sure what brought in the error so I pasted a number of lines
of context.

Note: building the same image with 'sysvinit' in DISTRO_FEATURES
instead of 'systemd' works fine.

Any ideas what's going on here?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

