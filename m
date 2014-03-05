Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0C3CE00A27
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 08:37:54 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 7FA9B862DB;
	Wed,  5 Mar 2014 16:37:53 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 5Yk1WZiDDqf3; Wed,  5 Mar 2014 16:37:51 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 9672C8610D;
	Wed,  5 Mar 2014 16:37:51 +0000 (UTC)
Message-ID: <531752DA.70108@dynamicdevices.co.uk>
Date: Wed, 05 Mar 2014 16:37:46 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: ratheesh kannoth <ratheesh.ksz@gmail.com>
References: <CAGZFCEFFA+CBqkTbu4nsWuy4xjbbpsqrrXeLp4oE8OU84J_wkA@mail.gmail.com>	<5316ED96.8030403@dynamicdevices.co.uk>
	<CAGZFCEGhHTJam1bjAnOa_s=TAkeZe0-UcWH-1f0QNk5Cr9TaTg@mail.gmail.com>
In-Reply-To: <CAGZFCEGhHTJam1bjAnOa_s=TAkeZe0-UcWH-1f0QNk5Cr9TaTg@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org
Subject: Re: Error on building
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
X-List-Received-Date: Wed, 05 Mar 2014 16:37:55 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 05/03/2014 16:15, ratheesh kannoth wrote:
> On Wed, Mar 5, 2014 at 2:55 PM, Alex J Lennon
> <ajlennon@dynamicdevices.co.uk> wrote:
>> Ratheesh, I believe you would need to ensure that any static libraries
>> built are either removed or packaged appropriately so as not to trigger
>> the Q/A error.
>>
>> One approach is to modify the recipe to add the static library to the
>> -staticdev package, i.e. to add
>>
>> FILES_${PN}-staticdev += " path\to\static\library\libsf_engine.a"
>>
>> What recipe are you trying to build?
>>
>> Cheers,
>>
>> Alex
> Alex,
> Thanks. I am trying  to compile snort package.  I could easily get
> around these problems using  INSANE_SKIP.  But a new problem popped
> up. I have compiled  libdnet with out  a SONAME. So snort binary
> contains , ( ldd shows ) a full path to the library.  So rootfs build
> fails with
> following error.
>
> Computing transaction...error: Can't install sf-test-1.0-r0.6@x86_64:
> no package provides
> /workspace/linux/wrlinux/bitbake_build/tmp/sysroots/intel-x86-64/usr/lib64/libdnet()(64bit)
>
> I can rebuild libdnet with  SONAME ( linker flag ) and solve this
> problem  OR  I can put SKIP_FILEDEPS = "1" in  sf  recipe file. But
> SKIP_FILEDEPS  will skip every check  in all recipes. I am looking
> something similar  option like  INSANE_SKIP_${PN} += "dev-so" ??

That's interesting Ratheesh. Is there a reason for not including the
soname attribute in libdnet?

I would have thought that in a situation like that where there's no
soname the snort binary shared library path should be fixed up to the
target path, a relative path, rather than an absolute host path?

Cheers,

Alex

> -Ratheesh



