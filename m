Received: from 2.mo178.mail-out.ovh.net (2.mo178.mail-out.ovh.net [46.105.39.61])
 by mx.groups.io with SMTP id smtpd.web10.10982.1582875589508653604
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Feb 2020 23:39:50 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: 3mdeb.com, ip: 46.105.39.61, mailfrom: maciej.pijanowski@3mdeb.com)
Received: from player688.ha.ovh.net (unknown [10.110.208.245])
	by mo178.mail-out.ovh.net (Postfix) with ESMTP id A054993B05
	for <yocto@lists.yoctoproject.org>; Fri, 28 Feb 2020 08:39:47 +0100 (CET)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player688.ha.ovh.net (Postfix) with ESMTPSA id 427DDFC5CD76;
	Fri, 28 Feb 2020 07:39:43 +0000 (UTC)
To: yocto@lists.yoctoproject.org
Cc: tom.zanussi@linux.intel.com, =?UTF-8?Q?Piotr_Kr=c3=b3l?=
 <piotr.krol@3mdeb.com>, norbert.kaminski@3mdeb.com
From: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Subject: Implementing WIC plugin for legacy GRUB disk image
Message-ID: <1dac85cd-d2a5-fd49-c3af-c521607b1a7b@3mdeb.com>
Date: Fri, 28 Feb 2020 08:39:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 14106118459641573017
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrleejgdduudduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepvffhuffkffgfgggtgfesthejredttdefjeenucfhrhhomhepofgrtghivghjucfrihhjrghnohifshhkihcuoehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmqeenucffohhmrghinhephihotghtohhprhhojhgvtghtrdhorhhgpdhgihhthhhusgdrtghomhdpfehmuggvsgdrtghomhenucfkpheptddrtddrtddrtddpkeehrddvvddvrdduudejrddvvddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrieekkedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi,

In Yocto, we have the WIC plugin for building EFI-aware GRUB image.
We also have the bootimg-pcbios: 
http://git.yoctoproject.org/cgit.cgi/poky/tree/scripts/lib/wic/plugins/source/bootimg-pcbios.py?id=38125456ffa6112941a3608fcba9ed2032353740
which uses Syslinux.

We do not have, however (as far as I know) the plugin for creating 
legacy BIOS disk
image with GRUB instead of the Syslinux. We would like to implement such 
plugin.
If we do already have a way to create disk image with legacy GRUB using 
WIC, please let me know.

Some of our early work is available here: 
https://github.com/3mdeb/meta-pcengines/pull/13/files

But we would like to ask which approach should be used in order to avoid 
rewriting later
when upstreaming the plugin back to the oe-core.

Should we just take (copy) the bootimg-pcbios and modify it for GRUB, or 
rather extend
the bootimg-pcbios somehow to allow for bootloader selection? Any ideas 
are appreciated.

-- 
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
https://3mdeb.com | @3mdeb_com

