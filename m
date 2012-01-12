Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43710E0030C
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 13:47:35 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Jan 2012 13:47:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="111701937"
Received: from unknown (HELO [10.255.13.225]) ([10.255.13.225])
	by fmsmga002.fm.intel.com with ESMTP; 12 Jan 2012 13:47:34 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4F0F4F80.1070403@linux.intel.com>
References: <1326393202.2413.175.camel@elmorro>
	<4F0F4F80.1070403@linux.intel.com>
Date: Thu, 12 Jan 2012 15:47:06 -0600
Message-ID: <1326404826.2413.212.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [PATCH] meta-intel/common: fix ptr->int and Werror=address compile errors
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
X-List-Received-Date: Thu, 12 Jan 2012 21:47:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-01-12 at 13:24 -0800, Darren Hart wrote:
> 
> On 01/12/2012 10:33 AM, Tom Zanussi wrote:
> > A couple of things that had previously been warnings are now errors,
> > so they need to be fixed up.
> > 
> > The first problem is a comparison between the address of a static
> > struct and NULL, which can never be valid.  A different fix for this
> > is upstream, which includes an API usage change; we don't need that to
> > fix this problem.
> > 
> > The second problem is a cast from pointer to integer in fbdevhw.c.
> > This also is fixed upstream by removing the whole section of code
> > which is bogus anyway, which is also done here.
> > 
> > This also adds a missing PR to the xserver-xorg recipe.
> > 
> > Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> 
> I'm fine with the patch given your upstream API change comment above. I
> am curious about just dropping the struct == NULL test as opposed to
> testing for some value in the structure that would indicate the intended
> condition. If you're happy with it as is, then:
> 

Well, the struct == NULL test can obviously never affect anything at
run-time, and by definition never has, so can be safely removed.

Changing the code to actually test something inside the struct that may
or may not be meaningful would mean auditing all the code to find out
whether the contents are always in a sane state for that test.

Given the choice between a fix that makes no run-time changes and has no
possibility of causing a regression vs spending a lot of time making an
old version of obviously buggy code I know nothing about perfect, I
chose the former.  While I'm at it, I should also probably fix the 7000
other warnings - the only reason I'm in here in the first place is that
a couple of them suddenly turned into errors...

Tom

> Acked-by: Darren Hart <dvhart@linux.intel.com>
> 
> > ---
> >  .../xorg-xserver/xserver-xorg-1.9.3.inc            |    5 +
> >  .../xserver-xorg-1.9.3/ptr-to-int-cast-fix.patch   |   92 ++++++++++++++++++++
> >  .../xserver-xorg-1.9.3/werror-address-fix.patch    |   49 +++++++++++
> >  3 files changed, 146 insertions(+), 0 deletions(-)
> >  create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3/ptr-to-int-cast-fix.patch
> >  create mode 100644 common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3/werror-address-fix.patch
> > 
> > diff --git a/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc b/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc
> > index 888445d..8c7009f 100644
> > --- a/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc
> > +++ b/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc
> > @@ -4,6 +4,10 @@ SRC_URI += "file://nodolt.patch \
> >  # Misc build failure for master HEAD
> >  SRC_URI += "file://fix_open_max_preprocessor_error.patch"
> >  
> > +# What once were warnings now are errors, fix those up
> > +SRC_URI += "file://werror-address-fix.patch \
> > +            file://ptr-to-int-cast-fix.patch"
> > +
> >  PROTO_DEPS += "xf86driproto dri2proto"
> >  DEPENDS += "font-util"
> >  EXTRA_OECONF += "--enable-dri --enable-dri2 --enable-dga"
> > @@ -13,3 +17,4 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3dd2bbe3563837f80ed8926b06c1c353"
> >  SRC_URI[md5sum] = "5bef6839a76d029204ab31aa2fcb5201"
> >  SRC_URI[sha256sum] = "864831f51e841ff37f2445d1c85b86b559c8860a435fb496aead4f256a2b141d"
> >  
> > +PR = "r1"
> > diff --git a/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3/ptr-to-int-cast-fix.patch b/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3/ptr-to-int-cast-fix.patch
> > new file mode 100644
> > index 0000000..705cffc
> > --- /dev/null
> > +++ b/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3/ptr-to-int-cast-fix.patch
> > @@ -0,0 +1,92 @@
> > +Upstream-Status: Inappropriate [already upstream]
> > +
> > +It's broken for devices with BARs above 4G, and the sysfs method should         
> > +work everywhere anyway.  As a pleasant side effect, this fixes some             
> > +warnings:                                                                       
> > +                                                                                
> > +fbdevhw.c: In function 'fbdev_open_pci':                                        
> > +fbdevhw.c:333:4: warning: cast from pointer to integer of different size        
> > +fbdevhw.c:334:4: warning: cast from pointer to integer of different size        
> > +fbdevhw.c:336:4: warning: cast from pointer to integer of different size        
> > +fbdevhw.c:337:4: warning: cast from pointer to integer of different size        
> > +                                                                                
> > +Signed-off-by: Adam Jackson <ajax (a] redhat.com>                                   
> > +Integrated-by: Tom Zanussi <tom.zanussi (a] intel.com>
> > +
> > +Index: xorg-server-1.9.3/hw/xfree86/fbdevhw/fbdevhw.c
> > +===================================================================
> > +--- xorg-server-1.9.3.orig/hw/xfree86/fbdevhw/fbdevhw.c	2012-01-12 10:32:07.097729262 -0600
> > ++++ xorg-server-1.9.3/hw/xfree86/fbdevhw/fbdevhw.c	2012-01-12 10:32:55.076732780 -0600
> > +@@ -291,14 +291,7 @@
> > + {
> > +     struct	fb_fix_screeninfo fix;
> > +     char	filename[256];
> > +-    int	fd,i,j;
> > +-
> > +-
> > +-    /* There are two ways to that we can determine which fb device is
> > +-     * associated with this PCI device.  The more modern way is to look in
> > +-     * the sysfs directory for the PCI device for a file named
> > +-     * "graphics/fb*"
> > +-     */
> > ++    int	fd, i;
> > + 
> > +     for (i = 0; i < 8; i++) {
> > + 	sprintf(filename, 
> > +@@ -331,55 +324,10 @@
> > + 	}
> > +     }
> > + 
> > +-
> > +-    /* The other way is to examine the resources associated with each fb
> > +-     * device and see if there is a match with the PCI device.  This technique
> > +-     * has some problems on certain mixed 64-bit / 32-bit architectures.
> > +-     * There is a flaw in the fb_fix_screeninfo structure in that it only
> > +-     * returns the low 32-bits of the address of the resources associated with
> > +-     * a device.  However, on a mixed architecture the base addresses of PCI
> > +-     * devices, even for 32-bit applications, may be higher than 0x0f0000000.
> > +-     */
> > +-
> > +-    for (i = 0; i < 8; i++) {
> > +-	sprintf(filename,"/dev/fb%d",i);
> > +-	if (-1 == (fd = open(filename,O_RDWR,0))) {
> > +-	    xf86DrvMsg(-1, X_WARNING,
> > +-		       "open %s: %s\n", filename, strerror(errno));
> > +-	    continue;
> > +-	}
> > +-	if (-1 == ioctl(fd,FBIOGET_FSCREENINFO,(void*)&fix)) {
> > +-	    close(fd);
> > +-	    continue;
> > +-	}
> > +-	for (j = 0; j < 6; j++) {
> > +-	    const pciaddr_t res_start = pPci->regions[j].base_addr;
> > +-	    const pciaddr_t res_end = res_start + pPci->regions[j].size;
> > +-
> > +-	    if ((0 != fix.smem_len &&
> > +-		 (pciaddr_t) fix.smem_start >= res_start &&
> > +-		 (pciaddr_t) fix.smem_start < res_end) ||
> > +-		(0 != fix.mmio_len &&
> > +-		 (pciaddr_t) fix.mmio_start >= res_start &&
> > +-		 (pciaddr_t) fix.mmio_start < res_end))
> > +-	      break;
> > +-	}
> > +-	if (j == 6) {
> > +-	    close(fd);
> > +-	    continue;
> > +-	}
> > +-	if (namep) {
> > +-	    *namep = xnfalloc(16);
> > +-	    strncpy(*namep,fix.id,16);
> > +-	}
> > +-	return fd;
> > +-    }
> > +-
> > +     if (namep)
> > +       *namep = NULL;
> > + 
> > +-    xf86DrvMsg(-1, X_ERROR,
> > +-	       "Unable to find a valid framebuffer device\n");
> > ++    xf86DrvMsg(-1, X_ERROR, "Unable to find a valid framebuffer device\n");
> > +     return -1;
> > + }
> > + 
> > diff --git a/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3/werror-address-fix.patch b/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3/werror-address-fix.patch
> > new file mode 100644
> > index 0000000..49d3f94
> > --- /dev/null
> > +++ b/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3/werror-address-fix.patch
> > @@ -0,0 +1,49 @@
> > +Upstream-Status: Inappropriate [yocto-specific]
> > +
> > +This is fixed upstream by actually making these tests meaningful.
> > +As they stand, the warning is correct and they're no-ops, so remove
> > +them.
> > +
> > +Signed-off-by: Tom Zanussi <tom.zanussi (a] intel.com>
> > +
> > +Index: xorg-server-1.9.3/Xext/xvmc.c
> > +===================================================================
> > +--- xorg-server-1.9.3.orig/Xext/xvmc.c	2012-01-12 09:57:36.306947860 -0600
> > ++++ xorg-server-1.9.3/Xext/xvmc.c	2012-01-12 10:24:59.286729946 -0600
> > +@@ -467,7 +467,6 @@
> > +     return Success;
> > + }
> > + 
> > +-
> > + static int
> > + ProcXvMCListSubpictureTypes(ClientPtr client)
> > + {
> > +@@ -487,9 +486,6 @@
> > + 
> > +     pScreen = pPort->pAdaptor->pScreen;
> > + 
> > +-    if(XvMCScreenKey == NULL) /* No XvMC adaptors */
> > +-        return BadMatch;
> > +-
> > +     if(!(pScreenPriv = XVMC_GET_PRIVATE(pScreen)))
> > +         return BadMatch;   /* None this screen */
> > + 
> > +@@ -668,9 +664,6 @@
> > + {
> > +    ExtensionEntry *extEntry;
> > + 
> > +-   if(XvMCScreenKey == NULL) /* nobody supports it */
> > +-	return; 
> > +-
> > +    if(!(XvMCRTContext = CreateNewResourceType(XvMCDestroyContextRes,
> > + 					      "XvMCRTContext")))
> > + 	return;
> > +@@ -746,8 +739,6 @@
> > +     XvMCAdaptorPtr adaptor = NULL;
> > +     int i;
> > + 
> > +-    if(XvMCScreenKey == NULL) return NULL;
> > +-
> > +     if(!(pScreenPriv = XVMC_GET_PRIVATE(pScreen))) 
> > +         return NULL;
> > + 
> 



