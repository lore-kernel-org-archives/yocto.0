Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 516FCE00306
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2011 08:08:41 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pALG8dQx025883
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 21 Nov 2011 08:08:39 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 21 Nov 2011 08:08:39 -0800
Message-ID: <4ECA777F.6070501@windriver.com>
Date: Mon, 21 Nov 2011 11:08:31 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: Ilya Dmitrichenko <errordeveloper@gmail.com>
References: <CAPhDKbHwqW-EA=Dq_32wd1ywE5JmUn9uBqbsurqmeY0RAPce3g@mail.gmail.com>
In-Reply-To: <CAPhDKbHwqW-EA=Dq_32wd1ywE5JmUn9uBqbsurqmeY0RAPce3g@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Linux kernel recipe template
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
X-List-Received-Date: Mon, 21 Nov 2011 16:08:41 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-11-21 11:01 AM, Ilya Dmitrichenko wrote:
> Hello List,
>
> I have had an attempt to build a kernel from the git sources, trying
> to checkout the v3.1.1 tag, but it appeared to be more difficult then
> I thought. Most of the problem I have had with the yocto-specific
> metadata and some of the extra tasks that it adds. What is the
> cleanest and compatible way to build a kernel from git or any standard
> tree (i.e. 2.6.x or later).

Opinions vary on this point, but if you want to try and use the
yocto kernel tools, add your own meta data and manage the kernel
and follow some of the yocto kernel development workflows .. then
there are compatibility modes and some setup to do what you want.

I also always have a development kernel (currently at 3.2-rc2), if
you need something newer than 3.0.x.

See below for more information.

>
> I can see that the yocto way of building kernel is to provide a commit
> ID for each specific architecture and there also these metadata
> branches, which don't quite understand yet. I managed to somehow slip
> through, but with manual creation of stamp files and manual 'make all
> O=../<build_dir>' stage. I don't seem to find any detailed guide,
> would be great to just see a template in the tree which do just a
> basic build from a given SRC_URI. It would be also nice to have a line
> in this template which would demonstrate how to apply a custom base
> kernel config too.

I have a korg example in poky-extras/meta-kerne-dev/ 
(git://git.pokylinux.org/poky-extras),
which is intended to show pretty what you were looking for.

I have usecase and documentation requirements for yocto 1.2 for this
example as well, so better references are forthcoming in the not
to distant future.

Cheers,

Bruce

>
> Regards,


