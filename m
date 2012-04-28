Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B1B1E00746
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2012 22:51:05 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Apr 2012 22:51:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="137707242"
Received: from unknown (HELO [10.255.12.155]) ([10.255.12.155])
	by orsmga002.jf.intel.com with ESMTP; 27 Apr 2012 22:51:04 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4F9B83B8.8000900@linux.intel.com>
References: <b2adc618ce532d1a38ed895c06cceb538b3ffe8b.1335572520.git.tom.zanussi@intel.com>
	<ab6927d760f0ce8e6a38b0f2a51fb08a6ce370c9.1335572520.git.tom.zanussi@intel.com>
	<4F9B83B8.8000900@linux.intel.com>
Date: Sat, 28 Apr 2012 00:51:17 -0500
Message-ID: <1335592277.23549.41.camel@elmorro>
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
X-List-Received-Date: Sat, 28 Apr 2012 05:51:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-04-27 at 22:44 -0700, Darren Hart wrote:
> 
> On 04/27/2012 05:25 PM, tom.zanussi@intel.com wrote:
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
> > ---
> >  scripts/lib/bsp/help.py |   46 +++++++++++++++++++++++++++++++++++++++++++---
> >  1 files changed, 43 insertions(+), 3 deletions(-)
> > 
> > diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
> > index f78b09b..2355657 100644
> > --- a/scripts/lib/bsp/help.py
> > +++ b/scripts/lib/bsp/help.py
> > @@ -115,6 +115,18 @@ yocto_bsp_create_usage = """
> >   'properties' that will be used to fill out the BSP-specific portions
> >   of the BSP.  The possible values for the 'karch' paramter can be
> >   listed via 'yocto-bsp list karch'.
> > +
> > + NOTE: Once created, you should add your new layer to your
> > + bblayers.conf file in order for it to be subsquently seen and
> 
> Gah, I didn't catch this the first time. Typo in "subsequently" above.
> Maybe just fix in the branch? No need to resend.
> 

Good catch again, thanks.  Updated in the branch...

Tom

> > + modified by the yocto-kernel tool.
> > +
> > + See 'yocto bsp help create' for more detailed instructions.
> > +
> > + NOTE: For x86- and x86_64-based BSPs, the generated BSP assumes the
> > + presence of the of the meta-intel layer. Ensure the meta-intel layer
> > + is present and added to bblayers.conf.
> > +
> > + See 'yocto bsp help create' for more detailed instructions.
> >  """
> >  
> >  yocto_bsp_create_help = """
> > @@ -159,9 +171,37 @@ DESCRIPTION
> >      bblayers.conf file in order for it to be subsquently seen and
> 
> Here too.
> 
> Otherwise looks good,
> 
> Acked-by: Darren Hart <dvhart@linux.intel.com>
> 
> >      modified by the yocto-kernel tool.
> >  
> > -    NOTE for x86- and x86_64-based BSPs: The generated BSP assumes the
> > -    presence of the of the meta-intel layer, so you should also have a
> > -    meta-intel layer present and added to your bblayers.conf as well.
> > +    For example, assuming your poky repo is at /path/to/poky, your new
> > +    BSP layer is at /path/to/poky/meta-mybsp, and your build directory
> > +    is /path/to/build:
> > +
> > +    $ gedit /path/to/build/conf/bblayers.conf
> > +
> > +    BBLAYERS ?= " \\
> > +      /path/to/poky/meta \\
> > +      /path/to/poky/meta-yocto \\
> > +      /path/to/poky/meta-mybsp \\
> > +      "
> > +
> > +    NOTE: For x86- and x86_64-based BSPs, the generated BSP assumes
> > +    the presence of the of the meta-intel layer. Ensure the meta-intel
> > +    layer is present and added to bblayers.conf.
> > +
> > +    For example, assuming your poky repo is at /path/to/poky, your new
> > +    BSP layer is at /path/to/poky/meta-mybsp, and your build directory
> > +    is /path/to/build:
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



