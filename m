Return-Path: <denis@denix.org>
Received: from vms173019pub.verizon.net (vms173019pub.verizon.net
	[206.46.173.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CE02E01206
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 07:06:37 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [108.48.117.33])
	by vms173019.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0M3P006MVJ6ANSG1@vms173019.mailsrvcs.net> for
	yocto@yoctoproject.org; Tue, 08 May 2012 09:06:11 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 8FC6720168; Tue,
	08 May 2012 10:06:10 -0400 (EDT)
Date: Tue, 08 May 2012 10:06:10 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
Message-id: <20120508140610.GK11416@denix.org>
References: <752F5B12-4CCB-4C62-A1DE-61EA5BD21CE9@keylevel.com>
	<F549F654-3C59-46D2-9CA4-CE734301938B@keylevel.com>
	<CALZ2gZU7DOYu6+kZ-DY=hw-3v5Gyqn2nABDgz06h+S4rubfL+A@mail.gmail.com>
MIME-version: 1.0
In-reply-to: <CALZ2gZU7DOYu6+kZ-DY=hw-3v5Gyqn2nABDgz06h+S4rubfL+A@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
Subject: Re: Raspberry Pi
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
X-List-Received-Date: Tue, 08 May 2012 14:06:37 -0000
Content-type: text/plain; charset=iso-8859-1
Content-disposition: inline
Content-transfer-encoding: 8bit

On Tue, May 08, 2012 at 12:58:32AM -0700, Osier-mixon, Jeffrey wrote:
> Hi Chris & all - there is a small group working on a Yocto Project BSP
> for the Raspberry Pi, particularly to get Qt working (this is the
> QtonPi group to which Brian referred in an earlier message). I can put
> you in touch with them if you like.

There is even a repository available for it now:

https://github.com/djwillis/meta-raspberrypi

-- 
Denys


> On Tue, May 8, 2012 at 12:43 AM, Chris Tapp <opensource@keylevel.com> wrote:
> > On 15 Dec 2011, at 21:47, Chris Tapp wrote:
> >
> >> Is anyone on this list considering (or working on) a BSP for the Raspberry Pi (http://www.raspberrypi.org/faqs) ?
> >>
> >> For those that haven't seen it, it's a credit-card sized 'home pc' aimed primarily at educational users that includes a 700MHz ARM11 core, HDMI, OpenGL ES 2.0, ethernet and audio for about $35. It will be supporting Debian, Fedora and ArchLinux at launch.
> >>
> >> Looks like a good board for people that want to get in to Yocto / embedded linux. Also looks like it's a good platform for some of my stuff...
> >>
> >> I would be interested in working on a BSP / distro if anyone is working on it or would like to work on it.
> >
> > Well, I've finally got to the top of the order list and should be getting some hardware within the next few days. Time to get started!
> >
> > I guess the first thing to do is get a kernel built. I'm not up-to-date with ARM - are there any BSPs available for similar devices / the ARM11 core?
> >
> > Chris Tapp
> >
> > opensource@keylevel.com
> > www.keylevel.com
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 
> 
> 
> -- 
> Jeff Osier-Mixon http://jefro.net/blog
> Yocto Project Community Manager @Intel http://yoctoproject.org
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

