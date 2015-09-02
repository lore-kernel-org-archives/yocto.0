Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F33AE00D34; Wed,  2 Sep 2015 10:01:49 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B82EE00AC0
	for <yocto@yoctoproject.org>; Wed,  2 Sep 2015 10:01:45 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 02 Sep 2015 10:01:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,454,1437462000"; d="scan'208";a="553959978"
Received: from lsandov1-mobl-linux.zpn.intel.com (HELO [10.219.5.40])
	([10.219.5.40])
	by FMSMGA003.fm.intel.com with ESMTP; 02 Sep 2015 10:01:42 -0700
Message-ID: <55E72BC0.8020109@linux.intel.com>
Date: Wed, 02 Sep 2015 12:02:56 -0500
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: "Smith, Daniel W" <dwsmith@ball.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <167A17EDB344B047B2D335D8E4C5A2FA8DDA7A69@EX2010-CO-02.AERO.BALL.com>
In-Reply-To: <167A17EDB344B047B2D335D8E4C5A2FA8DDA7A69@EX2010-CO-02.AERO.BALL.com>
Subject: Re: ADA Support?
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
X-List-Received-Date: Wed, 02 Sep 2015 17:01:49 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 09/02/2015 10:38 AM, Smith, Daniel W wrote:
> Hello,
>
> I'm trying to figure out what is the best an easiest way to add ADA/GNAT support for PPC.  I'm currently running poky-fido-13.0.0.  I'm new to Yocto.
>
I do not know, but one place to start looking is

http://layers.openembedded.org/layerindex/branch/master/layers/

