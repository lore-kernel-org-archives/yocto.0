Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62109E00C45; Tue,  5 Sep 2017 22:10:52 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AA2FE00BB7
	for <yocto@yoctoproject.org>; Tue,  5 Sep 2017 22:10:50 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Sep 2017 22:10:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,482,1498546800"; d="scan'208";a="1169497803"
Received: from melvinsw-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.142.30])
	by orsmga001.jf.intel.com with ESMTP; 05 Sep 2017 22:10:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Seilis, Aaron" <aseilis@ciena.com>
Date: Wed, 06 Sep 2017 17:10:41 +1200
Message-ID: <5926875.TZvl98q0CH@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <2b24bf6d-84bb-b420-af92-d9ffc406531f@linux.intel.com>
References: <SN4PR0401MB3599F4AAECE68D38EDEF8C4CBD9D0@SN4PR0401MB3599.namprd04.prod.outlook.com>
	<2b24bf6d-84bb-b420-af92-d9ffc406531f@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Building Custom Python 3 Packages
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
X-List-Received-Date: Wed, 06 Sep 2017 05:10:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday, 2 September 2017 12:42:09 AM NZST Alexander Kanavin wrote:
> On 08/31/2017 04:54 PM, Seilis, Aaron wrote:
> > This clearly indicates that the issue is that the build is looking
> > for setup.py in the ${B} location, but it is only present in the ${S}
> > location when `devtool modify` has been run. I have tried setting
> > ${B} to ${S} explicitly in the recipe, but this doesn't result in
> > ${B} being changed when I run `bitbake -e mytool`. I could always
> > copy ${S} to ${B} in the recipe, but that seems a bit hack-ish.
> > 
> > Did I miss something or is there another way that Python builds are
> > intended to work?
> 
> I think this might be a limitation of setuptools: they do not support 
> out-of-tree builds (which is a must for devtool modify'). If you can 
> figure out how to solve it, that would be nice!

devtool modify does not require out-of-tree builds - I think in this instance 
it's assuming that's OK, and it's supposed to be following what the recipe 
originally used so that may be a bug. The workaround is to tell it to use the 
same directory with the -s/--same-dir option.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

