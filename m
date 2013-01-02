Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB857E011AC
	for <yocto@yoctoproject.org>; Wed,  2 Jan 2013 10:06:56 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r02I6o2X023411
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 2 Jan 2013 10:06:50 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Wed, 2 Jan 2013 10:06:51 -0800
Message-ID: <50E4772C.7050708@windriver.com>
Date: Wed, 2 Jan 2013 13:06:36 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: Brian Smucker <bds@bsmucker.eu.org>
References: <50D8B40C.7020305@bsmucker.eu.org>
In-Reply-To: <50D8B40C.7020305@bsmucker.eu.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Magic kernel config option.
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
X-List-Received-Date: Wed, 02 Jan 2013 18:06:57 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-12-24 02:59 PM, Brian Smucker wrote:
> Hi,
>

Catching up on email from the holidays. Did you ever get an answer
to this ?

> I'm a yocto mostly-newbie, trying to find my way.  I have a custom layer
> that I am using to build a kernel. The layer right now consists of a few
> kernel patches and a defconfig and is based on the standard kernel
> otherwise.
>
> When I do a diff on my defconfig and the bitbake generated .config, they
> are quite similar, but the CONFIG_UNION_FS=y line magically shows up.
> I'm wondering where it comes from and how to disable it.

CONFIG_UNION_FS is being enabled by the standard kernel (and all
kernels that inherit it). Since you are based on that kernel, you
get the option enabled.

>
> I can do a bitbake -c menuconfig virtual/kernel and eliminate that
> option giving me the kernel I want, but those changes are gone after a
> bitbake -c cleansstate ...

Have you tried putting

# CONFIG_UNION_FS is not set

in your defconfig ? That should disable it.

Bruce

>
> Could someone give me some help about where to go from here?
>
> Thanks,
> Brian
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


