Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 185A8E0074B; Tue, 28 Feb 2017 02:31:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.206.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp684.redcondor.net (smtp684.redcondor.net [208.80.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEA11E0050B
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2017 02:31:19 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp684.redcondor.net ({700db0a8-6fb7-4c8b-9b2a-6812225182d8})
	via TCP (outbound) with ESMTPS id 20170228103116239_0684;
	Tue, 28 Feb 2017 10:31:16 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [174.118.92.171] (port=46944 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cif3l-0006fL-E3; Tue, 28 Feb 2017 05:31:09 -0500
Date: Tue, 28 Feb 2017 05:31:07 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <CADkTA4O2ugLjGtMfd3bo18bR=yKR1V4gzkrNUJq_JVbamB=2NA@mail.gmail.com>
Message-ID: <alpine.LFD.2.20.1702280529440.30943@localhost.localdomain>
References: <alpine.LFD.2.20.1702270504160.5510@uk63952.mitel.com>
	<CADkTA4O2ugLjGtMfd3bo18bR=yKR1V4gzkrNUJq_JVbamB=2NA@mail.gmail.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] yocto-docs: kernel-dev, update "3.19" versions to "4.4"
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
X-List-Received-Date: Tue, 28 Feb 2017 10:31:23 -0000
Content-Type: text/plain; charset=US-ASCII

On Mon, 27 Feb 2017, Bruce Ashfield wrote:

>
>
> On Mon, Feb 27, 2017 at 5:07 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>       Update the remaining references to kernel version 3.19 to version 4.4,
>       restricted to the section "kernel-dev-common.xml".
>
> I just sent a patch to drop 4.4 from master. I'd suggest 4.9 as a
> version to use that will persist in master for a bit longer.

  if my earlier patches for kernel-dev manual have not already been
applied, feel free to toss them, and i'll resubmit a newer patch right
from the beginning with updated version numbers and everything else.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


