Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA671E00CF4; Thu,  3 Sep 2015 06:30:03 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8434E00B72
	for <yocto@yoctoproject.org>; Thu,  3 Sep 2015 06:30:00 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 03 Sep 2015 06:30:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,462,1437462000"; d="scan'208";a="637808841"
Received: from lsandov1-mobl-linux.zpn.intel.com (HELO [10.219.5.40])
	([10.219.5.40])
	by orsmga003.jf.intel.com with ESMTP; 03 Sep 2015 06:30:01 -0700
Message-ID: <55E84BA1.2000609@linux.intel.com>
Date: Thu, 03 Sep 2015 08:31:13 -0500
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: Gorny Krystian <krystian.gorny@wipotec.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <10D57FBA9FD7C14FB49EE17590E1AF9453C91CA3@svr-exc-03.intern.wipotec.de>
In-Reply-To: <10D57FBA9FD7C14FB49EE17590E1AF9453C91CA3@svr-exc-03.intern.wipotec.de>
Subject: Re: Autologin after bootup on the genericx86 machine
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
X-List-Received-Date: Thu, 03 Sep 2015 13:30:04 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


On 09/03/2015 04:36 AM, Gorny Krystian wrote:
> Hi,
>
> I'm using the fido branch and building a genericx86 machine for the core-image-rt image.
> After my image boot up I always need to login as root first, is there a way to login and start my application automatically? I can't find an easy way to do this.

On your local.conf, add the following

EXTRA_IMAGE_FEATURES = "debug-tweaks"

