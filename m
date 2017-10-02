Return-Path: <Anders.Montonen@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90BABE00A9C; Mon,  2 Oct 2017 09:49:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [91.232.154.25 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 4867 seconds by postgrey-1.32 at yocto-www;
	Mon, 02 Oct 2017 09:49:01 PDT
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81136E006CA
	for <yocto@yoctoproject.org>; Mon,  2 Oct 2017 09:49:01 -0700 (PDT)
Received: from lakka.kapsi.fi ([2001:1bc8:1004::1] ident=Debian-exim)
	by mail.kapsi.fi with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2) (envelope-from <Anders.Montonen@iki.fi>)
	id 1dz2dN-0001kH-Ew
	for yocto@yoctoproject.org; Mon, 02 Oct 2017 18:27:53 +0300
Received: from antime (helo=localhost)
	by lakka.kapsi.fi with local-esmtp (Exim 4.84_2)
	(envelope-from <Anders.Montonen@iki.fi>) id 1dz2dN-00074K-CU
	for yocto@yoctoproject.org; Mon, 02 Oct 2017 18:27:53 +0300
Date: Mon, 2 Oct 2017 18:27:53 +0300 (EEST)
From: Anders Montonen <Anders.Montonen@iki.fi>
X-X-Sender: antime@lakka.kapsi.fi
To: yocto@yoctoproject.org
Message-ID: <alpine.DEB.2.11.1710021743580.5820@lakka.kapsi.fi>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:1bc8:1004::1
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Subject: sstate and multiconfigs
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
X-List-Received-Date: Mon, 02 Oct 2017 16:49:02 -0000
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII

Hi,

We've been trying out a setup using multiconfigs to select the source 
control branch some set of recipes to build. The building part goes well, 
but whenever we run package-index, the packages built using this scheme 
are deleted.

The basic setup is that we have one multiconfig per branch ('master', 
'staging' etc.) In addition to providing the name of the branch, they are 
also used to configure some variables like PACKAGE_FEED_URIS. Next, we 
have a class that basically looks like this (the 'master' config was 
originally called 'devel'):

"""
def select_branch(d):
     branch = d.getVar('BB_CURRENT_MC', True)
     if branch == 'default' or branch == 'devel':
         branch = 'master'

     if not branch:
         branch = 'master'
     return branch

MC_BRANCH ?= "${@select_branch(d)}"
"""

In the recipe we have something like the following:
inherit git-multiconfig # our class
inherit gitpkgv

SRCREV = "${AUTOREV}"
PV = "${FOO_VERSION}.0+gitr${SRCPV}"
PKGV = "${MC_BRANCH}-${FOO_VERSION}.0+${GITPKGV}"
SRC_URI += "gitsm://git@repo/foo.git;protocol=ssh;branch=${MC_BRANCH}"

As stated above, when a specific recipe is built (bitbake 
multiconfig:master:foo), everything looks fine, but whenever package-index 
is run (with or without multiconfig), all rpms built using this scheme 
will be deleted.

If the MC_BRANCH variable is hardcoded inside the class (eg. changing the 
body of select_branch() to a single return statement) things work as 
expected. Any suggestions on what's going on, and how to fix it (or do it 
in a better way)? The ultimate goal is being able to build multiple 
branches of our project without having to encode or duplicate that 
information, ideally receiving it as a parameter from the CI system.

Regards,
Anders Montonen

