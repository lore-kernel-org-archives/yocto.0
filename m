Received: from MTA-06-3.privateemail.com (MTA-06-3.privateemail.com [198.54.127.59])
 by mx.groups.io with SMTP id smtpd.web11.4130.1596051310864954927
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jul 2020 12:35:10 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: whitetree.xyz, ip: 198.54.127.59, mailfrom: yoc.dev@whitetree.xyz)
Received: from MTA-06.privateemail.com (localhost [127.0.0.1])
	by MTA-06.privateemail.com (Postfix) with ESMTP id CD7BF6004B
	for <yocto@lists.yoctoproject.org>; Wed, 29 Jul 2020 15:35:08 -0400 (EDT)
Received: from [10.160.0.226] (unknown [10.20.151.203])
	by MTA-06.privateemail.com (Postfix) with ESMTPA id 4833E6003F
	for <yocto@lists.yoctoproject.org>; Wed, 29 Jul 2020 19:35:08 +0000 (UTC)
To: yocto@lists.yoctoproject.org
From: yoc.dev@whitetree.xyz
Subject: [meta-security] Clamav libclammspack.so missing from image
Message-ID: <464e94c9-7077-bc1c-6ac7-955933fcb4c5@whitetree.xyz>
Date: Wed, 29 Jul 2020 20:34:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi,

I am adding clamav to my custom image.

I have added the target clamav-libclamav to my image and libclamav.so is 
added, as expected, to /usr/lib but libclammspack.so is not added to 
/usr/lib

How to I make sure that libclammspack.so is include in the image?

I am using the meta-security layer on the dunfell branch.

Many Thanks,

Charlie

