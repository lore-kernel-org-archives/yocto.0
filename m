Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4029CE013A8
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 09:35:11 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Jun 2013 09:35:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,867,1363158000"; d="scan'208";a="329554423"
Received: from unknown (HELO helios.localnet) ([10.252.122.5])
	by orsmga001.jf.intel.com with ESMTP; 14 Jun 2013 09:35:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Dat Tran <dtran11@gmail.com>, Edward Vidal <vidal.develone@gmail.com>
Date: Fri, 14 Jun 2013 17:35:08 +0100
Message-ID: <1571616.VWc8oWtlLJ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-23-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <loom.20130614T060308-378@post.gmane.org>
References: <CANwz6nxO25BCt2B-H8T9_SO5F3DqfE1w2QDSoXPVnP-qxq994Q@mail.gmail.com>
	<loom.20130614T060308-378@post.gmane.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: gcc enable-languages
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
X-List-Received-Date: Fri, 14 Jun 2013 16:35:12 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 14 June 2013 04:04:07 Dat Tran wrote:
> Anyone know of any clues that will help us? Thanks.
> 
> Edward Vidal <vidal.develone@...> writes:
> > Dat Tran <dtran11 at gmail.com> wrote 
> > > Hello,
> > > 
> > > I want to add support for FORTRAN in my image.
> > > On target gcc -v shows --enable-languages=c,c++
> > > This needs to --enable-languages=c,c++,fortran.based on my host system.
> > > How does the variable FORTRAN in
> > 
> > /home/vidal/POKY/build032813_panda/poky/meta/recipes-devtools/gcc/gcc-
> > configure-common.inc get set?  Can this be done in the local.conf file?
> > 
> > > Does the FORTRAN ?= ",f77" this need to be FORTRAN ?= ",fortran" since
> > > we are building gcc4.7?

I have no direct knowledge of how to enable language support, but if you look 
at meta/recipes-devtools/gcc/gcc-4.7.inc you'll see it sets FORTRAN = "", 
which means setting it with = in local.conf won't work (since local.conf 
parsing comes before recipes) nor will the FORTRAN ?= setting in meta/recipes-
devtools/gcc/gcc-configure-common.inc. 

I'd suggest bbappending the appropriate gcc recipe and set FORTRAN there 
(which one depends on where you want to compile fortran code; gcc-cross would 
be the right one for building a recipe for fortran software to run on the 
target). You may need to set other variables in the bbappend as well, I'm not 
entirely sure.

An example of a layer that does something similar would be the meta-ada layer:

https://github.com/Lucretia/meta-ada

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

