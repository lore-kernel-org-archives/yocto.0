Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23164E0146E
	for <yocto@yoctoproject.org>; Sat, 29 Dec 2012 01:58:24 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:36589 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TotBM-000800-Vp; Sat, 29 Dec 2012 04:58:21 -0500
Date: Sat, 29 Dec 2012 04:58:16 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <50DDAEFD.90202@mlbassoc.com>
Message-ID: <alpine.DEB.2.02.1212290446490.20712@oneiric>
References: <CACrgodehbngP-+zvoEyn=Gbr+mqK+w7ipsREOGT4kgbN+K7AvA@mail.gmail.com>
	<50DAE8D5.7090309@mlbassoc.com>
	<CACrgodeMSvt9yr_M_VE0GqTHVFeYXTbMhFzALF762QjXaJMbmg@mail.gmail.com>
	<50DDAEFD.90202@mlbassoc.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
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
Cc: yocto@yoctoproject.org
Subject: Re: enable netbase network interfaces?
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
X-List-Received-Date: Sat, 29 Dec 2012 09:58:24 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 28 Dec 2012, Gary Thomas wrote:

> On 2012-12-27 23:40, Lai Eddy wrote:
> > Thanks Gary,
> >
> > after download and extract the ti cortex A8 BSP . there's only binary image
> > inside, what MACHINE to use to build a beagleboard yocto image?
>
> MACHINE="beagleboard"
>
> Why does this matter?  You asked about how to set up *your* BSP to have
> a tailored network interface file.  All you need to do is pattern your
> setup after the beagleboard one, as quoted.
>
> n.b. please don't top-post :-(
>
> >
> > On 2012-12-25 16:31, Lai Eddy wrote:
> >
> >     in the "Reference Manual "How do I make sure connected network
> > interfaces are brought up by default?" said 2 files need to be added to
> > enable network interfaces, where can I find
> >     template files?
> >     ------------------------------__------------------------------__------------------------------__-----------------
> >     The default interfaces file provided by the netbase recipe does not
> > automatically bring up network interfaces. Therefore, you will need to add a
> > BSP-specific netbase that includes
> >     an interfaces file.
> >     For example, add the following files to your layer:
> >            meta-MACHINE/recipes-bsp/__netbase/netbase/MACHINE/__interfaces
> >            meta-MACHINE/recipes-bsp/__netbase/netbase_5.0.bbappend
> >     ------------------------------__------------------------------__------------------------------__------------------
> >
> >
> > Look in meta-ti (git://git.yoctoproject.org/__meta-ti
> > <http://git.yoctoproject.org/meta-ti>):
> > $ find meta-ti/recipes-core/netbase/
> > meta-ti/recipes-core/netbase/
> > meta-ti/recipes-core/netbase/__netbase-5.0
> > meta-ti/recipes-core/netbase/__netbase-5.0/beagleboard
> > meta-ti/recipes-core/netbase/__netbase-5.0/beagleboard/__interfaces
> > meta-ti/recipes-core/netbase/__netbase_5.0.bbappend

  i'm not sure where your "__" prefixes are coming from, but i know
i've pointed out before that meta-ti's netbase_5.0.bbappend file seems
to be broken.  currently, on dev branch, it contains:

THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"

  that value for FILESPATH is incorrect -- because the directory name
for the "interfaces" file in meta-ti is netbase-5.0 (not simply
netbase), it will *not* be picked up; rather, the default "interfaces"
file from oe-core will be pulled in.

  using bitbake-env, you can *see* the FILESPATH value that's used
when building for beagle using meta-ti:

$ bitbake-env -r netbase FILESPATH | tr : '\n'
Parsing recipes..WARNING: No recipes available for:

/home/rpjday/oe/dist/layers/meta-ti/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
done.
# FILESPATH="${@base_set_filespath(["${THISDIR}/${PN}"], d)}
${@base_set_filespath(["${FILE_DIRNAME}/${BP}",
"${FILE_DIRNAME}/${BPN}", "${FILE_DIRNAME}/files"], d)}"
FILESPATH="/home/rpjday/oe/dist/layers/meta-ti/recipes-core/netbase/netbase/arm
/home/rpjday/oe/dist/layers/meta-ti/recipes-core/netbase/netbase/beagleboard
/home/rpjday/oe/dist/layers/meta-ti/recipes-core/netbase/netbase/omap3
/home/rpjday/oe/dist/layers/meta-ti/recipes-core/netbase/netbase/armv7a
/home/rpjday/oe/dist/layers/meta-ti/recipes-core/netbase/netbase/
/home/rpjday/oe/dist/layers/meta-ti/recipes-core/netbase/netbase/
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/arm
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/beagleboard
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/omap3
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/armv7a
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase/arm
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase/beagleboard
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase/omap3
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase/armv7a
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase/
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/netbase/
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/files/arm
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/files/beagleboard
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/files/omap3
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/files/armv7a
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/files/
/home/rpjday/oe/dist/layers/oe-core/meta/recipes-core/netbase/files/"
$

  you can see that FILESPATH doesn't include the very directory in
meta-ti that contains the overriding beagleboard "interfaces" file.

  or am i horribly misunderstanding something here?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

