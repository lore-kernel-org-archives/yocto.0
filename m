Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F288EE0124E
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2011 12:21:52 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 31 Aug 2011 12:21:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="44109207"
Received: from unknown (HELO [10.255.14.75]) ([10.255.14.75])
	by orsmga001.jf.intel.com with ESMTP; 31 Aug 2011 12:21:52 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 31 Aug 2011 12:21:47 -0700
In-Reply-To: <0ca0975a1895796bc921a9340897220ba77581af.1314288840.git.josh@linux.intel.com>
References: <cover.1314288840.git.josh@linux.intel.com>
	<0ca0975a1895796bc921a9340897220ba77581af.1314288840.git.josh@linux.intel.com>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1314818512.2284.0.camel@scimitar>
Mime-Version: 1.0
Subject: Re: [PATCH 1/1] poky.conf: perform network sanity check by default for poky distros
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
X-List-Received-Date: Wed, 31 Aug 2011 19:21:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-08-25 at 10:15 -0700, Joshua Lock wrote:
> Add CONNECTIVITY_CHECK_URIS to run the network connectivity sanity test for
> http, https and git sources.
> 
> The variable is soft-assigned so that it's easily overrideable.
> 
> Signed-off-by: Joshua Lock <josh@linux.intel.com>
> ---
>  meta-yocto/conf/distro/poky.conf |    7 ++++++-
>  1 files changed, 6 insertions(+), 1 deletions(-)
> 
> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
> index c5fc3b9..46b22f4 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -54,5 +54,10 @@ ftp://.*/.*      http://autobuilder.yoctoproject.org/sources/ \n \
>  http://.*/.*     http://autobuilder.yoctoproject.org/sources/ \n \
>  https://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n"
>  
> -
> +# The CONNECTIVITY_CHECK_URI's are used to test whether we can succesfully
> +# fetch from the network (and warn you if not). To disable the test set
> +# the variable to be empty.
> +CONNECTIVITY_CHECK_URIS ?= "git://git.yoctoproject.org/yocto-firewall-test;protocol=git;rev=HEAD \
> +                          https://eula-downloads.yoctoproject.org/index.php \
> +                          http://bugzilla.yoctoproject.org/report.cgi"
>  

Any feedback on this patch?

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


