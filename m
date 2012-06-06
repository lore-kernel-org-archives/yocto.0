Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D04E2E00723
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2012 14:19:41 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Jun 2012 14:19:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="175682472"
Received: from unknown (HELO [10.255.12.119]) ([10.255.12.119])
	by fmsmga002.fm.intel.com with ESMTP; 06 Jun 2012 14:19:41 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4FCFB25A.9000800@linux.intel.com>
References: <cover.1339010751.git.tom.zanussi@intel.com>
	<a97d2219fa67e2326952c9c065eff5947576765d.1339010751.git.tom.zanussi@intel.com>
	<4FCFB25A.9000800@linux.intel.com>
Date: Wed, 06 Jun 2012 16:19:29 -0500
Message-ID: <1339017569.5026.40.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-fri2: add video acceleration
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
X-List-Received-Date: Wed, 06 Jun 2012 21:19:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

OK, this has been pulled into meta-intel/master and meta-intel/denzil.

Should be ok to start a new build...

Tom

On Wed, 2012-06-06 at 12:41 -0700, Darren Hart wrote:
> 
> On 06/06/2012 12:29 PM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> > 
> > This adds the video acceleration components needed to enable EMGD
> > video acceleration.
> > 
> > Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> 
> Looks good, I assume a build has completed? Has any testing been done?
> If there is an image available I can boot it. If not, I can build and
> test, probably tomorrow. I'm mostly out today.
> 
> Acked-by: Darren Hart <dvhart@linux.intel.com>
> 
> > ---
> >  meta-fri2/conf/machine/fri2.conf |    6 ++++--
> >  1 files changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
> > index 547fe6a..f90deb3 100644
> > --- a/meta-fri2/conf/machine/fri2.conf
> > +++ b/meta-fri2/conf/machine/fri2.conf
> > @@ -7,8 +7,10 @@
> >  require conf/machine/include/tune-atom.inc
> >  require conf/machine/include/ia32-base.inc
> >  
> > -MACHINE_FEATURES += "wifi 3g pcbios efi"
> > -MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5"
> > +VA_FEATURES ?= "gst-va-intel va-intel"
> > +
> > +MACHINE_FEATURES += "wifi 3g pcbios efi gst-va-mixvideo"
> > +MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5 ${VA_FEATURES}"
> >  
> >  PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> >  PREFERRED_VERSION_linux-yocto = "3.2%"
> 



