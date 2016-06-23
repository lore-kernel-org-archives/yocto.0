Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6929E00C2D; Thu, 23 Jun 2016 04:13:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.206.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp685.redcondor.net (smtp685.redcondor.net [208.80.206.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AEA5E00C1F
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 04:13:26 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20160623111323476_0685
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 04:13:23 -0700
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=44526 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1bG2bD-0005SH-GV
	for yocto@yoctoproject.org; Thu, 23 Jun 2016 07:15:07 -0400
Date: Thu, 23 Jun 2016 07:12:43 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1606230705420.5826@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: what is "core-image-testmaster.bb" supposed to do?
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
X-List-Received-Date: Thu, 23 Jun 2016 11:13:29 -0000
Content-Type: text/plain; charset=US-ASCII


  first question related to building an installer -- how is one
supposed to use the recipe core-image-testmaster.bb?

  i've already noted (i think) that it has a bug in that it uses the
old (obsolete) variable INITRD_IMAGE, whereas the old occurrences of
that were changed to either INITRD_IMAGE_VM or INITRD_IMAGE_LIVE. so
it seems pretty clear that that recipe doesn't work at the moment.

  however, if it *did* work, how would one use it? it appears that it
builds both a simple initramfs, as well as a standard image. so would
it boot to the initramfs, and use the installation tools there to
install using the content from the standard image? is that what is
supposed to be going on there? or am i misreading this?

  in any event, it doesn't appear to work, and i get the feeling it's
probably overkill for my needs, but i'm still curious as to how one
would use it.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


