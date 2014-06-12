Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 147A8E009E7; Thu, 12 Jun 2014 03:59:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2142E0070F
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 03:58:56 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 Jun 2014 03:58:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,464,1400050800"; d="scan'208";a="546783802"
Received: from nithyasr-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.63])
	by fmsmga001.fm.intel.com with ESMTP; 12 Jun 2014 03:58:40 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date: Thu, 12 Jun 2014 11:58:39 +0100
Message-ID: <10094086.6Vrxdyfy9P@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.5-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <53886DE1.3040906@dynamicdevices.co.uk>
References: <53886DE1.3040906@dynamicdevices.co.uk>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to leave original git remote in unpacked repository?
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
X-List-Received-Date: Thu, 12 Jun 2014 10:59:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alex,

On Friday 30 May 2014 12:39:13 Alex J Lennon wrote:
> When I drop into a devshell for an unpacked SRV_REV from a particular
> git SRC_URI I have the git remote origin set to a local archive in the
> ~/downloads tree.
> 
> Is there a build variable, say, I can set to leave the original git
> remote set as well so that I can more easily push back changes I make?
> 
> (Or is that a bad idea for some reason?)

There isn't a way to do this, and to be honest with the discussions we've had
recently about developer workflow, I'm not sure we want to encourage doing
development within the workdir for a recipe because it's managed by the build
system, and if you're not careful (e.g. with -c clean, rm_work or just
changing SRC_URI) the sources can vanish taking your changes with it. Our
alternative at the moment is to use externalsrc [1]. This is a little more
work though and at the OEDAM meeting [2] there was some discussion about how
we could make this easier in future.

Cheers,
Paul

[1] http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#building-software-from-an-external-source
[2] http://openembedded.org/wiki/OEDAM#Minutes

-- 

Paul Eggleton
Intel Open Source Technology Centre

