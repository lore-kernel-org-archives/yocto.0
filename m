Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C55DE00754; Tue, 10 Mar 2015 06:32:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54E10E00810
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 06:31:10 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 10 Mar 2015 06:25:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,374,1422950400"; d="scan'208";a="696518298"
Received: from dpturley-mobl.amr.corp.intel.com (HELO [10.254.75.197])
	([10.254.75.197])
	by orsmga002.jf.intel.com with ESMTP; 10 Mar 2015 06:31:09 -0700
Message-ID: <1425994268.31108.38.camel@picadillo>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Albert K <alberk@gmail.com>
Date: Tue, 10 Mar 2015 08:31:08 -0500
In-Reply-To: <CACjDgAN4pFt7Q-gm6dt-AMTryio_dsA8m_ARbssdc6QNktK8yQ@mail.gmail.com>
References: <CACjDgAN4pFt7Q-gm6dt-AMTryio_dsA8m_ARbssdc6QNktK8yQ@mail.gmail.com>
X-Mailer: Evolution 3.10.4 (3.10.4-4.fc20) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Intel BSP for Rangeley
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
X-List-Received-Date: Tue, 10 Mar 2015 13:32:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2015-03-10 at 12:45 +0800, Albert K wrote:
> Dear all,
> 
> May I know which BSP to use for Intel Atom C2000 Rangeley?  I do not
> see that Intel BSP has the mohon peak bsp.  I am trying out the Dizzy
> 1.7 branch.  Thanks.
> 

There is a BSP for mohon peak in the meta-intel/dizzy branch:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/meta-isg/meta-mohonpeak?h=dizzy

Tom

> Regards,
> Albert.



