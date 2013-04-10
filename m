Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f49.google.com (mail-qe0-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 011F5E014B5
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 04:27:06 -0700 (PDT)
Received: by mail-qe0-f49.google.com with SMTP id 6so158548qeb.8
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 04:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type:content-transfer-encoding;
	bh=JaDfabTdag4MdO24qMraMbpv4XbpWfYD0sU/gtobFJw=;
	b=fr+Nwg6g63Vpr7Rvt5Clthnx8nAatF3l1wg2MjzIWr9JM5QuMtqlsg4D7QIGlmCbYd
	XVaUZNOgpu2rlNt/j0okfVJTqOehM/w3z6CfifXkWf8GOWS34SUuS3srXCTiuSLg7PAb
	g8dglD45Vk3Q9kTdrSaKYvqWhn2D+315Tc/3g/0L8Rx9uNHV0JtXZGDs4nWUfoY9cTih
	HPN0AhWGjS9B1fzPOW151u3XG/GXrpt7sXldq2taddIn9HcTZV3o8QgF2AGjl01sITTX
	tdVjlBJcF5p91MOvp+K+AysNMTgPb+oQUaA4WjD8pHs+BNgyuPfaHfR3O5VJzPsQ1QCW
	DbOQ==
MIME-Version: 1.0
X-Received: by 10.49.108.104 with SMTP id hj8mr1891191qeb.4.1365593226335;
	Wed, 10 Apr 2013 04:27:06 -0700 (PDT)
Received: by 10.49.35.140 with HTTP; Wed, 10 Apr 2013 04:27:06 -0700 (PDT)
In-Reply-To: <CAFyqS9pVw2AvNHosX__o-73C7oeMFkbFs03XdQKXTWBVTtQtLw@mail.gmail.com>
References: <CAFyqS9pVw2AvNHosX__o-73C7oeMFkbFs03XdQKXTWBVTtQtLw@mail.gmail.com>
Date: Wed, 10 Apr 2013 13:27:06 +0200
Message-ID: <CAFyqS9onq80zJn4=BGR30pHT13Be5SGEwn=6pz1qbufmBC=+rQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: /etc/inittab generated incorrectly?
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
X-List-Received-Date: Wed, 10 Apr 2013 11:27:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 9, 2013 at 7:20 PM, Hans Beck=E9rus <hans.beckerus@gmail.com> w=
rote:
> I am having an issue with the /etc/inittab file that seems to be
> incorrectly generated causing the following error at boot:
>    INIT: version 2.88 booting
>    INIT: /etc/inittab[42]: duplicate ID field "1"usb 1-1.1: new
> high-speed USB device number 3 using xusbps-ehci
>
> The reason for this error is due to the 'id' being incorrectly
> assigned to the getty ports in initttab, here is a sample from my
> version of it:
>
> <snip>
> # Normally not reached, but fallthrough in case of emergency.
> z6:6:respawn:/sbin/sulogin
> 0:12345:respawn:/sbin/getty 115200 ttyUSB0
> 1:12345:respawn:/sbin/getty 115200 ttyPS0
> # /sbin/getty invocations for the runlevels.
> #
> # The "id" field MUST be the same as the last
> # characters of the device (after "tty").
> #
> # Format:
> #  <id>:<runlevels>:<action>:<process>
> #
>
> 1:2345:respawn:/sbin/getty 38400 tty1
> <snip>
>
> The getty started for ttyPS0 and tty1 is assigned with the same id.
> I think that for the entries to be unique, the ids should have been
> assigned as 'USB0', 'PS0' and '1' respectively. At least that is what
> is hinted by the comment in inittab itself ;) If I look inside
> sysvinit-inittab_2.88dsf.bb I can see that the tty1 entry was added
> because of having USE_VT=3D1. The others are coming from SERIAL_CONSOLES
> in my machine .conf.
> Is there some known limitation that USE_VT may not be used in
> combination with SERIAL_CONSOLES? If I use SERIAL_CONSOLE instead it
> works since the id is hardcoded to 'S'. It could be argued if this is
> right or wrong, but at least it avoids the clash in id allocation from
> USE_VT. But I need multiple gettys started so using SERIAL_CONSOLE is
> not an option in this case.
>
> Would this be a bug worth fixing or is my only option here to instead
> set USE_VT=3D0?
> I guess one possible solution would be to assume 'tty' as prefix and
> then use the rest as suffix in the id field instead of now simply
> using the loop iterator?
> Actually I am not even sure I need a getty to be started on tty1!? Is
> it common praxis to have such an entry? I will only attach to the
> board through the physical serial connections or ssh. The last commit
> I see of this file is
>
> commit 074d49d2cc8bbc1a53a031d9ae0c828596017ed2
> Author: Zhenhua Luo <b19537@freescale.com>
> Date:   Wed Sep 26 15:18:37 2012 +0800
>

Here is a quick fix of the problem for me.
Of course a .bbappend could also be used with the similar correction.

Hans

From b5cedfdf2c790007daa8befe523650e66c46fe98 Mon Sep 17 00:00:00 2001
From: hans.beckerus@gmail.com
Date: Wed, 10 Apr 2013 13:05:08 +0200
Subject: [PATCH] Fix id generation in inittab

---
 meta/recipes-core/sysvinit/sysvinit-inittab_2.88dsf.bb | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/meta/recipes-core/sysvinit/sysvinit-inittab_2.88dsf.bb
b/meta/recipes-core/sysvinit/sysvinit-inittab_2.88dsf.bb
index b289853..d7b5af9 100644
--- a/meta/recipes-core/sysvinit/sysvinit-inittab_2.88dsf.bb
+++ b/meta/recipes-core/sysvinit/sysvinit-inittab_2.88dsf.bb
@@ -21,14 +21,12 @@ do_install() {
         echo "S:2345:respawn:${base_sbindir}/getty ${SERIAL_CONSOLE}"
>> ${D}${sysconfdir}/inittab
     fi

-    idx=3D0
     tmp=3D"${SERIAL_CONSOLES}"
     for i in $tmp
     do
        j=3D`echo ${i} | sed s/\;/\ /g`
-       echo "${idx}:12345:respawn:${base_sbindir}/getty ${j}" >>
${D}${sysconfdir}/inittab
-
-       idx=3D`expr $idx + 1`
+       id=3D`echo ${j} | sed -r 's/.*tty(\S+)/\1/'`
+       echo "${id}:12345:respawn:${base_sbindir}/getty ${j}" >>
${D}${sysconfdir}/inittab
     done

     if [ "${USE_VT}" =3D "1" ]; then
--
1.8.1.4

On Tue, Apr 9, 2013 at 7:20 PM, Hans Beck=E9rus <hans.beckerus@gmail.com> w=
rote:
> I am having an issue with the /etc/inittab file that seems to be
> incorrectly generated causing the following error at boot:
>    INIT: version 2.88 booting
>    INIT: /etc/inittab[42]: duplicate ID field "1"usb 1-1.1: new
> high-speed USB device number 3 using xusbps-ehci
>
> The reason for this error is due to the 'id' being incorrectly
> assigned to the getty ports in initttab, here is a sample from my
> version of it:
>
> <snip>
> # Normally not reached, but fallthrough in case of emergency.
> z6:6:respawn:/sbin/sulogin
> 0:12345:respawn:/sbin/getty 115200 ttyUSB0
> 1:12345:respawn:/sbin/getty 115200 ttyPS0
> # /sbin/getty invocations for the runlevels.
> #
> # The "id" field MUST be the same as the last
> # characters of the device (after "tty").
> #
> # Format:
> #  <id>:<runlevels>:<action>:<process>
> #
>
> 1:2345:respawn:/sbin/getty 38400 tty1
> <snip>
>
> The getty started for ttyPS0 and tty1 is assigned with the same id.
> I think that for the entries to be unique, the ids should have been
> assigned as 'USB0', 'PS0' and '1' respectively. At least that is what
> is hinted by the comment in inittab itself ;) If I look inside
> sysvinit-inittab_2.88dsf.bb I can see that the tty1 entry was added
> because of having USE_VT=3D1. The others are coming from SERIAL_CONSOLES
> in my machine .conf.
> Is there some known limitation that USE_VT may not be used in
> combination with SERIAL_CONSOLES? If I use SERIAL_CONSOLE instead it
> works since the id is hardcoded to 'S'. It could be argued if this is
> right or wrong, but at least it avoids the clash in id allocation from
> USE_VT. But I need multiple gettys started so using SERIAL_CONSOLE is
> not an option in this case.
>
> Would this be a bug worth fixing or is my only option here to instead
> set USE_VT=3D0?
> I guess one possible solution would be to assume 'tty' as prefix and
> then use the rest as suffix in the id field instead of now simply
> using the loop iterator?
> Actually I am not even sure I need a getty to be started on tty1!? Is
> it common praxis to have such an entry? I will only attach to the
> board through the physical serial connections or ssh. The last commit
> I see of this file is
>
> commit 074d49d2cc8bbc1a53a031d9ae0c828596017ed2
> Author: Zhenhua Luo <b19537@freescale.com>
> Date:   Wed Sep 26 15:18:37 2012 +0800
>
> Regards,
> Hans

