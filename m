Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3B2EE00E88; Tue, 16 Aug 2016 08:37:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87B0DE00E83
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 08:37:28 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20160816153726565_0484;
	Tue, 16 Aug 2016 15:37:26 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [216.191.234.70] (port=14580 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1bZgSV-0007Fv-Ok; Tue, 16 Aug 2016 11:39:19 -0400
Date: Tue, 16 Aug 2016 11:37:16 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@ca624034.mitel.com
To: Patrick Doyle <wpdster@gmail.com>
In-Reply-To: <CAF_dkJD9wqM7rg7U1VeiDs+adEREcoNna58dghfN2BvbxVLWqA@mail.gmail.com>
Message-ID: <alpine.LFD.2.20.1608161134290.9097@ca624034.mitel.com>
References: <CAF_dkJD9wqM7rg7U1VeiDs+adEREcoNna58dghfN2BvbxVLWqA@mail.gmail.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to maintain a global DL_DIR?
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
X-List-Received-Date: Tue, 16 Aug 2016 15:37:32 -0000
Content-Type: text/plain; charset=US-ASCII

On Tue, 16 Aug 2016, Patrick Doyle wrote:

> As I am playing with several different Yocto/OE projects, I thought
> it would be nice to set up a global downloads directory.
>
> Also, being a somewhat forgetful sort, I thought it would be nice if
> I could set DL_DIR in my .bashrc and not have to remember to edit
> conf/local.conf each time I follow the directions from a third party
> site to set up their Yocto based distribution.
>
> Can I do this?  If so, how?

  if you're talking about creating a local source mirror for tarballs
to be shared across multiple projects, i taught an OE/YP course last
week based on a digi ConnectCore 6 dev kit, and i wrote some wiki
pages for it, including this one:

http://www.crashcourse.ca/wiki/index.php/CC6_local_source_mirror

that explains how to create a globally accessible directory full of
tarballs, how to configure each new project to look there first, and
there's even a script so that, if a new project *does* have to
download a bit of stuff that's not in your local source mirror, you
can run that script from the downloads/ directory, and it will copy
all the newly-downloaded stuff into your local source mirror.

  let me know if anything on that page is unclear.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


