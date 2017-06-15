Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60B68E00B97; Thu, 15 Jun 2017 01:47:54 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B80EE00B77
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 01:47:48 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Jun 2017 01:47:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,342,1493708400"; d="scan'208";a="114707981"
Received: from hadjizad-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.63.65])
	by fmsmga005.fm.intel.com with ESMTP; 15 Jun 2017 01:47:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jimi Damon <jdamon@gmail.com>
Date: Thu, 15 Jun 2017 10:47:46 +0200
Message-ID: <1721976.Tat4yvfF10@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <9cd8d4c6-cad7-3b26-6894-62aa0fd9f77f@mlbassoc.com>
References: <bff03cd3-258c-95fd-63de-548168f363d0@gmail.com>
	<9cd8d4c6-cad7-3b26-6894-62aa0fd9f77f@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: devshell not working for Qt or Boundary Devices based yocto
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
X-List-Received-Date: Thu, 15 Jun 2017 08:47:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 15 June 2017 5:12:19 AM CEST Gary Thomas wrote:
> On 2017-06-15 01:58, Jimi Damon wrote:
> > I'm trying out two different yocto distributions and in each one the
> > devshell doens't work. Instead it just gets to the 
> > Summary line and returns to my normal shell ( bash ) .
> 
> What are you expecting to happen?  'devshell' is just that - a shell
> environment (e.g. bash) where you are set up to "develop" (tinker, explore,
> etc) the given recipe.

I think Jimi is saying that it doesn't appear to be launching a separate 
terminal / shell. Right?

Assuming that's what's happening, the devshell code is supposed to print out 
an error when it can't launch a suitable terminal, but if the terminal isn't 
doing what it should then that might leave you in this situation. Does 
log.do_devshell for the recipe indicate anything?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

