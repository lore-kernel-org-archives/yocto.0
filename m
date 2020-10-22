Received: from 2.mo179.mail-out.ovh.net (2.mo179.mail-out.ovh.net [178.33.250.45])
 by mx.groups.io with SMTP id smtpd.web11.960.1603386688773335504
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Oct 2020 10:11:29 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: 3mdeb.com, ip: 178.33.250.45, mailfrom: maciej.pijanowski@3mdeb.com)
Received: from player793.ha.ovh.net (unknown [10.109.146.76])
	by mo179.mail-out.ovh.net (Postfix) with ESMTP id 25A8717A354
	for <yocto@lists.yoctoproject.org>; Thu, 22 Oct 2020 19:11:25 +0200 (CEST)
Received: from 3mdeb.com (89-66-159-90.dynamic.chello.pl [89.66.159.90])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player793.ha.ovh.net (Postfix) with ESMTPSA id 3F0E61773AED7;
	Thu, 22 Oct 2020 17:11:24 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-98R002372c6d1e-b8ba-4378-9dae-cb6a6f5d3619,
                    6E4D179B5BD680EC962F27E4EA386A87D849C8B4) smtp.auth=maciej.pijanowski@3mdeb.com
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com
From: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Subject: State of qemuppc64
Message-ID: <428851cf-9d68-b608-5efd-8916c6dd621a@3mdeb.com>
Date: Thu, 22 Oct 2020 19:11:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 13636055249136922166
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrjeekgddvkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepvffhuffkffgfgggtgfesthejredttdefjeenucfhrhhomhepofgrtghivghjucfrihhjrghnohifshhkihcuoehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmqeenucggtffrrghtthgvrhhnpeekvefgieehgefgkeetgeefveelleefkeffhfdvtedukeetteegjeduhfeifeegudenucffohhmrghinhepghhithhhuhgsrdgtohhmpdihohgtthhophhrohhjvggtthdrohhrghdpohhpvghnvghmsggvugguvggurdhorhhgpdefmhguvggsrdgtohhmnecukfhppedtrddtrddtrddtpdekledrieeirdduheelrdeltdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejleefrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepmhgrtghivghjrdhpihhjrghnohifshhkihesfehmuggvsgdrtghomhdprhgtphhtthhopeihohgtthhosehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrgh
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hello,

I need to build a development environment for ppc64 (POWER9).
I wanted to use Yocto to build ppc64 QEMU images. I'm starting with
big endian as I need to test out this one first.

I was surprised to see that there is no qemuppc64 target, so I have
just started my own here [1]. I want to use the POWER9 tune and POWER9
CPU in QEMU. It is already supported in recent QEMU as we have already
been running some firmware images.

I've been trying to find something about qemuppc64 and Yocto and found
just some old meta layer [2] and a thread on adding qemuppc64 support
to the linux-yocto [3]. The last part (yocto-kernel-cache) was merged and
is still there. There are some more unmerged patches in this regard
though [4].

Do you know what is the status there? I would be happy to help moving it
forward.

[1]
https://github.com/3mdeb/meta-ppc64/blob/master/conf/machine/qemuppc64.conf
[2] https://github.com/akuster/meta-qemu-bsps
[3]https://www.yoctoproject.org/pipermail/linux-yocto/2014-September/003184.html
[4]
https://patchwork.openembedded.org/project/oe-core/patches/?submitter=11275&state=&q=ppc64&archive=both&delegate=

-- 
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
https://3mdeb.com | @3mdeb_com

