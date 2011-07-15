Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 60A454C80205
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 08:22:50 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6FDMkE6015079
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 15 Jul 2011 06:22:46 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 15 Jul 2011 06:22:45 -0700
Message-ID: <4E203F23.4060400@windriver.com>
Date: Fri, 15 Jul 2011 09:22:43 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110516 Thunderbird/3.1.10 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Kumar Gala <galak@kernel.crashing.org>
References: <1310705816-31653-1-git-send-email-galak@kernel.crashing.org>
	<4E1FD0C2.6000704@windriver.com>
	<B99EC425-9B03-436A-82B1-9A8E13F19963@kernel.crashing.org>
In-Reply-To: <B99EC425-9B03-436A-82B1-9A8E13F19963@kernel.crashing.org>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] mpc8315e-rdb: Set TARGET_FPU correct
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
X-List-Received-Date: Fri, 15 Jul 2011 13:22:50 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 07/15/11 08:29, Kumar Gala wrote:
>
> On Jul 15, 2011, at 12:31 AM, Bruce Ashfield wrote:
>
>> On 11-07-15 12:56 AM, Kumar Gala wrote:
>>> The MPC8315E has a e300c3 core in it with 'classic' or normal PPC
>>> floating point.
>>>
>>> 'SPE' floating point is what exists on the e500v2 core.
>>
>> Acked-by: Bruce Ashfield<bruce.ashfield@windriver.com>
>>
>> Been meaning to change this for a while, the good news, is that
>> the setting doesn't make any difference at the moment :)
>>
>> Cheers,
>>
>> Bruce
>
> True, I want to use this for configure toolchain properly:
>
> I'm looking at doing the following for when SPE is set:

Definitely. It was simply good fortune that it hadn't been
used yet. And when something like you are doing arrives, we
want to have it right. Just to have it right, is a good enough
reason!

Cheers,

Bruce



>
> diff --git a/meta/recipes-devtools/gcc/gcc-common.inc b/meta/recipes-devtools/gcc/gcc-common.inc
> index 7bf036c..409ad01 100644
> --- a/meta/recipes-devtools/gcc/gcc-common.inc
> +++ b/meta/recipes-devtools/gcc/gcc-common.inc
> @@ -12,6 +12,8 @@ FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/gcc-${PV}"
>   def get_gcc_fpu_setting(bb, d):
>       if bb.data.getVar('TARGET_FPU', d, 1) in [ 'soft' ]:
>           return "--with-float=soft"
> +    if bb.data.getVar('TARGET_FPU', d, 1) in [ 'spe' ]:
> +        return "--enable-e500_double"
>       return ""
>


