Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 85B2F4C804C2
	for <yocto@yoctoproject.org>; Thu,  2 Jun 2011 08:28:18 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 Jun 2011 06:28:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,309,1304319600"; 
   d="scan'208";a="5915277"
Received: from unknown (HELO [10.255.13.85]) ([10.255.13.85])
	by azsmga001.ch.intel.com with ESMTP; 02 Jun 2011 06:28:17 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4DE6A0CB.3080103@linux.intel.com>
References: <cover.1306958045.git.tom.zanussi@intel.com>
	<4DE6A0CB.3080103@linux.intel.com>
Date: Thu, 02 Jun 2011 08:26:00 -0500
Message-ID: <1307021160.30571.10.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/6] meta-intel: emgd updrade
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
X-List-Received-Date: Thu, 02 Jun 2011 13:28:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-06-01 at 13:27 -0700, Darren Hart wrote:
> 
> On 06/01/2011 12:55 PM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> > 
> > This patchset upgrades emgd to 1.6 Gold.
> > 
> > The following changes since commit e94dba8309874a82a570db60223d18b2c723c3a5:
> >   Darren Hart (1):
> >         linux-yocto*: correct FILESEXTRAPATHS assignment in all layers
> > 
> > are available in the git repository at:
> > 
> >   git://git.yoctoproject.org/meta-intel.git tzanussi/emgd-1.6-upgrade
> >   http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/emgd-1.6-upgrade
> > 
> > Tom Zanussi (6):
> >   meta-crownbay: new recipe for emgd 1.6 driver binaries
> >   meta-intel: add xserver-xf86-dri-lite_1.9.3 to common
> >   meta-crownbay: add common to BBFILES
> >   meta-crownbay: update crownbay.conf
> >   meta-crownbay: remove obsolete graphics recipes
> >   meta-crownbay: update README with new build instructions.
> 
> With the exception of the patch upstream fields and giving Scott R a
> chance to review the README, these look good to me. With those addressed:
> 
> Acked-by: Darren Hart <dvhart@linux.intel.com>
> 

Hi Darren,

Thanks for your comments.  I've addressed them and pushed the result to
master.

Thanks,

Tom


