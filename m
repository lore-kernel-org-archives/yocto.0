Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A39DA4C800AB
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 16:24:40 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6ELOYfk010819;
	Thu, 14 Jul 2011 22:24:34 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 10103-05; Thu, 14 Jul 2011 22:24:30 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6ELOONX010813
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 14 Jul 2011 22:24:25 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <4E1F5814.1050201@windriver.com>
References: <F6CE52B0-7638-4DC3-BEC0-3DC44A6794A5@kernel.crashing.org>
	<4E1EEB87.1020200@windriver.com>
	<9BDFCF4A-EA10-4963-87E0-556604F3E0AB@dominion.thruhere.net>
	<4E1EF577.2080807@windriver.com>
	<AD2400E9-D0BD-4064-8905-40647AB26518@kernel.crashing.org>
	<1943392B-9988-4CDD-8147-E25F8C8C7203@dominion.thruhere.net>
	<4E1F182E.6000501@windriver.com>
	<6C5647FD-A95C-41E6-90A6-6427DEA04E61@kernel.crashing.org>
	<4E1F5814.1050201@windriver.com>
Date: Thu, 14 Jul 2011 22:24:23 +0100
Message-ID: <1310678663.20015.1200.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: IMAGE_FSTYPES that are supported?
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
X-List-Received-Date: Thu, 14 Jul 2011 21:24:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-07-14 at 16:56 -0400, Bruce Ashfield wrote:
> On 07/14/11 12:34, Kumar Gala wrote:
> >
> > On Jul 14, 2011, at 11:24 AM, Bruce Ashfield wrote:
> >
> >> On 07/14/11 12:21, Koen Kooi wrote:
> >>>
> >>> Op 14 jul 2011, om 18:20 heeft Kumar Gala het volgende geschreven:
> >>>
> >>>>
> >>>> On Jul 14, 2011, at 8:56 AM, Bruce Ashfield wrote:
> >>>>
> >>>>> On 07/14/11 09:40, Koen Kooi wrote:
> >>>>>>
> >>>>>> Op 14 jul 2011, om 15:13 heeft Bruce Ashfield het volgende geschreven:
> >>>>>>
> >>>>>>> On 07/14/11 09:05, Kumar Gala wrote:
> >>>>>>>> Is there a list of which IMAGE_FSTYPES are supported.  I didn't see anything in the docs.  Looking to see if a u-boot 'mkimage' wrapped set of images is supported or not.
> >>>>>>>
> >>>>>>> I'm not 100% where the list is, but I can confirm that
> >>>>>>> uImages are supported and work nicely. Assuming that
> >>>>>>> you are talking about the common use case, and not something
> >>>>>>> more exotic :)
> >>>>>>
> >>>>>>
> >>>>>> I think he means partitioned uimages where you have a kernel + initrd in a single uimage. We don't support that *yet*, but all the needed blocks are there. And we finally get a usecase for having the loadadresses in the machine.conf files :)
> >>>>>
> >>>>> Yah, that's what I wondered as well. I've done this locally,
> >>>>> but nothing out of the box .. so I had nagging doubts!
> >>>>>
> >>>>> Cheers,
> >>>>>
> >>>>> Bruce
> >>>>>
> >>>>
> >>>> What's the IMAGE_FSTYPE for a normal uImage ?
> >>>
> >>> None, it's built by the kernel class, not the rootfs class.
> >>
> >> and to expand a bit, the machine conf would have:
> >>
> >> KERNEL_IMAGETYPE = "uImage"
> >>
> >> So the kernel class will build and produce a uImage for deployment.
> >
> > Ah, so there isnt support for getting a ramdisk wrapped via mkimage.
> 
> Correct, or at least not that I've used out of the box, and
> this is what Koen was commenting on.

I think we have all the pieces there but someone would have to connect
them up...

Cheers,

Richard


