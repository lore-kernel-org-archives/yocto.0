Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CD24E00BAB; Tue, 18 Jul 2017 09:45:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C31AEE00B67
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 09:45:06 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Jul 2017 09:45:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,378,1496127600"; d="scan'208";a="112717785"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.119])
	by orsmga002.jf.intel.com with ESMTP; 18 Jul 2017 09:45:02 -0700
Message-ID: <1500396802.2753.15.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Jimi Damon <jdamon@gmail.com>
Date: Tue, 18 Jul 2017 11:53:22 -0500
In-Reply-To: <a76f0673-66cb-6c0a-8b55-faedf0cc1821@gmail.com>
References: <a76f0673-66cb-6c0a-8b55-faedf0cc1821@gmail.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Proper way to rename a downloaded file in SRC_URI
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
X-List-Received-Date: Tue, 18 Jul 2017 16:45:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2017-07-18 at 09:40 -0700, Jimi Damon wrote:
> I have a recipe that I built for building jzmq, however one of the
> issues I have is with the naming of the release files from the github
> site.
> 
> Unlike czmq which has downloads ( zip and tar.gz ) that are named
> czmq-${PV}.tar.gz, the downloads from jzmq are just called v
> ${PV}.tar.gz. 
> 
> 
> 
> How can I rename this file upon download so that the filename is in
> fact unique to this package ? 

at the SRC_URI value, you may use the downloadfilename standard option.

http://www.yoctoproject.org/docs/2.3/mega-manual/mega-manual.html#var-SRC_URI



> 
> 
> I can definitely see that the file v3.1.0.tar.gz in my downloads
> directory is not unique and could conflict with another package that
> is similarly named for its releases.
> 
> 
> My workaround right now is to use the specific SHA string and use the
> git:// protocol, but it would be a bit easier to just use the released
> version and change the filename for saving it in downloads.
> 
> 
> 
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



