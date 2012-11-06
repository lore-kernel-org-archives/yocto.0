Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23246E00348
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2012 15:22:47 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Nov 2012 15:22:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,724,1344236400"; d="scan'208";a="214314808"
Received: from unknown (HELO [10.255.15.17]) ([10.255.15.17])
	by azsmga001.ch.intel.com with ESMTP; 06 Nov 2012 15:22:45 -0800
Message-ID: <1352244165.2408.63.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Ross Burton <ross.burton@intel.com>
Date: Tue, 06 Nov 2012 17:22:45 -0600
In-Reply-To: <1352233930.2408.44.camel@empanada>
References: <1352119640-25949-1-git-send-email-ross.burton@intel.com>
	<1352119640-25949-2-git-send-email-ross.burton@intel.com>
	<1352233930.2408.44.camel@empanada>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/3] xserver-xorg: bump PR to get the new xorg-abi- RPROVIDES
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
X-List-Received-Date: Tue, 06 Nov 2012 23:22:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-11-06 at 14:32 -0600, Tom Zanussi wrote:
> Missing signed-off-by.
> 

Please just reply to this with your Signed-off-by and I can pull all
three in, thanks...

Tom

> Tom
> 
> On Mon, 2012-11-05 at 12:47 +0000, Ross Burton wrote:
> > ---
> >  common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc |    2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc b/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc
> > index 8c7009f..1c71d7b 100644
> > --- a/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc
> > +++ b/common/recipes-graphics/xorg-xserver/xserver-xorg-1.9.3.inc
> > @@ -17,4 +17,4 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3dd2bbe3563837f80ed8926b06c1c353"
> >  SRC_URI[md5sum] = "5bef6839a76d029204ab31aa2fcb5201"
> >  SRC_URI[sha256sum] = "864831f51e841ff37f2445d1c85b86b559c8860a435fb496aead4f256a2b141d"
> >  
> > -PR = "r1"
> > +PR = "r2"
> 



