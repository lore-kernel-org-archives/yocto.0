Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B715AE00BAB; Tue, 18 Jul 2017 09:47:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1CADE00B67
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 09:47:21 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Jul 2017 09:47:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,378,1496127600"; d="scan'208";a="128845790"
Received: from amaassen-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.38.157])
	by fmsmga006.fm.intel.com with ESMTP; 18 Jul 2017 09:47:18 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jimi Damon <jdamon@gmail.com>
Date: Tue, 18 Jul 2017 18:47:17 +0200
Message-ID: <2422545.nWWoaJmrU0@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <a76f0673-66cb-6c0a-8b55-faedf0cc1821@gmail.com>
References: <a76f0673-66cb-6c0a-8b55-faedf0cc1821@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 18 Jul 2017 16:47:22 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jimi,

On Tuesday, 18 July 2017 6:40:52 PM CEST Jimi Damon wrote:
> I have a recipe that I built for building jzmq, however one of the 
> issues I have is with the naming of the release files from the github site.
> 
> Unlike czmq which has downloads ( zip and tar.gz ) that are named 
> czmq-${PV}.tar.gz, the downloads from jzmq are just called v${PV}.tar.gz.
> 
> How can I rename this file upon download so that the filename is in fact 
> unique to this package ?

Use the downloadfilename parameter e.g. (made up URL):

SRC_URI = "http://github.com/jzmq/download/v${PV}.tar.gz;downloadfilename=${PN}-${PV}.tar.gz"

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

