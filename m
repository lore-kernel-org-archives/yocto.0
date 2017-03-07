Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C27AFE0083C; Tue,  7 Mar 2017 09:39:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35370E0052B
	for <yocto@yoctoproject.org>; Tue,  7 Mar 2017 09:39:21 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga104.jf.intel.com with ESMTP; 07 Mar 2017 09:39:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,258,1486454400"; d="scan'208";a="57212481"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.141])
	by orsmga002.jf.intel.com with ESMTP; 07 Mar 2017 09:39:20 -0800
Message-ID: <1488908805.3261.22.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: "Eswaran Vinothkumar (BEG/PJ-IOT-EL)" <Vinothkumar.Eswaran@de.bosch.com>
Date: Tue, 07 Mar 2017 11:46:45 -0600
In-Reply-To: <febded3bd8db4f5097d3bd0fe26c88b0@FE-MBX1014.de.bosch.com>
References: <febded3bd8db4f5097d3bd0fe26c88b0@FE-MBX1014.de.bosch.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Not able to create a new BSP layer using yocto-bsp script
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 07 Mar 2017 17:39:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2017-03-07 at 09:15 +0000, Eswaran Vinothkumar (BEG/PJ-IOT-EL)
wrote:

> 
> I tried using both the master andmorty-16.0.1  branches of poky.
> 

Can you try the same yocto-bsp command from master? If you have the same
issue, please report it on bugzilla.yoctoproject.org

>  
> 
>  
> 
> Mit freundlichen Grüßen / Best regards 
> Vinothkumar Eswaran
> 
> 
> 
>  
> 
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



