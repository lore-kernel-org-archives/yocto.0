Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26952E00655
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2012 08:12:05 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Nov 2012 08:12:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,715,1344236400"; d="scan'208";a="213643852"
Received: from unknown (HELO [10.255.15.17]) ([10.255.15.17])
	by azsmga001.ch.intel.com with ESMTP; 05 Nov 2012 08:12:02 -0800
Message-ID: <1352131921.1601.140.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
Date: Mon, 05 Nov 2012 10:12:01 -0600
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE23E16A27D@ORSMSX105.amr.corp.intel.com>
References: <1352118670-25336-1-git-send-email-ross.burton@intel.com>
	<D956029D25CF204F948EA0FB515E1EE23E16A1B7@ORSMSX105.amr.corp.intel.com>
	<CAJTo0Lb9_+XqaB61tTBxQa6fpiWm=aCmzNs0Myjo1ZT8rvj_eQ@mail.gmail.com>
	<D956029D25CF204F948EA0FB515E1EE23E16A27D@ORSMSX105.amr.corp.intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH meta-intel] meta-cedartrail: really fix mesa-dri version (typo'd)
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
X-List-Received-Date: Mon, 05 Nov 2012 16:12:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-11-05 at 10:08 -0600, Bodke, Kishore K wrote:
> Hi Tom,
> 
>  
> 
> Can this go to danny as we already had cut off?
> 

Is it a show-stopper?  If so, we'll have to pull it in and do an RC3 I
guess.  If not, I can still pull it in to danny, it just won't be
included in the release (you can release-note it if it's important
people know about it for the release).

Tom

>  
> 
> Thanks
> 
> Kishore.
> 
>  
> 
> From: Burton, Ross [mailto:ross.burton@intel.com] 
> Sent: Monday, November 05, 2012 7:57 AM
> To: Bodke, Kishore K
> Cc: yocto@yoctoproject.org
> Subject: Re: [PATCH meta-intel] meta-cedartrail: really fix mesa-dri
> version (typo'd)
> 
> 
>  
> 
> Both Danny and master.
> 
>  
> 
> 
> Ross
> 
> 
>  
> 
> On 5 November 2012 15:54, Bodke, Kishore K <kishore.k.bodke@intel.com>
> wrote:
> 
> Is this patch for danny?
> 
> -Kishore.
> 
> 
> >-----Original Message-----
> >From: Ross Burton [mailto:ross.burton@intel.com]
> >Sent: Monday, November 05, 2012 4:31 AM
> >To: Bodke, Kishore K
> >Cc: yocto@yoctoproject.org
> >Subject: [PATCH meta-intel] meta-cedartrail: really fix mesa-dri
> version
> >(typo'd)
> >
> >Signed-off-by: Ross Burton <ross.burton@intel.com>
> >---
> > meta-cedartrail/conf/machine/cedartrail.conf |    2 +-
> > 1 file changed, 1 insertion(+), 1 deletion(-)
> >
> >diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-
> >cedartrail/conf/machine/cedartrail.conf
> >index aa2a46a..a5fa0f0 100644
> >--- a/meta-cedartrail/conf/machine/cedartrail.conf
> >+++ b/meta-cedartrail/conf/machine/cedartrail.conf
> >@@ -17,7 +17,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
> >            "
> > PREFERRED_VERSION_linux-yocto ?= "3.0%"
> > PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
> >-PREFERRED_VERSION_mesa-dri ?= "8.04"
> >+PREFERRED_VERSION_mesa-dri ?= "8.0.4"
> > PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
> >
> > SYSLINUX_OPTS = "serial 0 115200"
> >--
> >1.7.10
> 
> 
>  
> 
> 



