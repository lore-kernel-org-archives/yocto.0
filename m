Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (unknown [93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E756E011A7
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 06:11:54 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p74DC0LO001986;
	Thu, 4 Aug 2011 14:12:00 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01579-04; Thu,  4 Aug 2011 14:11:56 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p74DBr4l001980
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 4 Aug 2011 14:11:54 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <ac54aeb02b6b887ea6274a9f61ec6bf5214b2198.1312462806.git.paul.eggleton@linux.intel.com>
References: <cover.1312462806.git.paul.eggleton@linux.intel.com>
	<ac54aeb02b6b887ea6274a9f61ec6bf5214b2198.1312462806.git.paul.eggleton@linux.intel.com>
Date: Thu, 04 Aug 2011 14:11:34 +0100
Message-ID: <1312463494.2344.739.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/2] meta-sugarbay: update machine configuration for recent tune file changes
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
X-List-Received-Date: Thu, 04 Aug 2011 13:11:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-08-04 at 14:03 +0100, Paul Eggleton wrote:
> Require the tune file for x86_64, then TARGET_ARCH is set via the tune
> file and TRANSLATED_TARGET_ARCH is set automatically in bitbake.conf.
> 
> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
>  meta-sugarbay/conf/machine/sugarbay.conf |    5 +++--
>  1 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
> index 9450d97..9add1ca 100644
> --- a/meta-sugarbay/conf/machine/sugarbay.conf
> +++ b/meta-sugarbay/conf/machine/sugarbay.conf
> @@ -4,8 +4,9 @@
>  #@DESCRIPTION: Machine configuration for Sugar Bay systems
>  # i.e. Sandy Bridge + Cougar Point
>  
> -TARGET_ARCH = "x86_64"
> -PACKAGE_EXTRA_ARCHS = "x86 snb"
> +require conf/machine/include/tune-x86_64.inc
> +
> +PACKAGE_EXTRA_ARCHS = "x86_64 snb"
>  
>  BASE_PACKAGE_ARCH="snb"

What difference is BASE_PACKAGE_ARCH or snb making in this case?

Cheers,

Richard



