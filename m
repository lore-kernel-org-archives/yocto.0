Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8170E00D7E; Wed,  4 Oct 2017 18:48:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 691A0E00D75
	for <yocto@yoctoproject.org>; Wed,  4 Oct 2017 18:48:00 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Oct 2017 18:47:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,479,1500966000"; d="scan'208";a="1178794916"
Received: from mhrasooi-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.135.159])
	by orsmga001.jf.intel.com with ESMTP; 04 Oct 2017 18:47:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Aaron_Wright@selinc.com
Date: Thu, 05 Oct 2017 14:47:50 +1300
Message-ID: <1681586.rUkS85rcXk@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <OFAC655E34.B4B3A1E0-ON882581AF.007C1B86-882581AF.007DD7C9@selinc.com>
References: <OFAC655E34.B4B3A1E0-ON882581AF.007C1B86-882581AF.007DD7C9@selinc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: local fetcher and devtool don't work well together
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
X-List-Received-Date: Thu, 05 Oct 2017 01:48:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Aaron,

On Thursday, 5 October 2017 11:54:32 AM NZDT Aaron_Wright@selinc.com wrote:
> I have a recipe with:
> 
> SRC_URI = "file://a/b/c/d;subdir=src"
> S = "${WORKDIR}/src/a/b/c/d"
> 
> First off, ${S} must be set to the full path because the basepath uri 
> parameter[1] doesn't work. So this doesn't work:
> 
> SRC_URI = "file://a/b/c/d;subdir=src;basepath=a/b/c/d"
> S = "${WORKDIR}/src"
> 
> I wish it would, but that's ok. I can deal with the long ${S} path as it 
> compiles and works fine with bitbake. 

My question would be what are you trying to achieve here? Should you be using
the externalsrc class perhaps?

  http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#building-software-from-an-external-source

> However, it doesn't work with 
> devtool:
> 
> $ devtool modify -n d ~/mysrc/a/b/c/d
> NOTE: Creating workspace layer in <... snip 
> ...>/yocto/poky/build/workspace
> NOTE: Enabling workspace layer in bblayers.conf
> Parsing recipes..done.
> NOTE: Recipe d now set up to build from ~/mysrc/a/b/c/d/b/c/d
> 
> Where is the extra 'b/c/d' coming from in where it will be built from? 
> This directory is reflected in the bbappends created the workspace:
> 
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> FILESPATH_prepend := "~/mysrc/a/b/c/d/b/c/d/oe-local-files:"
>
> Is it possible to have a ${S} of "${WORKDIR}/src" in this situation?
> How can I get devtool to behave and not duplicate the path?

The ~ shouldn't be in the value of FILESPATH, it ought to be expanded, so
that's something we need to fix. With regard to the path doubling of the
subdirectories, it's assuming that because you have that subdirectory path in
S then you need that underneath the specified source directory (since that is
usually true if you were for example pointing to a checkout of a git
repository, or an extracted source tarball).

devtool hasn't been written to handle this usage (which is unusual - typically
the recipe is pointing at remote source). It would be good to get an
understanding of your use case here so we can figure out where to go from
here.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

