Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3EC1E01206
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2013 04:06:05 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Sep 2013 04:03:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,1020,1367996400"; d="scan'208";a="373294490"
Received: from unknown (HELO helios.localnet) ([10.252.123.76])
	by orsmga001.jf.intel.com with ESMTP; 04 Sep 2013 04:06:04 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Wed, 04 Sep 2013 12:06:03 +0100
Message-ID: <91888868.7TrBoFHcbT@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-29-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <43B61B5F1FED4CD09156399DFDDA2D51@PAULD>
References: <C0360C54FF104163BE67C2C714409398@PAULD>
	<2275177.m6TO4hPgaX@helios>
	<43B61B5F1FED4CD09156399DFDDA2D51@PAULD>
MIME-Version: 1.0
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
X-List-Received-Date: Wed, 04 Sep 2013 11:06:07 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Paul,

Apologies for the delayed reply.

On Friday 23 August 2013 12:52:54 Paul D. DeRocco wrote:
> > > On Tuesday 20 August 2013 16:06:54 Paul D. DeRocco wrote:
> > > 
> > > I've been trying to figure out how the setup.py/setup.cfg
> > > (and distutils)
> > > stuff works. The setup.cfg file lists only one possible
> > > option for adding
> > > directories, which is basedirlist, but setting that to foo adds
> > > foo/include to the include directories and foo/lib to the library
> > > directories, so that's not appropriate.
> > 
> > From: Paul Eggleton
> > 
> > Could you just send it ${STAGING_DIR_HOST}/${prefix} ? We do
> > do that elsewhere with similar-behaving configure scripts.
> 
> I think I've figured out what's going on. The whole distutils.bbclass
> interface to the Python distutils package involves the writing of a
> setup.py script to perform all the packaging and unpackaging processes.
> The setup.py script for matplotlib has to deal with the fact that
> matplotlib depends upon a varying set of libraries depending upon how you
> configure it. In this case, because I want to build the GTK rendering
> backend, it depends upon the pygtk library. It cleverly uses the
> pkg-config command to interrogate each dependent library to find out what
> compiler options are needed to compile modules that refer to the library,
> but unfortunately, pygtk-2.0 is not a "library" that can be searched by
> pkg-config, so the do_compile script coughs up the following nonfatal
> error message:
> 
>     pkg-config: looking for pygtk-2.0 gtk+-2.0
>         * Package pygtk-2.0 was not found in the pkg-config
>         * search path. Perhaps you should add the directory
>         * containing `pygtk-2.0.pc' to the PKG_CONFIG_PATH
>         * environment variable No package 'pygtk-2.0' found
> 
> I think I'm just going to have to patch the setup.py file (actually a
> subsidiary setupext.py file) to hack the additional pygtk-2.0 include
> subdirectory into it.

I'm not very familiar with this particular problem, but if that's the only way 
forward I can't see a huge problem with that. FWIW I have had to do similar 
hacks in setup.py in python recipes I've written in the past.

> However, setupext.py and setup.py both already have
> small patches in the original matplotlib recipe. If I add another patch in
> my bbappend, will it always be applied after the one in the original
> recipe? Or should I just replace the patch file with one containing its
> fixes and my fix?

Patches added in a bbappend will always be applied after the ones in the 
recipe itself, assuming you use SRC_URI += or SRC_URI_append = in your 
bbappend that is (since it's the order in which patches are listed in SRC_URI 
that determines the order in which they will be applied).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

