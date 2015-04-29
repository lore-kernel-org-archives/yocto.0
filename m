Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51F93E009AA; Wed, 29 Apr 2015 06:21:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5016CE009D2
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 06:20:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.9) with ESMTP id t3TDKm3d022952
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 29 Apr 2015 06:20:48 -0700 (PDT)
Received: from [128.224.56.94] (128.224.56.94) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 29 Apr 2015 06:20:47 -0700
Message-ID: <5540DAAF.6040409@windriver.com>
Date: Wed, 29 Apr 2015 09:20:47 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Parthiban Kandasamy <parthiban@ulivesystems.com>, <yocto@yoctoproject.org>
References: <CABNKipL2O7mZgYXSjRPR_Y9wYK4amR_EBVQmkEumXgB30Acvww@mail.gmail.com>
In-Reply-To: <CABNKipL2O7mZgYXSjRPR_Y9wYK4amR_EBVQmkEumXgB30Acvww@mail.gmail.com>
Subject: Re: Yocto linux-kernel
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
X-List-Received-Date: Wed, 29 Apr 2015 13:21:31 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 04/29/2015 08:38 AM, Parthiban Kandasamy wrote:
> i am using beagleboard-xm like board for my custom use. for my
> development i am using yocto-dora-1.5 as bsp and kernel-2.6.32(i
> downgraded).
>           while bitbaking kernel, i got error as follows:
>
> Log data follows:
> | DEBUG: Executing shell function do_kernel_checkout
> | Reinitialized existing Git repository in
> /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto/2.6.32-r0/linux-2.6.32/.git/
> | On branch standard/base
> | nothing to commit, working directory clean
> | ERROR. The branch 'meta' is required and was not
> | found. Ensure that the SRC_URI points to a valid linux-yocto
> | kernel repository
> | WARNING:
> /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto/2.6.32-r0/temp/run.do_kernel_checkout.32588:1
> exit 1 from
> |   exit 1
> | ERROR: Function failed: do_kernel_checkout (log file is located at
> /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto/2.6.32-r0/temp/log.do_kernel_checkout.32588)
>
> due to this error i thought error can be cleared if kernel fetched from
> yocto git repository, but i cat get from there,  so how do i get
> kernel-2.6.32 for yocto project.

There isn't a released 2.6.32 linux-yocto version, so if you
really want that old version, you'd need to create a linux-yocto-custom
recipe for the version (unless that is what you already did).

Bruce

>
> --
> thanks and regards,
> parthiban
>        +919790329795
>
>


