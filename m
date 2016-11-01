Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC474E00CB6; Tue,  1 Nov 2016 01:59:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EC67E00C71
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 01:59:09 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20161101085907337_0486
	for <yocto@yoctoproject.org>; Tue, 01 Nov 2016 08:59:07 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [216.191.234.70] (port=23820 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1c1UuL-0001Es-AC
	for yocto@yoctoproject.org; Tue, 01 Nov 2016 04:59:01 -0400
Date: Tue, 1 Nov 2016 04:57:59 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@ca624034.mitel.com
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1611010455040.19781@ca624034.mitel.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: why do some openstack layer.conf files add classes to BBFILES?
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
X-List-Received-Date: Tue, 01 Nov 2016 08:59:10 -0000
Content-Type: text/plain; charset=US-ASCII


  just noticed the following property for a bunch of the openstack
layers at:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-cloud-services/tree/

some of the layer.conf files contain the line:

BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend ${LAYERDIR}/classes/*.bbclass"

why is the classes/ directory being appended to BBFILES? i thought the
purpose of BBPATH was to contain locations of .conf and .bbclass
files. i'm puzzled by the above.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


