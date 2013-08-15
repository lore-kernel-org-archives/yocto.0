Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-spurfowl.atl.sa.earthlink.net
	(elasmtp-spurfowl.atl.sa.earthlink.net [209.86.89.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A88A8E01440
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 13:01:49 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=hMgTSM/OduiAgxQTAsZ2M3+d8jzqAYGvO5EDsEOMlKhAyS7Q0QhaUsuoxoG5YcKo;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-spurfowl.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1VA3jv-0002sA-UX; Thu, 15 Aug 2013 16:01:48 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Saul Wold'" <sgw@linux.intel.com>
References: <D2ED8A5A8E3F4F688EF59142D375B80B@PAULD><520D242A.6040103@linux.intel.com><D4677E29EEA744F99ECD3BF698767C89@PAULD>
	<520D3044.6000904@linux.intel.com>
In-Reply-To: <520D3044.6000904@linux.intel.com>
Date: Thu, 15 Aug 2013 13:01:54 -0700
Message-ID: <AA5214DFE7484C72896D4D472906185A@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6Z8F4VcrqHAo+PT/+JSSlJqpVZYgAASHkA
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688452c186150dc55ca4fb53e8254c9c5ae350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: My stuff is missing from rootfs
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
X-List-Received-Date: Thu, 15 Aug 2013 20:01:49 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Saul Wold
> 
> > My top level recipe uses IMAGE_INSTALL to add a bunch of 
> > packages, including
> > one whose name matches the name of the recipe that's being 
> > processed but
> > whose output is being ignored. This is exactly what I did 
> > in a different
> > Yocto project, to get a similar recipe to install some 
> > similar files, and it
> > all worked fine.
> >
> > I've attached the top level recipe and the problematic one, 
> > only changing
> > the project name to "foo" for proprietary reasons.
> >
> Interesting, did you verify that the files are in the 
> tmp/work/.../foo/packages-split/foo directory.  You can also 
> look in the 
> tmp/work/.../gumstix-foo-pyygtk-image/1.0-r0/installed_pkgs.tx
> t file to 
> ensure your foo package is there.
> 
> You can also look in the image temp dir for the log.do_rootfs 
> and see if 
> there are any issues in it or it's missing your package.

The files are in tmp/work/.../foo_1.0-r1/packages-split/foo, and also in
tmp/work/.../foo_1.0-r1/image, and the package is listed in that text
file. And the logs show no errors.

This smells like one of those situations where nuking tmp and rebuilding
will fix it, and we'll never know what was wrong. I'll let you know if
that fixes it.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 



