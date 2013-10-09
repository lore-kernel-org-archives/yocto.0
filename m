Return-Path: <flihp@longhaul.twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F163BE011C5
	for <yocto@yoctoproject.org>; Tue,  8 Oct 2013 20:02:28 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=longhaul.twobit.us)
	by www.twobit.us with esmtpsa (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.72) (envelope-from <flihp@longhaul.twobit.us>)
	id 1VTk2b-0007bA-QG; Wed, 09 Oct 2013 03:02:26 +0000
Date: Wed, 9 Oct 2013 03:02:20 +0000
From: flihp@longhaul.twobit.us
To: yocto@yoctoproject.org
Message-ID: <20131009030220.GC6721@longhaul.twobit.us>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@longhaul.twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
X-Mailman-Approved-At: Wed, 09 Oct 2013 07:14:49 -0700
Subject: [meta-selinux][PATCH 0/5] Remove python dependency from refpol.
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
X-List-Received-Date: Wed, 09 Oct 2013 03:02:29 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The reference policy package currently pulls in a lot of python stuff
that isn't strictly necessary to boot an SELinux system and load a
policy. This is caused by the mix of python and C utilities in
policycoreutils.

This patch set breaks the policycoreutils recipe up into multiple
packages, one for each utility. In this way we can have the refpol etc
pull in only the utilities necessary for normal operation. This happens
to be only the utilities written in C and thus we can remove python
completely in a minimal image.

I've attempted to localize these changes as much as possible so changes
in this patchset outside of the policycoreutils recipe are few. An
example image reicpe is added to demonstrate a minimal image with only
the utilities required to load a policy and manipulate the policy store
(add / remove policy modules) at runtime.

