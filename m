Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95E69E00AE4; Mon, 10 Apr 2017 18:59:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43FEEE00A9B
	for <yocto@yoctoproject.org>; Mon, 10 Apr 2017 18:59:39 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga104.jf.intel.com with ESMTP; 10 Apr 2017 18:59:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,184,1488873600"; d="scan'208";a="1117988581"
Received: from lheah-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.133.64])
	by orsmga001.jf.intel.com with ESMTP; 10 Apr 2017 18:59:37 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Natalia Theologou <natalia_th92@hotmail.com>
Date: Tue, 11 Apr 2017 13:59:34 +1200
Message-ID: <3424568.qg3npLRIuq@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <VI1PR05MB3376EF89C390BAFE1B57F658F9010@VI1PR05MB3376.eurprd05.prod.outlook.com>
References: <mailman.64321.1491494297.15860.yocto@yoctoproject.org>
	<VI1PR05MB3376EF89C390BAFE1B57F658F9010@VI1PR05MB3376.eurprd05.prod.outlook.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: yocto Digest, Vol 79, Issue 23
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
X-List-Received-Date: Tue, 11 Apr 2017 01:59:40 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Natalia,

On Tuesday, 11 April 2017 2:11:15 AM NZST Natalia Theologou wrote:
> Well I am running Ubuntu 16 and trying to install yocto for a board.
> 
> When I run
> 
> bitbake core-image-x11
> 
> I get this error:
> 
> ERROR: Task 1570
> (virtual:native:/~/sources/poky/meta/recipes-support/gmp/gmp_5.1.1.bb,
> do_compile) failed with exit code '1' NOTE: Tasks Summary: Attempted 106
> tasks of which 102 didn't need to be rerun and 2 failed. Waiting for 0
> running tasks to finish:
> 
> Summary: 2 tasks failed:
>   virtual:native:/~/sources/poky/meta/recipes-core/ncurses/ncurses_5.9.bb,
> do_compile
> virtual:native:~/sources/poky/meta/recipes-support/gmp/gmp_5.1.1.bb,
> do_compile

This doesn't look like the complete message - it should be preceded by the 
specific error that occurred, can you please paste that in?

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

