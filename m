Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66424E008CC; Wed,  4 Mar 2015 23:02:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E61FFE00718
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 23:02:39 -0800 (PST)
Received: from [99.240.204.5] (port=51203 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YTPnq-00072a-6q; Thu, 05 Mar 2015 02:02:38 -0500
Date: Thu, 5 Mar 2015 02:02:34 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@Device-040570
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <54F77A6C.2090901@windriver.com>
Message-ID: <alpine.LFD.2.11.1503050155570.13662@Device-040570>
References: <alpine.LFD.2.11.1503041007020.13143@Device-040570>
	<54F77A6C.2090901@windriver.com>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: should YP docs explain "type=kmeta" and "destsuffix="?
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
X-List-Received-Date: Thu, 05 Mar 2015 07:02:43 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 4 Mar 2015, Bruce Ashfield wrote:

> On 15-03-04 10:10 AM, Robert P. J. Day wrote:
> >
> >    i see that the meta-xilinx layer takes advantage of extending the
> > search path for features directories with things like:
> >
> > SRC_URI = " \
> > git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git;protocol=https;branch=${KBRANCH}
> > \
> > file://xilinx-base;type=kmeta;destsuffix=xilinx-base \
> > file://0001-ARM64-Add-new-Xilinx-ZynqMP-SoC.patch \
> >    ... etc etc ...
> >
> > and the above is processed from kernel-yocto.bbclass with:
> >
> > # check the SRC_URI for "kmeta" type'd git repositories. Return the name of
> > # the repository as it will be found in WORKDIR
> > def find_kernel_feature_dirs(d):
> >      feature_dirs=[]
> >      fetch = bb.fetch2.Fetch([], d)
> >      for url in fetch.urls:
> >          urldata = fetch.ud[url]
> >          parm = urldata.parm
> >          if "type" in parm:
> >              type = parm["type"]
> >          if "destsuffix" in parm:
> >              destdir = parm["destsuffix"]
> >              if type == "kmeta":
> >                  feature_dirs.append(destdir)
> >
> >      return feature_dirs
> >
> > i see no mention of this feature in any of the YP docs ... is it meant
> > to be used by normal developers, so that it should be explained?
>
> It's not really a typical developer option. It is for maintaining a
> separate repository of meta-data, and then allowing the tools and
> kernel to use that meta data as part of the build.
>
> Only someone maintaining (and sharing) a large set of their own
> kernel fragments would be interested in this.
>
> So I'm on the fence if it is worth documenting, but lean towards at
> least mentioning it and offering a simple use case.

  if it's not a normal developer option, then i wouldn't want it to be
presented as *regular* kernel dev content, so as not to break up the
flow of presentation -- one of my pet peeves in documentation is
distraction from normal content with a topic that's obscure or meant
for only 1 per cent of the readership, that just throws off the rhythm
of the presentation.

  however, it might fit in a section on, say, "advanced kernel
workflow concepts", or something like that. appendix, perhaps?

  also, i only ask about this as i tripped across it perusing the
meta-xilinx layer, and thought, "wait a minute, what's this?" but
nothing says that it's being used properly in the meta-xilinx layer
... i think it's worth documenting but only if it's accompanied by a
use case that clearly shows its value over the standard technique
involving regular .cfg and .scc files.

  anyway, movin' on ...

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

