Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0974CE0032E
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 10:02:58 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 24 Oct 2012 10:02:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,640,1344236400"; d="scan'208";a="231729136"
Received: from unknown (HELO helios.localnet) ([10.252.122.99])
	by orsmga002.jf.intel.com with ESMTP; 24 Oct 2012 10:02:57 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Stefan Herbrechtsmeier <stefan@herbrechtsmeier.net>
Date: Wed, 24 Oct 2012 18:02:57 +0100
Message-ID: <15358301.1EO0GOH7WD@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-32-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <50881794.3020305@herbrechtsmeier.net>
References: <50881794.3020305@herbrechtsmeier.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Ubuntu 10.04 don't support mirror option with parameter
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
X-List-Received-Date: Wed, 24 Oct 2012 17:02:59 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 24 October 2012 18:30:12 Stefan Herbrechtsmeier wrote:
> the git version of Ubuntu 10.04 is to old to support mirror option with
> parameter which is used by the bitbake fetch2.
> 
> Regards,
>    Stefan
> 
> 
> DEBUG: ... git remote add --mirror=fetch origin
> git://git.yoctoproject.org/opkg-utils
> ERROR: Fetcher failure: Fetch command failed with exit code 129, output:
> error: option `mirror' takes no value
> usage: git remote add [<options>] <name> <url>
> 
>      -f, --fetch           fetch the remote branches
>      -t, --track <branch>  branch(es) to track
>      -m, --master <branch>
>                            master branch
>      --mirror              no separate remotes
> 

Which version of the build system are you using? In master and the upcoming 
danny / 1.3 release we have a check in the bitbake wrapper script to determine 
if a newer version of git needs to be built (if the host's version of git is 
older than 1.7.5); if so we build one (git-replacement-native). The denzil / 
1.2 release does not have this, however.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

