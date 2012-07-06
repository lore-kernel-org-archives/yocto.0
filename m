Return-Path: <Aws.Ismail@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 194E7E006B1
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2012 13:56:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q66Ku0KK005068
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 6 Jul 2012 13:56:00 -0700 (PDT)
Received: from [128.224.147.212] (128.224.147.212) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 6 Jul 2012 13:56:00 -0700
Message-ID: <4FF75099.2020201@windriver.com>
Date: Fri, 6 Jul 2012 16:54:49 -0400
From: Aws Ismail <aws.ismail@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: <aws.ismail@windriver.com>
References: <4FF75054.7080006@windriver.com>
In-Reply-To: <4FF75054.7080006@windriver.com>
X-Originating-IP: [128.224.147.212]
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] Fix for psplash segmentation fault
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: aws.ismail@windriver.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 06 Jul 2012 20:56:01 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

s/angel/angle :)

Aws\

On 07/06/2012 04:53 PM, Aws Ismail wrote:
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
>        if (!strcmp(argv[i],"-a") || !strcmp(argv[i],"--angle"))
>          {
> -         if (++i > argc) goto fail;
> +         if (++i >= argc) goto fail;
>           angle = atoi(argv[i]);
>           continue;
>         }
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


-- 
-----------
Aws Ismail
-----------


