Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2634E017A4
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 15:51:13 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Nov 2013 15:51:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,647,1378882800"; d="scan'208";a="429096166"
Received: from unknown (HELO [10.255.15.27]) ([10.255.15.27])
	by fmsmga002.fm.intel.com with ESMTP; 06 Nov 2013 15:51:12 -0800
Message-ID: <1383781872.3022.26.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Andy Gikling <agikling@lasx.com>
Date: Wed, 06 Nov 2013 17:51:12 -0600
In-Reply-To: <4C79E62053892D47A6419B29F941677A6E61B396@EXMBX203A.mmeprod.cbeyond>
References: <mailman.4398.1383775598.2694.yocto@yoctoproject.org>
	<4C79E62053892D47A6419B29F941677A6E61B396@EXMBX203A.mmeprod.cbeyond>
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto Digest, Vol 38, Issue 29
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
X-List-Received-Date: Wed, 06 Nov 2013 23:51:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2013-11-06 at 22:26 +0000, Andy Gikling wrote:
> Brian,
> 
> Yes the meta-intel x86-64 should work.  I wouldn't count on the infrared working out of the box though.  Chances are getting the appropriated graphics drivers to work with Yocto will also be difficult and probably won't work out of the box.  All the NUC's peripherals might work if you install Ubuntu - but I'd even give that a 40% chance of failing to support everything you need for your home theater computer.
> 
> If this is your first go at Yocto, I'd try getting the build system to run on an older x86 computer that you're not interested in using as your home theater PC.  Otherwise you're going to probably get frustrated if/when Yocto doesn't totally support the NUC...
> 

Or you could try the Yocto NUC BSP:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/meta-nuc

I don't know about IR, but everything else works fine out of the box,
including graphics.

Tom


> But if you're not planning on this being a home theater PC, by all means, have at it!  If Yocto has issues now, many of them will get fixed eventually as more of the NUC devices come online.
> 
> Just my 2 cents.
> 
> ~Andy Gikling 
> 
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of yocto-request@yoctoproject.org
> Sent: Wednesday, November 06, 2013 4:07 PM
> To: yocto@yoctoproject.org
> Subject: yocto Digest, Vol 38, Issue 29
> 
> Send yocto mailing list submissions to
> 	yocto@yoctoproject.org
> 
> To subscribe or unsubscribe via the World Wide Web, visit
> 	https://lists.yoctoproject.org/listinfo/yocto
> or, via email, send a message with subject or body 'help' to
> 	yocto-request@yoctoproject.org
> 
> You can reach the person managing the list at
> 	yocto-owner@yoctoproject.org
> 
> When replying, please edit your Subject line so it is more specific than "Re: Contents of yocto digest..."
> 
> 
> Today's Topics:
> 
>    1. Re: FW: curious about ref manual, sec 6.1.11,
>       oe-init-build-env-memres (Saul Wold)
>    2. Re: FW: curious about ref manual, sec 6.1.11,
>       oe-init-build-env-memres (Robert P. J. Day)
>    3. Bitbake Commander Content Assist on bbappend files
>       (Jate Sujjavanich)
>    4. My first Yocto Project (Brian Duffy)
>    5. Changing Config for linux-raspberrypi (John Whitmore)
>    6. Re: Changing Config for linux-raspberrypi (Robert P. J. Day)
>    7. Re: My first Yocto Project (Sean Liming)
> 
> 
> ----------------------------------------------------------------------
> 
> Message: 1
> Date: Wed, 06 Nov 2013 12:38:13 -0800
> From: Saul Wold <sgw@linux.intel.com>
> To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, 	Yocto
> 	discussion list <yocto@yoctoproject.org>
> Subject: Re: [yocto] FW: curious about ref manual, sec 6.1.11,
> 	oe-init-build-env-memres
> Message-ID: <527AA8B5.8060603@linux.intel.com>
> Content-Type: text/plain; charset=ISO-8859-1; format=flowed
> 
> On 11/06/2013 11:11 AM, Rifenbark, Scott M wrote:
> > Anyone know this?
> >
> >> -----Original Message-----
> >> From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> >> Sent: Wednesday, November 06, 2013 10:48 AM
> >> To: Rifenbark, Scott M
> >> Subject: curious about ref manual, sec 6.1.11, 
> >> oe-init-build-env-memres
> >>
> >>
> >>   i've never used that memory-resident version of bitbake -- it's not 
> >> clear from that section whether you need to start bitbake running 
> >> before you run that script.
> >>
> Running that scripts will start the server at the default port of 12345 and setup the default "build" directory.
> 
> >>   that is, it's not really *explicitly* explained whether running 
> >> that script with a port number *starts* the bitbake server. does it?
> >>
> Yes, running the script with a port number will start the server using that port number.
> 
> The bitbake -m command will Stop the server.
> 
> Sau!
> 
> >> rday
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> 
> 
> ------------------------------
> 
> Message: 2
> Date: Wed, 6 Nov 2013 15:41:02 -0500 (EST)
> From: "Robert P. J. Day" <rpjday@crashcourse.ca>
> To: Saul Wold <sgw@linux.intel.com>
> Cc: Yocto discussion list <yocto@yoctoproject.org>
> Subject: Re: [yocto] FW: curious about ref manual, sec 6.1.11,
> 	oe-init-build-env-memres
> Message-ID: <alpine.DEB.2.02.1311061540140.23267@oneiric>
> Content-Type: TEXT/PLAIN; charset=US-ASCII
> 
> On Wed, 6 Nov 2013, Saul Wold wrote:
> 
> > On 11/06/2013 11:11 AM, Rifenbark, Scott M wrote:
> > > Anyone know this?
> > >
> > > > -----Original Message-----
> > > > From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> > > > Sent: Wednesday, November 06, 2013 10:48 AM
> > > > To: Rifenbark, Scott M
> > > > Subject: curious about ref manual, sec 6.1.11, 
> > > > oe-init-build-env-memres
> > > >
> > > >
> > > >   i've never used that memory-resident version of bitbake -- it's 
> > > > not clear from that section whether you need to start bitbake 
> > > > running before you run that script.
> > > >
> > Running that scripts will start the server at the default port of 
> > 12345 and setup the default "build" directory.
> 
>   i suspected as much, but the way that section is worded, that isn't clear. thanks.
> 
> rday
> 
> -- 
> 
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
> 
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> 
> 
> ------------------------------
> 
> Message: 3
> Date: Wed, 6 Nov 2013 15:55:03 -0500
> From: Jate Sujjavanich <Jate.Sujjavanich@myfuelmaster.com>
> To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
> Subject: [yocto] Bitbake Commander Content Assist on bbappend files
> Message-ID:
> 	<6C2434209962DC46B88345CA85C334A201CABA955A2F@Courier.syntech.org>
> Content-Type: text/plain; charset="us-ascii"
> 
> Hover content assist works for me with .bb files, but not .bbappend files under Eclipse with bitbake commander plugin. Should it?
> 
> Jate S.
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20131106/3ef0fab8/attachment-0001.html>
> 
> ------------------------------
> 
> Message: 4
> Date: Wed, 6 Nov 2013 16:34:16 -0500
> From: Brian Duffy <brduffy@gmail.com>
> To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: [yocto] My first Yocto Project
> Message-ID:
> 	<CAHrDPkoYpQw1UZ-aK5Jg33LrtCXoz9C3tF6H5if32Vgh_iKVgQ@mail.gmail.com>
> Content-Type: text/plain; charset="iso-8859-1"
> 
> I would like to get my feet wet with this thing. I am thinking of purchasing this nuc ...
> 
> http://www.intel.com/content/www/us/en/nuc/nuc-kit-d34010wyk.html
> 
> Can I use the the standard x86-64 BSP to get it working? What about the infrared sensor etc. Does that require further customization to get working?
> 
> thnx
> 
> Brian
> 
> --
> Duff
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20131106/394a34fd/attachment-0001.html>
> 
> ------------------------------
> 
> Message: 5
> Date: Wed, 6 Nov 2013 21:40:41 +0000
> From: John Whitmore <arigead@gmail.com>
> To: yocto@yoctoproject.org
> Subject: [yocto] Changing Config for linux-raspberrypi
> Message-ID: <20131106214039.GA16472@griso.site>
> Content-Type: text/plain; charset=utf-8
> 
> Was struggling with the documentation on making chages to the config file used by the raspberrypi linux kernel. I'd got my own layer with a two line append file:
> 
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}"
> KERNEL_DEFCONFIG = "defconfig"
> 
> I'd got my defconfig config file into the directory structure under my layer. 
> 
> .
> ??? conf
> ??? ??? layer.conf
> ??? recipes-kernel
>     ??? linux
>         ??? linux-raspberrypi
>         ??? ??? defconfig
>         ??? linux-raspberrypi_3.6.11.bbappend.jfw
> 
> 
> So all looked good to me thankfully "<kergoth>" on the #yocto IRC Channel pointed me to bitbake -e linux-raspberrypi and I was able to check stuff out. Took me a while but I eventually found the problem.
> 
> The origional recipe "linux-raspberrypi_3.6.11.bb" contains the lines:
> 
> do_configure_prepend() {
> 	install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG} available."
> }
> 
> So even though my append is changing the FILESEXTRAPATHS and KERNEL_DEFCONFIG values it makes no difference at all. Well luckily I did manage to change the name of KERNEL_DEFCONFIG so when the above "install" command was executed it produced errors all over the place. If that hadn't happened I'd have got a kernel with none of my changes and there'd have been naughty words.
> 
> So given that the text book approach to making changes to the kernel, outlined in section "2.2.1. Creating the Append File" of the Linux Kernel Development Manual has been subverted. How do I change the kernel config?
> 
> Can I do my own do_configure_prepend() in my bbappend to prepend the recipe's do_configure_prepend() and get my config file into the place it's going to install from? That sounds really messy to me but I'm new.
> 
> That seems the only alternative short of re-writing the linux-raspberrypi recipe which doesn't sound too good either.
> 
> If somebody could point me in the right direction on how to make changes to the kernel in this case I'd be very grateful.
> 
> Thanks a million for any advice. 
> 
> 
> 
> ------------------------------
> 
> Message: 6
> Date: Wed, 6 Nov 2013 16:47:21 -0500 (EST)
> From: "Robert P. J. Day" <rpjday@crashcourse.ca>
> To: John Whitmore <arigead@gmail.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Changing Config for linux-raspberrypi
> Message-ID: <alpine.DEB.2.02.1311061646400.26091@oneiric>
> Content-Type: TEXT/PLAIN; charset=US-ASCII
> 
> On Wed, 6 Nov 2013, John Whitmore wrote:
> 
> > Was struggling with the documentation on making chages to the config 
> > file used by the raspberrypi linux kernel. I'd got my own layer with a two line append file:
> >
> > FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}"
>                                               ^
>                                               there should be a ":"
> 
> rday
> 



