Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8432E002AB
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 03:14:20 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Jul 2012 03:14:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="195486223"
Received: from unknown (HELO helios.localnet) ([10.252.121.25])
	by fmsmga002.fm.intel.com with ESMTP; 20 Jul 2012 03:14:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
Date: Fri, 20 Jul 2012 11:14:19 +0100
Message-ID: <5599187.lbIDYtH909@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE20AD3AA4C@ORSMSX105.amr.corp.intel.com>
References: <D956029D25CF204F948EA0FB515E1EE20AD3AA4C@ORSMSX105.amr.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to set environment variables inside a recipe?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 20 Jul 2012 10:14:21 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 19 July 2012 18:16:45 Bodke, Kishore K wrote:
> The driver needs a bunch of environmental variables to be set ( specific to
> driver only ) to build.
> 
> Right now to move forward I am doing like below in my recipe to build it.
> 
> export  AAA = "${S}"
> export BBB = "${B}"
> export CCC = "{S}/build-system"
> export DDD = "{S}/env-files"
> 
> Is this right way to do?  Are there any other ways to set the environment
> variables inside a recipe?

This is valid; I would recommend setting them within the function though (e.g. 
do_configure) rather than at the recipe level, assuming that works for your 
case.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

