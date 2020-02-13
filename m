Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.181.1581615307148615064
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2020 09:35:07 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9485DE016E8; Thu, 13 Feb 2020 09:35:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=BAYES_00,SUBJ_OBFU_PUNCT_FEW,
	SUBJ_OBFU_PUNCT_MANY autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.7 SUBJ_OBFU_PUNCT_FEW Possible punctuation-obfuscated Subject: header
	*  1.7 SUBJ_OBFU_PUNCT_MANY Punctuation-obfuscated Subject: header
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66AE2E01589
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2020 09:35:05 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:55484 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j2IOG-003PRj-8N
	for yocto@yoctoproject.org; Thu, 13 Feb 2020 12:35:04 -0500
Date: Thu, 13 Feb 2020 12:35:02 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: should all "IMAGE_INSTALL +=" become "IMAGE_INSTALL_append"?
Message-ID: <alpine.LFD.2.21.2002131230260.2835172@localhost.localdomain>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel7.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel7.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel7.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII


  again, some nitpickiness, but in the current YP dev manual, section
3.2.1, the manual is quite explicit about using "_append" with
IMAGE_INSTALL:

"Furthermore, you must use _append instead of the += operator if you
want to avoid ordering issues."

  the way that's worded, that's not just a recommendation, it's a
pretty clear directive to the reader, which flies in the face of an
admittedly small number of examples of that in current OE:

$ grep -r "IMAGE_INSTALL +=" *
meta/recipes-sato/images/core-image-sato-ptest-fast.bb:IMAGE_INSTALL += "${PTESTS_FAST}"
meta/recipes-sato/images/core-image-sato-sdk-ptest.bb:IMAGE_INSTALL += "${PTESTS_FAST} ${PTESTS_SLOW}"
meta/recipes-sato/images/core-image-sato-sdk.bb:IMAGE_INSTALL += "kernel-devsrc"
meta/recipes-extended/images/core-image-testmaster.bb:IMAGE_INSTALL += "\
meta/recipes-rt/images/core-image-rt-sdk.bb:IMAGE_INSTALL += "rt-tests hwlatdetect kernel-dev"
meta/recipes-rt/images/core-image-rt.bb:IMAGE_INSTALL += "rt-tests hwlatdetect"
meta/recipes-core/images/core-image-minimal-mtdutils.bb:IMAGE_INSTALL += "mtd-utils"
meta-selftest/recipes-test/container-image/container-test-image.bb:IMAGE_INSTALL += "container-image-testpkg"
meta-skeleton/recipes-multilib/images/core-image-multilib-example.bb:IMAGE_INSTALL += "lib32-bash"
$

  i'm fine leaving things as is, but those few examples clearly fly in
the face of the instruction given in the dev manual.

  thoughts?

rday
