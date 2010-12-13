Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B5FDC4C80048
	for <yocto@yoctoproject.org>; Mon, 13 Dec 2010 10:01:18 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBDG1Hil019612;
	Mon, 13 Dec 2010 08:01:17 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 13 Dec 2010 08:01:17 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 13 Dec 2010 08:01:14 -0800
Message-ID: <4D06433E.2080408@windriver.com>
Date: Mon, 13 Dec 2010 10:01:02 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A317D6A87@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A317D6A87@shsmsx501.ccr.corp.intel.com>
X-OriginalArrivalTime: 13 Dec 2010 16:01:15.0310 (UTC)
	FILETIME=[F88564E0:01CB9ADE]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Purdie,
	Richard" <richard.purdie@intel.com>, "Seebach,
	Peter" <peter.seebach@windriver.com>
Subject: Re: Some simple tests about pseudo performance
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
X-List-Received-Date: Mon, 13 Dec 2010 16:01:19 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 12/9/10 9:09 PM, Xu, Dongxiao wrote:
> Test results are:
> 
> Native:   2.729 secs
> Fakeroot: 2.752 secs
> Pseudo:   51.814 secs
> 
> We saw pseudo cost about 20 times of seconds than native and fakeroot.

I believe that this is part of the fundamental differences between fakeroot and
pseudo.  Fakeroot only persists data on shutdown, while pseudo does persistence
during the read/writes.

What I'm surprised by is that opening/closing the SAME file is so busy.  I would
have expected the larger overhead to be in multiple file read/writes.

> I did a profile when the program is running. From the following table we saw
> that a lot of cycles are within sqlite3 operations...
> 
> I am wondering whether this point can be optimized? For example, is it
> workable to cache those database operations in memory and finally flush it into
> disk when pseudo exits?

Pseudo is using sqlite directly.

I did some basic checking, and sqlite has been instructed to run with the
following modes:

PRAGMA legacy_file_format = OFF
PRAGMA journal_mode = PERSIST
PRAGMA locking_mode = EXCLUSIVE
PRAGMA synchronous = OFF

Without doing any further investigation perhaps those modes aren't the best ones
to use?  Also in prior work I've done with sqlite using transaction cues seemed
to also help with performance.

It would be interesting to determine where the performance penalties are in
this.  I'm guessing it's the name resolution... but I'm still surprised at the
speed.  (There is also an IPC transaction between libpseudo and the pseudo
server.  From your logs that doesn't appear to be too bad though.)

--Mark

> It's just a first thought and any suggestion and comment is welcome.
> 
> Counted CPU_CLK_UNHALTED events (Clock cycles when not halted) with a unit mask of 0x00 (No unit mask) count 100000
> samples  %        image name               app name                 symbol name
> 693127   58.2980  no-vmlinux               no-vmlinux               /no-vmlinux
> 211108   17.7560  libsqlite3.so.0.8.6      libsqlite3.so.0.8.6      /usr/lib/libsqlite3.so.0.8.6
> 112269    9.4428  libc-2.10.1.so           libc-2.10.1.so           /lib/tls/i686/cmov/libc-2.10.1.so
> 16792     1.4124  [vdso] (tgid:28674 range:0xfd0000-0xfd1000) a.out                    [vdso] (tgid:28674 range:0xfd0000-0xfd1000)
> 15256     1.2832  libpthread-2.10.1.so     libpthread-2.10.1.so     pthread_mutex_lock
> 13163     1.1071  libpthread-2.10.1.so     libpthread-2.10.1.so     __pthread_mutex_unlock_usercnt
> 7386      0.6212  libpseudo.so             libpseudo.so             pseudo_client_op
> 6753      0.5680  libpseudo.so             libpseudo.so             pseudo_debug_real
> 6680      0.5618  pseudo                   pseudo                   pseudo_server_start
> 6663      0.5604  [vdso] (tgid:28676 range:0x8d6000-0x8d7000) pseudo                   [vdso] (tgid:28676 range:0x8d6000-0x8d7000)
> 5049      0.4247  pseudo                   pseudo                   pseudo_op
> 4906      0.4126  [vdso] (tgid:28467 range:0xd32000-0xd33000) a.out                    [vdso] (tgid:28467 range:0xd32000-0xd33000)
> 4427      0.3723  [vdso] (tgid:28607 range:0x5c0000-0x5c1000) a.out                    [vdso] (tgid:28607 range:0x5c0000-0x5c1000)
> 4391      0.3693  [vdso] (tgid:29027 range:0x6d0000-0x6d1000) a.out                    [vdso] (tgid:29027 range:0x6d0000-0x6d1000)
> 4188      0.3522  [vdso] (tgid:29172 range:0x41a000-0x41b000) a.out                    [vdso] (tgid:29172 range:0x41a000-0x41b000)
> 3584      0.3014  [vdso] (tgid:2411 range:0x892000-0x893000) a.out                    [vdso] (tgid:2411 range:0x892000-0x893000)
> 2985      0.2511  pseudo                   pseudo                   pseudo_debug_real
> 2921      0.2457  postgres                 postgres                 /usr/lib/postgresql/8.3/bin/postgres
> 2905      0.2443  vim.basic                vim.basic                /usr/bin/vim.basic
> 2449      0.2060  bash                     bash                     /bin/bash
> 2439      0.2051  libpseudo.so             libpseudo.so             fopen
> 2163      0.1819  [vdso] (tgid:28609 range:0x3da000-0x3db000) pseudo                   [vdso] (tgid:28609 range:0x3da000-0x3db000)
> 2096      0.1763  [vdso] (tgid:29029 range:0xfef000-0xff0000) pseudo                   [vdso] (tgid:29029 range:0xfef000-0xff0000)
> 2086      0.1755  libpseudo.so             libpseudo.so             pseudo_append_element
> 1917      0.1612  [vdso] (tgid:28469 range:0xe72000-0xe73000) pseudo                   [vdso] (tgid:28469 range:0xe72000-0xe73000)
> 1835      0.1543  libpseudo.so             libpseudo.so             wrap_fopen
> 1833      0.1542  libpseudo.so             libpseudo.so             pseudo_msg_receive
> 1819      0.1530  libpseudo.so             libpseudo.so             __lxstat64
> 1762      0.1482  libpseudo.so             libpseudo.so             __i686.get_pc_thunk.bx
> 
> Thanks,
> Dongxiao 


