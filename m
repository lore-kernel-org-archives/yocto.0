Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
 by mx.groups.io with SMTP id smtpd.web11.14227.1592741397441020582
 for <yocto@lists.yoctoproject.org>;
 Sun, 21 Jun 2020 05:09:58 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denx.de, ip: 212.18.0.9, mailfrom: sbabic@denx.de)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 49qWZC24Z0z1qrf4;
	Sun, 21 Jun 2020 14:09:55 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 49qWZC1bYVz1qr5b;
	Sun, 21 Jun 2020 14:09:55 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
	with ESMTP id j9yYg9DyVk0u; Sun, 21 Jun 2020 14:09:52 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net [88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Sun, 21 Jun 2020 14:09:52 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 857E94540511;
	Sun, 21 Jun 2020 14:09:52 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([IPv6:::1])
	by localhost (mail.babic.homelinux.org [IPv6:::1]) (amavisd-new, port 10024)
	with ESMTP id Ap0jS_Bm9edo; Sun, 21 Jun 2020 14:09:45 +0200 (CEST)
Received: from [192.168.178.47] (stefano-MacBookPro.fritz.box [192.168.178.47])
	by babic.homelinux.org (Postfix) with ESMTPS id C82CA454042F;
	Sun, 21 Jun 2020 14:09:44 +0200 (CEST)
Subject: Re: [yocto] Distro upgrade strategies
To: Adrian Bunk <bunk@stusta.de>, csimmonds <chris@2net.co.uk>
Cc: yocto@lists.yoctoproject.org
References: <BL0PR11MB3268E2BB9A442B0890DA3C9DAE980@BL0PR11MB3268.namprd11.prod.outlook.com>
 <CANNYZj_0BYuNgmO3MHm0vEgu6qQut2vk984fRFPQGuRCy+=W1Q@mail.gmail.com>
 <4f66cf05-c142-188c-0661-8e446c81c67f@2net.co.uk>
 <20200621071150.GC6921@localhost>
From: "Stefano Babic" <sbabic@denx.de>
Message-ID: <28338870-464a-0f9b-71f2-5802cb4a7330@denx.de>
Date: Sun, 21 Jun 2020 14:09:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200621071150.GC6921@localhost>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Adrian,

On 21.06.20 09:11, Adrian Bunk wrote:
> On Fri, Jun 19, 2020 at 03:35:33PM +0100, csimmonds wrote:
>> I would like to add that this is a design decision. Package updates, be
>> they based on rpm, deb, or ipk, are not atomic. Which means that if you
>> power off during an update the system will usually not boot afterwards.
> 
> This is not true, package manager like dpkg are trying very very hard to
> make things atomic where they have to be and allow recovery from any
> kind of interruption.

I agree with Chris. Yes, dpkg had a lot of improvements, and it is more 
difficult to break a Debian / Ubuntu during an "apt-get update". But let 
me say it is not enough for embedded systems.

I think you mean that dpkg has improved to make the update of a single 
package more atomic, but what about if you upgrade a lot of packages at 
once and you have a power-cut in between ?

If it can work in many case, it won't in many other cases. Hash issues 
with packages ? System does not boot and a grub-rescue shell is started 
? Not a very big problem (in many cases) on server / pc. We check what 
happens, we rework maybe the grub menu, or if nothing works we start a 
live distro. But if this is ok on server / pc for a linux developer, how 
can it work on unattended (embedded) systems, without shell access (due 
to security reasons), and with end users ? It is not enough if it works 
in most cases, it must always work.

> 
> I do not recall anyone ever describing such a problem with Debian
> (or Ubuntu) in over 20 years as Debian user/administrator/developer.
> 

Yes, but if you say that we can update safe between two Debian / Ubuntu 
versions, I have just a couple of cases on my desk that it could not 
work without human intervention...

>> ...
>> OpenEmbedded/Yocto
>> Project expect the update will be done by programming a new root
>> filesystem image.
>> ...
> 
> Note that what you write would imply that package management must not
> ever be used on OpenEmbedded/Yocto devices.

I do not think Chris thought this - you can use package management, it 
speeds up the development process. How this is possible to be used in 
field, it depends on specific situation (maybe just the application is 
udated via package ?), but it is generally not thought to be atomic from 
one distro version to another one (including downgrading).

> 
> If there is any potential problem, it would equally apply to the
> situation where you are upgrading just one package for a security
> update.

In fact, it could apply...

Best regards,
Stefano

> 
>> HTH,
>> Chris
> 
> cu
> Adrian
> 
> 
> 
> 

-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================
