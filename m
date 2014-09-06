Return-Path: <errordeveloper@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEC86E0079A; Sat,  6 Sep 2014 03:12:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (errordeveloper[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C58CE0078E
	for <yocto@yoctoproject.org>; Sat,  6 Sep 2014 03:12:33 -0700 (PDT)
Received: by mail-ie0-f172.google.com with SMTP id rd18so15390536iec.17
	for <yocto@yoctoproject.org>; Sat, 06 Sep 2014 03:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Bvkz7v406lpKNss+vcn0NaCqmB4lxZVsqqOrKcJlnko=;
	b=qrJvPOaitFaXlnL7R3vYbxUAHQNUggvZngbAraA9ieSTVuOtTg6xF6WBqKCaLlZh5Z
	zehhb2k0UJVlC3LzYMCuH+mKD0QjG0fCwT8qpkKZ2EsFEnSLr3db9dYSOYK0XD2U/ieQ
	igJRe+HFLK+T51sQD1YJcEIus5iuqirWfYIc1pp5WSNT1oJNzz89LP0bI4YbqBR7tBvQ
	/MdEEmY9YQYRYo+0nD3dne5Jd8sIEpj5Gn7V2YconmwCPzqGKVSxMKb8uVgHEKqzd51k
	aaQhLxhf+pCyzgtjxh2gEp1Cdi9ieSeOp5Tus2BTP1SH85nfq/Er9MLKIaW9xTwFnERr
	w5uQ==
MIME-Version: 1.0
X-Received: by 10.43.138.65 with SMTP id ir1mr1173705icc.55.1409998352780;
	Sat, 06 Sep 2014 03:12:32 -0700 (PDT)
Received: by 10.64.238.106 with HTTP; Sat, 6 Sep 2014 03:12:32 -0700 (PDT)
In-Reply-To: <CAMCfZKH=YLuCt1SDOFuALAJjzgmcx_OAtF7NxMnFDWiYQY0UNQ@mail.gmail.com>
References: <CAPhDKbHAzY4MikG=izTnfs3_wULDghYKhc5pThF5Ft4QbmA-+Q@mail.gmail.com>
	<CAMCfZKH=YLuCt1SDOFuALAJjzgmcx_OAtF7NxMnFDWiYQY0UNQ@mail.gmail.com>
Date: Sat, 6 Sep 2014 11:12:32 +0100
Message-ID: <CAPhDKbF9rxgz6kfJzRSE_rC5Piy2D0Akp2Uwsxc6AAM6W-XBkA@mail.gmail.com>
From: Ilya Dmitrichenko <errordeveloper@gmail.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: systemd crashes above emergency runlevel
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
X-List-Received-Date: Sat, 06 Sep 2014 10:12:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Diego,

My issue doesn't look like neither of the ones you described. It does,
however, seem to somehow relate to journald.

I have managed to rescue this by removing these two files:

/lib/systemd/system/sysinit.target.wants/systemd-journal-flush.service
/lib/systemd/system/sysinit.target.wants/systemd-journald.service

I then succesfully booted to multi-user target and noticed that
journald has started after all.

I am suspecting this could be simply something to do with the rootfs
being read-only when he tries to start, but I'll dig into it and see
what's up exactly.

One quite annoying things is that emergency shell provided by systemd
doesn't seem to echo stdin in the input mode. So basically I type a
command but cannot see what I type. Here is what it looks like:


random: nonblocking pool is initialized
Welcome to rescue mode! Type "systemctl default" or ^D to enter default mode.
Type "journalctl -xb" to view system logs. Type "systemctl reboot" to reboot.
Press Enter for maintenance(or press Control-D to continue):
sh-4.3# sh-4.3# sh-4.3# /home/root

that was me typing `pwd`, which would normally appear as:

sh-4.3#
sh-4.3# pwd
/home/root
sh-4.3#

So I'm wondering if anyone use emegency shell (emergency.target),
which is different form runlevel1.target..?


Anyhow, the whole weird thing about my issue is that it seem as if my
Beaglbone board loosing power when journald tries to start... So I am
not quite sure how to catch whatever is happening to it. I haven't
tried JTAG yet, but that lives on the same FTDI chip that the serial
console, so it's likely that JTAG gets cut-out too. I might try
tracing supply voltage rails, when I get some more time.

Any suggestions would be very welcome.

-- 
Ilya

On 5 September 2014 13:18, Diego Sueiro <diego.sueiro@gmail.com> wrote:
> Ilya,
>
> On Fri, Sep 5, 2014 at 8:45 AM, Ilya Dmitrichenko <errordeveloper@gmail.com>
> wrote:
>>
>> I have built an image form Beaglebone (white) with systemd instead of
>> sysvinit and it crashes after loading a few services. I'm suspecting
>> it's to do with getty taking over the console tty, but not quite sure.
>>
>> What I see that the serial port terminal (tried screen and
>> miniterm.py) gets disconnected and something occurs to the FTDI serial
>> port so OS X kernel doesn't see it again.
>>
>> I was able to boot with init=/bin/sh and set default.target to
>> emergency.target and from there calling `/sbin/init 1` started more
>> systemd units and then crashed the same way.
>>
>> Any ideas?
>
>
> What systemd version you are using?
>
> I have two different problems with systemd (208 - did not tested on newer
> versions yet).
>
> 1 - The boot was reaching Emergency Mode giving me this kind of message:
>
> systemd-fsck[136]: Config: Superblock last mount time (Mon Jan  6 17:54:44
> 2014,
> systemd-fsck[136]: now = Wed Jan  1 07:14:39 2014) is in the future.
> systemd-fsck[136]: Config: UNEXPECTED INCONSISTENCY; RUN fsck MANUALLY.
> systemd-fsck[136]: (i.e., without -a or -p options)
>
>
> This was solved by having the /etc/e2fsck.conf file with this content:
>
> [options]
> broken_system_clock = true
>
>
>
> 2 - The other issue is related with journal log files rotation. It did not
> respect the restrictions configured at journal.conf. If you have consecutive
> power cycles (without issuing linux shutdown process) the "currupted" logs
> is not going to be rotated and it time it boots a new log file is created.
> After some time the memory is full and some process cannot start because of
> this.
>
> Can you send your boot log?
>
>
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> Administrador do Embarcados
> www.embarcados.com.br
>
> /*long live rock 'n roll*/

