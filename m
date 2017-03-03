Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B0E0E009C3; Fri,  3 Mar 2017 02:59:44 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87318E0094C
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 02:59:41 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20170303105939410_0484
	for <yocto@yoctoproject.org>; Fri, 03 Mar 2017 10:59:39 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [216.191.234.70] (port=44142 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cjkvt-0000Vq-Cm
	for yocto@yoctoproject.org; Fri, 03 Mar 2017 05:59:33 -0500
Date: Fri, 3 Mar 2017 05:59:31 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@uk63952.mitel.com
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1703030552420.8760@uk63952.mitel.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: BSP "sub-layer" examples -- better example than meta-intel?
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
X-List-Received-Date: Fri, 03 Mar 2017 10:59:44 -0000
Content-Type: text/plain; charset=US-ASCII


  in current BSP Guide:

"Some layers function as a layer to hold other BSP layers. An example
of this type of layer is the meta-intel layer, which contains a number
of individual BSP sub-layers, as well as a directory named common/
full of common content across those layers. Another example is the
meta-yocto-bsp layer mentioned earlier."

  first, it seems meta-intel is not a great example anymore given its
restructuring -- it's just two layers:

  * meta-intel
  * meta-intel/meta-tlk

unlike what it used to be, so anyone want to suggest a better example
for that? (it *used* to be a great example of that, of course.)

  also, not sure how meta-yocto-bsp fits that description. it neither
contains sub-layers, nor is itself a sub-layer of a higher-level
layer. sure, it comes along as part of the checkout of "poky", but the
poky checkout itself is not a layer.

  so ... thoughts?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


