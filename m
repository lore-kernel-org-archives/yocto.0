Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65294E009F3; Fri, 17 Jul 2015 05:48:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA47FE009D9
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 05:48:51 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 17 Jul 2015 05:48:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,496,1432623600"; d="scan'208";a="730722018"
Received: from ddacost1-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.6.74])
	by orsmga001.jf.intel.com with ESMTP; 17 Jul 2015 05:48:51 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
Date: Fri, 17 Jul 2015 13:48:50 +0100
Message-ID: <2678681.VL8xmAfbfV@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.7-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <DDB0C57E45663A458C5CACB7B5688BC21D8C97D3@SESTOEX04.enea.se>
References: <1437127559-9853-1-git-send-email-Alexandru.Vaduva@enea.com>
	<CAJTo0LYvZ4xfs=WsjkOwpXEs06a-Yf9Y-y7had=dVs3oR1=LcQ@mail.gmail.com>
	<DDB0C57E45663A458C5CACB7B5688BC21D8C97D3@SESTOEX04.enea.se>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] Fix LSB core sysvinit issue.
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
X-List-Received-Date: Fri, 17 Jul 2015 12:48:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Alex,

Can you please ensure patches for meta-cgl sent to this list are marked with 
[meta-cgl] in the subject?

FYI in case you didn't know, you can ensure this by adding something like the 
following to .git/config under your local clone of the repo:

[format]
        subjectprefix = meta-something][PATCH
[sendemail]
        to = mailing.list@example.com

Thanks,
Paul

On Friday 17 July 2015 10:24:58 Alexandru Vaduva wrote:
> Hello Ross,
> 
> It is for meta-cgl. For CGL compliance the STD.1.0 Linux Standard Base
> Compliance requirement requires certain LSB modules compliance.
 The patch
> solves /tset/LSB.fhs/root/sbin/sbin-tc.
> 
> 
> Thanks for the input,
> Alex V.
> 
> 
> From: Burton, Ross [mailto:ross.burton@intel.com]
> Sent: Friday, July 17, 2015 1:16 PM
> To: Alexandru Vaduva
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [PATCH] Fix LSB core sysvinit issue.
> 
> You don't say what layer this is for... but it looks a lot like this fix
> should go into oe-core (with an explanation of why it is needed).
 
> Ross
> 
> On 17 July 2015 at 11:05, Alexandru.Vaduva
> <Alexandru.Vaduva@enea.com<mailto:Alexandru.Vaduva@enea.com>> wrote:
 From:
> Alexandra Safta <alexandra.safta@enea.com<mailto:alexandra.safta@enea.com>>
> 
> [LXCR-3306]
> Signed-off-by: Alexandra Safta
> <alexandra.safta@enea.com<mailto:alexandra.safta@enea.com>>
 Signed-off-by:
> Tudor Florea <tudor.florea@enea.com<mailto:tudor.florea@enea.com>>
> Signed-off-by: Alexandra Safta
> <alexandra.safta@enea.com<mailto:alexandra.safta@enea.com>> ---
>  recipes-core/sysvinit/sysvinit_2.88dsf.bbappend | 3 +++
>  1 file changed, 3 insertions(+)
>  create mode 100644 recipes-core/sysvinit/sysvinit_2.88dsf.bbappend
> 
> diff --git a/recipes-core/sysvinit/sysvinit_2.88dsf.bbappend
> b/recipes-core/sysvinit/sysvinit_2.88dsf.bbappend
 new file mode 100644
> index 0000000..4fd3c00
> --- /dev/null
> +++ b/recipes-core/sysvinit/sysvinit_2.88dsf.bbappend
> @@ -0,0 +1,3 @@
> +do_install_append(){
> +        chmod o+x ${D}${base_sbindir}/shutdown
> +}
> --
> 1.9.1
> 
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto
> 

-- 

Paul Eggleton
Intel Open Source Technology Centre

