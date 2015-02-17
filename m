Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81EBFE0080C; Tue, 17 Feb 2015 10:44:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66A31E00777
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 10:43:55 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 17 Feb 2015 10:39:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,595,1418112000"; d="scan'208";a="679290122"
Received: from choran1-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.18.31])
	by fmsmga002.fm.intel.com with ESMTP; 17 Feb 2015 10:43:53 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 17 Feb 2015 18:43:52 +0000
Message-ID: <2059386.8uO0i5iX6F@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.6-100.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <54E38A04.7080904@windriver.com>
References: <54E37552.9020108@windriver.com>
	<1236436647.5527082.1424197877103.JavaMail.yahoo@mail.yahoo.com>
	<54E38A04.7080904@windriver.com>
MIME-Version: 1.0
Subject: Re: meta-oracle-java error when building a recipe
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
X-List-Received-Date: Tue, 17 Feb 2015 18:44:04 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 17 February 2015 13:35:48 Bruce Ashfield wrote:
> On 15-02-17 01:31 PM, Alexandru Vaduva wrote:
> > I am building for an arm v7.
> 
> So I presume that you noticed in
> recipes-devtools/oracle-java/oracle-jse-jdk_1.7.0.bb
> 
> The following:
> 
> -----
> 
> # Automatically choose java package based on target architecture
> def get_java_pkg(d):
>         TA = d.getVar('TARGET_ARCH', True)
>         if TA == "i586":
>                 javaPkg = "oracle-jse-jdk-i586"
>         elif TA == "x86_64":
>                 javaPkg = "oracle-jse-jdk-x86-64"
>         else:
>                 raise bb.parse.SkipPackage("The target architecture '%s'
> is not supported by the meta-oracle-java layer" %TA)
> 
>         return javaPkg
> 
> ----
> 
> Unless someone extends arch support to ARMv7, that skip is going to
> persist.

Not showing this message in the error is probably a bug that we should fix, 
though. It probably has something to do with how/where the exception is being 
raised.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

