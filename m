Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9462E007AD; Wed, 22 Feb 2017 04:09:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45F9BE004D8
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2017 04:09:29 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20170222120925932_0484;
	Wed, 22 Feb 2017 12:09:25 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [216.191.234.70] (port=44237 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cgVjT-0002kz-Ct; Wed, 22 Feb 2017 07:09:19 -0500
Date: Wed, 22 Feb 2017 07:09:17 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@uk63952.mitel.com
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0LbidTCeRzY9sC=FprM=VGyZMceL1aGOQSdJ2rBWzDtF5g@mail.gmail.com>
Message-ID: <alpine.LFD.2.20.1702220708590.23467@uk63952.mitel.com>
References: <alpine.LFD.2.20.1702210921290.9024@uk63952.mitel.com>
	<CAJTo0LbidTCeRzY9sC=FprM=VGyZMceL1aGOQSdJ2rBWzDtF5g@mail.gmail.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Section 5.10.6, current YP reference manual, "default working directory"
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
X-List-Received-Date: Wed, 22 Feb 2017 12:09:32 -0000
Content-Type: text/plain; charset=US-ASCII

On Wed, 22 Feb 2017, Burton, Ross wrote:

>
> On 22 February 2017 at 11:58, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>       so, *technically*, that claim in the ref manual is not wholly true;
>       there are still a small number of tasks that use that default
>       directory. is that a distinction worth making in the reference manual?
>
>
> The point was that tasks used to have ${B} as the working directory
> without any [dirs] set.  Now a task needs to set [dirs] if its wants
> to change the working directory.

  ah, now i get it.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


