Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2C0AE00724; Tue,  4 Oct 2016 12:22:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66BF0E00563
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2016 12:22:34 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga104.jf.intel.com with ESMTP; 04 Oct 2016 12:22:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,444,1473145200"; d="scan'208";a="1040303506"
Received: from hle6-mobl.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.185.42])
	by orsmga001.jf.intel.com with ESMTP; 04 Oct 2016 12:22:30 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
Date: Wed, 05 Oct 2016 08:22:28 +1300
Message-ID: <14908226.eNXmjE9kDk@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.5-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <D6696459-1F17-4F52-8D0A-4ED8C3FC35EE@cisco.com>
References: <D6696459-1F17-4F52-8D0A-4ED8C3FC35EE@cisco.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Question: xxxx listed in PACKAGES multiple times, this leads to packaging errors
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
X-List-Received-Date: Tue, 04 Oct 2016 19:22:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Dinh,

On Tue, 04 Oct 2016 16:07:59 Dinh Nguyen wrote:
> >>> ERROR: QA Issue: c-mlib is listed in PACKAGES multiple times, this leads
> >>> to packaging errors. [packages-list]
> Summary: There was 1 ERROR
> >>> message shown, returning a non-zero exit code.
> 
> I got the above ERROR because  my c-mlib_1.0-r0_core2-64.ipk and other
> packages were listed in different places as shown below:
 
> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDev/ioxsdk$ find . -name
> c-mlib_1.0-r0_core2-64.ipk
 
> ./yp/tmp/deploy/ipk/core2-64/c-mlib_1.0-r0_core2-64.ipk
> ./yp/tmp/work/core2-64-poky-linux/c-mlib/1.0-r0/deploy-ipks/core2-64/c-mlib_
> 1.0-r0_core2-64.ipk

That is not what that error means. What it does mean is that there is a
variable called PACKAGES which is used to control the list of packages
produced by a recipe, and in the value of that variable for the c-mlib recipe,
a c-mlib package is listed more than once. You need to look at what you are doing in the
recipe with the PACKAGES variable and fix it so that that does not occur.

FYI for future reference there's a useful section of the manual describing
warnings and what to do about them:

  http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#qa-errors-and-warnings

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

