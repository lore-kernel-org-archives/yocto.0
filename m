Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2ADA2E00B51; Mon, 22 May 2017 13:35:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75706E00812
	for <yocto@yoctoproject.org>; Mon, 22 May 2017 13:35:33 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga104.jf.intel.com with ESMTP; 22 May 2017 13:35:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,379,1491289200"; d="scan'208";a="90391196"
Received: from lsem-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.133.64])
	by orsmga004.jf.intel.com with ESMTP; 22 May 2017 13:35:29 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 23 May 2017 08:35:27 +1200
Message-ID: <1752127.E0fXlp9gfm@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <31a2d863-b928-df06-8e86-78b939469614@mlbassoc.com>
References: <31a2d863-b928-df06-8e86-78b939469614@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: sstate-cache question
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
X-List-Received-Date: Mon, 22 May 2017 20:35:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Gary,

On Tuesday, 23 May 2017 2:53:45 AM NZST Gary Thomas wrote:
> I have a build where I've never manually removed anything from
> the sstate-cache and this same build has been used for hundreds
> of builds over the last 18 months.  I just tried to find out why
> gcc-cross-arm had to be rebuilt (it seems to happen almost every
> time I update my Poky/Yocto tree (master)).  Here's what I got:
> 
> $ bitbake-diffsigs -t gcc-cross-arm compile
> Hash for dependent task gcc/gcc-cross_6.3.bb.do_configure changed from 
208373dd9ae01101a26a9412eb50b110 to 
> d65095d4b9aff89f6990bd17c0ab210b
> Unable to find matching sigdata for /local/poky-cutting-edge/meta/recipes-
devtools/gcc/gcc-cross_6.3.bb.do_configure 
> with hashes 208373dd9ae01101a26a9412eb50b110 or 
d65095d4b9aff89f6990bd17c0ab210b
> 
> So if I didn't remove those files, where did they go?  Am I doing
> something wrong running this tool?  (running the same command for
> qemu-native seemed to work correctly)

Is this with master, pyro, morty or some other version?

If you search for files with those hashes in their name do they show up?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

