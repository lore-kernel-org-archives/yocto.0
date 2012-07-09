Return-Path: <Aws.Ismail@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E5CCE0027D
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 12:50:48 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q69JolL9014952
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 9 Jul 2012 12:50:47 -0700 (PDT)
Received: from [128.224.147.212] (128.224.147.212) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 9 Jul 2012 12:50:47 -0700
Message-ID: <4FFB35C6.50306@windriver.com>
Date: Mon, 9 Jul 2012 15:49:26 -0400
From: Aws Ismail <aws.ismail@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <4FF75054.7080006@windriver.com>
In-Reply-To: <4FF75054.7080006@windriver.com>
X-Originating-IP: [128.224.147.212]
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
X-List-Received-Date: Mon, 09 Jul 2012 19:50:48 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

This is a follow-up on the fix I sent recently for psplash. I'd
appreciate any comments.

Thanks

Aws Ismail

====================================================================
Fix psplash segmentation fault

This fixes the segmentation fault when calling:
psplash -a

The -a option requires a rotation angle to be given
and if it is missing then the user is shown the correct usage.

From: git://git.yoctoproject.org/psplash

Signed-off-by: Aws Ismail <aws.ismail@windriver.com>

--------------------------------------------------------------------
diff --git a/psplash.c b/psplash.c
index 0158628..09cf0d0 100644
--- a/psplash.c
+++ b/psplash.c
@@ -219,7 +219,7 @@ main (int argc, char** argv)

        if (!strcmp(argv[i],"-a") || !strcmp(argv[i],"--angle"))
          {
-         if (++i > argc) goto fail;
+         if (++i >= argc) goto fail;
           angle = atoi(argv[i]);
           continue;
         }



On 07/06/2012 04:53 PM, Aws Ismail wrote:
> Fix segmentation fault when passing -a without angle value.
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



