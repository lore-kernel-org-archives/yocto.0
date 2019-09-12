Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEBD2E00D83; Thu, 12 Sep 2019 11:19:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [199.212.143.9 listed in list.dnswl.org]
X-Greylist: delayed 1140 seconds by postgrey-1.32 at yocto-www;
	Thu, 12 Sep 2019 11:19:10 PDT
Received: from somersetfoodbank.org (cpanel4.indieserve.net [199.212.143.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07C72E00D5F
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2019 11:19:10 -0700 (PDT)
Received: from [216.208.232.130] (port=25800 helo=localhost.localdomain)
	by cpanel4.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>) id 1i8TO4-0002Ms-FS
	for yocto@yoctoproject.org; Thu, 12 Sep 2019 14:00:09 -0400
Date: Thu, 12 Sep 2019 14:00:07 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.21.1909121351260.28723@localhost.localdomain>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-0.2
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel4.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel4.indieserve.net: authenticated_id:
	rpjday+crashcourse.ca/only user confirmed/virtual account not
	confirmed
X-Authenticated-Sender: cpanel4.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: how to generate an SPDX "notice file" from a build?
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
X-List-Received-Date: Thu, 12 Sep 2019 18:19:12 -0000
Content-Type: text/plain; charset=US-ASCII


  colleague just asked how to generate an SPDX license "notice file"
(whatever that is) from a build for a zynq ultrascale+ board, which
shouldn't be hard other than that:

 1) it's not pure YP, it's petalinux
 2) petalinux is being driven by a docker build container

so it may be that one or the other of the above is causing side
effects.

  in any event, i already pointed out how YP automatically generates
all the license info on a per-recipe basis, but there is apparently
some fancier format of SPDX output, so after a few seconds inspection,
i stumbled over the spdx.bbclass file. i added the line:

  INHERIT += "spdx"

to the petalinux version of local.conf, started the build, and noticed
numerous error messages of the form:

  SPDX: Could not set up required directories ... /home/yocto

which i'm *guessing* is due to the docker container having some
default idea of where output files are supposed to go.

  in any event, if the above had worked, what would i have seen and
where would i have seen it?

  more to the point, as i did more research, i noticed a number of
things related to collecting licensing info, such as a
meta-spdxscanner layer, and something called DoSOCSv2, of which i know
nothing.

  anyway, what is the simplest way to generate said "notice file", if
there is a formal definition of such a thing? i'll try that this
evening on a pure YP build just to verify proper operation before
trying to cram it into petalinux.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                         http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

