Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A039E00CC5; Sun, 12 Jun 2016 19:22:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D599E00CAF
	for <yocto@yoctoproject.org>; Sun, 12 Jun 2016 19:22:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u5D2MeTU025908
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Sun, 12 Jun 2016 19:22:40 -0700
Received: from server.local (147.11.119.199) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Sun, 12 Jun 2016 19:22:39 -0700
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, <yocto@yoctoproject.org>
References: <20160613104017.70D6.4A936039@socionext.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <565cde63-3304-e5ef-156a-b54482b3bb91@windriver.com>
Date: Sun, 12 Jun 2016 22:22:39 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <20160613104017.70D6.4A936039@socionext.com>
Subject: Re: How to set KCONFIG_MODE for defconfig and fragments
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 13 Jun 2016 02:22:45 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-06-12 9:40 PM, Kunihiko Hayashi wrote:
> Hello, all
>
> Now I'm trying to build my own kernel with linux-yocto recipe,
> and I make kernel configuration fragments (".cfg" file) according to
> "Linux Kernel Development Manual", and my fragments can't be applied
> to the kernel at all.
>
> I find that linux-yocto recipe uses "allnoconfig" as default, and
> configurations that my fragments depend on are disabled.

Your fragments really should be specifying not only their options,
but the dependencies as well, or you need to have them
include other fragments that set those dependencies.

If you don't, you are relying on the baseline configuration .. which
is either a defconfig or ktype fragments in linux-yocto. That is also
ok, just something to be aware of.

>
>> KCONFIG_MODE = "--allnoconfig"
>
> I assume that KCONFIG_MODE has the option of "configme" script,
> but this option is undocumented on any manuals.
>
> If I apply "defconfig" and my additional fragments as it is,
> how do I set KCONFIG_MODE in my recipe? (null string or another option?)

KCONFIG_MODE is a variable like any other. In your kernel recipe,
you can just set it to one of the valid options.

KCONFIG_MODE = "..."

Note: those valid options are only [--alldefconfig] [--allnoconfig],
since that is what the kernel merge_config.sh script can process.

Cheers,

Bruce



>
> Regards,
> ---
> Kunihiko Hayashi
> :hayashi.kunihiko@socionext.com
>


