Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B336AE00833; Wed, 10 Sep 2014 06:44:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 969E5E00819
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 06:44:34 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Sep 2014 06:43:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,499,1406617200"; d="scan'208";a="571147291"
Received: from tmediriw-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.16])
	by orsmga001.jf.intel.com with ESMTP; 10 Sep 2014 06:43:31 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 10 Sep 2014 14:43:30 +0100
Message-ID: <2081306.Am4Yld06uE@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.10-201.fc20.x86_64; KDE/4.13.3; x86_64; ;
	)
In-Reply-To: <CAJTo0LZJmx=j7C61vKvpZcW+OYrxPYf07Tr_7X=tjdz5PY9zEQ@mail.gmail.com>
References: <CALb2248grw7+NKWt8yfEpVR1_DYgkWEGYwhhr5N5ng_6JqU2mA@mail.gmail.com>
	<CAPhDKbFBPuxkh_+yfFH+Q+pQ3DSpPEKRpfbVE1qyW7uEiTDoqg@mail.gmail.com>
	<CAJTo0LZJmx=j7C61vKvpZcW+OYrxPYf07Tr_7X=tjdz5PY9zEQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Leo Schwab <lschwab@sensity.com>
Subject: Re: Integrating Golang
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
X-List-Received-Date: Wed, 10 Sep 2014 13:44:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 10 September 2014 14:36:37 Burton, Ross wrote:
> On 10 September 2014 13:53, Ilya Dmitrichenko <errordeveloper@gmail.com> 
wrote:
> > Just a quick update, thought I'd let you know that I have a basic
> > working layer here:
> > 
> > https://github.com/errordeveloper/oe-meta-go
> 
> Could you consider submitting this to the layer index,
> layers.openembedded.org?

He has and it's been published. Thanks for the reminder though ;)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

