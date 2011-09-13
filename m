Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 689B4E006C3
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2011 10:11:12 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8DHH7ln031451; Tue, 13 Sep 2011 18:17:08 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id iJbVLag5hNAn; Tue, 13 Sep 2011 18:17:07 +0100 (BST)
Received: from [192.168.1.36] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8DHH1NJ031444
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 13 Sep 2011 18:17:04 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 13 Sep 2011 18:10:51 +0100
In-Reply-To: <4E6B9133.6010202@mlbassoc.com>
References: <C6510F6D410BB64A8C15398EDC6B847C16E6F441@ORSMSX101.amr.corp.intel.com>
	<4E6B6284.2020701@mlbassoc.com>  <4E6B806E.3020202@mlbassoc.com>
	<1315672125.1986.30.camel@ted> <4E6B9133.6010202@mlbassoc.com>
X-Mailer: Evolution 3.1.91- 
Message-ID: <1315933861.13526.12.camel@ted>
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: kernel panic when boot core-image-sato-sdk for qemux86
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
X-List-Received-Date: Thu, 15 Sep 2011 03:50:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sat, 2011-09-10 at 10:32 -0600, Gary Thomas wrote:
> On 2011-09-10 10:28, Richard Purdie wrote:
> > On Sat, 2011-09-10 at 09:21 -0600, Gary Thomas wrote:
> >> On 2011-09-10 07:13, Gary Thomas wrote:
> >>> On 2011-09-09 17:09, Zhang, Jessica wrote:
> >>>> Hi,
> >>>>
> >>>> Has anybody ran into kernel panic when boot up core-image-sato-sdk for qemux86. I’ve been having this issue with several clean build for two days. And my latest build tree is a
> >>>> freshly cloned tree against poky-master with commit:
> >>>>
> >>>> commit 20dbf0024385eaef61a04d8773fd7640e3c8cc6d
> >>>>
> >>>> Author: Richard Purdie<richard.purdie@linuxfoundation.org>
> >>>>
> >>>> Date: Fri Sep 9 19:07:40 2011 +0100
> >>>>
> >>>> The qemu kernel panic messages are:
> >>>>
> >>>> INIT: version 2.88 booting
> >>>>
> >>>> Init[1]: segfault at 38 ip 495076c7 sp bfd9b60c error 4 in libc-2.13.so[49492000+15f000]
> >>>>
> >>>> Init[1]: segfault at 16 ip 0804b3c7 sp bfd9b280 error 4 in init.sysvinit[8048000+7000]
> >>>>
> >>>> Kernel panic – not syncing: Attempted to kill init!
> >>>>
> >>>> Pid: 1, comm: init Not tainted 3.0.4-yocto-standard+ #1
> >>>
> >>> Verified - fails for me here as well. A Bruce said, a build from just a few days
> >>> ago did work. Note: I only tried core-image-sato
> >>>
> >>> As far as I can tell, the only packages that were rebuilt since my last go on
> >>> Aug 31 were virtual/kernel&  perf
> >>>
> >>> Looks like it's something to do with kernel changes.
> >>>
> >>
> >> Actually, I forgot that qemux86 also uses i586 packages, so there were quite a
> >> few other packages changed since Aug 31.  You can see the lists at
> >>     http://www.mlbassoc.com/poky/qemux86-rpms
> >>
> >
> > I've just tested qemux86 and qemuarm images and both of these were fine
> > (apart from pango issues which I locally reverted the change in question
> > for). I'm a little puzzled why things are therefore failing for people
> > but I would like to get to the bottom of it...
> 
> To be clear, I updated master to 98c2da694ca4c72b3e222a593b8baddea102bde5 and rebuilt
> my image (yesterday).  This image now crashes as reported.
> 
> What can I look at to help?

Can you test whether disabling prelinking removes the segfault?

We have a bug tracking this issue now:

http://bugzilla.yoctoproject.org/show_bug.cgi?id=1473

and believe that its only 32 bit build systems that have this issue.

Cheers,

Richard



