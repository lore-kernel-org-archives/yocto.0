Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C310E00869; Mon,  7 Dec 2015 11:53:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2517E00805
	for <yocto@yoctoproject.org>; Mon,  7 Dec 2015 11:53:48 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id tB7JrjPY032065
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 7 Dec 2015 11:53:45 -0800
Received: from [128.224.14.22] (128.224.14.22) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 7 Dec 2015 11:53:44 -0800
Message-ID: <5665E3C6.6090207@windriver.com>
Date: Mon, 7 Dec 2015 14:53:42 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: mike9874 channel <mike987418@gmail.com>, <yocto@yoctoproject.org>
References: <CADkGNzhWGEV8+fW2nuKEvWUvftqB8is7WOK0A3EGpFhe5mTYAA@mail.gmail.com>
In-Reply-To: <CADkGNzhWGEV8+fW2nuKEvWUvftqB8is7WOK0A3EGpFhe5mTYAA@mail.gmail.com>
Subject: Re: PREEMPT-RT patch: wrong header
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
X-List-Received-Date: Mon, 07 Dec 2015 19:53:50 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/07/2015 08:03 AM, mike9874 channel wrote:
> Hello,
> i am building an image for qeumux86 with the PREEMT-RT patch. Therefore
> I use the following in my image.conf file:
> PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"
> PREFERRED_VERSION_linux-yocto-rt ?= "4%"
>
> I get an image with the 4.1.8-rt8-yocto-preempt-rt kernel. I have an
> Application which is also build into the image where I try to use
> SCHED_DEADLINE with sched_setattr() and struct sched_attr from
> <sched.h>. My bitbake compiler throws following error: storage size of
> 'scheduling_attribut' isn't known.
> Where do I get the correct Headers to compile my application?

You need to look at the kernel sources themselves:

STAGING_KERNEL_DIR = "${TMPDIR}/work-shared/${MACHINE}/kernel-source"

The preempt-rt kernel isn't messing with the libc-headers, so if you
are missing a struct that it is modifying, it'll be in the kernel
source itself.

Bruce

>
> Regards,
> Mike
>
>


