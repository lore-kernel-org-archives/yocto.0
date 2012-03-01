Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC2A2E01363
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 07:47:35 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 01 Mar 2012 07:47:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="72342733"
Received: from unknown (HELO helios.localnet) ([10.252.123.90])
	by AZSMGA002.ch.intel.com with ESMTP; 01 Mar 2012 07:47:33 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 01 Mar 2012 15:47:32 +0000
Message-ID: <3099377.EvlgWZpSHF@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.0; i686; ; )
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123793B741DAC@ORSMSX101.amr.corp.intel.com>
References: <4F4EBEC8.7060705@linux.intel.com>
	<4F4EC558.3040401@linux.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123793B741DAC@ORSMSX101.amr.corp.intel.com>
MIME-Version: 1.0
Cc: Darren Hart <dvhart@linux.intel.com>, Chris Larson <clarson@kergoth.com>,
	"Perez-Gonzalez, Inaky" <inaky.perez-gonzalez@intel.com>
Subject: Re: Documentation: Default FILESDIR
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
X-List-Received-Date: Thu, 01 Mar 2012 15:47:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 01 March 2012 15:36:27 Rifenbark, Scott M wrote:
> Please look at
> http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.htm
> l#platdev-appdev-insitu in the YP Reference manual.  This is the section you
> refer to in this mail.  The link in this latest version correctly goes to
> the referenced Quilt section, which has significantly changed.  The little
> paragraph you quote below is now basically part of the 9-step Quilt process
> in the YP Dev manual
> (http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#using-a
> -quilt-workflow).
> 
> Can you look at these two sections now and then provide me with FILESPATH
> information so I can create a glossary entry for the item and possibly work
> the use of FILESPATH into the updated Quilt section?

I think additional file paths are outside the scope of the Quilt section 
itself, but it could easily link to a separate section that does discuss it.

It's worth noting though that we tend not to modify FILESPATH directly 
anymore; instead we use FILESEXTRAPATHS. I believe there are examples of using 
this in the BSP guide, although we do still need to have this documented in 
the reference manual.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

