Return-Path: <denis@denix.org>
Received: from vms173001pub.verizon.net (vms173001pub.verizon.net
	[206.46.173.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75703E013A8
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 11:20:29 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [108.45.150.102])
	by vms173001.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0MOC00CHEG95B7B2@vms173001.mailsrvcs.net> for
	yocto@yoctoproject.org; Thu, 13 Jun 2013 13:20:09 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id EAEB4200E2; Thu,
	13 Jun 2013 14:19:52 -0400 (EDT)
Date: Thu, 13 Jun 2013 14:19:52 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: michael@cubic.org
Message-id: <20130613181952.GA11656@denix.org>
References: <CAMUsWmAFGwTq=K1MzCUFZLfKCfQBBs7=AHTTcZWuAy4+fq8H+g@mail.gmail.com>
	<81b7b6871dffb1fff87e58061764e396.squirrel@mail.cubic.org>
MIME-version: 1.0
In-reply-to: <81b7b6871dffb1fff87e58061764e396.squirrel@mail.cubic.org>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
Subject: Re: yocto with meta-ti
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
X-List-Received-Date: Thu, 13 Jun 2013 18:20:31 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Tue, Jun 04, 2013 at 08:58:27AM -0700, michael@cubic.org wrote:
> Hi,
> 
> As a quick hack you can mask out recipes-misc by adding the following line
> to your conf/local.conf :
> 
> BBMASK = "meta-ti/recipes-misc"
> 
> It seem to mask out everything in meta-ti/recipes-misc.
> 
> This was a suggestion I found on the net.

Apparently, nobody reads documentation:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/tree/README


> The better way would be if
> meta-ti would be split into multiple layers where one of them is a
> meta-ti-bsp layer.

meta-ti is a BSP layer.

-- 
Denys

