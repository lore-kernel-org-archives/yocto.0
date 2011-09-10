Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36259E01208
	for <yocto@yoctoproject.org>; Sat, 10 Sep 2011 09:29:08 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8AGZ0Es027232; Sat, 10 Sep 2011 17:35:00 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id L8CT5nEBPrZ5; Sat, 10 Sep 2011 17:35:00 +0100 (BST)
Received: from [192.168.1.43] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8AGYqn8027221
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Sat, 10 Sep 2011 17:34:54 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4E6B806E.3020202@mlbassoc.com>
References: <C6510F6D410BB64A8C15398EDC6B847C16E6F441@ORSMSX101.amr.corp.intel.com>
	<4E6B6284.2020701@mlbassoc.com>  <4E6B806E.3020202@mlbassoc.com>
Date: Sat, 10 Sep 2011 17:28:45 +0100
Message-ID: <1315672125.1986.30.camel@ted>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
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
X-List-Received-Date: Sat, 10 Sep 2011 16:29:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sat, 2011-09-10 at 09:21 -0600, Gary Thomas wrote:
> On 2011-09-10 07:13, Gary Thomas wrote:
> > On 2011-09-09 17:09, Zhang, Jessica wrote:
> >> Hi,
> >>
> >> Has anybody ran into kernel panic when boot up core-image-sato-sdk for qemux86. I’ve been having this issue with several clean build for two days. And my latest build tree is a
> >> freshly cloned tree against poky-master with commit:
> >>
> >> commit 20dbf0024385eaef61a04d8773fd7640e3c8cc6d
> >>
> >> Author: Richard Purdie <richard.purdie@linuxfoundation.org>
> >>
> >> Date: Fri Sep 9 19:07:40 2011 +0100
> >>
> >> The qemu kernel panic messages are:
> >>
> >> INIT: version 2.88 booting
> >>
> >> Init[1]: segfault at 38 ip 495076c7 sp bfd9b60c error 4 in libc-2.13.so[49492000+15f000]
> >>
> >> Init[1]: segfault at 16 ip 0804b3c7 sp bfd9b280 error 4 in init.sysvinit[8048000+7000]
> >>
> >> Kernel panic – not syncing: Attempted to kill init!
> >>
> >> Pid: 1, comm: init Not tainted 3.0.4-yocto-standard+ #1
> >
> > Verified - fails for me here as well. A Bruce said, a build from just a few days
> > ago did work. Note: I only tried core-image-sato
> >
> > As far as I can tell, the only packages that were rebuilt since my last go on
> > Aug 31 were virtual/kernel & perf
> >
> > Looks like it's something to do with kernel changes.
> >
> 
> Actually, I forgot that qemux86 also uses i586 packages, so there were quite a
> few other packages changed since Aug 31.  You can see the lists at
>    http://www.mlbassoc.com/poky/qemux86-rpms
> 

I've just tested qemux86 and qemuarm images and both of these were fine
(apart from pango issues which I locally reverted the change in question
for). I'm a little puzzled why things are therefore failing for people
but I would like to get to the bottom of it...

Cheers,

Richard






