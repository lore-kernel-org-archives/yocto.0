Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0B79E00F1E; Mon, 12 Sep 2016 00:35:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95496E00F06
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 00:34:52 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP; 12 Sep 2016 00:34:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,321,1470726000"; d="scan'208";a="167128247"
Received: from tbui5-mobl2.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.152.213])
	by fmsmga004.fm.intel.com with ESMTP; 12 Sep 2016 00:34:50 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Gujulan Elango, Hari Prasath (H.)" <hgujulan@visteon.com>
Date: Mon, 12 Sep 2016 19:34:47 +1200
Message-ID: <3336782.eesHZOzGjN@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.2-101.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <DB6PR0601MB266347E47B04913CFD45D71ACFFF0@DB6PR0601MB2663.eurprd06.prod.outlook.com>
References: <DB6PR0601MB26639F517B87C9AC99CDB7E3CFE00@DB6PR0601MB2663.eurprd06.prod.outlook.com>
	<DA2A95BE-48FD-4673-AA7D-D9EFDFEDE725@gmail.com>
	<DB6PR0601MB266347E47B04913CFD45D71ACFFF0@DB6PR0601MB2663.eurprd06.prod.outlook.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Problem with exporting variable in bbappend file
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
X-List-Received-Date: Mon, 12 Sep 2016 07:35:05 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

A couple of things:

1) If you're not already, use bitbake -e <recipename> and not just bitbake -e

2) I'd also recommend not piping through grep - pipe through "less" instead 
and search for the variable with / - this means you can see the history of how 
the variable's value got set.

Cheers,
Paul

On Mon, 12 Sep 2016 04:13:09 Gujulan Elango, Hari Prasath wrote:
> Hi Raj
> 
> Thanks for your reply. I tried bitbake-layers show-appends. I could see my
> bbappend file. But when I tried to grep the environment variable I am
> trying to set using bitbake -e, I am not able to see any output. Is there
> any way to confirm that the environment variable is set to the value I am
> trying to set ?
> 
> Regards,
> Hari Prasath
> 
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: Tuesday, September 06, 2016 11:49 PM
> To: Gujulan Elango, Hari Prasath (H.)
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Problem with exporting variable in bbappend file
> 
> 
> On Aug 30, 2016, at 5:30 AM, Gujulan Elango, Hari Prasath (H.)
> <hgujulan@visteon.com> wrote:
> 
> Hello all,
> 
> We are working on a platform based on Renesas processor. The BSP provided by
> them has arm-trusted-firmware. Now in order to enable all the 8 cores, they
> have suggested to add a environment variable in the
> arm-trusted-firmware_git.bb file in their BSP layer as below.
> 
> export PSCI_DISABLE_BIGLITTLE_IN_CA57BOOT="0"
> 
> We would prefer to make this change in our custom layer by creating a
> .bbappend file. We added the change in bbappend file, recompiled it and
> tested, but couldn't get the expected results. When I do the same change in
> the .bb file itself in their BSP layer, I am able to see the expected
> result.
> 
> Is it okay to just add the export as mentioned above in the .bbappend file ?
> Am I missing something else ?
> 
> ensure that your bbappend is actually applying to the final parsed recipe.
> You can use bitbake-layers show-appends to ensure that or simply bitbake -e
> and grep for this change
> 
> 
> 
> Thanks & Regards,
> Hari Prasath
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 

Paul Eggleton
Intel Open Source Technology Centre

