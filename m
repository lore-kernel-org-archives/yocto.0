Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47110E0070B
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2012 09:44:48 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Jun 2012 09:44:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="158727981"
Received: from unknown (HELO [10.255.12.124]) ([10.255.12.124])
	by azsmga001.ch.intel.com with ESMTP; 20 Jun 2012 09:44:47 -0700
Message-ID: <4FE1FDFF.5040401@linux.intel.com>
Date: Wed, 20 Jun 2012 09:44:47 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
References: <CC07B7AA.119FA%belen.barros.pena@intel.com>
In-Reply-To: <CC07B7AA.119FA%belen.barros.pena@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: self-hosted image vs. build appliance
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
X-List-Received-Date: Wed, 20 Jun 2012 16:44:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/20/2012 09:23 AM, Barros Pena, Belen wrote:
> Does anybody know why are we calling it 'self-hosted-image' in Hob and
> 'build-appliance' in the Yocto Project website? Wouldn't it be easier if
> we used the same name everywhere? Which one should be used?
>
They are slightly different.  The self-hosted-image is the recipe name 
that generates the image.  The build-appliance is the VMware OVF file 
and bits needed to use VMPlayer or VMWorkstation.  The self-hosted-image 
is the underlying disk image used in the Build Appliance

Sau!

> Thanks!
>
> Belen
>
> ---------------------------------------------------------------------
> Intel Corporation (UK) Limited
> Registered No. 1134945 (England)
> Registered Office: Pipers Way, Swindon SN3 1RJ
> VAT No: 860 2173 47
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

