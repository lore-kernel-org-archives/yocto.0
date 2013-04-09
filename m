Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f48.google.com (mail-qe0-f48.google.com
	[209.85.128.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F202E00499
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 10:20:36 -0700 (PDT)
Received: by mail-qe0-f48.google.com with SMTP id 2so3761244qea.21
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2013 10:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=osu4Kh9PhM3MGDuTsXHBkFNDIjnEFAtv6inDBgBY5vs=;
	b=Cec15gpWCleLmSv6q8Dvf6Cq63aQ7WIDVBbdtDPofQO2CjwyvllFr0Uuh8DVUzRlh9
	wLS7NCD7UX7R2HT6hRtm1JjYsbt3xGw8GyfzEmYPC8ccYw7zmW5Z5zCqP28mzc3Cnajt
	emV7L0d4r+diPvn8QGismj6bZuw2inrSVMf843r0tLlT3t8qSVKoj2N10wqUo/EX6Rwr
	ih1qZHqdbn/eDysJWZ/NfqamCwR0GvCnBjNOlWhAZMxeiJew1lAqigKgHQg3o6mvM0qJ
	qsURK3GIfjBy1N+Nu4b+NXn4yP8s6u97HleRjlnd2OZc89x6YHkTYrG2Zhz6Ch2OUGvZ
	Hf4Q==
MIME-Version: 1.0
X-Received: by 10.224.115.210 with SMTP id j18mr6171437qaq.16.1365528036374;
	Tue, 09 Apr 2013 10:20:36 -0700 (PDT)
Received: by 10.49.35.140 with HTTP; Tue, 9 Apr 2013 10:20:36 -0700 (PDT)
Date: Tue, 9 Apr 2013 19:20:36 +0200
Message-ID: <CAFyqS9pVw2AvNHosX__o-73C7oeMFkbFs03XdQKXTWBVTtQtLw@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: /etc/inittab generated incorrectly?
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
X-List-Received-Date: Tue, 09 Apr 2013 17:20:37 -0000
Content-Type: text/plain; charset=ISO-8859-1

I am having an issue with the /etc/inittab file that seems to be
incorrectly generated causing the following error at boot:
   INIT: version 2.88 booting
   INIT: /etc/inittab[42]: duplicate ID field "1"usb 1-1.1: new
high-speed USB device number 3 using xusbps-ehci

The reason for this error is due to the 'id' being incorrectly
assigned to the getty ports in initttab, here is a sample from my
version of it:

<snip>
# Normally not reached, but fallthrough in case of emergency.
z6:6:respawn:/sbin/sulogin
0:12345:respawn:/sbin/getty 115200 ttyUSB0
1:12345:respawn:/sbin/getty 115200 ttyPS0
# /sbin/getty invocations for the runlevels.
#
# The "id" field MUST be the same as the last
# characters of the device (after "tty").
#
# Format:
#  <id>:<runlevels>:<action>:<process>
#

1:2345:respawn:/sbin/getty 38400 tty1
<snip>

The getty started for ttyPS0 and tty1 is assigned with the same id.
I think that for the entries to be unique, the ids should have been
assigned as 'USB0', 'PS0' and '1' respectively. At least that is what
is hinted by the comment in inittab itself ;) If I look inside
sysvinit-inittab_2.88dsf.bb I can see that the tty1 entry was added
because of having USE_VT=1. The others are coming from SERIAL_CONSOLES
in my machine .conf.
Is there some known limitation that USE_VT may not be used in
combination with SERIAL_CONSOLES? If I use SERIAL_CONSOLE instead it
works since the id is hardcoded to 'S'. It could be argued if this is
right or wrong, but at least it avoids the clash in id allocation from
USE_VT. But I need multiple gettys started so using SERIAL_CONSOLE is
not an option in this case.

Would this be a bug worth fixing or is my only option here to instead
set USE_VT=0?
I guess one possible solution would be to assume 'tty' as prefix and
then use the rest as suffix in the id field instead of now simply
using the loop iterator?
Actually I am not even sure I need a getty to be started on tty1!? Is
it common praxis to have such an entry? I will only attach to the
board through the physical serial connections or ssh. The last commit
I see of this file is

commit 074d49d2cc8bbc1a53a031d9ae0c828596017ed2
Author: Zhenhua Luo <b19537@freescale.com>
Date:   Wed Sep 26 15:18:37 2012 +0800

Regards,
Hans

