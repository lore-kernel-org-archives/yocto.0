Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5663E009D4; Mon,  8 Jun 2015 01:07:54 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82149E0097D
	for <yocto@yoctoproject.org>; Mon,  8 Jun 2015 01:07:49 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 08 Jun 2015 01:07:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,573,1427785200"; d="scan'208";a="583917305"
Received: from ewishar1-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.30.184])
	by orsmga003.jf.intel.com with ESMTP; 08 Jun 2015 01:07:48 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Roberto Saltini <house.83@gmail.com>
Date: Mon, 08 Jun 2015 09:07:47 +0100
Message-ID: <1569215.vdWNRX2rLr@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/4.0.4-202.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <CAGLePYu7eyeGhC6Y9WBu1fHr+evThMx2vf_9H0YJCaLwrK+Y_w@mail.gmail.com>
References: <CAGLePYu7eyeGhC6Y9WBu1fHr+evThMx2vf_9H0YJCaLwrK+Y_w@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to search for the .bb of .bbappen file in which a variable is set?
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
X-List-Received-Date: Mon, 08 Jun 2015 08:07:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Roberto,

On Sunday 07 June 2015 19:44:12 Roberto Saltini wrote:
> For example, I would like to know in which .bb of .bbappend file the
> variable PREFERRED_PROVIDER_u-boot is set.
> 
> The only (dummy) way that I have figured out up to now is to use grep.
> 
> Does anyone know a better way?

PREFERRED_PROVIDER_* wouldn't be set in a bb/bbappend file - this kind of thing 
must be set at the configuration level.

The easiest way to find out where variables are set is to use bitbake -e. If 
you pipe its output through less then you can search for variables and see the 
complete history of how each variable's value got set.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

