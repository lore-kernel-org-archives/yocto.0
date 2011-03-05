Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E42B44C80050
	for <yocto@yoctoproject.org>; Sat,  5 Mar 2011 09:46:52 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 05 Mar 2011 07:46:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,269,1297065600"; d="scan'208";a="894142106"
Received: from unknown (HELO [10.255.12.85]) ([10.255.12.85])
	by fmsmga001.fm.intel.com with ESMTP; 05 Mar 2011 07:45:53 -0800
Message-ID: <4D725AB1.8040309@linux.intel.com>
Date: Sat, 05 Mar 2011 07:45:53 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: gmane@reliableembeddedsystems.com
References: <iktkgj$rpj$1@dough.gmane.org>
In-Reply-To: <iktkgj$rpj$1@dough.gmane.org>
Cc: yocto@yoctoproject.org
Subject: Re: yocto supported freescale eval boards
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
X-List-Received-Date: Sat, 05 Mar 2011 15:46:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/05/2011 07:22 AM, Robert Berger wrote:
> Hi,
>
> A customer asked for a training with a freescale eval board and I would
> like to use yocto for it.
>
> What I found from the documentation is, that the MPC8313E-RDB Reference
> Platform is supported. I'm a bit confused by a list, which can be found
> on the Freescale website:
>
> http://www.freescale.com/webapp/sps/site/prod_summary.jsp?code=MPC8313E-RDB&tab=Buy_Parametric_Tab&pspll=1&fromSearch=false
>
> It says:
> MPC8313E-RDB,Hardware Only 8313E PROCESSOR BD (SOCK 	Hardware 	Not
> Recommended for New Design)
>
> MPC8313E-RDB-T, MPC8313E-RDB-U, MPC8313E-RDB-UT, MPC8313E-RDBB seem to
> be still supported. What's the difference? What would you recommend?
>
>
> Besides the PPC the iMX31ADS seems to be supported as well.
>
> What would you recommend? Are there more Freescale eval boards going to
> be supported by yocto in the near future?


We're currently using the following board.

http://search.digikey.com/scripts/DkSearch/dksus.dll?PName?Name=MPC8315E-RDBA-ND&Site=US&Lang=EN

I don't know which upcoming boards are likely to be adopted, perhaps 
Bruce (CC'd) will have some ideas?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

