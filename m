Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6FCEE0153D
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 05:14:46 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 03 Jun 2013 05:14:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,792,1363158000"; d="scan'208";a="249978751"
Received: from unknown (HELO helios.localnet) ([10.252.121.181])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Jun 2013 05:14:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 03 Jun 2013 13:14:44 +0100
Message-ID: <2184501.CtGsHgJJ4s@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-23-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <17797116383D4341B029FDF34C22BF6A52C4C02ED4@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <mailman.2471.1369267014.19864.yocto@yoctoproject.org>
	<17797116383D4341B029FDF34C22BF6A52C4C02ED4@GUREXMB01.ASIAN.AD.ARICENT.COM>
MIME-Version: 1.0
Cc: Rohit2 Jindal <rohit2.jindal@aricent.com>
Subject: Re: Yocto with Fedora 18
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
X-List-Received-Date: Mon, 03 Jun 2013 12:14:46 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 29 May 2013 11:51:15 Rohit2 Jindal wrote:
> 1 When I run my recipe it stops after completing 63-tasks and again I have
> to rerun my recipe back to  complete left out around 415 tasks. I did not
> got why it shows this type of behavior. But this thing didn't happen with
> fedora 9 or fedora 7. Please suggest how to make it work that it completes
> all the tasks in one go without need to rerun (bitbake linux) twice. 

This is not normal behaviour. Can we see the full log of the first part please?

> 2 I modified external-sourcery-toolchain according to my requirement . Can
> you suggest me the way if I want to override "toolchain_setup ()" function
> of  "tcmode-external-sourcery.inc"   in my board.conf file or my recipe where
> ever possible.

You should probably be copying this file and editing it. Note that selection of 
the external toolchain would be a distro setting and not something set from 
machine configuration.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

