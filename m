Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93614E00569
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2011 20:36:30 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 03 Oct 2011 20:36:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,483,1312182000"; d="scan'208";a="58428159"
Received: from unknown (HELO [10.255.15.15]) ([10.255.15.15])
	by azsmga001.ch.intel.com with ESMTP; 03 Oct 2011 20:36:28 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
In-Reply-To: <4BD43A85686FC34D819098DB1C3999D9018A8A048F@orsmsx502.amr.corp.intel.com>
References: <4BD43A85686FC34D819098DB1C3999D9018A8A048F@orsmsx502.amr.corp.intel.com>
Date: Mon, 03 Oct 2011 22:37:07 -0500
Message-ID: <1317699427.2323.52.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: ISO image does not boot
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
X-List-Received-Date: Tue, 04 Oct 2011 03:36:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-10-03 at 13:56 -0700, Bodke, Kishore K wrote:
> Hi All ,
> 
>  
> 
> I tried booting Yocto ISO image for Romley.  It crashed .
> 
>  
> 
> Attached is the screen shot .
> 
>  
> 
> Does anybody booted the yocto Image on meta-intel, other than USB?
> 

Yes, jasperforest works.  So should romley, since like jasperforest,
it's derived from common-pc-64.  I'm guessing if you updated your kernel
SRCREVs, it would also work.

Tom

>  
> 
>  
> 
> Thanks
> 
> Kishore.
> 
> 



