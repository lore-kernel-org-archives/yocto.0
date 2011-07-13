Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C38804C800B9
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2011 12:28:11 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jul 2011 10:28:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,526,1304319600"; d="scan'208";a="27508433"
Received: from unknown (HELO [10.255.13.191]) ([10.255.13.191])
	by fmsmga002.fm.intel.com with ESMTP; 13 Jul 2011 10:28:11 -0700
Message-ID: <4E1DD5B8.1010406@linux.intel.com>
Date: Wed, 13 Jul 2011 10:28:24 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <cover.1310524088.git.josh@linux.intel.com>
	<b8158bd7aceae1fd2ade1ec15c9f508b9aeebfa0.1310524088.git.josh@linux.intel.com>
In-Reply-To: <b8158bd7aceae1fd2ade1ec15c9f508b9aeebfa0.1310524088.git.josh@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] local.conf.sample: add CONNECTIVITY_CHECK_URIS
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
X-List-Received-Date: Wed, 13 Jul 2011 17:28:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 07/12/2011 07:32 PM, Joshua Lock wrote:
> Add CONNECTIVITY_CHECK_URIS to run the network connectivity sanity test for
> http, https and git sources.
> 
> Signed-off-by: Joshua Lock <josh@linux.intel.com>
> ---
>  meta-yocto/conf/local.conf.sample |    8 ++++++++
>  1 files changed, 8 insertions(+), 0 deletions(-)
> 
> diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
> index ea32b81..fb20f2c 100644
> --- a/meta-yocto/conf/local.conf.sample
> +++ b/meta-yocto/conf/local.conf.sample
> @@ -214,3 +214,11 @@ NO32LIBS = "1"
>  # The network based PR service host and port
>  #PRSERV_HOST = "localhost"
>  #PRSERV_PORT = "8585"
> +
> +# Use the following URI's to test whether we can succesfully fetch from the
> +# network (and warn you if not). This test will be run each time a new build
> +# directory is specfied, if you wish to disable it delete or comment out the
> +# following few lines that define CONNECTIVITY_CHECK_URIS.
> +CONNECTIVITY_CHECK_URIS = "git://git.yoctoproject.org/yocto-firewall-test;protocol=git;rev=HEAD \
> +			   https://eula-downloads.yoctoproject.org/index.php \
> +			   http://bugzilla.yoctoproject.org/report.cgi"


Would this not be better in a distro config file? conf/distro/poky.conf
comes to mind.

Josh pointed out that the lsb variant would then miss out - so perhaps a
network-sanity.inc file could be included by each distro defined in a
layer. It doesn't make sense in layer.conf as multiple layers can be
used - but as I understand it, only a single distro is built at a time?

I like the idea of it working by default without any requirements on
local.conf. The user could override this variable in local.conf if they
want, but I don't think it should be required to be there for the checks
to work.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

