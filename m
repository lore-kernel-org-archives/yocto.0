Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F68EE009D9; Fri, 22 May 2015 06:38:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31AA5E00974
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 06:38:44 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 22 May 2015 06:38:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,475,1427785200"; d="scan'208";a="733740751"
Received: from cestaunt-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.15.40])
	by orsmga002.jf.intel.com with ESMTP; 22 May 2015 06:38:42 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto yocto <yoctomailinglist@gmail.com>
Date: Fri, 22 May 2015 14:38:41 +0100
Message-ID: <4792880.eGFBxyPvtt@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/3.19.7-200.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <CACTu1Lg3uRw5UtXcJ4==DTuA4PK2D93G+yMJViZsGDh=+eFARQ@mail.gmail.com>
References: <CACTu1LijXDjHx-1065KrogZgyLTCSPur3dC4sbA6Qq1pkDz0Wg@mail.gmail.com>
	<1590487.Reks4r8brD@peggleto-mobl.ger.corp.intel.com>
	<CACTu1Lg3uRw5UtXcJ4==DTuA4PK2D93G+yMJViZsGDh=+eFARQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to enable php5 (php_5.5.24.bb) support for postgresql
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
X-List-Received-Date: Fri, 22 May 2015 13:38:47 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 22 May 2015 15:34:50 yocto yocto wrote:
> Thanks for helping me. My *.bbappend looks now like this:
> 
> PACKAGECONFIG_append_class-target = " pgsql"
> 
> "bitbake php" results now in:
> 
> ERROR: This autoconf log indicates errors, it looked at host include and/or
> library paths while determining system capabilities.
> Rerun configure task after fixing this. The path was
> '[...]/core2-32-poky-linux/php/5.5.24-r0/php-5.5.24'

Can you please attach the full log.do_configure?

> From the recipe I can see that
> 
> do_configure_prepend
> do_configure_append
> 
> exist. For test purposes I added an empty
> 
> do_configure () {
> }
> 
> This results in
> 
> ERROR: Function failed: do_install
> (Much text)
>  cp: cannot stat 'ltmain.sh': No such file or directory
> (Much text)
> ERROR: oe_runmake failed

This is not an appropriate workaround - you can't just cut pieces of the build 
out like this.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

