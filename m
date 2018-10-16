Return-Path: <marcelo.magallon@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD07CE00950; Tue, 16 Oct 2018 08:43:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [15.233.16.89 listed in list.dnswl.org]
X-Greylist: delayed 535 seconds by postgrey-1.32 at yocto-www;
	Tue, 16 Oct 2018 08:43:44 PDT
Received: from g2t1383g.austin.hpe.com (g2t1383g.austin.hpe.com [15.233.16.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FE4CE006AF
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 08:43:44 -0700 (PDT)
Received: from g9t5009.houston.hpe.com (g9t5009.houston.hpe.com [15.241.48.73])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g2t1383g.austin.hpe.com (Postfix) with ESMTPS id DB3751A4C
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 15:34:48 +0000 (UTC)
Received: from g4t3433.houston.hpecorp.net (g4t3433.houston.hpecorp.net
	[16.208.49.245])
	by g9t5009.houston.hpe.com (Postfix) with ESMTP id E9A3271;
	Tue, 16 Oct 2018 15:34:47 +0000 (UTC)
Received: from hpe.com (unknown [16.116.130.78])
	by g4t3433.houston.hpecorp.net (Postfix) with ESMTP id 99A3649;
	Tue, 16 Oct 2018 15:34:47 +0000 (UTC)
Date: Tue, 16 Oct 2018 09:34:47 -0600
From: Marcelo Magallon <marcelo.magallon@hpe.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20181016153446.2ncalowxe2vwzyhv@nyx.americas.hpecorp.net>
References: <CAD-1PJggqpkkpKgxkKPLUKZRKnRKXpcHTKiH_=nS7FbmQocc5A@mail.gmail.com>
	<CAJTo0LYC4zEP5RDUkEQsLeSyQe+exzC+Csuau4bnOhBUe+HCqw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYC4zEP5RDUkEQsLeSyQe+exzC+Csuau4bnOhBUe+HCqw@mail.gmail.com>
User-Agent: NeoMutt/20180716
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Patching bbclass file
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
X-List-Received-Date: Tue, 16 Oct 2018 15:43:45 -0000
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

On Tue, Oct 16, 2018 at 03:46:25PM +0100, Burton, Ross wrote:
>This is simply because you can't patch a bbclass.  You'll have to copy
>it into your layer with the modification, or work upstream to get a
>suitable change merged.

What I've done in this situation is add a new layer 
(poky-patches), add the modified foo.bbclass file there and when 
upgrading from one version of poky to the next, compare the old 
and new foo.bbclass files in poky. If they have changed, I do a 
three-way merge.

Marcelo

