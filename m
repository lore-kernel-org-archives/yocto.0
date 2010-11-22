Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E4EE34C803A5
	for <yocto@yoctoproject.org>; Mon, 22 Nov 2010 11:09:29 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAMH9FOj023938;
	Mon, 22 Nov 2010 09:09:15 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 22 Nov 2010 09:09:15 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 22 Nov 2010 09:09:15 -0800
Message-ID: <4CEAA3BA.3020103@windriver.com>
Date: Mon, 22 Nov 2010 12:09:14 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.9pre) Gecko/20100217 Shredder/3.0.3pre
	ThunderBrowse/3.2.8.1
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <A28CE1CD-E88E-4CE3-8EFF-1DBC55E1756C@keylevel.com>
In-Reply-To: <A28CE1CD-E88E-4CE3-8EFF-1DBC55E1756C@keylevel.com>
X-OriginalArrivalTime: 22 Nov 2010 17:09:15.0575 (UTC)
	FILETIME=[FDDFAC70:01CB8A67]
Cc: yocto@yoctoproject.org
Subject: Re: New platforms
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
X-List-Received-Date: Mon, 22 Nov 2010 17:09:30 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-11-18 05:36 AM, Chris Tapp wrote:
> Hi,
>
> I've been evaluating OpenEmbedded and saw the announcement of 'Yocto'
> on the mailing list. Yocto looks like it may be better for my needs as
> it is more refined.
>
> As there isn't currently support for the ALIX 3D3 (a Geode LX based
> system), I am interested in creating and maintaining a BSP for it.
> This should also work with other LX systems (e.g. SUMO ST166, other
> ALIX variants), some with no changes, some with minor ones.
>
> Could you give me an idea how much work would be involved in doing
> this and what it involve?

I can answer from the kernel point of view.

The supported yocto kernel(s) (currently 2.6.34 and
shortly 2.6.37-rcX) are the place where I can assist
in getting you up and running with a new board/platform
fairly easily.

The kernel documentation is being updated (since I've
made changes recently to streamline just what you
are talking about here), but I can give some more
hands on help while those docs are still outstanding.

For the kernel, you'd need to create a machine.conf
with your optimization, features, etc, and give the
machine a name. There are obviously plenty of examples
on how to do this in the tree.

At that point, you can bootstrap the the BSP process
by doing a: bitbake -c configure linux-yocto.

You then have the kernel git repository staged and
branch for kernel changes to be added. Working with
the kernel in git is key, since you can have a
common branch, and have board specific branches for
configuration or features that are not generally
applicable to all boards.

You can iteratively configure and build the board
from this point.

When you are happy with the changes you can export
the patches, or keep the branches in a local git
tree (better), and if there is assistance in maintaining
the BSP(s) we can contribute them to the maintained
kernel repository (best). This then enables collaboration
and best practices development.

The amount of work depends on the type of kernel
patches you need to add for the board(s) and the
desired feature mix. Userspace difficulty should
be manageable if the known working ARM baseline
builds are used as starting point.

I've gone light on the details here, but if there is
interest, I can provide more information.

And again, this is speaking from the kernel point of
view only.

Cheers,

Bruce

>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


