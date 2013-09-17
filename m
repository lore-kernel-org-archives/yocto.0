Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A83F1E015D0
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 11:01:54 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Sep 2013 10:58:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,925,1371106800"; d="scan'208";a="404765403"
Received: from unknown (HELO helios.localnet) ([10.252.123.194])
	by orsmga002.jf.intel.com with ESMTP; 17 Sep 2013 11:01:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brad Litterell <brad@evidence.com>
Date: Tue, 17 Sep 2013 19:01:43 +0100
Message-ID: <6188630.9A4dCK1SRK@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-30-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <E51394554A503C4E852F9BEE46B03E8DEFE67D@TI-ODIN.tasernet.com>
References: <E51394554A503C4E852F9BEE46B03E8DEFDB66@TI-ODIN.tasernet.com>
	<22610256.9HCK7tef9Y@helios>
	<E51394554A503C4E852F9BEE46B03E8DEFE67D@TI-ODIN.tasernet.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Chris Larson <clarson@kergoth.com>
Subject: Re: Bitbake on live (uncommitted) code
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
X-List-Received-Date: Tue, 17 Sep 2013 18:01:58 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Brad,

On Tuesday 17 September 2013 17:48:18 Brad Litterell wrote:
> I've been using externalsrc for a few days now and have a follow on
> question.
> 
> It appears that bitbake's state information for the various recipes doesn't
> react to changes in source files in an external source.  IOW, when I change
> a file in my external folder I need to perform 3 steps to create a new file
> system that reflects the change:
> 
> bitbake <component> -c clean
> bitbake <component>
> bitbake <image>
> 
> Is it possible to ask bitbake to be more thorough about detecting file
> changes in external sources and rebuild the affected component
> automatically?

I'm not sure if that would be practical; we'd need to checksum quite a lot of 
files for a large source tree. However, there is a slightly simpler method:

bitbake -C compile <component>
bitbake <image>

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

