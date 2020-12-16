Received: from dd41138.kasserver.com (dd41138.kasserver.com [85.13.157.12])
 by mx.groups.io with SMTP id smtpd.web08.90.1608139053145579990
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 09:17:33 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: herbrechtsmeier.net, ip: 85.13.157.12, mailfrom: stefan@herbrechtsmeier.net)
Received: from [192.168.178.45] (unknown [94.134.94.186])
	by dd41138.kasserver.com (Postfix) with ESMTPSA id 0887811A037A;
	Wed, 16 Dec 2020 18:17:30 +0100 (CET)
Subject: Re: [yocto] Cross compiler which runs on the target architecture
To: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
References: <1419325725.1777.7.camel@linuxfoundation.org>
 <026b39f3-9c86-6488-8504-10c6485c0216@herbrechtsmeier.net>
 <fbe32ce1-e555-0418-c219-722af7586b95@gmail.com>
From: "Stefan Herbrechtsmeier" <stefan@herbrechtsmeier.net>
Message-ID: <129586ad-8b40-3b2b-c81f-b53ef3a54950@herbrechtsmeier.net>
Date: Wed, 16 Dec 2020 18:17:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <fbe32ce1-e555-0418-c219-722af7586b95@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Khem,

Am 09.12.20 um 19:23 schrieb Khem Raj:
> On 12/9/20 4:38 AM, Stefan Herbrechtsmeier wrote:
>> Hi Peter and Richard,
>>
>> does a follow up of this old topic (thread) regarding a cross compiler 
>> which runs on the target architecture exists?
>> https://www.yoctoproject.org/pipermail/yocto/2014-December/022782.html
>>
> 
> I dont think there were further discussions. However, I think the 
> cross-canadian approach is perhaps step in right direction. We would 
> need to enhance it to be able to build multiple cross-canadian tuples 
> instead of only one that we build today which is based on SDK_MACHINE 
> and TARGET_ARCH

The cross-canadian changes the HOST variables and not the TARGET_ 
variables. I need to change the TARGET variables but keep the HOST 
variables. It looks like this isn't really intended because the 
HOST_PREFIX use the TARGET_PREFIX for example.

Regards
   Stefan
