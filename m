Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBDC1E00E44; Fri,  6 May 2016 02:10:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85B6CE00C2A
	for <yocto@yoctoproject.org>; Fri,  6 May 2016 02:10:34 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 06 May 2016 02:10:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,586,1455004800"; d="scan'208";a="800207625"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.71])
	by orsmga003.jf.intel.com with ESMTP; 06 May 2016 02:10:33 -0700
Date: Fri, 6 May 2016 12:10:48 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: "Mihaylov, Emil" <emilmih@gmail.com>
Message-ID: <20160506091048.GA11082@mbabyjoh-desk.ger.corp.intel.com>
References: <ccfc2b5b-74fa-ed1e-37b6-6dc0ed7ecb27@gmail.com>
	<fb5c7b87-82bd-f1cd-9070-d99aa4046146@windriver.com>
	<e83997e2-d496-eaa7-0921-64ef4d669f36@gmail.com>
MIME-Version: 1.0
In-Reply-To: <e83997e2-d496-eaa7-0921-64ef4d669f36@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: oracle-jse-jdk
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
X-List-Received-Date: Fri, 06 May 2016 09:10:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Emil,

On Thu, May 05, 2016 at 10:43:08AM -0700, Mihaylov, Emil wrote:

>hi Mark,
>
>my oracle-jse-jdk_1.7.0.bb
>
>looks like this
>
>-----------------------------------------------
>
># Automatically choose java package based on target architecture
>DEPENDS += "libav gtk+ libxslt libxtst"

From the error, I assume that you are using "RPM" as package manager in your 
local.conf:

PACKAGE_CLASSES ?= "package_rpm"

Could you please try to build again with "ipk or deb" as mentioned in the README
file in meta-oracle-java repo ?

Best Regards,
Maxin

