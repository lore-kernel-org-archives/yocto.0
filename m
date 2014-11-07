Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0FB0E00901; Fri,  7 Nov 2014 06:05:55 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5C9BE00863
	for <yocto@yoctoproject.org>; Fri,  7 Nov 2014 06:05:53 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 07 Nov 2014 05:58:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="413020543"
Received: from moyraecc-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.2])
	by FMSMGA003.fm.intel.com with ESMTP; 07 Nov 2014 05:56:30 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
Date: Fri, 07 Nov 2014 14:05:07 +0000
Message-ID: <4884585.vGdbtxCfvM@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.2 (Linux/3.16.7-200.fc20.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <2C73D3E46744804E888EDCCD6FBE4FD089616794EE@SAFEX1MAIL5.st.com>
References: <2C73D3E46744804E888EDCCD6FBE4FD089616794EE@SAFEX1MAIL5.st.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Build issue with daisy branch
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
X-List-Received-Date: Fri, 07 Nov 2014 14:05:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 06 November 2014 16:01:44 Pierre Yves MORDRET wrote:
> Recently I came across a build issue when using daisy branch.
> 
>    ports/linux/xattr/portdefs.h:1:24: fatal error: attr/xattr.h: No such
> file or directory #include <attr/xattr.h>
> 
>     ERROR: Function failed: do_compile (log file is located at 
> .../tmp-eglibc/work/x86_64-nativesdk-oesdk-linux/nativesdk-pseudo/1.6.2-r0/
> temp/log.do_compile.26354)
> 
> I saw an upgrade in daisy branch related to pseudo.
> Do you know which package is supposed to provide "attr/xattr.h"

This has been subsequently fixed in the daisy branch - if you pull again you 
should get the fix.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

