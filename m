Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40FC6E0144E
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 10:52:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r7SHqb66005312
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 28 Aug 2013 10:52:37 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Wed, 28 Aug 2013 10:52:36 -0700
Message-ID: <521E38D9.8060102@windriver.com>
Date: Wed, 28 Aug 2013 13:52:25 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <EE3AC7E0-3693-482F-94DB-278D1FD829D5@gmail.com>
In-Reply-To: <EE3AC7E0-3693-482F-94DB-278D1FD829D5@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: How to work with linux-yocto kernel
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
X-List-Received-Date: Wed, 28 Aug 2013 17:52:42 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-08-28 01:48 PM, Elvis Dowson wrote:
> Hi,
>       I just don't understand how to work with the linux-yocto kernel.
>
> For example, I created a local copy of the yocto kernel, and updated the
> linux-yocto_3.8.bb recipe to point to the local copy
> (git:///<path>;protocol=file, etc)
>
> Then I created a local branch meta, and another local branch
> standard/qemuarma9 and then updated the machine definitions in the meta
> branch for qemuarma9.
>
> When I run yocto, and bitbake linux-yocto, in the tmp folder, if I check
> the git branch, it's checked out *_standard/common-pc/atom-pc._*

There were some old bugs which caused the wrong board description to
be picked up, the seems similar.

But without seeing your exact changes, as they sit in the tree, I
can't be sure.

Did you also update the meta and machine branch SRCREVs ?

>
> This is really weird.
>
> I've wasted a couple of days because the yocto build infrastructure was
> checkout out the wrong branch.

Start with the yocto-bsp tool, it's probably the easiest way to define a
new BSP in recipe space, and then move it to the kernel later.

Cheers,

Bruce

>
> Elvis Dowson
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


