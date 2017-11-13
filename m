Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8445E00D72; Mon, 13 Nov 2017 07:20:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27E62E00CD4
	for <yocto@yoctoproject.org>; Mon, 13 Nov 2017 07:20:10 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Nov 2017 07:20:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,389,1505804400"; 
   d="scan'208";a="2112466"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.134])
	by fmsmga001.fm.intel.com with ESMTP; 13 Nov 2017 07:20:10 -0800
Date: Mon, 13 Nov 2017 09:30:38 -0600
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Chris Hughes <89dragon@gmail.com>
Message-ID: <20171113093038.6be7155c@lsandov1-mobl2.zpn.intel.com>
In-Reply-To: <CAG8GRtgq1qPe78V+fu-C6Mb7WZ_+B6_8r9Z0u594PLNE0BWR4w@mail.gmail.com>
References: <CAG8GRtgq1qPe78V+fu-C6Mb7WZ_+B6_8r9Z0u594PLNE0BWR4w@mail.gmail.com>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Bitbake fails when enabling tools-testapps
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
X-List-Received-Date: Mon, 13 Nov 2017 15:20:11 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 12 Nov 2017 01:18:45 -0700
Chris Hughes <89dragon@gmail.com> wrote:

> Hoping this is the right place to get help with the following issue.
> 
> I'm using bitbake to build a custom image of the intel-aero / yocto sources.
> 

Make sure all layer dependencies are included into the conf/bblayers.conf file. There must be at least one recipe that either implicity (by default,  a recipe provides itself with the same name) or explicity (with PROVIDES) , otherwise you see what you mentioned.

