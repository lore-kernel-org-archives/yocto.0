Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E1A8E004EB; Wed, 30 Apr 2014 02:58:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Apr 2014 02:58:23 PDT
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6490E003C7
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 02:58:23 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Apr 2014 02:57:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,957,1389772800"; d="scan'208";a="523683808"
Received: from cgwithan-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.50])
	by fmsmga001.fm.intel.com with ESMTP; 30 Apr 2014 02:57:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Diego <diego.ml@zoho.com>
Date: Wed, 30 Apr 2014 10:57:18 +0100
Message-ID: <3051539.ZH0eHouhiy@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.13.10-200.fc20.x86_64; KDE/4.12.4; x86_64; ;
	)
In-Reply-To: <2326013.q8IGgAdBSl@localhost.localdomain>
References: <2326013.q8IGgAdBSl@localhost.localdomain>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: PACKAGECONFIG and related parameters
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
X-List-Received-Date: Wed, 30 Apr 2014 09:58:26 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Diego,

On Wednesday 30 April 2014 11:05:45 Diego wrote:
> > I'd like to update the glmark2 recipe:
> > http://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-benchma
> > rk /glmark2/glmark2_2012.12.bb to latest upstream version.
> > 
> > The problem is the configure step is done with:
> > ./waf configure --with-flavors=x11-gl,x11-glesv2
> > instead of the previous release's syntax:
> > ./waf configure --enable-gl --enable-glesv2
> > Unfortunately:
> > ./waf configure --with-flavors=x11-gl --with-flavors=x11-glesv2
> > is not an accepted syntax.
> > 
> > How can I express the PACKAGECONFIG[...] parameters, so that if both gl
> > and
> > gles2 are present I obtain "--with-flavors=x11-gl,x11-glesv2" as the
> > configure parameter?
> 
> Hi,
> 
> Can anybody help me with that?

You can't do this with PACKAGECONFIG alone, you'd need to use Python, i.e. 
something like this:

PACKAGECONFIG ?= "gl gles2"
PACKAGECONFIG[gl] = "..."
PACKAGECONFIG[gles2] = "..."
...

python __anonymous() {
    packageconfig = (d.getVar("PACKAGECONFIG", True) or "").split()
    flavors = []
    if "gles2" in packageconfig:
        flavors.append("x11-gles2")
    if "gl" in packageconfig:
        flavors.append("x11-gl")
    if flavors:
        d.appendVar("EXTRA_OECONF", " --with-flavors=%s" % ",".join(flavors))
}

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

