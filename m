Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D90B1E00A26; Fri,  3 Mar 2017 06:07:37 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70FFEE009C3
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 06:07:34 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20170303140716503_0484;
	Fri, 03 Mar 2017 14:07:16 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [216.191.234.70] (port=50685 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cjnrQ-0004cd-Lr; Fri, 03 Mar 2017 09:07:08 -0500
Date: Fri, 3 Mar 2017 09:07:06 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@uk63952.mitel.com
To: Andy Pont <andy.pont@sdcsystems.com>
In-Reply-To: <00b801d29425$cfb126c0$6f137440$@sdcsystems.com>
Message-ID: <alpine.LFD.2.20.1703030902230.11821@uk63952.mitel.com>
References: <alpine.LFD.2.20.1703030819430.10734@uk63952.mitel.com>
	<CAJTo0LaNo5inrbahsW9suovVtP3F2xD28h_Bnbw24sokqOSZ0w@mail.gmail.com>
	<00b801d29425$cfb126c0$6f137440$@sdcsystems.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: 'Yocto discussion list' <yocto@yoctoproject.org>
Subject: Re: any rumblings about a newer YP powerpc reference board than mpc8315e-rdb?
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
X-List-Received-Date: Fri, 03 Mar 2017 14:07:37 -0000
Content-Type: text/plain; charset=US-ASCII

On Fri, 3 Mar 2017, Andy Pont wrote:

> Ross Burton wrote...
>
> >> it seems of limited value for YP to have a powerpc reference board,
> >> mpc8315e-rdb, that is essentially impossible to procure. is there any
> >> effort being made to look around for a newer powerpc reference board
> >> that people could actually buy?
> >
> >Do you have any suggestions?
>
> If we are being strictly pedantic then is isn't PowerPC (at least in
> the world that is Freescale / NXP / Whoever they are this week).
>
> I would look at one of the P10xx series QorIQ boards.  Digi-Key list
> the P1021RDB-PC-ND and P1024RDB-PA-ND as being active parts which
> are either single or dual e500 cores.

  i would start with the machine definition files in the meta-fsl-ppc
layer:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/conf/machine

and see what looks promising. however, IIRC, one of the properties of
a YP reference board is that it shouldn't be stupid, crazy expensive,
no? so anything climbing above $500 (USD) might not be an option.
people used to spending $60 for a beaglebone black might have a
seizure to suddenly realize they need $500 for a powerpc reference
board.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


