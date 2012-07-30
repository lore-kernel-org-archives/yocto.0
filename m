Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11B42E00280
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 08:09:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q6UF9H0x024214
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 30 Jul 2012 08:09:17 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Mon, 30 Jul 2012 08:09:18 -0700
Message-ID: <5016A39C.50003@windriver.com>
Date: Mon, 30 Jul 2012 11:09:16 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Leon Woestenberg <leon.woestenberg@gmail.com>
References: <1343483125-26065-1-git-send-email-sidebranch.openembedded@gmail.com>
	<5016A34B.5000406@windriver.com>
In-Reply-To: <5016A34B.5000406@windriver.com>
Cc: yocto@yoctoproject.org, Leon Woestenberg <leon@sidebranch.com>,
	Scott Garman <scott.a.garman@intel.com>
Subject: Re: [PATCH] kernel.bbclass: Iff exists, copy bounds.h for external module building.
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
X-List-Received-Date: Mon, 30 Jul 2012 15:09:20 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-07-30 11:07 AM, Bruce Ashfield wrote:
> On 12-07-28 09:45 AM, Leon Woestenberg wrote:
>> From: Leon Woestenberg<leon@sidebranch.com>
>>

Aha. And now I see that Scott G was copied. If this was for 1.2.x of yocto,
that needs to be clearly in the subject .. otherwise it is just
confusing.

My comment still stands that if this is needed for denzil, it should
be the same fixes we have in master, and not something different.

Cheers,

Bruce

>> Signed-off-by: Leon Woestenberg<leon@sidebranch.com>
>> ---
>> meta/classes/kernel.bbclass | 6 ++++++
>> 1 files changed, 6 insertions(+), 0 deletions(-)
>>
>> diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
>> index c21ab96..bd3e335 100644
>> --- a/meta/classes/kernel.bbclass
>> +++ b/meta/classes/kernel.bbclass
>> @@ -183,6 +183,12 @@ kernel_do_install() {
>> cp arch/powerpc/lib/crtsavres.o $kerneldir/arch/powerpc/lib/crtsavres.o
>> fi
>>
>> + # make -C $kerneldir _mrproper_scripts deleted this file, but we
>> need it for
>> + # building external modules like compat-wireless.
>> + if [ -f include/generated/bounds.h ]; then
>> + cp include/generated/bounds.h $kerneldir/include/generated/bounds.h
>> + fi
>
> This change is definitely safer using and older kernel that doesn't have a
> generated bounds.h .. but your tree is out of date. This should be on
> top of:
>
> commit 9247550642a536f83c6c711ce4bd340e5e5606b7
> Author: Denis Carikli <GNUtoo@no-log.org>
> Date: Fri Jul 20 16:22:22 2012 -0700
>
> kernel.bbclass: fix external module building
>
> Without that fix we have the following while compiling compat-wireless.
> include/linux/mmzone.h:18:30: fatal error: generated/bounds.h: No such
> file or directory
>
> Note that the compat-wireless recipe will be added in another commit.
>
> make -C $kerneldir _mrproper_scripts deleted this file along with
> other things so we resurrect it with this patch.
>
> (From OE-Core rev: 2d114fd0cdf7486f18e53f2bf41c4f559e4b4a8d)
>
> Signed-off-by: Denis 'GNUtoo' Carikli <GNUtoo@no-log.org>
> Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
> Signed-off-by: Saul Wold <sgw@linux.intel.com>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
>
> Cheers,
>
> Bruce
>
>> +
>> # Remove the following binaries which cause strip errors
>> # during do_package for cross-compiled platforms
>> bin_files="arch/powerpc/boot/addnote arch/powerpc/boot/hack-coff \
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


