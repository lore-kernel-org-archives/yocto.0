Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62188E00770
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 07:41:03 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r2FEf2Bm016881
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 15 Mar 2013 07:41:03 -0700 (PDT)
Received: from [128.224.22.84] (128.224.22.84) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Fri, 15 Mar 2013 07:41:02 -0700
Message-ID: <514332FC.2070805@windriver.com>
Date: Fri, 15 Mar 2013 07:41:00 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130221 Thunderbird/17.0.3
MIME-Version: 1.0
To: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
References: <CAFyqS9rzC5ueHXBKnzt7JnfWKKSvBkXBEL3px3vh3itEXaRWqg@mail.gmail.com>
	<51432E43.7060708@windriver.com>
	<CAFyqS9qmjLqMoXkqdFCvzHN_dMcZOd5yn0tgUR4iX5bGdvSSVQ@mail.gmail.com>
In-Reply-To: <CAFyqS9qmjLqMoXkqdFCvzHN_dMcZOd5yn0tgUR4iX5bGdvSSVQ@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: remove /boot/uImage and /usr/share/terminfo
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
X-List-Received-Date: Fri, 15 Mar 2013 14:41:03 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 13-03-15 07:36 AM, Hans Beckérus wrote:
>
>
> On Fri, Mar 15, 2013 at 3:20 PM, Bruce Ashfield
> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>> wrote:
>
>     On 13-03-15 06:33 AM, Hans Beckérus wrote:
>
>         Hi. In an effort to shrink our rootfs by some major numbers we
>         found two
>         low-hanging fruits that we would like to address before cherry
>         picking
>         and removing lots of good linux functionality. We have no need
>         for the
>         uImage (3MB) stored in /boot and also we can leave out the
>         terminfo tree
>         (2.5MB).
>         My question here now is if the build system provide functionality to
>         actually tell the image builder not to include these specific
>         components?
>
>
>      From kernel.bbclass, you just need to clear RDEPENDS_kernel-base
>     in your .conf files:
>
>     # Allow machines to override this dependency if kernel image files are
>     # not wanted in images as standard
>     RDEPENDS_kernel-base ?= "kernel-image"
>
>     You'll still get your kernel modules installed after making this change.
>
>     Bruce
>
>
> Thanks Bruce.How could I have missed that? I believe I scanned through
> the kernel.bbclass for something like this.
> Also got some good tip regarding /usr/share/terminfo? Guess I need to
> figure out what package drags it in ;)

Not off the top of my head. Hopefully someone else with experience in
that area will notice the traffic and jump in :)

I'm fairly certain that is is controllable, since in the past, I've
known it to be removed and tuned for small systems, so it's not a
completely uncommon thing to do.

Cheers,

Bruce

>
> Hans
>


