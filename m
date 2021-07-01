Received: from mx01.optimcloud.com (mx01.optimcloud.com [46.23.89.156])
 by mx.groups.io with SMTP id smtpd.web09.9291.1625155031568178807
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Jul 2021 08:57:12 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=BEZKRs0T;
 spf=none, err=permanent DNS error (domain: optimcloud.com, ip: 46.23.89.156, mailfrom: yocto@optimcloud.com)
Received: from mx01.optimcloud.com (localhost [127.0.0.1])
	by mx01.optimcloud.com (OpenSMTPD) with ESMTP id c7c44b1a
	for <yocto@lists.yoctoproject.org>;
	Thu, 1 Jul 2021 17:57:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=
	content-type:message-id:from:to:subject:date:mime-version; s=
	obsd; bh=l+oCWY0Vh5zZEaDhS+WNICldgLi2MQMB8k1+y2M0/Lk=; b=BEZKRs0
	TWaJooIRxLXV9VtZ8Lh813/LYJY9dIMGyfmBYnmQKcBXOOTDXFUDCcmeBDG+LedL
	9DjvAhDKmURxQatDjCAttIVAQ8EcY95KqFLtpzl/TF5AkBzYl+M5FEr1ndoW7Np9
	AZxb7jqey4nF65q/wIUPuR+aC2tt5K+6LQjLE/XizosqbP/Jnx/cLda1NckC8mh5
	Slzgopemb4yW/F4i76JdIqACZZG60QI257gP/cV0op5Dw8LkYvMvXcW5TOdBowcl
	9PyIOilntwLncZ8aASpQZ8xBkOUZAYIQq0dCym5Otv3Rw5hR1CQ+4NmTpHOsRATT
	0MOjmp//lOu2tRg==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=
	content-type:message-id:from:to:subject:date:mime-version; q=
	dns; s=obsd; b=DvLF/Q+/P5r9fb6v6B6iylj+d5aGddD24ea0UH3njRSXHjL4A
	gJ5nugtbBn6gCnn50Jg5a90RhGcXBFVFlgiNBJtcyNG3dA4PdbaE7W7qq8UUHHAg
	1GYOBNdt8QgOHi9X+HlE+dOU3SAANq91bbJutdT2LMR7umRXGHFl+osaZ1Np8R8S
	DnzLTu9zwowtqj4o/SFnAKlh0yRIzfvFvYBkSDT6Nt1bS/U/PWfKRSxgMix01UDX
	3mwBG5MiGvdVu6npoWhcnRgzeS/rUUkJTpOrt/bkbP2F63iuP963slPJAQIV7kfF
	JrdGJEh1FZp4STen+YhOlOjxsMgLDmKmBurqA==
Received: 
	by mx01.optimcloud.com (OpenSMTPD) with ESMTPSA id 9c602014 (TLSv1.3:AEAD-AES256-GCM-SHA384:256:NO) auth=yes user=yocto@optimcloud.com
	for <yocto@lists.yoctoproject.org>;
	Thu, 1 Jul 2021 17:57:06 +0200 (CEST)
Message-Id: <1625154936008.2344593251.3098544446@optimcloud.com>
From: "Yocto" <yocto@optimcloud.com>
To: yocto@lists.yoctoproject.org
Subject: run.do_image_zipabox2_sdimg.27223: parted: not found
Date: Thu, 01 Jul 2021 15:57:03 +0000
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="----sinikael-?=_1-16251550230890.23696342082301647"

------sinikael-?=_1-16251550230890.23696342082301647
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

having a really funky issue
everything builds fine under pyro

updated it all to dunfell, and now im hitting this failure below, i also 
pasted the log and the offending recipe on pastebin 
logfile: https://pastebin.com/38TzNa5h

bb recipe: https://pastebin.com/jhfTBv58

Logfile of failure stored in: 
/home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-poky-linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/log.do_image_zipabox2_sdimg.27223


Log data follows:
| DEBUG: Executing python function set_image_size
| DEBUG: 1032444.400000 = 794188 * 1.300000
| DEBUG: 1032444.400000 = max(1032444.400000, 8192)[1032444.400000] + 0
| DEBUG: 1032445.000000 = int(1032444.400000)
| DEBUG: 1032445 = aligned(1032445)
| DEBUG: returning 1032445
| DEBUG: Python function set_image_size finished
| DEBUG: Executing shell function do_image_zipabox2_sdimg
| 0+0 records in
| 0+0 records out
| 0 bytes copied, 8.9773e-05 s, 0.0 kB/s
| 
/home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-poky-linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/run.do_image_zipabox2_sdimg.27223: 
124: 
/home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-poky-linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/run.do_image_zipabox2_sdimg.27223: 
parted: not found
| WARNING: exit code 127 from a shell command.
| ERROR: Execution of 
'/home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-poky-linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/run.do_image_zipabox2_sdimg.27223' 
failed with exit code 127:
| 0+0 records in
| 0+0 records out
| 0 bytes copied, 8.9773e-05 s, 0.0 kB/s
| 
/home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-poky-linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/run.do_image_zipabox2_sdimg.27223: 
124: 
/home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-poky-linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/run.do_image_zipabox2_sdimg.27223: 
parted: not found
| WARNING: exit code 127 from a shell command.
| ERROR: Task 
(/home/dingo/TEST3/Zipato/zipato-yocto-public/meta-zipato-public/images/zipabox2-image/zipabox2-image-blank_1.0.bb:do_image_zipabox2_sdimg) 
failed with exit code '1'
NOTE: Tasks Summary: Attempted 4542 tasks of which 4540 didn't need to be 
rerun and 2 failed.

Summary: 2 tasks failed:
   
/home/dingo/TEST3/Zipato/zipato-yocto-public/meta-zipato-public/images/zipabox2-image/zipabox2-image-blank_1.0.bb:do_image_zipabox2_mender
   
/home/dingo/TEST3/Zipato/zipato-yocto-public/meta-zipato-public/images/zipabox2-image/zipabox2-image-blank_1.0.bb:do_image_zipabox2_sdimg

-- 
Sent with Vivaldi Mail. Download Vivaldi for free at vivaldi.com

------sinikael-?=_1-16251550230890.23696342082301647
Content-Type: text/html; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

<html><head></head><body><span style="font-family: monospace; font-size: 
medium; white-space: pre-wrap; background-color: rgb(54, 55, 63);">having a 
really funky issue
everything builds fine under pyro

updated it all to dunfell, and now im hitting this failure below, i also 
pasted the log and the offending recipe on pastebin 
logfile: </span><a style="color: rgb(101, 144, 253); font-family: 
monospace; font-size: medium; white-space: pre-wrap;" 
href="https://pastebin.com/38TzNa5h">https://pastebin.com/38TzNa5h</a><span 
style="font-family: monospace; font-size: medium; white-space: pre-wrap; 
background-color: rgb(54, 55, 63);">

bb recipe: </span><a style="color: rgb(101, 144, 253); font-family: 
monospace; font-size: medium; white-space: pre-wrap;" 
href="https://pastebin.com/jhfTBv58">https://pastebin.com/jhfTBv58</a><span 
style="font-family: monospace; font-size: medium; white-space: pre-wrap; 
background-color: rgb(54, 55, 63);">

Logfile of failure stored in: 
/home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-poky-linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/log.do_image_zipabox2_sdimg.27223


Log data follows:
| DEBUG: Executing python function set_image_size
| DEBUG: 1032444.400000 = 794188 * 1.300000
| DEBUG: 1032444.400000 = max(1032444.400000, 8192)[1032444.400000] + 0
| DEBUG: 1032445.000000 = int(1032444.400000)
| DEBUG: 1032445 = aligned(1032445)
| DEBUG: returning 1032445
| DEBUG: Python function set_image_size finished
| DEBUG: Executing shell function do_image_zipabox2_sdimg
| 0+0 records in
| 0+0 records out
| 0 bytes copied, 8.9773e-05 s, 0.0 kB/s
| 
/home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-poky-linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/run.do_image_zipabox2_sdimg.27223: 
124: 
/home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-poky-linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/run.do_image_zipabox2_sdimg.27223: 
parted: not found
| WARNING: exit code 127 from a shell command.
| ERROR: Execution of 
'/home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-poky-linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/run.do_image_zipabox2_sdimg.27223' 
failed with exit code 127:
| 0+0 records in
| 0+0 records out
| 0 bytes copied, 8.9773e-05 s, 0.0 kB/s
| 
/home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-poky-linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/run.do_image_zipabox2_sdimg.27223: 
124: 
/home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-poky-linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/run.do_image_zipabox2_sdimg.27223: 
parted: not found
| WARNING: exit code 127 from a shell command.
| ERROR: Task 
(/home/dingo/TEST3/Zipato/zipato-yocto-public/meta-zipato-public/images/zipabox2-image/zipabox2-image-blank_1.0.bb:do_image_zipabox2_sdimg) 
failed with exit code '1'
NOTE: Tasks Summary: Attempted 4542 tasks of which 4540 didn't need to be 
rerun and 2 failed.

Summary: 2 tasks failed:
   
/home/dingo/TEST3/Zipato/zipato-yocto-public/meta-zipato-public/images/zipabox2-image/zipabox2-image-blank_1.0.bb:do_image_zipabox2_mender
   
/home/dingo/TEST3/Zipato/zipato-yocto-public/meta-zipato-public/images/zipabox2-image/zipabox2-image-blank_1.0.bb:do_image_zipabox2_sdimg

</span>--&nbsp;<br>Sent with Vivaldi Mail. Download Vivaldi for free at 
vivaldi.com</body></html>

------sinikael-?=_1-16251550230890.23696342082301647--
