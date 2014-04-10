Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69C3DE00BE0
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 08:35:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s3AFZPWq003115
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 10 Apr 2014 08:35:25 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Thu, 10 Apr 2014 08:35:25 -0700
Message-ID: <5346BA37.3010501@windriver.com>
Date: Thu, 10 Apr 2014 11:35:19 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Patrick Doyle <wpdster@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <CAF_dkJD45hZOEwqb4giAKmdO-22WK3KTf-Bz0RWZvKTHD9-qFQ@mail.gmail.com>
In-Reply-To: <CAF_dkJD45hZOEwqb4giAKmdO-22WK3KTf-Bz0RWZvKTHD9-qFQ@mail.gmail.com>
Subject: Re: How to include kernel module without including the kernel in the rootfs?
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
X-List-Received-Date: Thu, 10 Apr 2014 15:35:27 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-04-10 11:32 AM, Patrick Doyle wrote:
> I just added a custom kernel module to my build, and now my rootfs
> includes a copy of my kernel (thus making it too large to fit in my
> pinhole sized root partition).
>
> Is there any way to prevent the kernel from being included in the
> rootfs?  Do modutils require a kernel image in order to function
> properly?

Clear this in your kernel recipe:

# Allow machines to override this dependency if kernel image files are
# not wanted in images as standard
RDEPENDS_kernel-base ?= "kernel-image"

and you'll get no kernel image, and yes, modules will work.

Bruce

>
> My recipe contains
>
> inherit module
>
> So I'm expecting that the module class does magic that results in the
> kernel getting installed.
>
> Is there a flag I can set to say "Don't do that?".
>
> Thanks.
>
> --wpd
>


