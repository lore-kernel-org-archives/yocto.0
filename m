Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50FCCE00A28; Fri,  3 Mar 2017 05:50:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [208.80.206.85 listed in list.dnswl.org]
Received: from smtp685.redcondor.net (smtp685.redcondor.net [208.80.206.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DE94E009C3
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 05:50:02 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20170303134958792_0685;
	Fri, 03 Mar 2017 05:49:58 -0800
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [216.191.234.70] (port=12173 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cjnai-0002cg-A0; Fri, 03 Mar 2017 08:49:52 -0500
Date: Fri, 3 Mar 2017 08:49:50 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@uk63952.mitel.com
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0LYeZMoB6Z19vEWWX7sKjUESnryZV9FH5jP7tixf1-9PtQ@mail.gmail.com>
Message-ID: <alpine.LFD.2.20.1703030847430.11583@uk63952.mitel.com>
References: <alpine.LFD.2.20.1703030552420.8760@uk63952.mitel.com>
	<CAJTo0LYeZMoB6Z19vEWWX7sKjUESnryZV9FH5jP7tixf1-9PtQ@mail.gmail.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: BSP "sub-layer" examples -- better example than meta-intel?
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
X-List-Received-Date: Fri, 03 Mar 2017 13:50:04 -0000
Content-Type: multipart/mixed; BOUNDARY="587868445-356223177-1488548992=:11583"

--587868445-356223177-1488548992=:11583
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 3 Mar 2017, Burton, Ross wrote:

> On 3 March 2017 at 10:59, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>         also, not sure how meta-yocto-bsp fits that description. it neither
>       contains sub-layers, nor is itself a sub-layer of a higher-level
>       layer. sure, it comes along as part of the checkout of "poky", but the
>       poky checkout itself is not a layer.
>
>
> meta-yocto-bsp being a sub-layer in the meta-yocto repository, I guess.

  oh, i understand how the poky layers are structured, but i was
quoting from the para in the bsp guide that starts, "Some layers
function as a layer to hold other BSP layers." and, technically
speaking, that is not what is happening there.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--587868445-356223177-1488548992=:11583--
