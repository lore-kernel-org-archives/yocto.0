Return-Path: <Paul.Gortmaker@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16B7DE0123F
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2012 09:40:42 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0RHef4v001153
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 27 Jan 2012 09:40:41 -0800 (PST)
Received: from [128.224.146.65] (128.224.146.65) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 27 Jan 2012 09:40:41 -0800
Message-ID: <4F22E198.5090502@windriver.com>
Date: Fri, 27 Jan 2012 12:40:40 -0500
From: Paul Gortmaker <paul.gortmaker@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.24) Gecko/20111109 Thunderbird/3.1.16
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <1327681331-11557-1-git-send-email-paul.gortmaker@windriver.com>
	<4F22DAD1.4080405@linux.intel.com>
In-Reply-To: <4F22DAD1.4080405@linux.intel.com>
X-Originating-IP: [128.224.146.65]
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] mpc8315: build u-boot by default.
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
X-List-Received-Date: Fri, 27 Jan 2012 17:40:42 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 12-01-27 12:11 PM, Darren Hart wrote:
> 
> 
> On 01/27/2012 08:22 AM, Paul Gortmaker wrote:
>> Valdiated on v2011.12 with hardware:
>>
>>     U-Boot 2011.12 (Jan 26 2012 - 16:55:23)MPC83XX
>>
>>     Reset Status: Software Hard, External/Internal Soft, External/Internal Hard
>>
>>     CPU:   e300c3, MPC8315E, Rev: 1.2 at 400 MHz, CSB: 133.333 MHz
>>     Board: Freescale MPC8315ERDB Rev 1.0
>>     I2C:   ready
>>     DRAM:  128 MiB (DDR2, 32-bit, ECC off, 266.667 MHz)
>>     Flash: 8 MiB
>>     NAND:  32 MiB
>>     PCIE0: No link
>>     PCIE1: No link
>>     In:    serial
>>     Out:   serial
>>     Err:   serial
>>     Net:   eTSEC0, eTSEC1
>>     Hit any key to stop autoboot:  0
>>     => ver
>>
>>     U-Boot 2011.12 (Jan 26 2012 - 16:55:23)MPC83XX
>>     powerpc-poky-linux-gcc (GCC) 4.6.3 20111117 (prerelease)
>>     GNU ld (GNU Binutils) 2.22
>>     =>
>>
>> Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
> 
> Hi Paul,
> 
> Have you verified that the u-boot image this creates functions properly
> when flashed to the mpc8315? Last time I tried I bricked the board - and

Was there a specific functional test that you had in mind?

I ask that, since for a basic overall "does it work" type question,
I think I covered that in the commit log above.

Thanks,
Paul.


> still haven't got around to unbricking it.
> 
> --
> Darren
> 
>>
>> diff --git a/meta-yocto/conf/machine/mpc8315e-rdb.conf b/meta-yocto/conf/machine/mpc8315e-rdb.conf
>> index d3a5b1c..74ef611 100644
>> --- a/meta-yocto/conf/machine/mpc8315e-rdb.conf
>> +++ b/meta-yocto/conf/machine/mpc8315e-rdb.conf
>> @@ -7,6 +7,9 @@ require conf/machine/include/tune-ppc603e.inc
>>  
>>  KERNEL_IMAGETYPE = "uImage"
>>  
>> +EXTRA_IMAGEDEPENDS += "u-boot"
>> +UBOOT_MACHINE_mpc8315e-rdb = "MPC8315ERDB_config"
>> +
>>  SERIAL_CONSOLE = "115200 ttyS0"
>>  
>>  MACHINE_FEATURES = "kernel26 keyboard pci ext2 ext3 serial"
> 

