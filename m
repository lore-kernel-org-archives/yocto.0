Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AAA2E00CED
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 08:05:55 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s3BF5pQS015413
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 11 Apr 2014 08:05:51 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 11 Apr 2014 08:05:50 -0700
Message-ID: <534804C8.4060900@windriver.com>
Date: Fri, 11 Apr 2014 11:05:44 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?S=F8ren_Holm?= <sgh@sgh.dk>
References: <2489555.PeAzndN2bA@koontz> <2289397.7FZuMHCiSt@koontz>
	<5347F2E9.208@windriver.com> <3576503.mNsH0YDmIl@koontz>
In-Reply-To: <3576503.mNsH0YDmIl@koontz>
Cc: yocto@yoctoproject.org
Subject: Re: defconfig on daisy
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
X-List-Received-Date: Fri, 11 Apr 2014 15:05:56 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 14-04-11 11:03 AM, Søren Holm wrote:
> Hi Bruce
>
> I just check if AUFS is enabled. It should be since that's in my defconfig.

ok, here's my output:

yow-bashfiel-d3 [/home/bruc...957655f-r0]> grep AUFS 
linux-cb16-standard-build/.config
CONFIG_AUFS_FS=y
CONFIG_AUFS_BRANCH_MAX_127=y
# CONFIG_AUFS_BRANCH_MAX_511 is not set
# CONFIG_AUFS_BRANCH_MAX_1023 is not set
# CONFIG_AUFS_BRANCH_MAX_32767 is not set
CONFIG_AUFS_SBILIST=y
# CONFIG_AUFS_HNOTIFY is not set
# CONFIG_AUFS_RDU is not set
# CONFIG_AUFS_PROC_MAP is not set
# CONFIG_AUFS_SP_IATTR is not set
# CONFIG_AUFS_SHWH is not set
# CONFIG_AUFS_BR_RAMFS is not set
CONFIG_AUFS_BDEV_LOOP=y
# CONFIG_AUFS_DEBUG is not set

Cheers,

Bruce

>
> Fredag den 11. april 2014 09:49:29 skrev Bruce Ashfield:
>> On 14-04-11 03:39 AM, Søren Holm wrote:
>>> Sure
>>>
>>> I guess this is what you need :
>>>
>>> http://sgh.dk/~sgh/cb16_kernel.tar.bz2
>>>
>>> It's just the machine-configuration and my append-file and defconfig.
>>
>> replying again .. with the list this time.
>>
>> Great. I did a build here and I see the defconfig being applied. How
>> were you determining that it wasn't happening ? I want to make sure
>> I'm checking the same config options.
>>


