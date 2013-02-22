Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f42.google.com (mail-qe0-f42.google.com
	[209.85.128.42]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 0D774E004AB
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2013 07:50:17 -0800 (PST)
Received: by mail-qe0-f42.google.com with SMTP id f6so43715qej.15
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2013 07:50:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=HxysCDi/FjNJFDzkLjBi3W05dx+3G6cBIh44/TMWyVI=;
	b=lInhStTkDtexWSKDs8O0lFCcfEyja3Yova4i0Exgzkqsz9zD+XpRxolcUjUSNN5VMW
	Ii+Vgbd8qOgxLekOCKHYt+HMC1d/qHf3T9P9201ZEYMGe2+lWU22+5lIRIrItcFhCdSU
	ZTPifG2ZvrYw9dPn5AhMoRO8hWSq9WaE+436oTxrpbdAX0TzJqpDluckvaupOWP2i52F
	i43Bb2V6fEUalG15vXdtBUOu8FKgeCNPIXhd200M2DMVFqKS+MetexBzm++1N1sNYys6
	39whRxv+AGPzJhwnLk2y6FD6KymDnrTx97gt6AyNC8scAQlKQwgl+tXBWO+KIa3wnaw6
	N2yQ==
MIME-Version: 1.0
X-Received: by 10.224.58.201 with SMTP id i9mr1243642qah.81.1361548216954;
	Fri, 22 Feb 2013 07:50:16 -0800 (PST)
Received: by 10.49.26.102 with HTTP; Fri, 22 Feb 2013 07:50:16 -0800 (PST)
Date: Fri, 22 Feb 2013 16:50:16 +0100
Message-ID: <CAFyqS9ojF7ivNqUhZ5EcD1TGTeuMTju20LHksQe4-pWj3+wM=g@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: yocto@yoctoproject.org
Subject: bootlogd error at startup
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
X-List-Received-Date: Fri, 22 Feb 2013 15:50:18 -0000
Content-Type: text/plain; charset=ISO-8859-1

I am running the default minimal image on an ARM based board and get
the followig error from bootlogd at startup

<...>
INIT: version 2.88 booting
Starting udev
udev[661]: starting version 164
Starting Bootlog daemon: bootlogd: cannot allocate pseudo tty: No such
file or directory
bootlogd.
Configuring network interfaces... udhcpc (v1.20.2) started
Sending discover...
Sending discover...
Sending discover...
No lease, failing
Running postinst /etc/rpm-postinsts/100...
INIT: Entering runlevel: 5
Starting syslogd/klogd: done
Stopping Bootlog daemon: bootlogd.
<...>

After login and checking /dev there *is* a /dev/tty. Also, if starting
bootlogd manually using '/etc/init.d/bootlogd start' there is no
error.
So my guess is that /dev was not yet populated properly when bootlogd
was started by the init process. IIRC is this not that something that
udev should do when started?

Is this a known bug or is there something I have missed in my configuration?

Here is my /etc/inittab (default except from SERIAL_DEVICE)

# /etc/inittab: init(8) configuration.
# $Id: inittab,v 1.91 2002/01/25 13:35:21 miquels Exp $

# The default runlevel.
id:5:initdefault:

# Boot-time system configuration/initialization script.
# This is run first except when booting in emergency (-b) mode.
si::sysinit:/etc/init.d/rcS

# What to do in single-user mode.
~~:S:wait:/sbin/sulogin

# /etc/init.d executes the S and K scripts upon change
# of runlevel.
#
# Runlevel 0 is halt.
# Runlevel 1 is single-user.
# Runlevels 2-5 are multi-user.
# Runlevel 6 is reboot.

l0:0:wait:/etc/init.d/rc 0
l1:1:wait:/etc/init.d/rc 1
l2:2:wait:/etc/init.d/rc 2
l3:3:wait:/etc/init.d/rc 3
l4:4:wait:/etc/init.d/rc 4
l5:5:wait:/etc/init.d/rc 5
l6:6:wait:/etc/init.d/rc 6
# Normally not reached, but fallthrough in case of emergency.
z6:6:respawn:/sbin/sulogin
S:2345:respawn:/sbin/getty 115200 ttyPS0
# /sbin/getty invocations for the runlevels.
#
# The "id" field MUST be the same as the last
# characters of the device (after "tty").
#
# Format:
#  <id>:<runlevels>:<action>:<process>
#

1:2345:respawn:/sbin/getty 38400 tty1


Hans

