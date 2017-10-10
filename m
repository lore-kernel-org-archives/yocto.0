Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB3ACE00A9C; Tue, 10 Oct 2017 14:16:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C01C5E006CA
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 14:16:14 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Oct 2017 14:16:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,359,1503385200"; d="scan'208";a="161616358"
Received: from anusyirw-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.132.95])
	by fmsmga006.fm.intel.com with ESMTP; 10 Oct 2017 14:16:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Date: Wed, 11 Oct 2017 10:16:07 +1300
Message-ID: <4335149.ZQHvdiGDWE@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <85ad132a2f884b56ad55f81e78d6ed2c@sakuraus.com>
References: <c69919c2a00f4b6f8b9f00b46d848839@sakuraus.com>
	<CAJTo0LYK-f5C4LcRp0dtOoDdMoF_zBhoqZnptYTTpq1GjVfjQA@mail.gmail.com>
	<85ad132a2f884b56ad55f81e78d6ed2c@sakuraus.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: errors in recipe after move from devtool
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
X-List-Received-Date: Tue, 10 Oct 2017 21:16:16 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Greg,

On Wednesday, 11 October 2017 7:50:45 AM NZDT Greg Wilson-Lindberg wrote:
> I'm still getting the:
> 
> ERROR: zint-2.6.1-r0 do_package_qa: QA Issue: zint: /work/cortexa7hf-neon-
> vfpv4-poky-linux-gnueabi/zint/2.6.1-r0/packages-split/zint/usr/lib/
> libzint.so.2.6.1 contains probably-redundant RPATH /usr/lib

There's a short hint about this QA issue in the manual:

  http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-qa-checks

Ultimately it depends on the build system for the software your recipe is
building, but somewhere it will be explicitly adding this rpath to the
compiler command line, so you need to figure out the best way to remove that -
if the software's build system makes it optional, turn it off, but you may
find you need to patch it out. If you don't care about this particular issue,
you could alternatively use INSANE_SKIP to ignore it.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

