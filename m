Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D493E01492
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 12:41:09 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 18 Jul 2013 12:38:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,696,1367996400"; d="scan'208";a="367507733"
Received: from unknown (HELO [10.255.13.184]) ([10.255.13.184])
	by fmsmga001.fm.intel.com with ESMTP; 18 Jul 2013 12:41:00 -0700
Message-ID: <1374176459.1624.48.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: r10kindsofpeople <r10kindsofpeople@gmail.com>
Date: Thu, 18 Jul 2013 14:40:59 -0500
In-Reply-To: <1374159667.1624.42.camel@empanada>
References: <CAE8H0+WxtwacYF8chdJi2hum6XDRAzciSk20PcG6h1qNUmwfSQ@mail.gmail.com>
	<1374159667.1624.42.camel@empanada>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to get released BSP that contains meta-intel ?
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
X-List-Received-Date: Thu, 18 Jul 2013 19:41:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2013-07-18 at 10:01 -0500, Tom Zanussi wrote:
> Hi,
> 
> On Thu, 2013-07-18 at 10:21 -0400, r10kindsofpeople wrote:
> > I've been working with denzil, but decided to try and upgrade to
> > dylan...
> > 
> > 
> > Downloading and installing poky-dylan-9.0.1.tar.bz2 went fine.
> > Finding and downloading meta-crownbay-dylan-9.0.0.tar.bz2 was easy
> > enough.
> > 
> > 
> > But neither of these give me meta-intel.  
> > 
> 
> Actually, what's in the meta-crownbay-dylan tarball is meta-intel, with
> just the meta-crownbay BSP included.  But it looks like there's a
> problem with the naming of the top-level directory in the tarball:
> 
> $ ls meta-crownbay
> binary  common  conf  MAINTAINERS  meta-crownbay  meta-tlk  README
> 
> whereas after untarring, I should have been able to do:
> 
> $ ls meta-intel
> binary  common  conf  MAINTAINERS  meta-crownbay  meta-tlk  README
> 
> Beth or Nitin, can you please fix the tarballs so that the top-level
> directory isn't the meta-BSPname but meta-intel (like they are for the
> previous releases).
> 
> > 
> > So the central question is: how do I find and download a released
> > package that contains meta-intel that's required by meta-crownbay?  A
> 
> If you just rename the top-level directory to meta-intel rather than
> meta-crownbay, things should be fine..
> 

Filed bug 4868 for this.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=4868

Tom

> >  second question is whether I'd have had problems anyway, given that
> > dylan is 9.0.1 and the BSP is 9.0.0. 
> > 
> 
> No, you shouldn't have problems - a given BSP should be good for the
> same major release and all its point releases...
> 
> Thanks,
> 
> Tom
> 
> > 
> > I can do a git of meta-intel, but that apparently gives me a snapshot
> > that doesn't play well with the released poky.  I can do a git of
> > poky, then a git of meta-intel...I still needed to do a bit of
> > tweaking but I could bitbake core-image-minimal.  Now I'm having
> > problems with adt_install, apparently because the scripts all think my
> > release is 1.4+snapshot, which breaks the repository links and the
> > opkg install.  I seem to have gotten around these, too, but if someone
> > has something for me to test using released packages, I'm willing, at
> > the moment, to start from scratch.
> > 
> > 
> > John  
> > 
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 



