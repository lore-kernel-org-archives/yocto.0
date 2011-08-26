Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57DF1E011BE
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2011 09:13:44 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7QGDh3c002254
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 26 Aug 2011 09:13:43 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 26 Aug 2011 09:13:43 -0700
Message-ID: <4E57C633.7090402@windriver.com>
Date: Fri, 26 Aug 2011 12:13:39 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4E57BC7E.7070209@mlbassoc.com>
	<4E57BE73.8050809@windriver.com>	<4E57C144.2060901@mlbassoc.com>
	<4E57C5FC.60909@windriver.com>
In-Reply-To: <4E57C5FC.60909@windriver.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Strange build warning
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
X-List-Received-Date: Fri, 26 Aug 2011 16:13:44 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-26 12:12 PM, Bruce Ashfield wrote:
> On 11-08-26 11:52 AM, Gary Thomas wrote:
>> On 2011-08-26 09:40, Bruce Ashfield wrote:
>>> On 11-08-26 11:32 AM, Gary Thomas wrote:
>>>> Building 'bitbake core-image-sato' from scratch:
>>>> OE Build Configuration:
>>>> BB_VERSION = "1.13.3"
>>>> TARGET_ARCH = "i586"
>>>> TARGET_OS = "linux"
>>>> MACHINE = "qemux86"
>>>> DISTRO = "poky"
>>>> DISTRO_VERSION = "1.0+snapshot-20110826"
>>>> TUNE_FEATURES = "m32 i586"
>>>> TARGET_FPU = ""
>>>> meta
>>>> meta-yocto = "master:6c2b7beac3cd23ed44bd3e195c6360a0932876bf"
>>>>
>>>> I saw this warning:
>>>> =======================================================
>>>> This BSP sets 1 invalid/obsolete kernel options.
>>>> These config options are not offered anywhere within this kernel.
>>>> The full list can be found in your workspace at:
>>>> /local/pc_poky/tmp/work/atom_pc-poky-linux/linux-yocto-3.0.3+git1+5b535279e61197cb194bb2dfceb8b7a04128387c_1+ead7d8334e4c075906d029789333f43e54f6257a-r1/linux/meta/cfg/yocto/standard/common-pc/atom-pc/invalid.cfg
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> This BSP sets 11 kernel options that are possibly non-hardware related.
>>>> The full list can be found in your workspace at:
>>>> /local/pc_poky/tmp/work/atom_pc-poky-linux/linux-yocto-3.0.3+git1+5b535279e61197cb194bb2dfceb8b7a04128387c_1+ead7d8334e4c075906d029789333f43e54f6257a-r1/linux/meta/cfg/yocto/standard/common-pc/atom-pc/specified_non_hdw.cfg
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> WARNING: There were 88 hardware options requested that do not
>>>> have a corresponding value present in the final ".config" file.
>>>> This probably means you aren't getting the config you wanted.
>>>> The full list can be found in your workspace at:
>>>> /local/pc_poky/tmp/work/atom_pc-poky-linux/linux-yocto-3.0.3+git1+5b535279e61197cb194bb2dfceb8b7a04128387c_1+ead7d8334e4c075906d029789333f43e54f6257a-r1/linux/meta/cfg/yocto/standard/common-pc/atom-pc/mismatch.cfg
>>>>
>>>>
>>>>
>>>>
>>>> ========================================================
>>>> along with a note that the build was pausing for a few seconds so I
>>>> would notice the error/warning.
>>>>
>>>> Is this important? If not, why scare me like this?
>>>
>>> It was a temporary warning when I forgot to bump the internal
>>> version in the kernel tree, to match the external recipe one.
>>>
>>> It's just telling you that it couldn't audit to be sure that
>>> any configs you asked for .. made it to the final build. But
>>> in this case, I can assure you that they did.
>>
>> So, is it fixed, or should I file a bug like Joshua recommended?
>
> Fixed:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=c03195482276d7c96d52f21562f8fa6a636f68a7

but I should add, if you are using meta-intel, and the meta
SRCREV hasn't been bumped yet, you'd still see this.

Bruce

>
>
> Bruce
>
>>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


