Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83336E00C62; Thu, 17 Sep 2015 01:43:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.86.89.66 listed in list.dnswl.org]
Received: from elasmtp-spurfowl.atl.sa.earthlink.net
	(elasmtp-spurfowl.atl.sa.earthlink.net [209.86.89.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5039E00C11
	for <yocto@yoctoproject.org>; Thu, 17 Sep 2015 01:43:54 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=aP58OPRHmAIu1IzhNQQvcTTMYAZY9wK33kD/CT3SsuaLCB7JcbaTMn/GVJSjFvSc;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-spurfowl.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1ZcUn9-0003jM-LX
	for yocto@yoctoproject.org; Thu, 17 Sep 2015 04:43:43 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Thu, 17 Sep 2015 01:43:49 -0700
Message-ID: <F910B263ECB448E1AC8D102E657367D2@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdDxJPkhdl3FCYGzQ0q7x2MdTfU5OQ==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606881ee1267e665e9ab8a51e5fd740ef5ea9350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Pushbutton poweroff
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
X-List-Received-Date: Thu, 17 Sep 2015 08:43:55 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm using Fido to create an Atom-based embedded system using systemd. The
last version of this system (based on Dylan) worked fine, but in this one
the power button doesn't initiate a poweroff. In the systemd area, I only
see two differences:

1) The new poweroff.target includes JobTimeoutSec=30min and
JobTimeoutAction=poweroff-force in the [Unit] section. That looks
reasonable.

2) The new system has a poweroff.target.wants containing a
systemd-update-utmp-runlevel.service. Not sure what this is, but it
doesn't smell like the problem.

The systemd-poweroff.service is the same in both systems. Starting that
service does indeed power the system off.

I thought systemd was supposed to replace the ACPI daemon, but acpid is
running.

Could this be a kernel config issue? The old system used 3.8 and the new
one uses 3.14, so their .config files have hundreds of differences.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


