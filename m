Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 197FCE0091A; Tue, 25 Nov 2014 03:43:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E56C0E008E2
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 03:43:53 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2014 03:41:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,455,1413270000"; d="scan'208";a="613679708"
Received: from ksperera-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.204])
	by orsmga001.jf.intel.com with ESMTP; 25 Nov 2014 03:43:51 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: peterengcomau001@adam.com.au
Date: Tue, 25 Nov 2014 11:43:50 +0000
Message-ID: <88560578.M5ZrlhlDIL@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.3-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <c68edcb4bb64d1815bcf347b3c8042af75864a58@webmail.adam.com.au>
References: <c68edcb4bb64d1815bcf347b3c8042af75864a58@webmail.adam.com.au>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: New error in 1.7
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
X-List-Received-Date: Tue, 25 Nov 2014 11:43:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 25 November 2014 22:08:41 peterengcomau001@adam.com.au wrote:
> > > | Makefile.am: error: required file './AUTHORS' not found
> > 
> > This is likely a result of the --foreign option being removed - see:
> > 
> > http://www.yoctoproject.org/docs/1.7/ref-manual/ref-> > manual.html#migration-1.7-autotools-class-changes
>
>  the change to oprofile.inc and the associated patch appear to be
> already present in the meta data.
> Any other ideas what could be causing the problem?

The patch to oprofile is just an example of what you need to do to solve this 
type of issue - you need to make a similar change to the failing recipe 
(gstreamer1.0-plugins-hantro in this instance).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

