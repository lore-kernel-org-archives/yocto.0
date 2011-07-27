Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C3A3C4C803E4
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2011 11:09:10 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Jul 2011 09:09:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,276,1309762800"; d="scan'208";a="30759876"
Received: from unknown (HELO [10.255.14.61]) ([10.255.14.61])
	by orsmga002.jf.intel.com with ESMTP; 27 Jul 2011 09:09:10 -0700
Message-ID: <4E303825.1080304@linux.intel.com>
Date: Wed, 27 Jul 2011 09:09:09 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1311708150-24226-1-git-send-email-msm@freescale.com>
	<1311708150-24226-2-git-send-email-msm@freescale.com>
In-Reply-To: <1311708150-24226-2-git-send-email-msm@freescale.com>
Subject: Re: [PATCH] Update TERMCMD message to align with previous change
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
X-List-Received-Date: Wed, 27 Jul 2011 16:09:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/26/2011 12:22 PM, Matthew McClintock wrote:
> A previous patch changed the default TERM to use xterm. This updates
> local.conf.sample to match the change
>
> Signed-off-by: Matthew McClintock<msm@freescale.com>
> ---
>   meta-yocto/conf/local.conf.sample |    2 +-
>   1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
> index 499c48e..7a0fc89 100644
> --- a/meta-yocto/conf/local.conf.sample
> +++ b/meta-yocto/conf/local.conf.sample
> @@ -205,7 +205,7 @@ ENABLE_BINARY_LOCALE_GENERATION = "1"
>   # out if that is desired
>   NO32LIBS = "1"
>
> -# If you do not use (or have installed) gnome-terminal you will need to
> +# If you do not use (or have installed) xterm you will need to
>   # uncomment these variables and set them to the terminal you wish to use
>   # when resolving patches which cannot be applied
>   # Supported shell prefixes for *_TERMCMD and *_TERMCMDRUN ARE:

Matthew,

Paul Eggelton recently made a similar change so I am going to drop this one.

In the future
Sau!


