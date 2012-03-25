Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94FE2E013A8
	for <yocto@yoctoproject.org>; Sun, 25 Mar 2012 10:46:53 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SBrWm-0002hU-8g; Sun, 25 Mar 2012 13:46:52 -0400
Date: Sun, 25 Mar 2012 13:46:44 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1332697224.23802.50.camel@elmorro>
Message-ID: <alpine.DEB.2.02.1203251344010.4548@oneiric>
References: <alpine.DEB.2.02.1203251319170.24022@oneiric>
	<1332697224.23802.50.camel@elmorro>
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
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: does a meta-intel (sub)layer require adding the meta-intel layer to bblayers.conf?
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
X-List-Received-Date: Sun, 25 Mar 2012 17:46:53 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 25 Mar 2012, Tom Zanussi wrote:

> On Sun, 2012-03-25 at 13:23 -0400, Robert P. J. Day wrote:
> > again, a discrepancy between the docs and the source files.  i
> > checked out the entire meta-intel layer, and below that the file
> > meta-crownbay/README clearly states:
> >
> > "Having done that, and assuming you extracted the BSP tarball contents
> > at the top-level of your yocto build tree, you can build a crownbay
> > image by adding the location of the meta-crownbay layer to
> > bblayers.conf, along with the meta-intel layer itself (to access
> > common metadata shared between BSPs) e.g.:
> >
> >   yocto/meta-intel \
> >   yocto/meta-intel/meta-crownbay \"
> >
> >   however, the ref manual, Section 4.1, "BSP Layers", suggests only:
> >
> >      BBLAYERS = " \
> >         /usr/local/src/yocto/meta \
> >         /usr/local/src/yocto/meta-yocto \
> >         /usr/local/src/yocto/meta-<bsp_name> \
> >         "
> >
> > note no mention of including "meta-intel" layer.  clarification?
> >
>
> Yes, I think that's as it should be - the general-purpose documentation
> shouldn't mention specific layers.  meta-intel has its own layering
> requirements as mentioned in the READMEs for those BSPs.  Also I think
> the text mentions it's an example, but I guess I'm a bit confused since
> I'm finding that in section 5.1. Example Filesystem Layout here:
>
> http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html
>
> Am I looking at the wrong thing?
>
> In either case, possibly a note that this is just an example and that a
> given layer may have its own requirements?

  hang on ... i can see that meta-intel is a valid layer, under which
you can find conf/machine/include/ia32-base.inc.  and in all of the
*specific* intel-related BSPs, well:

$ grep -r ia32-base.inc *
meta-cedartrail/conf/machine/cedartrail.conf:require conf/machine/include/ia32-base.inc
meta-crownbay/conf/machine/crownbay.conf:require conf/machine/include/ia32-base.inc
meta-crownbay/conf/machine/crownbay-noemgd.conf:require conf/machine/include/ia32-base.inc
meta-emenlow/conf/machine/emenlow.conf:require conf/machine/include/ia32-base.inc
meta-fishriver/conf/machine/fishriver.conf:require conf/machine/include/ia32-base.inc
meta-fri2/conf/machine/fri2-noemgd.conf:require conf/machine/include/ia32-base.inc
meta-fri2/conf/machine/fri2.conf:require conf/machine/include/ia32-base.inc
meta-jasperforest/conf/machine/jasperforest.conf:require conf/machine/include/ia32-base.inc
meta-n450/conf/machine/n450.conf:require conf/machine/include/ia32-base.inc
meta-romley/conf/machine/romley.conf:require conf/machine/include/ia32-base.inc
meta-sugarbay/conf/machine/sugarbay.conf:require conf/machine/include/ia32-base.inc
meta-sys940x/conf/machine/sys940x-noemgd.conf:require conf/machine/include/ia32-base.inc
meta-sys940x/conf/machine/sys940x.conf:require conf/machine/include/ia32-base.inc
$

  that *would* seem to require adding meta-intel to your layers file,
no?  or am i misunderstanding something?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

