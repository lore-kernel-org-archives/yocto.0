Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18498E00655
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2012 13:01:57 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id qAUL1u2h029886
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 30 Nov 2012 13:01:56 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Fri, 30 Nov 2012 13:01:55 -0800
Message-ID: <50B91EBF.4060400@windriver.com>
Date: Fri, 30 Nov 2012 16:01:51 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: =?ISO-8859-1?Q?Lisandro_Dami=E1n_Nicanor_P=E9rez_Meyer?=
	<perezmeyer@gmail.com>
References: <201211291859.27190.perezmeyer@gmail.com>
	<201211301721.13690.perezmeyer@gmail.com>
In-Reply-To: <201211301721.13690.perezmeyer@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: The routerstationpro kernel image is huge
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
X-List-Received-Date: Fri, 30 Nov 2012 21:01:57 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 12-11-30 03:21 PM, Lisandro Damián Nicanor Pérez Meyer wrote:
> On Thu 29 Nov 2012 18:59:18 Lisandro Damián Nicanor Pérez Meyer escribió:
>> Hi! First of all, I don't know if this is the correct mailing list to write
>> this. If it is not, please point me to th right one. Thanks!
>>
>> I have found that the kernel image for the routerstationpro in poky danny
>> 8.0 is huge. The flash of the device is just 16MB, so a 86 MB image is
>> more than what fits in there ;-)
>
> JFTR: the image wasn't stripped.
>
> To strip it:
>
> ../../../tmp/sysroots/x86_64-linux/usr/bin/mips32-poky-linux/mips-poky-linux-
> strip  -s -R .comment vmlinux-foo.bin

and also for the record, we have this logged in bug 3515, and we'll
make this the default for the build.

Cheers,

Bruce

>
> Kinds regards, Lisandro.
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


