Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42562E016C5
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 06:19:19 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r9HDJF4I013150
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 17 Oct 2013 06:19:15 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Thu, 17 Oct 2013 06:19:15 -0700
Message-ID: <525FE3C9.3070003@windriver.com>
Date: Thu, 17 Oct 2013 09:19:05 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Diego Sueiro <diego.sueiro@gmail.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
	<CA+gsK-o6n24Aqp2dtpOwnmrCBjWE=HDSJvfqyYy2pvJYrHqXmQ@mail.gmail.com>
	<CAAQYJAu+wU0ODvVoTrRBFhVOUVh+CdMg3mimfgGkj-pwJh3A1g@mail.gmail.com>
	<CAMCfZKF_Rp=uds8tnDPSD9k3GO5dEiHSx9WfYjZ0yPkmh_9YPg@mail.gmail.com>
	<CAMCfZKFh8iJH4655mzFveFYfz8ebLXkGftSa-MR5mEcMEFV8Vw@mail.gmail.com>
	<CADkTA4MgxmiOofDLynbOLR=hV-KQ1ic+Eagjm0yetYOtB6FJzw@mail.gmail.com>
	<CAMCfZKF3aHG4wFMRx2XcdroJJ6ga5v6KHF5DbBTWV7jXOGNX-g@mail.gmail.com>
	<525FDD08.90400@windriver.com>
	<CAMCfZKHz82sPsHXjqxbFDJjFNi7ck+BS=_OtyGmb2FYDAxoe1A@mail.gmail.com>
In-Reply-To: <CAMCfZKHz82sPsHXjqxbFDJjFNi7ck+BS=_OtyGmb2FYDAxoe1A@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: Custom defconfig is not used
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
X-List-Received-Date: Thu, 17 Oct 2013 13:19:22 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-10-17 09:15 AM, Diego Sueiro wrote:
>
> 2013/10/17 Bruce Ashfield <bruce.ashfield@windriver.com
> <mailto:bruce.ashfield@windriver.com>>
>
>
>
>         I expected to get this working "out-of-box".
>
>
>     Did you do a  "bitbake -e <your kernel recipe>" ? and then look at
>     the SRC_URI ? That will tell us if for some reason the beagle layer's
>     defconfig is on there twice.
>
> I'll do it after my current build gets finished.
>
>
>
>         Why config fragments did not worked too?
>
>
>     recipes must inherit linux-yocto to get that support, since it is
>     optional and not something we force on all kernel recipes. So if you
>     want fragment support, creating your own kernel recipe, based on the
>     one in the layers you are using, which inherits linux-yocto is one
>     route to take.
>
> Can I do it on bbappend, or do I need to copy the entirely
> linux-mainline_3.8.bb <http://linux-mainline_3.8.bb> from
> meta-bleagleboard to my layer and add "inherit linux-yocto"?
> Do I need to "inherit linux-yocto", "require
> recipes-kernel/linux/linux-yocto.inc" or "inherit kernel-yocto"?

Look at oe-core/meta-skeleton for the custom kernel recipe example.
It has the inherit/include combinations that you need to follow.

> My concern is: if doing this to just have the config fragment feature,
> I'll possibly mess up the kernel build.

It shouldn't. It only adds to existing phases, and doesn't make
any changes. I've tested it in many combinations and it should
work fine.

If something breaks, I'd like to know, so we can fix it.

Bruce

>
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/


