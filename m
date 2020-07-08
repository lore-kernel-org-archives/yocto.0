Received: from smtp-1909.mail.infomaniak.ch (smtp-1909.mail.infomaniak.ch [185.125.25.9])
 by mx.groups.io with SMTP id smtpd.web12.10279.1594214115193888100
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jul 2020 06:15:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@guy-morand.ch header.s=20191114 header.b=PPejhQLY;
 spf=temperror, err=parse error for token &{10 18 spf.infomaniak.ch}: parse error for token &{10 18 relay.mail.infomaniak.ch}: temporary DNS error (domain: guy-morand.ch, ip: 185.125.25.9, mailfrom: guy@guy-morand.ch)
Received: from smtp-3-0001.mail.infomaniak.ch (unknown [10.4.36.108])
	by smtp-2-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4B20Ch6zchzlhf6M
	for <yocto@lists.yoctoproject.org>; Wed,  8 Jul 2020 15:15:12 +0200 (CEST)
Received: from [10.10.255.211] (unknown [109.202.196.62])
	by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4B20Ch3DVHzlh8Tp
	for <yocto@lists.yoctoproject.org>; Wed,  8 Jul 2020 15:15:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=guy-morand.ch;
	s=20191114; t=1594214112;
	bh=Uq77IfsnvHqGJcXPjCNO25MWgR8TB8YIDDMGhTgZFCg=;
	h=To:From:Subject:Date:From;
	b=PPejhQLYRRGWrLRlbXeSpUO+pUS+f3F7xuuPg9VxBc5J9GzGQXEpmT2YLNvM8p2h0
	 i5fkhD9XCUkKn71xHl5vXrbdQwGjJ9NIHNsR+or87PMdvwo+jTaHDnL82D3ENjEEnf
	 RQVvxNJIP1kklgy2EpyYTIsxwLrkRRDioJ6p8HWo=
To: yocto@lists.yoctoproject.org
From: "Guy Morand" <guy@guy-morand.ch>
Subject: Broken dunfell branch
Message-ID: <66c69152-4aaa-fdee-2e02-9bd9b8763cbe@guy-morand.ch>
Date: Wed, 8 Jul 2020 15:15:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
X-Antivirus: Dr.Web (R) for Unix mail servers drweb plugin ver.6.0.2.8
X-Antivirus-Code: 0x100000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hallo Yocto deveopers!

For our daily release, we build from the latest dunfell branch. I would 
like to thank and congratulate you because we have been doing so for 
over a year and the build never broke because of poky/OE meta layers!

However, we recently got some errors:

ERROR: mtd-utils-2.1.1-r0 do_patch: Command Error: 'quilt --quiltrc 
/mnt/sdb/buildAgent/work/8161e17a85bb6b69/build/tmp/work/armv7vet2hf-neon-scewo-linux-gnueabi/mtd-utils/2.1.1-r0/recipe-sysroot-native/etc/quiltrc 
push' exited with 0  Output:
Applying patch 0001-mtd-utils-Fix-return-value-of-ubiformat.patch
patching file ubi-utils/ubiformat.c
Hunk #1 FAILED at 550.
Hunk #2 FAILED at 643.
Hunk #3 FAILED at 669.
3 out of 3 hunks FAILED -- rejects in file ubi-utils/ubiformat.c
Patch 0001-mtd-utils-Fix-return-value-of-ubiformat.patch can be 
reverse-applied
ERROR: Logfile of failure stored in: 
/mnt/sdb/buildAgent/work/8161e17a85bb6b69/build/tmp/work/armv7vet2hf-neon-scewo-linux-gnueabi/mtd-utils/2.1.1-r0/temp/log.do_patch.23641
ERROR: Task 
(/mnt/sdb/buildAgent/work/8161e17a85bb6b69/meta-layers/poky/meta/recipes-devtools/mtd/mtd-utils_git.bb:do_patch) 
failed with exit code '1'

It seems the faulty commit is:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=dunfell&id=994783b52e5c0a97000b8b643c8fd80d81069097

For now I simply build from the previous commit and everything is fine. 
Not sure if someone already noticed that or if there is something wrong 
with my setup?

Best regards,

Guy Morand
