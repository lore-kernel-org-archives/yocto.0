Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11805E00280
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 00:38:23 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Jul 2012 00:38:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="169689099"
Received: from unknown (HELO helios.localnet) ([10.252.121.7])
	by orsmga002.jf.intel.com with ESMTP; 10 Jul 2012 00:38:21 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
Date: Tue, 10 Jul 2012 08:38:20 +0100
Message-ID: <3804086.0ey0KHV4nj@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <40776A41FC278F40B59438AD47D147A90FDDCA8B@SHSMSX102.ccr.corp.intel.com>
References: <40776A41FC278F40B59438AD47D147A90FDC7F83@SHSMSX102.ccr.corp.intel.com>
	<1658624.ZVpO79IcDh@helios>
	<40776A41FC278F40B59438AD47D147A90FDDCA8B@SHSMSX102.ccr.corp.intel.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Some questions about the webhob design
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
X-List-Received-Date: Tue, 10 Jul 2012 07:38:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 10 July 2012 06:58:02 Xu, Dongxiao wrote:
> Say an architect (his user id is "arch_a") creates a project with certain
> configurations and customizations, and names it as "Project_FRI2", and he
> invites "arch_b" also as the architect. Besides that, the project recruits
> "dev_a", "dev_b", and "dev_c" as developers, and "builer_a", "builder_b",
> and "builder_c" as normal build service users.
> 
> According to our discussion, we have some proposal on the permission
> management, and need your comments here.
> 
> 1) Only "arch_a" and "arch_b" are allowed to change project settings
> (including configurations, recipes, packages, etc). 2) "dev_a", "dev_b",
> and "dev_c" have the permission to fork this project. If they want to made
> any change to "Project_FRI2", they firstly need to tune their code/layers
> under their forked project, and then contribute back to the main
> "Project_FRI2" (This is something like the git branches and pull request we
> use in Yocto project development ). They are not allowed to modify project
> settings directly in "Project_FRI2". 3) "builder_a", "builder_b", and
> "builder_c" are only allowed to log into the Project_FRI2 project and
> schedule their build on it, or download images.
> 
> Of course there should be other roles, like program manager, etc.
> The overall idea is only very small set of the users could change the
> project setting. This sort of permission management can help to reduce the
> rate of changing project setting at the same time, since we no longer
> support developers to change settings in the main project. The developers
> need to follow the way of "fork project--> development --> contribute back
> to main project".
> 
> What's your thought on this?

This sounds reasonable. The "roles" would not be fixed in the system, but if 
you expect to have multiple people in each role then you could set up groups 
to represent their permissions.

The only issue is we do not offer a merge function, and if you start calling it 
"fork" people may expect to have a corresponding "merge". I expect we can get 
away with not having this feature in the first version but if "forking" becomes 
part of the recommended workflow then we may need to look at adding it in the 
future.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

