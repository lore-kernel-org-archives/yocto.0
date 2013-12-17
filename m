Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB275E007FA
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 12:24:42 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Dec 2013 12:24:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,503,1384329600"; d="scan'208";a="451587837"
Received: from unknown (HELO helios.localnet) ([10.252.122.29])
	by fmsmga002.fm.intel.com with ESMTP; 17 Dec 2013 12:24:40 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brad Litterell <brad@evidence.com>
Date: Tue, 17 Dec 2013 20:24:38 +0000
Message-ID: <14453943.1Qpn4azGq8@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-34-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <E51394554A503C4E852F9BEE46B03E8D019AC7CA@TI-THOR.tasernet.com>
References: <E51394554A503C4E852F9BEE46B03E8D019AC4B3@TI-THOR.tasernet.com>
	<ad9adfd66f224dd98d4ec05596eaaa8e@DM2PR03MB399.namprd03.prod.outlook.com>
	<E51394554A503C4E852F9BEE46B03E8D019AC7CA@TI-THOR.tasernet.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Setting PV dynamically in a recipe
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
X-List-Received-Date: Tue, 17 Dec 2013 20:24:45 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Brad,

On Tuesday 17 December 2013 19:46:11 Brad Litterell wrote:
> Thank you for the reply.  However, That's not what I'm looking for.  I
> already get the latest version of the source code.
> 
> What I'm really after is the ability to generate output packages that have
> increasing version numbers so I can use the package manager to update them.
> 
> I think Martin's subsequent reply is the secret to use PKGV.  I didn't know
> about that variable.

You don't need to use any special classes to get this behaviour. Put this in
your recipe (replacing 1.2.3 with the appropriate base version you are
building):

PV = "1.2.3+git${SRCPV}"

and enable the PR service, which will ensure SRCREV changes always increment
the version properly:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#working-with-a-pr-service

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

