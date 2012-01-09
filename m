Return-Path: <Zumeng.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F349AE0127D
	for <yocto@yoctoproject.org>; Sun,  8 Jan 2012 20:28:15 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q094SAYl015357
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 8 Jan 2012 20:28:11 -0800 (PST)
Received: from [128.224.162.181] (128.224.162.181) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Sun, 8 Jan 2012 20:28:10 -0800
Message-ID: <4F0A6CBA.70904@windriver.com>
Date: Mon, 9 Jan 2012 12:27:38 +0800
From: Zumeng Chen <zumeng.chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.11) Gecko/20100713 Lightning/1.0b1 Thunderbird/3.0.6
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1325824274.git.zumeng.chen@windriver.com>
	<f2349ab1c0b1d39830a798bb0c001f6d41a3275a.1325824274.git.zumeng.chen@windriver.com>
	<4F07A786.2010601@linux.intel.com>
In-Reply-To: <4F07A786.2010601@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/4] lttng-ust: Integrate into yocto linux
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
X-List-Received-Date: Mon, 09 Jan 2012 04:28:16 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

于 2012年01月07日 10:01, Darren Hart 写道:
> Hi Zumeng,
>
> Thanks for putting these together.
>
> Please provide a commit message. See:
> https://wiki.yoctoproject.org/wiki/Contribution_Guidelines#Patch_Headers_and_Commit_Messages
>    
Thanks for your information, Darren.
>    
>> +LICENSE = "LGPLv2.1+&  BSD"
>> +LIC_FILES_CHKSUM = "file://COPYING;md5=e647752e045a8c45b6f583771bd561ef"
>>      
> COPYING only covers the LGPL, please add another file to cover the BSD license.
>    
Yeah. Added.
>    
>> +
>> +inherit autotools
>> +
>> +DEPENDS = "liburcu util-linux"
>> +
>> +SRC_URI = "http://lttng.org/files/lttng-ust/lttng-ust-${PV}.tar.gz"
>> +
>> +SRC_URI[md5sum] = "0f09bb954c99cb99ab6997cd492953c1"
>> +SRC_URI[sha256sum] = "e9ec3c55c2251b3f3b512bfa1015b0f67e35d55793850ccea5134f7b24ee3ba1"
>> +
>> +S = "${WORKDIR}/lttng-ust-${PV}"
>> +
>> +# Due to liburcu not building on MIPS currently this recipe needs to
>> +# be limited also.
>> +# So here let us first suppport x86/arm/powerpc platforms now.
>> +COMPATIBLE_HOST = '(x86_64.*|i.86.*|arm.*|powerpc.*)-linux'
>>      
> I don't think this is what you meant. You are restricting the type of build system,
> not the type of target you can build for.
>    
Sorry, I copied from liburcu, and I heard its Poky's convention.

Regards,
Zumeng


