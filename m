Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91D0CE009E1
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 08:27:35 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 03 Mar 2014 08:23:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,578,1389772800"; d="scan'208";a="484903514"
Received: from dmilliga-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.25])
	by fmsmga001.fm.intel.com with ESMTP; 03 Mar 2014 08:27:25 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rick Bianchi <bianchirickkutta@gmail.com>,
	Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date: Mon, 03 Mar 2014 16:27:24 +0000
Message-ID: <2231928.eQF8dO1LsD@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.2 (Linux/3.13.5-200.fc20.x86_64; KDE/4.12.2; x86_64; ; )
In-Reply-To: <53149766.2050608@dynamicdevices.co.uk>
References: <CAA7h+EqtOE2spfgtXi2CiogUFsytGxyb4EgqSAoanwTximA-+w@mail.gmail.com>
	<53149766.2050608@dynamicdevices.co.uk>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: WARNING: Failed to fetch URL http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz, attempting MIRRORS if available
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
X-List-Received-Date: Mon, 03 Mar 2014 16:27:36 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 03 March 2014 14:53:26 Alex J Lennon wrote:
> On 03/03/2014 14:36, Rick Bianchi wrote:
> > Does anyone know how I can get around this error? There is no such
> > package on sourceforge "Fetcher failure for URL:
> > 'http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz'.
> > Unable to fetch URL from any source."
> 
> Rick, as Paul mentioned there seems to be something really strange going on.
> 
> If you look in the docbook-utils-native recipe (which is at r3 for me in
> master:d6596f5e0446b6aa3ae845389965bb2852f17b65) it is 0.6.14
> 
> That recipe doesn't use the openjade tarball although it has a
> dependency on openjade-native
> 
> If you look at the openjade-native recipe it is at version 1.3.2
> 
> So, you'd expect docbook-utils-native to be pulling down a 0.6.14
> docbook tarball, or if you were building openjade-native you'd expect
> the openjade 1.3.2 tarball to be pulled down (I believe)
> 
> So it looks as though somehow there's some kind of corruption that is
> mixing up openjade with the 0.6.14 of docbook for some reason.
> 
> i.e. I don't believe you're going to find a tarball of an
> openjade-0.6.14 release.

This is my assessment of what's happening also. I can't understand how this 
could ever happen, but it looks like SRC_URI is being mixed up between the two 
recipes, and this is on the dylan (old stable) branch as well.

> It might be better to try checkout out your layers again and doing a
> rebuild from scratch ?

Before doing this, Rick could you run the following and post the output:

bitbake -e docbook-utils-native | grep ^SRC_URI=

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

