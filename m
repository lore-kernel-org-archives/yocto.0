Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4639FE008A6; Mon,  2 Feb 2015 10:40:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63FCCE00824
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 10:40:07 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 02 Feb 2015 10:36:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,507,1418112000"; d="scan'208";a="660449157"
Received: from bbodonog-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.3.158])
	by fmsmga001.fm.intel.com with ESMTP; 02 Feb 2015 10:40:03 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Mon, 02 Feb 2015 18:40:04 +0000
Message-ID: <3024113.u8sIRSU3WC@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <54CFA6DA.60103@mlbassoc.com>
References: <54CFA6DA.60103@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: bitbake-whatchanged error
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
X-List-Received-Date: Mon, 02 Feb 2015 18:40:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Gary,

On Monday 02 February 2015 09:33:30 Gary Thomas wrote:
> Every time I run the 'bitbake-whatchanged' script, I get an
> error like this:
>    ERROR: Bitbake's cached basehash does not match the one we just generated
> (/home/local/poky-cutting-edge/meta-imx6/packages/images/imx6-demo-image.bb
> .do_rootfs)! ERROR: The mismatched hashes were
> e48dfde9772b0a567b5327087c9e2d44 and 3c3447f08ef4da61b814bff5fb909bff
> 
> What causes this and should I be worried?  Does it affect
> the actual results which are shown?

I don't think you should necessarily be worried, but this is definitely a bug 
and we should fix it. It affects bitbake -S printdiff as well. If you have a 
chance it would be great if you could file a bug about it.

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

