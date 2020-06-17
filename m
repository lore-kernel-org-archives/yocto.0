Received: from smtpcmd0871.aruba.it (smtpcmd0871.aruba.it [62.149.156.71])
 by mx.groups.io with SMTP id smtpd.web11.6001.1592395522681444671
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Jun 2020 05:05:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=DxoCX6LR;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 62.149.156.71, mailfrom: mauro@faresoftware.it)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd08.ad.aruba.it with bizsmtp
	id sC5L2201a2wfazh01C5LNP; Wed, 17 Jun 2020 14:05:21 +0200
To: yocto@lists.yoctoproject.org
From: "Mauro Ziliani" <mauro@faresoftware.it>
Subject: Missing artifact with wic create -e <image> <wks>
Message-ID: <7ad4a5c2-5458-60aa-0c1b-b01c130fe7a1@faresoftware.it>
Date: Wed, 17 Jun 2020 14:05:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1592395521; bh=Jrs/xQ6vrKA5cuiTMmuCvhKX3y4n9OXuFWNLCoRfehc=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=DxoCX6LRRTpUHi4OX6k6LJu8qNVTHkkQVhFThwaMGmc0c6wkvK2xh4LGvr9z3IG0T
	 VAIySdCbKcZUOOnZs8z0APa7J6NuNnirnhkSlqWj6eyrDnOOUGymGrPw43onbS0XVP
	 fSIDBL2koNSV6ronWnXhbjT2k581tusfEuV0Fvsk+ZekZc3ez5GxkBSWUvNhu4teKn
	 HYT/xRXkEkNpFTqpZGjuqNrOPOuAqay99czmoVwZ6qSmEY+3+rUKbs3ALpy0+oFToG
	 xyc9bS/5+PgbT2U4l2vM5+NPzus6VttzmNDYuYCT/w6QpbxfCTZ3AtDaSiZu3V/o2A
	 /zzA2BvWzMefQ==
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

When I try to build an image with wic I get always this error

NOTE: Executing Tasks
NOTE: Setscene tasks completed
NOTE: Tasks Summary: Attempted 1355 tasks of which 1355 didn't need to 
be rerun and all succeeded.
INFO: Build artifacts not found, exiting.
INFO:   (Please check that the build artifacts for the machine
INFO:    selected in local.conf actually exist and that they
INFO:    are the correct artifacts for the image (.wks file)).

ERROR: ("The artifact that couldn't be found was %s:\n %s", 
'rootfs-dir', 
'/home/mauro/yocto/zeus/epilmax-build/tmp-glibc/work/geode_lx500-oe-linux/epilmax-image/1.0-r0/rootfs')


The epilmax-imagr/1.0-r0/rootfs doesn't exists


Which is my error?

Mauro

