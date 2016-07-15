Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DAA4E00ECE; Fri, 15 Jul 2016 06:16:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27CE9E006E9
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 06:16:17 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 15 Jul 2016 06:16:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,368,1464678000"; d="scan'208";a="1022366695"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.71])
	by fmsmga002.fm.intel.com with ESMTP; 15 Jul 2016 06:16:15 -0700
Date: Fri, 15 Jul 2016 16:16:44 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
Message-ID: <20160715131643.GA19628@mbabyjoh-desk.ger.corp.intel.com>
References: <CY1PR0101MB15949FCDF452F57DF16C5374D7310@CY1PR0101MB1594.prod.exchangelabs.com>
	<20160713151652.GA6070@mbabyjoh-desk.ger.corp.intel.com>
	<CY1PR0101MB1594D50A022FF0DB174D3D56D7320@CY1PR0101MB1594.prod.exchangelabs.com>
	<CY1PR0101MB15948C7F33906CFB5C9A6308D7330@CY1PR0101MB1594.prod.exchangelabs.com>
	<CY1PR0101MB1594B2A93629A15D839EF317D7330@CY1PR0101MB1594.prod.exchangelabs.com>
MIME-Version: 1.0
In-Reply-To: <CY1PR0101MB1594B2A93629A15D839EF317D7330@CY1PR0101MB1594.prod.exchangelabs.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: image-vmdk with genericx86
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
X-List-Received-Date: Fri, 15 Jul 2016 13:16:18 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Takashi-san,

On Fri, Jul 15, 2016 at 05:32:32AM +0000, Takashi Matsuzawa wrote:
>Hello.
>
>Well, the below line actually inheriting image-live.bbclass.  The variable values I can see by '-e' option may be the final values, not in the middle of parsing.
>
>
>>IMAGE_TYPE_live = "${@build_live(d)}"
>>
>>inherit ${IMAGE_TYPE_live}
>
>The solution I came up is, to copy genericx86.conf to build/conf/machines/generix86.conf (into local conf file folder) and do necessary modification to it.
>So that I can cancel whatever IMAGE_FSTYPES value set by x86-base.inc.

Most of these bugs are fixed in master branch. I would recommend to switch from
fido branch to the latest krogoth, if possible. Please do file bugs in bugzilla as well.

Best Regards,
Maxin

