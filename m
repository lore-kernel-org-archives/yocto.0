Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EB1BE00744; Wed,  9 Jul 2014 02:33:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA2B3E00547
	for <yocto@yoctoproject.org>; Wed,  9 Jul 2014 02:33:43 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1X4oFx-0005nx-Tf
	for yocto@yoctoproject.org; Wed, 09 Jul 2014 11:33:41 +0200
Received: from ppp005054025236.access.hol.gr ([5.54.25.236])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 09 Jul 2014 11:33:41 +0200
Received: from gmane by ppp005054025236.access.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 09 Jul 2014 11:33:41 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 09 Jul 2014 12:33:15 +0300
Message-ID: <53BD0C5B.3090506@reliableembeddedsystems.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp005054025236.access.hol.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
Subject: automated hardware testing
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
X-List-Received-Date: Wed, 09 Jul 2014 09:33:53 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I just noticed this [1] and there are rumors that in the next release
hardware testing will also work with yocto-autobuilder.

I do have a couple of boards deployer in my lab and build with
autobuilder images for them.

The consoles of my boards are connected via conservers to ethernet and I
can also remotely switch on/off power.

For the beagle bone white the setup is more complex in order to press
the reset button remotely and turn on/off the power over the USB cable
remotely.

My goal would be to build something with autobuilder, deploy to a board
and run some tests.

Is this feasible with my current infrastructure?
Can someone please guide me in the right directions.

Regards,

Robert

[1]
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-yocto-bsp/lib/oeqa/controllers/beaglebonetarget.py...I
read the system requirements label on a software package recently. It
said "requires Windows NT or better". So I installed Unix. -- from a FAQ

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



