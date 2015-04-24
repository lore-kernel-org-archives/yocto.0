Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9FAAE00961; Fri, 24 Apr 2015 10:44:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2EF4E0086D
	for <yocto@yoctoproject.org>; Fri, 24 Apr 2015 10:44:19 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 24 Apr 2015 10:43:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,641,1422950400"; d="scan'208";a="700471701"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.5.2])
	by fmsmga001.fm.intel.com with ESMTP; 24 Apr 2015 10:43:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Matt Schuckmann <Matt.Schuckmann@planar.com>
Date: Fri, 24 Apr 2015 18:43:51 +0100
Message-ID: <1457054.RBgOP8SWE8@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <4B07ADD556F70043925DA2E9C5D4346D2FDCA58BA6@MSXBEBVT12.planar.net>
References: <4B07ADD556F70043925DA2E9C5D4346D2FDCA58B01@MSXBEBVT12.planar.net>
	<2862088.RI0PdWmfLM@peggleto-mobl.ger.corp.intel.com>
	<4B07ADD556F70043925DA2E9C5D4346D2FDCA58BA6@MSXBEBVT12.planar.net>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Strange error trying to use externalsrc
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
X-List-Received-Date: Fri, 24 Apr 2015 17:44:24 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 24 April 2015 09:10:58 Matt Schuckmann wrote:
> > -----Original Message-----
> > From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > Sent: Thursday, April 23, 2015 5:20 PM
> > To: Matt Schuckmann
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] Strange error trying to use externalsrc
> > 
> > On Thursday 23 April 2015 12:37:30 Matt Schuckmann wrote:
> > > I'm trying to use the externalsrc class to make it easier build an
> > > application under active development.
> > > 
> > > I'm working off of the Dylan branch.
> > > 
> > > If I add the following 2 lines to my site.conf
> > > 
> > > INHERIT += "externalsrc"
> > > S_pn-keypadd = "/home/dev/builds/zanzibar/keypadd"
> > > 
> > > I get the following error when I try to build the keypadd recipe.
> > > 
> > > ERROR: Function failed: gnu-config-native: LIC_FILES_CHKSUM points to
> > > an invalid file:
> > > /home/dev/builds/zanzibar/tisdk/zanzibar/build/arago-tmp-external-
> > 
> > lina
> > 
> > > ro-to
> > > olchain/work/i686-linux/gnu-config-native/20120814-r0/gnu-config-
> > 
> > 20120
> > 
> > > 814/co nfig.guess ERROR: Logfile of failure stored in:
> > > /home/dev/builds/zanzibar/tisdk/zanzibar/build/arago-tmp-external-
> > 
> > lina
> > 
> > > ro-to
> > > olchain/work/i686-linux/gnu-config-native/20120814-
> > 
> > r0/temp/log.do_configure.
> > 
> > > 11698
> > > 
> > > Log data follows:
> > > | DEBUG: Executing python function sysroot_cleansstate
> > > | DEBUG: Python function sysroot_cleansstate finished
> > > | DEBUG: Executing shell function do_configure
> > > | DEBUG: Shell function do_configure finished
> > > | DEBUG: Executing python function do_qa_configure
> > > | NOTE: Checking autotools environment for common misconfiguration
> > > | DEBUG: Python function do_qa_configure finished
> > > | ERROR: Function failed: gnu-config-native: LIC_FILES_CHKSUM points
> > > | to an invalid file:
> > > | /home/dev/builds/zanzibar/tisdk/zanzibar/build/arago-tmp-external-
> > 
> > li
> > 
> > > | naro-
> > > | toolchain/work/i686-linux/gnu-config-native/20120814-r0/gnu-config-
> > 
> > 2
> > 
> > > | 012081
> > > | 4/config.guess
> > > 
> > > ERROR: Task 26
> > > (virtual:native:/home/dev/builds/zanzibar/tisdk/zanzibar/sources/oe-
> > 
> > co
> > 
> > > re/me ta/recipes-devtools/gnu-config/gnu-config_20120814.bb,
> > > do_configure) failed with exit code '1'
> > > 
> > > 
> > > The keypadd recipe is marked as CLOSED but I've also tried MIT and
> > > GPL. I've even added a license file and MD5 checksum. Interestingly
> > > externalsrc seems to work if I add these 2 lines to the recipe.
> > > 
> > > inherit externalsrc
> > > S = "/home/dev/builds/zanzibar/keypadd"
> > > 
> > > But I don't want to have to edit the recipe every time I want to
> > > switch to building from a local directory.
> > > 
> > > Any suggestions as to what is wrong?
> > 
> > Don't set S to specify the path to the external source tree - set
> > EXTERNALSRC instead, or otherwise externalsrc.bbclass's actual
> > functionality isn't active.
> 
> Thanks for the reply Paul, but the Dylan (1.4) manual says to set S, also
> the externalsrc.bbclass for Dylan doesn't reference EXTERNALSRC.
> http://www.yoctoproject.org/docs/1.4/dev-manual/dev-manual.html#building-so
> ftware-from-an-external-source
> https://github.com/openembedded/oe-core/blob/dylan/meta/classes/externalsrc
> .bbclass

Ah, right, dylan - yes things were a bit different in that version. It's 
possible it didn't work very well in that version, I don't remember - strictly 
speaking we don't support dylan anymore.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

