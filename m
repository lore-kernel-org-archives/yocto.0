Return-Path: <kapare@rogue-research.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FFADE00572; Tue, 22 Jul 2014 16:12:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 304 seconds by postgrey-1.32 at yocto-www;
	Tue, 22 Jul 2014 16:12:15 PDT
Received: from mail.rogue-research.com (mail.rogue-research.com [68.67.54.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3761CE00524
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 16:12:15 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.rogue-research.com (Postfix) with ESMTP id 144AD3B6F599
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 19:07:11 -0400 (EDT)
X-Virus-Scanned: amavisd-new at rogue-research.com
Received: from mail.rogue-research.com ([127.0.0.1])
	by localhost (kingu.rogue-research.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id Wcr7dDF7QrMQ for <yocto@yoctoproject.org>;
	Tue, 22 Jul 2014 19:07:02 -0400 (EDT)
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by mail.rogue-research.com (Postfix) with ESMTPSA id 3F6703B6F57F
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 19:07:02 -0400 (EDT)
Received: by mail-vc0-f177.google.com with SMTP id hy4so708512vcb.36
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 16:07:01 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.52.34.46 with SMTP id w14mr21454189vdi.64.1406070421501;
	Tue, 22 Jul 2014 16:07:01 -0700 (PDT)
Received: by 10.58.237.200 with HTTP; Tue, 22 Jul 2014 16:07:01 -0700 (PDT)
Date: Tue, 22 Jul 2014 19:07:01 -0400
Message-ID: <CACgAsMdT_ZUw+z2qQ0CghqLYmKDUybwDYwvHwqu7N5SO6yqWYg@mail.gmail.com>
From: =?UTF-8?Q?Kevyn=2DAlexandre_Par=C3=A9?= <kapare@rogue-research.com>
To: openembedded-devel@lists.openembedded.org, 
	Yocto discussion list <yocto@yoctoproject.org>
Subject: [Yocto 1.6] PAM _pam_load_conf_file: unable to open /etc/pam.d/system-auth
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
X-List-Received-Date: Tue, 22 Jul 2014 23:12:22 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

Just trying to found what's missing for PAM to work so ssh will stop
exiting with Broken pipe? Quick fix to solve ssh broken pipe is to
change in /etc/ssh/sshd_config "UsePAM yes" to "UsePAM no". But this
does not remove my PAM error?

Here the log for PAM:
root@ka:~$  journalctl | grep -i PAM
Jan 01 00:00:11 ka systemd[1]: systemd 211 running in system mode.
(+PAM +LIBWRAP -AUDIT -SELINUX +IMA +SYSVINIT -LIBCRYPTSETUP -GCRYPT
+ACL +XZ -SECCOMP -APPARMOR)
Jan 01 00:00:16 ka kernel[116]: [    4.918701] systemd[1]: systemd 211
running in system mode. (+PAM +LIBWRAP -AUDIT -SELINUX +IMA +SYSVINIT
-LIBCRYPTSETUP -GCRYPT +ACL +XZ -SE
CCOMP -APPARMOR)
Jan 01 00:40:22 ka login[132]: pam_unix(login:account): account root
has password changed in future
Jan 01 00:40:22 ka login[132]: pam_lastlog(login:session): file
/var/log/lastlog created
Jan 01 00:40:22 ka login[132]: pam_unix(login:session): session opened
for user root by LOGIN(uid=0)
Jan 01 00:40:22 ka systemd[194]: PAM _pam_load_conf_file: unable to
open /etc/pam.d/system-auth
Jan 01 00:40:22 ka systemd[194]: PAM _pam_load_conf_file: unable to
open /etc/pam.d/system-auth
Jan 01 00:40:22 ka systemd[194]: Failed at step PAM spawning
/lib/systemd/systemd: Operation not permitted

So my image contain pam:
bitbake -e nirs-console-image | grep ^DISTRO_FEATURES=
DISTRO_FEATURES="alsa argp bluetooth ext2 irda largefile pcmcia
usbgadget usbhost wifi xattr nfs zeroconf pci 3g nfc x11 ipv4 ipv6
libc-backtrace libc-big-macros libc-bsd libc-cxx-tests libc-catgets
libc-charsets libc-crypt
libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg
libc-fstab libc-ftraverse
libc-getlogin libc-idn libc-inet-anl libc-libm libc-locales
libc-locale-code                                        libc-memusage
libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn
libc-streams libc-sunrpc         libc-utmp libc-utmpx libc-wordexp
libc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glibc
                                libc-posix-wchar-io largefile opengl
ptest multiarch wayland pulseaudio systemd pam"

Any clue or advise on how to fix this and why it's not working?

BR,

-KA

