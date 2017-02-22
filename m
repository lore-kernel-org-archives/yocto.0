Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40AF3E00524; Wed, 22 Feb 2017 03:58:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.206.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp685.redcondor.net (smtp685.redcondor.net [208.80.206.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 521AAE003D7
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2017 03:58:38 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20170222115836799_0685
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2017 03:58:36 -0800
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [216.191.234.70] (port=25260 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1cgVZ0-0001kQ-Kr
	for yocto@yoctoproject.org; Wed, 22 Feb 2017 06:58:30 -0500
Date: Wed, 22 Feb 2017 06:58:27 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@uk63952.mitel.com
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1702210921290.9024@uk63952.mitel.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: Section 5.10.6, current YP reference manual, "default working directory"
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
X-List-Received-Date: Wed, 22 Feb 2017 11:58:40 -0000
Content-Type: text/plain; charset=US-ASCII


just noticed this in ref manual:

  "${B} is no longer the default working directory for tasks.
  Consequently, any custom tasks you define now need to either have
  the [dirs] flag set, or the task needs to change into the appropriate
  working directory manually (e.g using cd for a shell task)."

  Note

    The preferred method is to use the [dirs] flag.

except it was just recently that ross burton(?) pointed me at OE's
base.bbclass to see the default working directory for at least the
most fundamental tasks:

  $ grep "\[dirs\]" base.bbclass
  do_fetch[dirs] = "${DL_DIR}"
  do_unpack[dirs] = "${WORKDIR}"
  do_configure[dirs] = "${B}"
  do_compile[dirs] = "${B}"
  do_install[dirs] = "${B}"
  $

so, *technically*, that claim in the ref manual is not wholly true;
there are still a small number of tasks that use that default
directory. is that a distinction worth making in the reference manual?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


