Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D60DFE002AC
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 08:38:19 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Sep 2012 08:38:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,380,1344236400"; d="scan'208";a="218628165"
Received: from unknown (HELO [10.255.13.147]) ([10.255.13.147])
	by fmsmga002.fm.intel.com with ESMTP; 06 Sep 2012 08:38:16 -0700
Message-ID: <1346945896.4836.0.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Thu, 06 Sep 2012 10:38:16 -0500
In-Reply-To: <1346937099-8151-1-git-send-email-paul.eggleton@linux.intel.com>
References: <1346937099-8151-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-tlk][PATCH] README: add info explaining meta-tlk layer purpose
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
X-List-Received-Date: Thu, 06 Sep 2012 15:38:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-09-06 at 14:11 +0100, Paul Eggleton wrote:
> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>

Pulled into meta-intel/master, thanks.

Tom

> ---
>  meta-tlk/README |   11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/meta-tlk/README b/meta-tlk/README
> index 5ff4d3b..07cbd76 100644
> --- a/meta-tlk/README
> +++ b/meta-tlk/README
> @@ -1,6 +1,9 @@
> -meta-autobuilder
> -===============
> +meta-tlk
> +========
>  
> -Contains recipe modifications required to produce the official 
> -yocto autobuild BSPs.
> +This layer makes the appropriate kernel modifications to enable a 10 day
> +time limit in the official BSP images produced using the Yocto Project
> +autobuilder, in order to encourage people to produce their own images
> +for production whilst still allowing the images to be useful for testing
> +and debugging.
>  



