Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F3A0E0044D
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2012 17:26:25 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 Apr 2012 17:26:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="136346960"
Received: from unknown (HELO [10.255.12.155]) ([10.255.12.155])
	by azsmga001.ch.intel.com with ESMTP; 27 Apr 2012 17:26:24 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4F9B334D.9060508@linux.intel.com>
References: <e181fc2fd029f7853acab1ba7b66bc9f5c87126d.1334784305.git.tom.zanussi@intel.com>
	<266faf71ffdb15e1f6777b520fbe4acaeb26457d.1334784305.git.tom.zanussi@intel.com>
	<4F9B334D.9060508@linux.intel.com>
Date: Fri, 27 Apr 2012 19:26:41 -0500
Message-ID: <1335572801.23549.40.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/2] yocto-bsp: clarify help with reference to meta-intel
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
X-List-Received-Date: Sat, 28 Apr 2012 00:26:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-04-27 at 17:01 -0700, Darren Hart wrote:
> 
> On 04/27/2012 12:00 PM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> > 
> > The current yocto-bsp help assumes knowledge that the meta-intel layer
> > needs to be cloned before it's put into the BBLAYERS.  Avoid the
> > guesswork and state the details explicitly in the help.
> > 
> > Also, the shorter 'usage' string doesn't mention it at all; it would
> > help to at minimum mention it and refer the user to the detailed help.
> > 
> > Fixes [YOCTO #2330].
> > 
> > Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> 
> Some minor nits below:

Thanks for catching those, patches resubmitted...

Tom


> 
> > ---
> >  scripts/lib/bsp/help.py |   40 ++++++++++++++++++++++++++++++++++++++++
> >  1 files changed, 40 insertions(+), 0 deletions(-)
> > 
> > diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
> > index f78b09b..f849833 100644
> > --- a/scripts/lib/bsp/help.py
> > +++ b/scripts/lib/bsp/help.py
> > @@ -115,6 +115,18 @@ yocto_bsp_create_usage = """
> >   'properties' that will be used to fill out the BSP-specific portions
> >   of the BSP.  The possible values for the 'karch' paramter can be
> >   listed via 'yocto-bsp list karch'.
> > +
> > + NOTE: Once created, you should add your new layer to your
> > + bblayers.conf file in order for it to be subsquently seen and
> > + modified by the yocto-kernel tool.
> > +
> > + See 'yocto bsp help create' for more detailed instructions.
> > +
> > + NOTE for x86- and x86_64-based BSPs: The generated BSP assumes the
> > + presence of the of the meta-intel layer, so you should also have a
> > + meta-intel layer present and added to your bblayers.conf as well.
> 
> Consider:
> 
> + NOTE: For x86- and x86_64-based BSPs, the generated BSP assumes the
> + presence of the of the meta-intel layer. Ensure the meta-intel layer
> + is present and added to bblayers.conf.
> 
> 
> > +
> > + See 'yocto bsp help create' for more detailed instructions.
> >  """
> >  
> >  yocto_bsp_create_help = """
> > @@ -159,9 +171,37 @@ DESCRIPTION
> >      bblayers.conf file in order for it to be subsquently seen and
> >      modified by the yocto-kernel tool.
> >  
> > +    For example, assuming your poky repo is at /path/to/poky, your
> > +    your new BSP layer is at /path/to/poky/meta-mybsp, and your build
> 
> 
> The word "your" appears twice in a row.
> 
> 
> > +    directory is /path/to/build:
> > +
> > +    $ gedit /path/to/build/conf/bblayers.conf
> > +
> > +    BBLAYERS ?= " \\
> > +      /path/to/poky/meta \\
> > +      /path/to/poky/meta-yocto \\
> > +      /path/to/poky/meta-mybsp \\
> > +      "
> > +
> >      NOTE for x86- and x86_64-based BSPs: The generated BSP assumes the
> >      presence of the of the meta-intel layer, so you should also have a
> >      meta-intel layer present and added to your bblayers.conf as well.
> 
> OK, this is just context, but same comment as above.
> 
> > +
> > +    For example, assuming your poky repo is at /path/to/poky, your
> > +    your new BSP layer is at /path/to/poky/meta-mybsp, and your build
> 
> Same double "your" here as well.
> 
> > +    directory is /path/to/build:
> > +
> > +    $ cd /path/to/poky
> > +    $ git clone git://git.yoctoproject.org/meta-intel.git
> > +
> > +    $ gedit /path/to/build/conf/bblayers.conf
> > +
> > +    BBLAYERS ?= " \\
> > +      /path/to/poky/meta \\
> > +      /path/to/poky/meta-yocto \\
> > +      /path/to/poky/meta-intel \\
> > +      /path/to/poky/meta-mybsp \\
> > +      "
> >  """
> >  
> >  yocto_bsp_list_usage = """
> 



