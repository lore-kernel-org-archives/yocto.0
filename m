Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 117D0E006AB
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2011 01:16:20 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 24 Aug 2011 01:16:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,274,1312182000"; d="scan'208";a="10487160"
Received: from unknown (HELO helios.localnet) ([10.255.18.108])
	by AZSMGA002.ch.intel.com with ESMTP; 24 Aug 2011 01:16:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Xu, Jiajun" <jiajun.xu@intel.com>
Date: Wed, 24 Aug 2011 09:16:15 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-10-generic-pae; KDE/4.6.2; i686; ; )
References: <201108231642.49667.paul.eggleton@linux.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A12D724C96B@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A12D724C96B@shsmsx501.ccr.corp.intel.com>
MIME-Version: 1.0
Message-Id: <201108240916.15490.paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Tested host distros for 1.1
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
X-List-Received-Date: Wed, 24 Aug 2011 08:16:20 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Wednesday 24 August 2011 02:59:07 you wrote:
> > We now have the mechanism for fixing bug #1096 [1] i.e. showing a
> > warning if the user is running a build on a distro that has not been
> > tested; however to make this work what we now need is a list of
> > distributions we want to consider tested. What distros specifically are
> > we going to list for 1.1?
> 
> We check Ubuntu, Opensuse and Fedora in our regular testing. So at least,
> the 3 distros should be added as support.

Sorry, I wasn't clear in my original message, but for this to work we will 
need to declare the specific versions of distros we will consider tested.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

