Return-Path: <quentin.schulz@streamunlimited.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB354E00D7E; Thu,  6 Jun 2019 05:14:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [213.33.87.19 listed in list.dnswl.org]
Received: from bsmtp7.bon.at (bsmtp7.bon.at [213.33.87.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BD1DE009EA
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 05:14:57 -0700 (PDT)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp7.bon.at (Postfix) with ESMTPSA id 45KPjq5YD7z5tlD
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 14:14:55 +0200 (CEST)
Date: Thu, 6 Jun 2019 14:14:54 +0200
From: Quentin Schulz <quentin.schulz@streamunlimited.com>
To: yocto@yoctoproject.org
Message-ID: <20190606121454.tmzqfwn65upqjilu@qschulz>
References: <20190531093143.r6ernips6l3yoevp@qschulz>
MIME-Version: 1.0
In-Reply-To: <20190531093143.r6ernips6l3yoevp@qschulz>
User-Agent: NeoMutt/20180716
Subject: Re: Issue with INCOMPATIBLE_LICENSE
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
X-List-Received-Date: Thu, 06 Jun 2019 12:14:58 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

FYI,

On Fri, May 31, 2019 at 11:31:43AM +0200, Quentin Schulz wrote:
> Hi all,
> 
> We're in the middle of an upgrade to Thud 2.6.2. While doing so, we
> blindly updated all upstream layers we use and we found out (during
> integration phase, no need to send lawyers :) ) that even though we have
> GPLv3 in INCOMPATIBLE_LICENSE, qt5.11 was built.
> 
> conf/local.conf
> INCOMPATIBLE_LICENSE = "GPLv3 GPLv3+ LGPLv3 LGPLv3+"
> 
> https://github.com/meta-qt5/meta-qt5/blob/thud/recipes-qt/qt5/qtbase_git.bb
> LICENSE = "GFDL-1.3 & BSD & ( GPL-3.0 & The-Qt-Company-GPL-Exception-1.0 | The-Qt-Company-Commercial ) & ( GPL-2.0+ | LGPL-3.0 | The-Qt-Company-Commercial )"
> 
> My understanding of the above LICENSE is that even though I have GPLv3
> blacklisted, because I haven't blacklisted The-Qt-Company-Commercial the
> package got built. I'm not really happy with Qt doing that (no warning,
> no LICENSE_FLAGS). Quick question unrelated to the actual important
> question:
> 
> Would it be possible (theoritically, I know you've nothing to do with
> maintenance of meta-qt5; also not tested, just "pseudo-code") to have
> something like:
> python() {
> 	if "GPLv3" in d.getVar('INCOMPATIBLE_LICENSE'):
> 		d.setVar("LICENSE_FLAGS", "commercial")
> }
> 
> so if we are blacklisting GPLv3, we have to add commercial_qtbase to
> LICENSE_FLAGS_WHITELIST to be able to build it.
> 

+ LICENSE_FLAGS = "${@ "commercial" if (incompatible_license_contains('GPL-3.0', True, False, d) or \
+             incompatible_license_contains('The-Qt-Company-GPL-Exception-1.0', True, False, d) or \
+             (incompatible_license_contains('GPL-2.0+', True, False, d) and \       
+              incompatible_license_contains('LGPL-3.0', True, False, d))) \         
+              else ''}"

For qtbase_git.bb seems to work fine.

LICENSE is GFDL-1.3 & BSD & ( GPL-3.0 & The-Qt-Company-GPL-Exception-1.0 | The-Qt-Company-Commercial ) & ( GPL-2.0+ | LGPL-3.0 | The-Qt-Company-Commercial )
So it is commercial if
GPL-3.0 | The-Qt-Company-GPL-Exception-1.0 | (GPL-2.0+ & LGPL-3.0) is
False.

> So now, the actual issue. I've blacklisted The-Qt-Company-Commercial as
> well and qtbase is still building. How so?
> 
> For me, it results in the following:
> LICENSE = "GFDL-1.3 & BSD & ( not-compat & The-Qt-Company-GPL-Exception-1.0 | not-compat ) & ( GPL-2.0+ | LGPL-3.0 | not-compat )"
> which in the end looks like:
> LICENSE = "GFDL-1.3 & BSD & not-compat & ( GPL-2.0+ | LGPL-3.0 | not-compat )"
> which is basically:
> LICENSE = "not-compat"
> 
> Is there an error in this simplification?
> Am I misunderstanding how INCOMPATIBLE_LICENSE is working in Yocto?
> Have I missed something?
> Is there something actually buggy in the INCOMPATIBLE_LICENSE
> implementation?
> 
> Also, please note that I tested with GPL-3.0 in INCOMPATIBLE_LICENSE as
> I wanted to exclude license "aliases" not being supported by
> INCOMPATIBLE_LICENSE (and since it's what's apparently tested from what
> is said in the mega-manual).
> 
> I want to be sure to not be able to build qt >= 5.7, we're never too far
> from an unfortunate upgrade or people in the company not knowing we
> cannot use qt >= 5.7.
> 

FYI, a patch was sent regarding this issue:
http://lists.openembedded.org/pipermail/openembedded-core/2019-June/283266.html

Quentin
-- 
StreamUnlimited Engineering GmbH
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
quentin.schulz@streamunlimited.com, www.streamunlimited.com

