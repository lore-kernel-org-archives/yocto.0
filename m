Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6823E009EB
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 08:50:41 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Mar 2014 08:49:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,578,1389772800"; d="scan'208";a="492924217"
Received: from dmilliga-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.25])
	by orsmga002.jf.intel.com with ESMTP; 03 Mar 2014 08:49:40 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rick Bianchi <bianchirickkutta@gmail.com>
Date: Mon, 03 Mar 2014 16:49:39 +0000
Message-ID: <1583886.umgNPlo09z@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.2 (Linux/3.13.5-200.fc20.x86_64; KDE/4.12.2; x86_64; ; )
In-Reply-To: <CAA7h+EoPfLcMW3SF9SkUKai5KPe9RJpEJu8+Nz+akUYX9TNZfw@mail.gmail.com>
References: <CAA7h+EqtOE2spfgtXi2CiogUFsytGxyb4EgqSAoanwTximA-+w@mail.gmail.com>
	<1461290.cFV4RBsgra@peggleto-mobl5.ger.corp.intel.com>
	<CAA7h+EoPfLcMW3SF9SkUKai5KPe9RJpEJu8+Nz+akUYX9TNZfw@mail.gmail.com>
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
X-List-Received-Date: Mon, 03 Mar 2014 16:50:45 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 03 March 2014 09:47:16 Rick Bianchi wrote:
> No, I have not made any changes to the yoctousbip/build/conf/local.conf.
> 
> The only change I made was to the file:
> yoctousbip/poky/meta/recipes-devtools/docbook-utils/
> docbook-utils-native_0.6.14.bb

Ah - that explains it. This is not the right value of SRC_URI for this recipe.

> It was throwing an error and I understood that it needed to be patched.

What error was it throwing?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

