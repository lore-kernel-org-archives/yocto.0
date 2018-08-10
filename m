Return-Path: <marc.ferland@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 366EBE00874; Fri, 10 Aug 2018 10:41:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marc.ferland[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com
	[209.85.222.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89248E006F1
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 10:41:52 -0700 (PDT)
Received: by mail-ua1-f42.google.com with SMTP id o11-v6so2717473uak.5
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 10:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FVvwr1BPCck3gobRrDX1SJd4NF2niAOcQ7aYwhfrGCM=;
	b=LxaaQUYf1fHeRBiV/EmZy2C3Wk/SceH9uUPnMtsIlTpwVVKV+Ye2AJvOAD/IF0GyNb
	xsKOhEQH14yXTuAmUTGFLho/bIIILu6CXHiVLozBqJ2mv6J5UwOf7l1fM9hsLKUCU4Yk
	40baS0T2JyocXKGxdzpxwQBs0G9dhYLRXapeGzarXg3n5+QQ8n4Kb5Fxqzr6CbWnM9VI
	RXVHhQKV/i9un3fAnJiFl53vw5kBzT32YkFuRHKFWwm21cAQcYb9QmzTzVp6fQFusgLg
	+VWPpQPF49FH+CXiO0ynkiiSTL4PdMUOlPD17Gb3FrxgM7XrbNNp+9uzKMaljPFqcUeV
	6uaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FVvwr1BPCck3gobRrDX1SJd4NF2niAOcQ7aYwhfrGCM=;
	b=cfAlDC/7/3rey02H1MV1/bFU3ZkUd8qp8UCu7OLl1PvvigdJjkjvL6eQaX0lk5xFT4
	8hPg/a46SBBIcoC7HSAgdrtG71NbfnPjD/RcRolKU+Rv76VA9PJnX5AY4GWDO1VzwRz7
	H2VyLZKRF8MRcq1K8Z4bDQGXA+zd9DPzZb+icVhzcCRlqc1PEUc0QeYUFUBHe/4ZOd8N
	/o8keh8zT6GITaxa2zdzCOgr4XKdxAoTvcB6RXaaMmFbPdHXulJBGh657E0RFg+Ouvpx
	slrwdNE1QsOwQ+ZEsYSRKErxY6MOgUQziFzI7fZKwIPCfjA/WjSzQ0yJ1rM8rKV61f2u
	/ouQ==
X-Gm-Message-State: AOUpUlFeAHN3ZzblI2JHgpMeHkE5Ge6xx37vtKD7K8rSffCy/UnB3nBR
	Y/0ptapcqgsknp5ukqlmuF9RlK79tonhScb37WU=
X-Google-Smtp-Source: AA+uWPyAzkCgpfA1ui7ST9NrOCuy4jj4QtaccDb97jHPwZE4CWTdDX7aWc4epe4pZPw6ht+gfmanPQAvHUULimqxjtc=
X-Received: by 2002:ab0:7611:: with SMTP id
	o17-v6mr5079457uap.177.1533922911894; 
	Fri, 10 Aug 2018 10:41:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a1f:4588:0:0:0:0:0 with HTTP; Fri, 10 Aug 2018 10:41:51
	-0700 (PDT)
In-Reply-To: <CANNYZj_E06ssYwk5uT_ZhhiZBCh3fuUUvK+5Sp4D3R6Qjj3zqg@mail.gmail.com>
References: <CAMRMzCDBBWC75cTVtKriqBG7GXeGTuD_koKV6rbBaSUKuywqww@mail.gmail.com>
	<CAMRMzCBqrkM85ZJzyUdtDajLO7-L2sRxWn-26HyYm93J0LGAOA@mail.gmail.com>
	<CANNYZj_E06ssYwk5uT_ZhhiZBCh3fuUUvK+5Sp4D3R6Qjj3zqg@mail.gmail.com>
From: Marc Ferland <marc.ferland@gmail.com>
Date: Fri, 10 Aug 2018 13:41:51 -0400
Message-ID: <CAMRMzCAzE2=dQoqfsGc53=Z8XG66MYCj5jiQU=s6inQXWyh4eA@mail.gmail.com>
To: alex.kanavin@gmail.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: rpmdeps buffer overflow
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
X-List-Received-Date: Fri, 10 Aug 2018 17:41:53 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 10, 2018 at 11:01 AM, Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
> 2018-08-10 16:50 GMT+02:00 Marc Ferland <marc.ferland@gmail.com>:
>> | Processing files: pylon-5.0.12-r0.aarch64
>> | *** buffer overflow detected ***:
>> /home/vagrant/build/tmp/work/aarch64-poky-linux/pylon/5.0.12-r0/recipe-sysroot-native/usr/bin/rpmbuild
>> terminated
>> | Aborted (core dumped)
>
> This is not a yocto issue, but a rpm issue. You need to deal with it
> the hard way I'm afraid: inspect the core dump with gdb, and take the
> result to rpm upstream.
>

Looking at the backtrace of rpmbuild in gdb I see that libmagic is the culprit:

*** buffer overflow detected ***:
/home/vagrant/build/tmp/work/aarch64-poky-linux/pylon/5.0.12-r0/recipe-sysroot-native/usr/bin/rpmbuild
terminated

Program received signal SIGABRT, Aborted.
0x00007ffff6f6f66a in raise () from
/home/vagrant/build/tmp/sysroots-uninative/x86_64-linux/lib/libc.so.6
(gdb) bt
#0  0x00007ffff6f6f66a in raise () from
/home/vagrant/build/tmp/sysroots-uninative/x86_64-linux/lib/libc.so.6
#1  0x00007ffff6f70741 in abort () from
/home/vagrant/build/tmp/sysroots-uninative/x86_64-linux/lib/libc.so.6
#2  0x00007ffff6fb0a07 in ?? () from
/home/vagrant/build/tmp/sysroots-uninative/x86_64-linux/lib/libc.so.6
#3  0x00007ffff703dcde in ?? () from
/home/vagrant/build/tmp/sysroots-uninative/x86_64-linux/lib/libc.so.6
#4  0x00007ffff703dd11 in __fortify_fail () from
/home/vagrant/build/tmp/sysroots-uninative/x86_64-linux/lib/libc.so.6
#5  0x00007ffff703bdc0 in __chk_fail () from
/home/vagrant/build/tmp/sysroots-uninative/x86_64-linux/lib/libc.so.6
#6  0x00007ffff6d1e0b1 in ?? ()
   from /home/vagrant/build/tmp/work/aarch64-poky-linux/pylon/5.0.12-r0/recipe-sysroot-native/usr/bin/../lib/./libmagic.so.1
#7  0x00007ffff6d1f105 in ?? ()
   from /home/vagrant/build/tmp/work/aarch64-poky-linux/pylon/5.0.12-r0/recipe-sysroot-native/usr/bin/../lib/./libmagic.so.1
#8  0x00007ffff6d2a888 in ?? ()
   from /home/vagrant/build/tmp/work/aarch64-poky-linux/pylon/5.0.12-r0/recipe-sysroot-native/usr/bin/../lib/./libmagic.so.1
#9  0x00007ffff6d2c782 in ?? ()
   from /home/vagrant/build/tmp/work/aarch64-poky-linux/pylon/5.0.12-r0/recipe-sysroot-native/usr/bin/../lib/./libmagic.so.1
#10 0x00007ffff6d1fc43 in ?? ()
   from /home/vagrant/build/tmp/work/aarch64-poky-linux/pylon/5.0.12-r0/recipe-sysroot-native/usr/bin/../lib/./libmagic.so.1
#11 0x00007ffff7bca16d in rpmfcClassify ()
   from /home/vagrant/build/tmp/work/aarch64-poky-linux/pylon/5.0.12-r0/recipe-sysroot-native/usr/bin/../lib/librpmbuild.so.7
#12 0x00007ffff7bcab26 in ?? ()
   from /home/vagrant/build/tmp/work/aarch64-poky-linux/pylon/5.0.12-r0/recipe-sysroot-native/usr/bin/../lib/librpmbuild.so.7
#13 0x00007ffff7bbc671 in ?? ()
   from /home/vagrant/build/tmp/work/aarch64-poky-linux/pylon/5.0.12-r0/recipe-sysroot-native/usr/bin/../lib/librpmbuild.so.7
#14 0x00007ffff7bb8113 in ?? ()
   from /home/vagrant/build/tmp/work/aarch64-poky-linux/pylon/5.0.12-r0/recipe-sysroot-native/usr/bin/../lib/librpmbuild.so.7
#15 0x0000555555557abf in ?? ()
#16 0x0000555555557c5b in ?? ()

I did a quick test and bumped the file recipe (was 5.31 on rocko
branch) to 5.34 and the problem went away, no more buffer overflows
and now my recipe builds correctly.

Marc

