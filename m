Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93A67E00771
	for <yocto@yoctoproject.org>; Fri,  5 Aug 2011 10:38:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p75HcvuR020432
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 5 Aug 2011 10:38:57 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 5 Aug 2011 10:38:57 -0700
Message-ID: <4E3C2AAF.9030601@windriver.com>
Date: Fri, 5 Aug 2011 13:38:55 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <cover.1312523399.git.jingdong.lu@windriver.com>
	<4E3C2997.30503@gmail.com>
In-Reply-To: <4E3C2997.30503@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] meta/pandaboard: add pandaboard bsp
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 05 Aug 2011 17:38:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-05 01:34 PM, Khem Raj wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> On 08/04/2011 10:58 PM, jingdong.lu@windriver.com wrote:
>> From: Jingdong Lu<jingdong.lu@windriver.com>
>>
>> Add pandaboard bsp
>
> why not use meta-ti ?

I'm hoping to not repeat all the discussions that we've had
around the beagle board here. Anything that applies to that
applies here.

This is a reference BSP done by the Wind River folks on top
of the linux-yocto kernel. It is not intended to be a replacement
for any existing pandaboard efforts, but is intended to be used
as an example of an integrated board.

Cheers,

Bruce

>
>>
>> Jingdong Lu (1): pandaboard: add pandaboard bsp
>>
>> .../bsp/pandaboard/pandaboard-non_hardware.cfg     |   30 ++
>> .../bsp/pandaboard/pandaboard-standard.scc         |    7 +
>> .../cfg/kernel-cache/bsp/pandaboard/pandaboard.cfg |  346
>> ++++++++++++++++++++
>> .../cfg/kernel-cache/bsp/pandaboard/pandaboard.scc |    5 + 4 files
>> changed, 388 insertions(+), 0 deletions(-) create mode 100644
>> meta/cfg/kernel-cache/bsp/pandaboard/pandaboard-non_hardware.cfg
>> create mode 100644
>> meta/cfg/kernel-cache/bsp/pandaboard/pandaboard-standard.scc create
>> mode 100644 meta/cfg/kernel-cache/bsp/pandaboard/pandaboard.cfg
>> create mode 100644
>> meta/cfg/kernel-cache/bsp/pandaboard/pandaboard.scc
>>
>> _______________________________________________ yocto mailing list
>> yocto@yoctoproject.org https://lists.yoctoproject.org/listinfo/yocto
>
>
> - --
> - -Khem
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.11 (GNU/Linux)
>
> iEYEARECAAYFAk48KZcACgkQuwUzVZGdMxSjEwCdHLqsMwcYEhAblghgJio7tJPK
> Sm8An2Xps8CntGIGV0bFxTJw/dIAL6pV
> =PeJ+
> -----END PGP SIGNATURE-----
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


