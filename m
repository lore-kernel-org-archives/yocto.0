Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E106BE00BA1; Thu, 15 Mar 2018 05:05:33 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CDE9E00752
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 05:05:33 -0700 (PDT)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Mar 2018 05:05:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,310,1517904000"; d="scan'208";a="24913878"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.84])
	by orsmga007.jf.intel.com with ESMTP; 15 Mar 2018 05:05:31 -0700
Date: Thu, 15 Mar 2018 14:09:02 +0200
From: "Maxin B. John" <maxin.john@intel.com>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Message-ID: <20180315120902.GA17453@mbabyjoh-desk.ger.corp.intel.com>
References: <20180312163806.16943-1-git@andred.net>
	<20180313161037.GA20946@mbabyjoh-desk.ger.corp.intel.com>
	<1521105005.6779.44.camel@andred.net>
MIME-Version: 1.0
In-Reply-To: <1521105005.6779.44.camel@andred.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-java][PATCH 1/2] openjdk-8: fix MAKE detection patch
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
X-List-Received-Date: Thu, 15 Mar 2018 12:05:33 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Andre',

On Thu, Mar 15, 2018 at 09:10:05AM +0000, André Draszik wrote:
> On Tue, 2018-03-13 at 18:10 +0200, Maxin B. John wrote:
> > Hi André,

<snip>

> > 
> > Merged, Thanks.
> 
> Thanks Maxin.
> 
> Did you forget the 2nd patch, or is there an issue with it?
> 
> BTW, I just noticed that master and master-next have diverged quite a lot -
> what is the plan wrt that?

Merged the 2nd patch and updated the master-next branch.

> Cheers,
> Andre'

Cheers,
Maxin

