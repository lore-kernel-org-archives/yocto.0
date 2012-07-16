Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B48DE00348
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 09:34:43 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Jul 2012 09:32:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="166990657"
Received: from unknown (HELO [10.255.12.178]) ([10.255.12.178])
	by orsmga001.jf.intel.com with ESMTP; 16 Jul 2012 09:32:46 -0700
Message-ID: <5004422E.3020300@linux.intel.com>
Date: Mon, 16 Jul 2012 09:32:46 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: aws.ismail@windriver.com
References: <4FF75054.7080006@windriver.com>
In-Reply-To: <4FF75054.7080006@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] Fix for psplash segmentation fault
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
X-List-Received-Date: Mon, 16 Jul 2012 16:34:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/06/2012 01:53 PM, Aws Ismail wrote:
> Fix segmentation fault when passing -a without angel value.
>
> When psplash -a is called instead of psplash -a<angle value>
> it will segmentation fault calling out of bound argv[].
>
> git://git.yoctoproject.org/psplash
>
> Signed-of-by: Aws Ismail<aws.ismail@windriver.com>
>
> -----------------------------------------------------------------
>
> diff --git a/psplash.c b/psplash.c
> index 0158628..09cf0d0 100644
> --- a/psplash.c
> +++ b/psplash.c
> @@ -219,7 +219,7 @@ main (int argc, char** argv)
>
>         if (!strcmp(argv[i],"-a") || !strcmp(argv[i],"--angle"))
>           {
> -         if (++i > argc) goto fail;
> +         if (++i >= argc) goto fail;
>            angle = atoi(argv[i]);
>            continue;
>          }
>
Merged into psplash upstream, if you would like to send a patch to 
Openembedded-Core updating the psplash recipe that would be welcome also.

Thanks
	Sau!

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


