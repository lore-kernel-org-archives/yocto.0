Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EE05E00B23; Mon, 14 Oct 2019 15:08:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24E31E00924
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 15:08:42 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Oct 2019 15:08:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,296,1566889200"; d="scan'208";a="346887408"
Received: from cwkhor-mobl.gar.corp.intel.com (HELO linux.fritz.box)
	([10.249.66.15])
	by orsmga004.jf.intel.com with ESMTP; 14 Oct 2019 15:08:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Mark Hatle <mark.hatle@kernel.crashing.org>
Date: Tue, 15 Oct 2019 11:08:36 +1300
Message-ID: <1678166.3Pd2BCF48v@linux.fritz.box>
Organization: Intel Corporation
In-Reply-To: <a689c6cf-1b24-fd3d-19db-79c2000c9db1@kernel.crashing.org>
References: <a689c6cf-1b24-fd3d-19db-79c2000c9db1@kernel.crashing.org>
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [layerindex-web] Enabled zeus, not working...
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
X-List-Received-Date: Mon, 14 Oct 2019 22:08:44 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Mark

On Tuesday, 15 October 2019 10:21:29 AM NZDT Mark Hatle wrote:
> I added the zeus branch on the layers.openembedded.org today and it's not
> showing up and being indexed.  Any idea why?

The bitbake branch wasn't correctly specified - it needed to be set to "1.44" 
(grabbed from https://wiki.yoctoproject.org/wiki/Releases if you don't have it 
in your head - I didn't ;).
 
> On my own personal layer index I did it and it worked fine.  So it may be
> something related to the configuration.

I guess it worked in your case because (based on your patch of the other day) 
you're picking bitbake out of a repo where zeus is a valid branch.

FYI on layers.openembedded.org you also need to select the Python environment 
for the branch - python3 in this case. 

I've made both of these changes so it should index correctly the next time 
around.

Cheers
Paul


-- 

Paul Eggleton
Intel System Software Products



