Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3178E006B5
	for <yocto@yoctoproject.org>; Thu,  6 Feb 2014 21:54:05 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s175rvbT021393
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 6 Feb 2014 21:53:57 -0800 (PST)
Received: from [128.224.26.32] (128.224.26.32) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.2.347.0;
	Thu, 6 Feb 2014 21:53:56 -0800
Message-ID: <52F474F0.3040303@windriver.com>
Date: Fri, 7 Feb 2014 13:53:52 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Otavio Salvador <otavio@ossystems.com.br>, Patches and discussions about
	the oe-core layer <openembedded-core@lists.openembedded.org>, yocto
	<yocto@yoctoproject.org>, "Eggleton, Paul" <paul.eggleton@linux.intel.com>
References: <CAP9ODKoYRMKW70m6CBryNm3EoGdEMrOSn1hduAA0ROrQg8Cr4g@mail.gmail.com>
In-Reply-To: <CAP9ODKoYRMKW70m6CBryNm3EoGdEMrOSn1hduAA0ROrQg8Cr4g@mail.gmail.com>
Subject: Re: [for-dora] Dora backports
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 07 Feb 2014 05:54:07 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit


Hi Otavio,

Thanks, I will add it to dora-next by next Tue since I'm OOO this week.

// Robert

On 2014年02月03日 23:51, Otavio Salvador wrote:
> Hello,
>
> I am adding OE-Core and Yocto mailing list as destination as this has
> fixes for both.
>
> While setting a build system, in a very clean host installation I
> found some issues which were fixed in master and ought to be
> backported to Dora:
>
> meta-yocto:
>   - 1893d1576c1e7acc9881b3392a838c575019f18d (poky.conf: add Debian 7.2
> to SANITY_TESTED_DISTROS)
>   - a452c02c880d1840f1150e59eede3f173f067c5f (poky.conf: add Debian 7.3
> to SANITY_TESTED_DISTROS)
>
> OE-Core:
>   - 97e1d84e2d1a74791ce6af88ddc27963bc0e1bec (base.bbclass: pull in
> file-native for src.rpm)
>
> Specially the missing 'file' took me some time to figure so it is
> horrible to have this error for new users. This could be fixed for
> older releases as well (dylan at least).
>
> Regards,
>

