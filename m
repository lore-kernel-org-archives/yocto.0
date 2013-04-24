Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6631E01510
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 05:34:51 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r3OCYleq005946
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 24 Apr 2013 05:34:48 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Wed, 24 Apr 2013 05:34:48 -0700
Message-ID: <5177D167.6010909@windriver.com>
Date: Wed, 24 Apr 2013 08:34:47 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130404 Thunderbird/17.0.5
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1304240744050.31988@oneiric>
In-Reply-To: <alpine.DEB.2.02.1304240744050.31988@oneiric>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how the &^$%^%@%^#$ does "file://defconfig" work?
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
X-List-Received-Date: Wed, 24 Apr 2013 12:34:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-04-24 07:50 AM, Robert P. J. Day wrote:
>
>    been fighting with this for a couple of hours, so i'll start with
> the short version -- here's the current explanation for "Changing the
> Configuration" of your kernel:
>
> http://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html#changing-the-configuration
>
>    the salient bit:
>
> "If you have a complete Linux kernel .config file you want to use,
> copy it to a directory named files, which must be in your layer's
> recipes-kernel/linux directory, and name the file "defconfig"."
>
>    first, that clearly suggests that file://defconfig is to be used
> *only* when you have a complete .config file you want to use, which
> also implies that if you use that, you should not be picking up any
> other snippets. that's how i read that -- the use of
> "file://defconfig" means that that is *exactly* the final form of my
> eventual .config file. if that's not true, then that wording needs to
> change.
>
>    also, i've been trying to do just that for a couple hours now, and i
> am definitely *not* getting that as my final .config file used for the
> kernel configuration. so what should be happening here? thanks.

What sort of delta are you seeing ? Just because something is a
defconfig, doesn't mean that will be exactly what you see in the final
.config.

It also could vary a bit based on the kernel recipe you are using,
i.e. if there are configure prepends or appends, or any input
conditioning.

The kernel's configuration routines will take all that input and
potentially select, deselect or take defaults for values that are
not in the defconfig .. hence why you'll see a delta.

Cheers,

Bruce

>
> rday
>
> p.s. as i have some spare time between contracts at the moment, i am
> going to be going over some of the yocto docs in excruciating detail.
> somewhere, scott rifenbark is now thinking, "oh, crap, ..."
>


