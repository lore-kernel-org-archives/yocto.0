Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.22.1582148694746010981
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 13:44:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lO6B4I8W;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A60AE015FE; Mon, 17 Feb 2020 23:20:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com [209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8EAEE00782
	for <yocto@yoctoproject.org>; Mon, 17 Feb 2020 23:20:37 -0800 (PST)
Received: by mail-il1-f195.google.com with SMTP id l4so16436362ilj.1
        for <yocto@yoctoproject.org>; Mon, 17 Feb 2020 23:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=7jGl0wNCwOoe/f3cnv39Il46yTDC1l6xo6CwzoreJxU=;
        b=lO6B4I8WSsFjKKmxAxN5wqEqtcta6kLddINbSf9+T+lC0uBzrhQNhlKxxKK/CkmY2N
         7LTGEND2H9q+YIE3LRNpeImX2TLMY2DcQeFS7yeSRBjQgkSOMYYPGzKJxX3UOhICF4uz
         x4ZtRw3xFZXmtim7AG3xsyFPQOUsKRLQIk4z/mah/l9cBzGaX1EdKaj8BmiqXd4x9e/V
         ZYyYAftP+2SwcOsKyYdxyqxA3X5AJGVX/I6Kk1iSaA1KSc/4PFw9L7hQOV/Mu/tUeJ/4
         /yV4UCPyTCPEqIDUb1/rOE/hBSanmuUE1JmmkLuc5xHwui7u3cV6ZCirbQ3TMS44kxlR
         ClMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=7jGl0wNCwOoe/f3cnv39Il46yTDC1l6xo6CwzoreJxU=;
        b=q/0i9AF5wWlsRACjgQLWfF4gssRqNbGkra8bHPKwI+I+JjY2Q1gYHB8hMt1MeWFJKa
         cUogIuBl8FPf690q85nBP1u6RDfNUSXBK3bHssscZaIKkVpp+R4ZP3ujp8n6HLGHYZ5k
         ecgDN6GOIuhrhYeLX5s80n503Mmlds+OH4KR/rRjSStvN8sL+libgeQeJ3XHMUXkpKG9
         PLK6j/55mQ88h3fi77fQ/uVCXevsNyrliIzGc7OLC4fP3e2T1Zob9op3HLXcb6lqlls4
         xFjloUyo3yojJgCAh8xmcvEOrjRowC9LySThsc4pG6w9i1t+gC0eFepjLNNXnUHlOWO5
         3SIQ==
X-Gm-Message-State: APjAAAUyPI3yhthebW7PjzlVuU0Yecog+rzM64AsIa7YfUY98LcbK9E2
	ddp6Ob9MfXYpqTptNeK+E28QkG1N1+AGR20PLV8=
X-Google-Smtp-Source: APXvYqw6842SKZ5OauYiNhy08S/JKCohjTd+EbXULneGmKen0zPFYa1bUB2YJLmHkUlhAP43GRCFWAzjgav7zYJ2f78=
X-Received: by 2002:a92:5855:: with SMTP id m82mr17716040ilb.302.1582010437335;
 Mon, 17 Feb 2020 23:20:37 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Mon, 17 Feb 2020 23:20:36
 -0800 (PST)
In-Reply-To: <CAAfyv34yO7bSR9GBod1bXpD0sFnsSETsJQAzcmSgyY0orGtfcg@mail.gmail.com>
References: <CAA=hcWTDqhJEE7MXFY9rvN93nf8=nWvshLoXKF3EMXYGLmZGbA@mail.gmail.com>
 <CAAfyv34yO7bSR9GBod1bXpD0sFnsSETsJQAzcmSgyY0orGtfcg@mail.gmail.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 18 Feb 2020 18:20:36 +1100
Message-ID: <CAA=hcWQFcdUJKGTOitOAx1URD7r=9PPxsdd=hQO-Yb77=QHTDg@mail.gmail.com>
Subject: Re: [yocto] Change RO rootfs failed RF Kill Switch Status and Failed to start Run pending postinsts
To: Belisko Marek <marek.belisko@gmail.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, 
	Yocto discussion list <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>, 
	linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"

Hi Belisko,

Thanks for your resonse.

On 2/18/20, Belisko Marek <marek.belisko@gmail.com> wrote:
> Can you pls provide output of systemctl status systemd-rfkill
> There should be some more info what issue is.

Failed at step STATE_DIRECTORY spawning /lib/systemd/systemd-rfkill:
Read-only file system, did it try to write something in /lib/systemd?
How should I fix it?


# systemctl status systemd-rfkill -l
* systemd-rfkill.service - Load/Save RF Kill Switch Status
   Loaded: loaded
(8;;file://solar/lib/systemd/system/systemd-rfkill.service/lib/systemd/system/systemd-rfkill.service8;;;
static; vendor preset: disabled)
   Active: failed (Result: exit-code) since Tue 2020-02-18 00:47:30
UTC; 1min 59s ago
     Docs: 8;;man:systemd-rfkill.service(8)man:systemd-rfkill.service(8)8;;
  Process: 149 ExecStart=/lib/systemd/systemd-rfkill (code=exited,
status=238/STATE_DIRECTORY)
 Main PID: 149 (code=exited, status=238/STATE_DIRECTORY)

Feb 18 00:47:30 solar systemd[1]: Starting Load/Save RF Kill Switch Status...
Feb 18 00:47:30 solar systemd[149]: systemd-rfkill.service: Failed to
set up special execution directory in /var/lib: Read-only file system
Feb 18 00:47:30 solar systemd[149]: systemd-rfkill.service: Failed at
step STATE_DIRECTORY spawning /lib/systemd/systemd-rfkill: Read-only
file system
Feb 18 00:47:30 solar systemd[1]: systemd-rfkill.service: Main process
exited, code=exited, status=238/STATE_DIRECTORY
Feb 18 00:47:30 solar systemd[1]: systemd-rfkill.service: Failed with
result 'exit-code'.
Feb 18 00:47:30 solar systemd[1]: Failed to start Load/Save RF Kill
Switch Status.
Feb 18 00:47:30 solar systemd[1]: systemd-rfkill.service: Start
request repeated too quickly.
Feb 18 00:47:30 solar systemd[1]: systemd-rfkill.service: Failed with
result 'exit-code'.
Feb 18 00:47:30 solar systemd[1]: Failed to start Load/Save RF Kill
Switch Status.

>> [FAILED] Failed to start Run pending postinsts.
>> See 'systemctl status run-postinsts.service' for details.
> Pls this one also: systemctl status run-postinsts

# systemctl status run-postinsts -l
* run-postinsts.service - Run pending postinsts
   Loaded: loaded
(8;;file://solar/lib/systemd/system/run-postinsts.service/lib/systemd/system/run-postinsts.service8;;;
enabled; vendor preset: enabled)
   Active: failed (Result: exit-code) since Tue 2020-02-18 00:47:37
UTC; 6min ago
  Process: 153 ExecStart=/usr/sbin/run-postinsts (code=exited, status=0/SUCCESS)
  Process: 159 ExecStartPost=/bin/systemctl --no-reload disable
run-postinsts.service (code=exited, status=1/FAILURE)
 Main PID: 153 (code=exited, status=0/SUCCESS)

Feb 18 00:47:36 solar systemd[1]: Starting Run pending postinsts...
Feb 18 00:47:36 solar run-postinsts[153]: Configuring packages on first boot....
Feb 18 00:47:36 solar run-postinsts[153]:  (This may take several
minutes. Please do not power off the machine.)
Feb 18 00:47:36 solar run-postinsts[153]: /usr/sbin/run-postinsts:
eval: line 1: can't create /var/log/postinstall.log: nonexistent
directory
Feb 18 00:47:36 solar run-postinsts[153]:  Removing any system startup
links for run-postinsts ...
Feb 18 00:47:37 solar systemctl[159]: Failed to disable unit: File
/etc/systemd/system/sysinit.target.wants/run-postinsts.service:
Read-only file system
Feb 18 00:47:37 solar systemd[1]: run-postinsts.service: Control
process exited, code=exited, status=1/FAILURE
Feb 18 00:47:37 solar systemd[1]: run-postinsts.service: Failed with
result 'exit-code'.
Feb 18 00:47:37 solar systemd[1]: Failed to start Run pending postinsts.

Was the problem to write to /var/log, the /var/volatile does not have a log?

# ls -l /var
drwxr-xr-x    2 1000     1000           160 Feb 18  2020 backups
drwxr-xr-x    5 1000     1000           100 Feb 18 00:47 cache
drwxr-xr-x    9 1000     1000           180 Feb 18 00:47 lib
drwxr-xr-x    3 1000     1000           224 Feb 18  2020 local
lrwxrwxrwx    1 1000     1000            11 Feb 18  2020 lock -> ../run/lock
lrwxrwxrwx    1 1000     1000            12 Feb 18 00:52 log -> volatile/log
lrwxrwxrwx    1 1000     1000             6 Feb 18  2020 run -> ../run
drwxr-xr-x    3 1000     1000            60 Feb 18  2020 spool
lrwxrwxrwx    1 1000     1000            12 Feb 18  2020 tmp -> volatile/tmp
drwxrwxrwt    8 root     root           160 Feb 18 00:47 volatile

# ls -l /var/volatile/
drwxr-xr-x    5 1000     1000           100 Feb 18 00:47 cache
drwxr-xr-x    9 1000     1000           180 Feb 18 00:47 lib
drwxr-xr-x    3 1000     1000            60 Feb 18  2020 spool

All system mount is the same as the original RW rootfs, did both write
to none standard RW system mount?

Here is defined system mount in fstab:

proc                 /proc                proc       defaults              0  0
devpts               /dev/pts             devpts     mode=0620,gid=5       0  0
tmpfs                /run                 tmpfs
mode=0755,nodev,nosuid,strictatime 0  0
tmpfs                /var/volatile        tmpfs      defaults              0  0


Here is the mount:

# mount
ubi0:rootfs-volume on / type ubifs (ro,relatime,assert=read-only,ubi=0,vol=2)
devtmpfs on /dev type devtmpfs
(rw,relatime,size=84564k,nr_inodes=21141,mode=755)
sysfs on /sys type sysfs (rw,nosuid,nodev,noexec,relatime)
proc on /proc type proc (rw,relatime)
securityfs on /sys/kernel/security type securityfs
(rw,nosuid,nodev,noexec,relatime)
tmpfs on /dev/shm type tmpfs (rw,nosuid,nodev)
devpts on /dev/pts type devpts (rw,relatime,gid=5,mode=620,ptmxmode=000)
tmpfs on /run type tmpfs (rw,nosuid,nodev,mode=755)
tmpfs on /sys/fs/cgroup type tmpfs (ro,nosuid,nodev,noexec,mode=755)
cgroup2 on /sys/fs/cgroup/unified type cgroup2
(rw,nosuid,nodev,noexec,relatime,nsdelegate)
cgroup on /sys/fs/cgroup/systemd type cgroup
(rw,nosuid,nodev,noexec,relatime,xattr,name=systemd)
tmpfs on /etc/machine-id type tmpfs (ro,mode=755)
tmpfs on /tmp type tmpfs (rw,nosuid,nodev)
debugfs on /sys/kernel/debug type debugfs (rw,nosuid,nodev,noexec,relatime)
fusectl on /sys/fs/fuse/connections type fusectl
(rw,nosuid,nodev,noexec,relatime)
tmpfs on /var/volatile type tmpfs (rw,relatime)
ubi0:data-volume on /data type ubifs (rw,noatime,assert=read-only,ubi=0,vol=3)
tmpfs on /var/spool type tmpfs (rw,relatime)
tmpfs on /var/cache type tmpfs (rw,relatime)
tmpfs on /var/lib type tmpfs (rw,relatime)
tracefs on /sys/kernel/debug/tracing type tracefs
(rw,nosuid,nodev,noexec,relatime)

How should I fix it?

Thank you.

Kind regards,

- jh
