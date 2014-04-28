Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A9D3E00BF2
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 06:17:00 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s3SDGunL016768
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 28 Apr 2014 06:16:56 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Mon, 28 Apr 2014 06:16:56 -0700
Message-ID: <535E54BB.7060701@windriver.com>
Date: Mon, 28 Apr 2014 09:16:43 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Neuer User <auslands-kv@gmx.de>, <yocto@yoctoproject.org>
References: <ljl1vt$ink$1@ger.gmane.org> <535E5198.60709@windriver.com>
	<ljlk6u$pd6$1@ger.gmane.org>
In-Reply-To: <ljlk6u$pd6$1@ger.gmane.org>
Subject: Re: Kernel config fragments are not applied
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
X-List-Received-Date: Mon, 28 Apr 2014 13:17:04 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-04-28 09:14 AM, Neuer User wrote:
> Am 28.04.2014 15:03, schrieb Bruce Ashfield:
>>
>> The answer to your question depends on the base linux-cubox-i
>> recipe.
>>
>> Config fragment support works for kernels that inherit from linux-yocto,
>> versus ones that inherit directly from kernel.bbclass. So if you
>> pop open that base recipe, and look for a reference to linux-yocto.inc,
>> you'll have the answer.
>>
>> It is possible to bbappend the linux-yocto support into the kernel
>> recipe via your layer, and might be worth a try.
>>
>> The separation between the two classes exists to not break compatibility
>> with existing kernel recipes, or change long standing oe workflow with
>> the existing classes.
>>
>> Cheers,
>>
>> Bruce
>>
> Ahh, I see. That is probably the reason then. It includes from linux-imx:
>
> include recipes-kernel/linux/linux-imx.inc
>
> Now, should I just forget the fragment idea and use my own defconfig
> file? Or can I just include linux-yocto.inc in my bbappend?

It all depends on how adventurous you are today :) Using a defconfig
will work, and you can generate one without much trouble. Using
fragments will allow you to keep your changes separate from the
baseline configuration, but you'll need to tweak the recipe .. which
always carries a risk of some unexpected side effects.

I'm around to help regardless of which way you chose.

Cheers,

Bruce

>


