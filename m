Return-Path: <quentin.schulz@streamunlimited.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C577E00D61; Fri, 31 May 2019 03:21:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [213.33.87.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2986 seconds by postgrey-1.32 at yocto-www;
	Fri, 31 May 2019 03:21:31 PDT
Received: from bsmtp8.bon.at (bsmtp8.bon.at [213.33.87.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1AF2E00B65
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 03:21:31 -0700 (PDT)
Received: from bsmtp7.bon.at (unknown [192.168.181.104])
	by bsmtp8.bon.at (Postfix) with ESMTPS id 45FfNK3J2Tz5tmQ
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 11:31:45 +0200 (CEST)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp7.bon.at (Postfix) with ESMTPSA id 45FfNJ2LPcz5tlC
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 11:31:44 +0200 (CEST)
Date: Fri, 31 May 2019 11:31:43 +0200
From: Quentin Schulz <quentin.schulz@streamunlimited.com>
To: yocto@yoctoproject.org
Message-ID: <20190531093143.r6ernips6l3yoevp@qschulz>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
Subject: Issue with INCOMPATIBLE_LICENSE
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
X-List-Received-Date: Fri, 31 May 2019 10:21:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

We're in the middle of an upgrade to Thud 2.6.2. While doing so, we
blindly updated all upstream layers we use and we found out (during
integration phase, no need to send lawyers :) ) that even though we have
GPLv3 in INCOMPATIBLE_LICENSE, qt5.11 was built.

conf/local.conf
INCOMPATIBLE_LICENSE = "GPLv3 GPLv3+ LGPLv3 LGPLv3+"

https://github.com/meta-qt5/meta-qt5/blob/thud/recipes-qt/qt5/qtbase_git.bb
LICENSE = "GFDL-1.3 & BSD & ( GPL-3.0 & The-Qt-Company-GPL-Exception-1.0 | The-Qt-Company-Commercial ) & ( GPL-2.0+ | LGPL-3.0 | The-Qt-Company-Commercial )"

My understanding of the above LICENSE is that even though I have GPLv3
blacklisted, because I haven't blacklisted The-Qt-Company-Commercial the
package got built. I'm not really happy with Qt doing that (no warning,
no LICENSE_FLAGS). Quick question unrelated to the actual important
question:

Would it be possible (theoritically, I know you've nothing to do with
maintenance of meta-qt5; also not tested, just "pseudo-code") to have
something like:
python() {
	if "GPLv3" in d.getVar('INCOMPATIBLE_LICENSE'):
		d.setVar("LICENSE_FLAGS", "commercial")
}

so if we are blacklisting GPLv3, we have to add commercial_qtbase to
LICENSE_FLAGS_WHITELIST to be able to build it.

So now, the actual issue. I've blacklisted The-Qt-Company-Commercial as
well and qtbase is still building. How so?

For me, it results in the following:
LICENSE = "GFDL-1.3 & BSD & ( not-compat & The-Qt-Company-GPL-Exception-1.0 | not-compat ) & ( GPL-2.0+ | LGPL-3.0 | not-compat )"
which in the end looks like:
LICENSE = "GFDL-1.3 & BSD & not-compat & ( GPL-2.0+ | LGPL-3.0 | not-compat )"
which is basically:
LICENSE = "not-compat"

Is there an error in this simplification?
Am I misunderstanding how INCOMPATIBLE_LICENSE is working in Yocto?
Have I missed something?
Is there something actually buggy in the INCOMPATIBLE_LICENSE
implementation?

Also, please note that I tested with GPL-3.0 in INCOMPATIBLE_LICENSE as
I wanted to exclude license "aliases" not being supported by
INCOMPATIBLE_LICENSE (and since it's what's apparently tested from what
is said in the mega-manual).

I want to be sure to not be able to build qt >= 5.7, we're never too far
from an unfortunate upgrade or people in the company not knowing we
cannot use qt >= 5.7.

Thanks,
Quentin
-- 
StreamUnlimited Engineering GmbH
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
quentin.schulz@streamunlimited.com, www.streamunlimited.com

