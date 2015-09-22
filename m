Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFE2FE00B8B; Tue, 22 Sep 2015 16:42:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.70 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-banded.atl.sa.earthlink.net
	(elasmtp-banded.atl.sa.earthlink.net [209.86.89.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEA5EE009F3
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 16:42:50 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=b2qu2Fi2rbDdMxAHrxiOZS9XRp424MdiVIpF8q3cbNXY3jG8lKe7nhp3z53GysD7;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-banded.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1ZeXCg-0006VP-3D; Tue, 22 Sep 2015 19:42:30 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Fred Ollinger'" <Fred.Ollinger@seescan.com>,
	"'Mantas Mikulenas'" <grawity@gmail.com>, <yocto@yoctoproject.org>
References: <F9B37C5086864E2EA06AC70C09CF7C25@PAULD><CAFKnvs6eVMrfcH3AOS28vAG237UUbYdLKR=FGB9PBipOQZbqYg@mail.gmail.com><3DB96F2F9D444EFE931CA8443BAFBACE@PAULD><CAPWNY8XTWDDS83JwizV8jH=xkxs9hdRgBLB5CsacTYQsqCwG=Q@mail.gmail.com>,
	<DEEBEF6233F54A17BB00A9E93D0A54EC@PAULD>
	<1442946736651.15866@seescan.com>
In-Reply-To: <1442946736651.15866@seescan.com>
Date: Tue, 22 Sep 2015 16:42:33 -0700
Message-ID: <23E6267BFA52430DA768DDA7DC46AC9C@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: AdD07JOgxjxVizetTnuI7JjPXGw5QAAcbW9gAAGEMkwACf1w0A==
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688d6e7f0b43a8e5ebd562ed8955476fb07350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Re: [systemd-devel] How to automount
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
X-List-Received-Date: Tue, 22 Sep 2015 23:42:51 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Fred Ollinger [mailto:Fred.Ollinger@seescan.com] 
> 
> This is in the package: udev-extraconf
> 
> On your system look here:
> 
> /etc/udev/rules.d/automount.rules
> 
> In this file, you'll find the following rules.
> 
> The second one auto unmounts.
> 
> SUBSYSTEM=="block", ACTION=="add"    RUN+="/etc/udev/scripts/mount.sh"
> 
> SUBSYSTEM=="block", ACTION=="remove" RUN+="/etc/udev/scripts/mount.sh"
> 
> SUBSYSTEM=="block", ACTION=="change", 
> ENV{DISK_MEDIA_CHANGE}=="1" RUN+="/etc/udev/scripts/mount.sh"

Well, that started me down a long path. First of all, none of these things
existed because my Yocto build didn't include udev-extraconf. The version
I did two years ago did (although I didn't see it mentioned in my own
metadata), which is why it worked. So I added it back, rebuilt it, and
then tried plugging in a USB flash drive.

The drive appeared as /dev/sdb and /dev/sdb1 (it has a partition table),
The syslog showed the mount.sh script message "Auto-mount of
[/run/media/sdb1] successful", /run/media/sdb1 exists as a directory, but
nothing is mounted there. The next syslog message from FAT-fs said "Volume
was not properly unmounted. Some data may be corrupt. Please run fsck."
When I did that, all I found was that the dirty bit was set, so I
speculated that that caused the mount to somehow be undone.

So I cleaned the dirty bit, synced the file system, unplugged the drive
and plugged it in again. This time the syslog showed the successful mount
message, but no complaint about the drive. Yet it still wasn't mounted.

I can manually mount it, and see its contents. If I then yank the drive,
the mount.sh script doesn't unmount it. I even tweaked the script to log
any attempt to unmount, and it didn't even try.

Whenever I fix the dirty bit, disconnecting and reconnecting logs the
successful mount message, doesn't complain about the dirty bit, but
doesn't mount. Disconnecting again gives me a FAT-fs error "unable to read
boot sector to mark fs as dirty". Connecting again gives me the successful
mount message, and complains about the dirty bit.

Something must be missing here.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


