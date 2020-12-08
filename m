Received: from dd41138.kasserver.com (dd41138.kasserver.com [85.13.157.12])
 by mx.groups.io with SMTP id smtpd.web09.11222.1607445535545522825
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Dec 2020 08:38:56 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: herbrechtsmeier.net, ip: 85.13.157.12, mailfrom: stefan@herbrechtsmeier.net)
Received: from [192.168.178.45] (i5E866785.versanet.de [94.134.103.133])
	by dd41138.kasserver.com (Postfix) with ESMTPSA id E8B0211A037A
	for <yocto@lists.yoctoproject.org>; Tue,  8 Dec 2020 17:38:52 +0100 (CET)
From: "Stefan Herbrechtsmeier" <stefan@herbrechtsmeier.net>
Subject: Build firmware and gcc cross compiler like gcc-arm-none-eabi (multilib vs multiconfig)
To: yocto@lists.yoctoproject.org
Message-ID: <bdcfeb45-25b9-e0c4-743f-18299ac89da8@herbrechtsmeier.net>
Date: Tue, 8 Dec 2020 17:38:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

I wonder what is the best solution (multilib or multiconfig) to build a 
firmware and a gcc cross compiler like the Debian gcc-arm-none-eabi to 
build plugins for the firmware on an other machine.

I have two processors. A Poky based Linux distributions runs on the 
first processor and a RTOS firmware on the second processes. It looks 
like the best solution to build the RTOS firmware is multiconfig and 
separate machine configurations for each processors. But beside the RTOS 
firmware I need some headers, libraries and a gcc cross compiler for the 
RTOS in the Linux image. It is possible to share packages in multiconfig 
and how could I build a gcc cross compiler for an foreign machine.

Best regards
   Stefan
