Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA43EE013A6
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 07:50:48 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q79EolDS027233
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 9 Aug 2012 07:50:47 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Thu, 9 Aug 2012 07:50:47 -0700
Message-ID: <5023CE44.4060406@windriver.com>
Date: Thu, 9 Aug 2012 10:50:44 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <B35EAA35-E64A-42AE-A168-1F60424BE999@gmail.com>
In-Reply-To: <B35EAA35-E64A-42AE-A168-1F60424BE999@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Incorrect warning: preferred version linux-libc-headers_3.3 of linux-libc-headers not available (for item linux-libc-headers)
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
X-List-Received-Date: Thu, 09 Aug 2012 14:50:48 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-08-09 10:48 AM, Elvis Dowson wrote:
> Hi,
>
> In my local.conf I have set the following variable
>
> PREFERRED_VERSION_linux-libc-headers = "linux-libc-headers_3.3"

Have you tried dropping the "linux-libc-headers" ?

i.e. PREFERRED_VERSION_linux-libc-headers = "3.3"

Bruce

>
> However, when I run bitbake linux-libc-headers -c fetchall, it complains
> that the preferred version is not available, even though I've created a
> linux-libc-headers_3.3.bb recipe and set the preferred version in my
> local.conf
>
> NOTE: preferred version linux-libc-headers_3.3 of linux-libc-headers not
> available (for item linux-libc-headers)
> NOTE: versions of linux-libc-headers available: 3.0.8 3.2 3.3 3.4.3
> NOTE: Resolving any missing task queue dependencies
> NOTE: preferred version linux-libc-headers_3.3 of linux-libc-headers not
> available (for item linux-libc-headers-dev)
> NOTE: versions of linux-libc-headers available: 3.0.8 3.2 3.3 3.4.3
> NOTE: Preparing runqueue
> NOTE: Executing RunQueue Tasks
> NOTE: Running task 2 of 3 (ID: 0,
> /tool/yocto/poky/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_3.3.bb,
> do_fetch)
> NOTE: package linux-libc-headers-3.3-r0: task do_fetch: Started
>
> Why is this so?
>
> Best regards,
>
> Elvis Dowson
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


