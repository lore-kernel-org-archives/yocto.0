Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 251324C80908
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 08:07:01 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6ED6rXN032376;
	Thu, 14 Jul 2011 08:06:54 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <1310460238.20015.1024.camel@rex>
Date: Thu, 14 Jul 2011 08:06:53 -0500
Message-Id: <9D94299C-4B6A-4550-80A8-7821FB26D81C@kernel.crashing.org>
References: <CAE727EC-4F3C-4FD2-BCEE-F14BC42E981F@technicolor.com>
	<1310460238.20015.1024.camel@rex>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.1084)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Menu configuration
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
X-List-Received-Date: Thu, 14 Jul 2011 13:07:02 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


On Jul 12, 2011, at 3:43 AM, Richard Purdie wrote:

> On Mon, 2011-07-11 at 10:00 -0700, Turner Randy wrote:
>> Hello list,
>> 
>> Is there a interactive menu-based configuration for yocto/poky builds
>> similar to that provided in Buildroot? Or is someone working on this?
> 
> At present there is not any interactive menu based configuration but
> there is work ongoing on a UI called hob which allows you to select
> packages and construct images of those packages so its a graphical front
> end to the system.
> 
> We're also in the process of starting to better markup configuration
> variables in the metadata so that writing some kind of menu based
> configuration system would be easier in the future.
> 
> We're certainly open to any help in those areas too!
> 
> Cheers,
> 
> Richard

Are there any docs for hob at this point?

- k

