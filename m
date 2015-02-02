Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A51BE008BC; Mon,  2 Feb 2015 08:42:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41D4EE008CC
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 08:41:57 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Feb 2015 08:38:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,507,1418112000"; d="scan'208";a="679751089"
Received: from bbodonog-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.3.158])
	by orsmga002.jf.intel.com with ESMTP; 02 Feb 2015 08:41:56 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
Date: Mon, 02 Feb 2015 16:41:55 +0000
Message-ID: <1549714.p2uxOlTH7e@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3A33DC69@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3A33DC69@AZ-FFEXMB01.global.avaya.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Need help for custom recipe
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
X-List-Received-Date: Mon, 02 Feb 2015 16:42:06 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Abhinav,

On Monday 02 February 2015 14:04:49 Bipnesh, Abhinav wrote:
> I am trying to write an custom recipe for one of the application. In the
> do_install() I am using an external script for creating rpm of the
> application. Below is the recipe file which I have written.
> 
> SUMMARY = "Hello World"
> DESCRIPTION = "A recipe for HelloWorld"
> 
> LICENSE = "MIT"
> LIC_FILES_CHKSUM =
> file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302<file:
> ///\\$%7bCOMMON_LICENSE_DIR%7d\MIT;md5=0835ade698e0bcf8506ecda2f7b4f302>
> 
> # Upstream names releases after SVN revs
> #SRCREV = "100"
> SRCREV = "${AUTOREV}"
> PV = "r${SRCREV}"
> DEPENDS = "boost util-linux curl"
> 
> SRC_URI = "file://helloworld.c"
> S = "${WORKDIR}
> 
> do_install () {
>     sh ${WORKDIR}/ build.sh
> 
> }
> 
> Now as this is a makefile based project. Now when I fire bitbake helloworld
> I am able to build the RPM of the package using build.sh file.
> 
> But when I try to check these RPM under <build_dir>/tmp/deploy it is not
> found.

My first question is why do you need to create the RPMs in a custom manner like 
this? By doing so you are bypassing quite a lot of well-tested logic that we 
have written around packaging.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

