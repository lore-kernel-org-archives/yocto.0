Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B1F2E0027E
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 10:16:18 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Oct 2012 10:15:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,565,1344236400"; d="scan'208";a="203972263"
Received: from unknown (HELO helios.localnet) ([10.252.122.43])
	by orsmga001.jf.intel.com with ESMTP; 10 Oct 2012 10:16:17 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: kevin.strasser@linux.intel.com
Date: Wed, 10 Oct 2012 18:16:16 +0100
Message-ID: <4130728.thkuSetpic@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-31-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <41548.10.7.202.71.1349112347.squirrel@linux.intel.com>
References: <cover.1348861287.git.kevin.strasser@linux.intel.com>
	<1495016.8uVbdRUQqm@helios>
	<41548.10.7.202.71.1349112347.squirrel@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-baryon][PATCH 1/1] nfs-utils: workaround for nfsd regression in the 3.4 kernel
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
X-List-Received-Date: Wed, 10 Oct 2012 17:16:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 01 October 2012 10:25:47 kevin.strasser@linux.intel.com wrote:
> > Hi Kevin,
> > 
> > On Friday 28 September 2012 12:44:06 Kevin Strasser wrote:
> >> The version of nfsd used in 3.4 kernels tries to upcall the
> >> new reboot-recovery daemon and gets stuck if it is not found.
> >> This causes client mounts to fail and prints the following
> >> error message during boot:
> >> 
> >> "NFSD: starting 90-second grace period
> >> NFSD: Unable to end grace period: -110"
> >> 
> >> If the directory "/var/lib/nfs/v4recovery" exists, nfsd will
> >> revert back to the old method.
> >> 
> >> Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
> >> ---
> >> 
> >>  .../nfs-utils/nfs-utils_1.2.3.bbappend             |    8 ++++++++
> >>  1 file changed, 8 insertions(+)
> >>  create mode 100644
> >> 
> >> recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bbappend
> >> 
> >> diff --git a/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bbappend
> >> b/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bbappend new file mode
> >> 100644
> >> index 0000000..2c91a93
> >> --- /dev/null
> >> +++ b/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bbappend
> >> @@ -0,0 +1,8 @@
> >> +PR = "r5"
> > 
> > This needs to be:
> > 
> > PRINC = "1"
> > 
> > or, to ensure other layers can also increment the value:
> > 
> > PRINC := "${@int(PRINC) + 1}"
> 
> OK, that makes sense. I've made the changes and pushed them again to:
> 
>   git://git.yoctoproject.org/poky-contrib strassek/baryon-nfsd-regression
>  
> http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=strassek/baryon-nf
> sd-regression

Merged to meta-baryon master, thanks.

> While we are on the subject, do you think this is something that should be
> added to poky?

Quite possibly. Would you mind opening up a bug for the issue?

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

