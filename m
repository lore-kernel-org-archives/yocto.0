Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9562E009C3; Fri,  3 Mar 2017 03:49:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97F19E0094C
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 03:49:42 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20170303114940889_0486
	for <yocto@yoctoproject.org>; Fri, 03 Mar 2017 11:49:40 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [216.191.234.70] (port=21197 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cjliJ-0006TE-5M
	for yocto@yoctoproject.org; Fri, 03 Mar 2017 06:49:35 -0500
Date: Fri, 3 Mar 2017 06:49:33 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@uk63952.mitel.com
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1703030646270.9739@uk63952.mitel.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: BSP Guide: what means "bsp_name.conf"?
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
X-List-Received-Date: Fri, 03 Mar 2017 11:49:46 -0000
Content-Type: text/plain; charset=US-ASCII


  in section 1.2.9:

"Suppose you are using the linux-yocto_4.4.bb recipe to build the
kernel. In other words, you have selected the kernel in your
bsp_name.conf file by adding these types of statements: ..."
^^^^^^^^^^^^^

  um ... what? and just below that:

"Note
 When the preferred provider is assumed by default, the
 PREFERRED_PROVIDER statement does not appear in the bsp_name.conf
 file.                                               ^^^^^^^^^^^^^

  can i assume those should read "machine.conf"? because i have no
idea what "bsp_name.conf" refers to as it is.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


