Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DDCDE013A3
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2013 08:54:06 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r34Fs19X005055
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 4 Apr 2013 08:54:02 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Thu, 4 Apr 2013 08:54:01 -0700
Message-ID: <515DA214.9020502@windriver.com>
Date: Thu, 4 Apr 2013 11:53:56 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130308 Thunderbird/17.0.4
MIME-Version: 1.0
To: Christophe Aeschlimann <c.aeschlimann@acn-group.ch>
References: <515C4466.5020209@windriver.com> <515D9454.9000703@acn-group.ch>
In-Reply-To: <515D9454.9000703@acn-group.ch>
Cc: yocto@yoctoproject.org
Subject: Re: Prevent zImage to be copied to /boot/ in image
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
X-List-Received-Date: Thu, 04 Apr 2013 15:54:06 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-04-04 10:55 AM, Christophe Aeschlimann wrote:
>> On 13-04-03 10:56 AM, Christophe Aeschlimann wrote:
>>
>> Have you tried clearing this variable:
>>
>> (from kernel.bbclass)
>>
>> # Allow machines to override this dependency if kernel image files are
>> # not wanted in images as standard
>> RDEPENDS_kernel-base ?= "kernel-image"
>
> Thank you for your answer,
>
> I did that but it still didn't work.
>
> I now found out that it is because I have an out-of-tree kernel module
> in my layer that inherits module.bbclass.
>
> And module.bbclass does the following :
>
> RDEPENDS += "kernel-image update-modules"
>
> Is there a reason why module.bbclass requires kernel-image ?

It shouldn't be required, the image isn't used by the modules at
runtime. In fact, I can see that we've removed the dependency in
master (along with other module build reorganizations).

Cheers,

Bruce

>
> Best regards,
>


