Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-scoter.atl.sa.earthlink.net
	(elasmtp-scoter.atl.sa.earthlink.net [209.86.89.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA053E003D2
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 12:53:00 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=XyZa+5laP0Acx0ZS6CwO3OyOy5JgJI7fHvi2vf81VMGbTxW5eYHpXhh0RJwKT78w;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-scoter.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1VCxPn-00005x-A4; Fri, 23 Aug 2013 15:52:59 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Paul Eggleton'" <paul.eggleton@linux.intel.com>
References: <C0360C54FF104163BE67C2C714409398@PAULD><CAJTo0LYbxT61+Dd_S2f+Det3vk-Fr2q1MgGKOgZ0AM9wxKsaeA@mail.gmail.com><194F81E112554215A78C3D22D34B2A58@PAULD>
	<2275177.m6TO4hPgaX@helios>
In-Reply-To: <2275177.m6TO4hPgaX@helios>
Date: Fri, 23 Aug 2013 12:52:54 -0700
Message-ID: <43B61B5F1FED4CD09156399DFDDA2D51@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6fJBwiky5m04m/R8a26mbgCPFaEgBEzIFQ
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068811fd79b56b3c95909dd96fc05bf4b5a5350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: Building one package needs header from another
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
X-List-Received-Date: Fri, 23 Aug 2013 19:53:03 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> > On Tuesday 20 August 2013 16:06:54 Paul D. DeRocco wrote:
> > 
> > I've been trying to figure out how the setup.py/setup.cfg 
> > (and distutils)
> > stuff works. The setup.cfg file lists only one possible 
> > option for adding
> > directories, which is basedirlist, but setting that to foo adds
> > foo/include to the include directories and foo/lib to the library
> > directories, so that's not appropriate. 

> From: Paul Eggleton
> 
> Could you just send it ${STAGING_DIR_HOST}/${prefix} ? We do 
> do that elsewhere with similar-behaving configure scripts.

I think I've figured out what's going on. The whole distutils.bbclass
interface to the Python distutils package involves the writing of a
setup.py script to perform all the packaging and unpackaging processes.
The setup.py script for matplotlib has to deal with the fact that
matplotlib depends upon a varying set of libraries depending upon how you
configure it. In this case, because I want to build the GTK rendering
backend, it depends upon the pygtk library. It cleverly uses the
pkg-config command to interrogate each dependent library to find out what
compiler options are needed to compile modules that refer to the library,
but unfortunately, pygtk-2.0 is not a "library" that can be searched by
pkg-config, so the do_compile script coughs up the following nonfatal
error message:

    pkg-config: looking for pygtk-2.0 gtk+-2.0
        * Package pygtk-2.0 was not found in the pkg-config
        * search path. Perhaps you should add the directory
        * containing `pygtk-2.0.pc' to the PKG_CONFIG_PATH
        * environment variable No package 'pygtk-2.0' found

I think I'm just going to have to patch the setup.py file (actually a
subsidiary setupext.py file) to hack the additional pygtk-2.0 include
subdirectory into it. However, setupext.py and setup.py both already have
small patches in the original matplotlib recipe. If I add another patch in
my bbappend, will it always be applied after the one in the original
recipe? Or should I just replace the patch file with one containing its
fixes and my fix?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


