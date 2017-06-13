Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98864E00ACF; Tue, 13 Jun 2017 12:23:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F283E00888
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 12:23:30 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Jun 2017 12:23:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,339,1493708400"; d="scan'208";a="114475773"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.119])
	by fmsmga006.fm.intel.com with ESMTP; 13 Jun 2017 12:23:28 -0700
Message-ID: <1497382345.23013.6.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Jimi Damon <jdamon@gmail.com>
Date: Tue, 13 Jun 2017 14:32:25 -0500
In-Reply-To: <8d6fe5c7-dbfa-7a17-071c-1330cdf3a672@gmail.com>
References: <8d6fe5c7-dbfa-7a17-071c-1330cdf3a672@gmail.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Preventing a package from building
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
X-List-Received-Date: Tue, 13 Jun 2017 19:23:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2017-06-13 at 11:32 -0700, Jimi Damon wrote:
> Hi,
> 
> 
> I tried using the PACKAGE_EXCLUDE = "chromium" in my local.conf file
> but I'm finding that my build it is still trying to build this
> package.
> 
is it on your image? at the end, this variable is to exclude the package
on the resulting image/rootfs.

> 
> Is there a way to prevent this build stage from occurring ? 
> 
> 
> 
> Thanks
> 
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



