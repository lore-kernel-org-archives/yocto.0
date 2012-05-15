Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ADA2E01206
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 13:47:51 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q4FKljox002879
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 15 May 2012 13:47:45 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 15 May 2012 13:47:44 -0700
Message-ID: <4FB2C0EE.3070509@windriver.com>
Date: Tue, 15 May 2012 16:47:42 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <20120514201154.8A627202B34@gemini.denx.de>
In-Reply-To: <20120514201154.8A627202B34@gemini.denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: LICENSE = "GPL" -- problem?
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
X-List-Received-Date: Tue, 15 May 2012 20:47:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-14 04:11 PM, Wolfgang Denk wrote:
> Hi,
>
> we noticed warnings like "No generic license file exists for: GPL in
> any provider" for our own linux kernel recipe.  The cause wa the use
> of an entry
>
> 	LICENSE = "GPL"
>
> which whould read "GPLv2" instead of "GPL".  A scan detected that the
> same string "GPL" is used in a number of other recipes:
>
> bitbake/lib/bb/shell.py:LICENSE = "GPL"
> meta/recipes-kernel/kern-tools/kern-tools-native_git.bb:LICENSE = "GPL"

I've updated this license to be more specific. I'm not sure if a bug
was opened for the other ones, but I took care of the one that I
look after.

Cheers,

Bruce

> meta/recipes-kernel/linux/linux-dummy.bb:LICENSE = "GPL"
> meta/recipes-bsp/x-load/x-load.inc:LICENSE = "GPL"
> meta/recipes-devtools/gcc/gcc-common.inc:LICENSE = "GPL"
> meta/recipes-devtools/unifdef/unifdef-native_2.6.18+git.bb:LICENSE = "GPL"
>
> Eventually these should be fixed, too?
>
> Best regards,
>
> Wolfgang Denk
>


