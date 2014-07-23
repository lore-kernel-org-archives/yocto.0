Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBD25E006DB; Wed, 23 Jul 2014 07:41:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E32BDE006B7
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 07:41:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s6NEfQ6Q014249
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 07:41:26 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.233) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.169.1; Wed, 23 Jul 2014 07:41:25 -0700
Message-ID: <53CFC996.1050904@windriver.com>
Date: Wed, 23 Jul 2014 09:41:26 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <dfd0afc8932f41e19daf0a1fe13578b3@CY1PR0301MB0715.namprd03.prod.outlook.com>	<53CE9FC2.3090507@windriver.com>	<6f5922a626734b809df5f899dc3ae3e3@CY1PR0301MB0715.namprd03.prod.outlook.com>
	<0ad645f8fb6c4c8e8aff82398133db2e@CY1PR0301MB0715.namprd03.prod.outlook.com>
In-Reply-To: <0ad645f8fb6c4c8e8aff82398133db2e@CY1PR0301MB0715.namprd03.prod.outlook.com>
Subject: Re: SELinux doesn't work on t4240qds
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
X-List-Received-Date: Wed, 23 Jul 2014 14:41:32 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 7/23/14, 7:15 AM, zhenhua.luo@freescale.com wrote:
> I tried dora(poky + meta-selinux + meta-fsl-ppc), following error message appears during kernel boot up, please help.
>
> RAMDISK: gzip image found at block 0
> VFS: Mounted root (ext2 filesystem) on device 1:0.
> devtmpfs: mounted
> Freeing unused kernel memory: 340k freed
> Mount failed for selinuxfs on /sys/fs/selinux:  No such file or directory

Sounds like the selinuxfs was not enabled -- or the /sys/fs/selinux mount mount 
was not created by default.  I'd start with suspecting the kernel configuration, 
and then look to see if the early init scripts for selinux are incorrect and 
need to add that mount mount.

--Mark

> Unable to load SELinux Policy. Machine is in enforcing mode. Halting now.
> Kernel panic - not syncing: Attempted to kill init! exitcode=0x00000100
>
> Call Trace:
> [c0000002f9143ae0] [c000000000008b2c] .show_stack+0x7c/0x1f0 (unreliable)
> [c0000002f9143bb0] [c000000000816e48] .panic+0xec/0x24c
> [c0000002f9143c40] [c00000000003d094] .do_exit+0x964/0xa40
> [c0000002f9143d30] [c00000000003e354] .do_group_exit+0x54/0xf0
> [c0000002f9143dc0] [c00000000003e404] .SyS_exit_group+0x14/0x20
> [c0000002f9143e30] [c000000000000598] syscall_exit+0x0/0x88
> Rebooting in 180 seconds..
>
>
> Best Regards,
>
> Zhenhua
>
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of zhenhua.luo@freescale.com
>> Sent: Wednesday, July 23, 2014 10:29 AM
>> To: Mark Hatle; yocto@yoctoproject.org
>> Subject: Re: [yocto] SELinux doesn't work on t4240qds
>>
>> Hi Mark,
>>
>> Thanks for your comments.
>>
>>> -----Original Message-----
>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>> bounces@yoctoproject.org] On Behalf Of Mark Hatle
>>>
>>> On 7/22/14, 10:11 AM, zhenhua.luo@freescale.com wrote:
>>>> Hi all,
>>>
>>> Which release are you using.
>> [Luo Zhenhua-B19537] I tried poky daisy + meta-fsl-ppc master + meta-
>> selinux master
>>
>>> The last version I used w/ meta-selinux was the 1.5 release.
>>>
>>> We're planning on updating it to master in the 'near' future [patches
>>> welcome!], and I've been told by a few others of success w/ 1.7.
>> [Luo Zhenhua-B19537] I will try master and dora.
>>
>>> Did you enable the 'selinux' distribution flag?
>>> If so, it should have enabled all of the components necessary for this
>> stuff to be enabled.
>> [Luo Zhenhua-B19537] Yes, selinux is in DISTRO_FEATURES.
>>
>>
>> Best Regards,
>>
>> Zhenhua
>>
>>> --Mark
>>>
>>>> I use the meta-selinux layer to build a core-image-selinux rootfs
>>>> image, and build kernel with following options enabled.
>>>>
>>>> CONFIG_AUDIT=y
>>>>
>>>> CONFIG_NETWORK_SECMARK=y
>>>>
>>>> CONFIG_EXT2_FS_SECURITY=y
>>>>
>>>> CONFIG_EXT3_FS_SECURITY=y
>>>>
>>>> CONFIG_EXT4_FS_SECURITY=y
>>>>
>>>> CONFIG_JFS_SECURITY=y
>>>>
>>>> CONFIG_REISERFS_FS_SECURITY=y
>>>>
>>>> CONFIG_JFFS2_FS_SECURITY=y
>>>>
>>>> CONFIG_SECURITY_NETWORK=y
>>>>
>>>> CONFIG_SECURITY_SELINUX=y
>>>>
>>>> CONFIG_SECURITY_SELINUX_BOOTPARAM=y
>>>>
>>>> CONFIG_SECURITY_SELINUX_BOOTPARAM_VALUE=1
>>>>
>>>> CONFIG_SECURITY_SELINUX_DISABLE=y
>>>>
>>>> CONFIG_SECURITY_SELINUX_DEVELOP=y
>>>>
>>>> CONFIG_SECURITY_SELINUX_AVC_STATS=y
>>>>
>>>> CONFIG_SECURITY_SELINUX_CHECKREQPROT_VALUE=1
>>>>
>>>> I use the generated images to boot up FSL PPC t4240qds board(tried
>>>> both NFS boot and RAM boot with ext2.gz.u-boot rootfs), the SELinux
>>>> is not turned on after kernel boot up.
>>>>
>>>> following is some information in rootfs.
>>>>
>>>> root@t4240qds:~# sestatus
>>>>
>>>> SELinux status:                 disabled
>>>>
>>>> root@t4240qds:~#
>>>>
>>>> root@t4240qds:~# cat /etc/selinux/config
>>>>
>>>> # This file controls the state of SELinux on the system.
>>>>
>>>> # SELINUX= can take one of these three values:
>>>>
>>>> #     enforcing - SELinux security policy is enforced.
>>>>
>>>> #     permissive - SELinux prints warnings instead of enforcing.
>>>>
>>>> #     disabled - No SELinux policy is loaded.
>>>>
>>>> SELINUX=enforcing
>>>>
>>>> # SELINUXTYPE= can take one of these two values:
>>>>
>>>> #     standard - Standard Security protection.
>>>>
>>>> #     mls - Multi Level Security protection.
>>>>
>>>> SELINUXTYPE=mls
>>>>
>>>> root@t4240qds:~# cat /proc/cmdline
>>>>
>>>> root=/dev/ram rw console=ttyS0,115200 selinux=1
>>>>
>>>> root@t4240qds:~# setenforce 1
>>>>
>>>> setenforce: SELinux is disabled
>>>>
>>>> root@t4240qds:~# getenforce
>>>>
>>>> Disabled
>>>>
>>>> root@t4240qds:~#
>>>>
>>>> Can somebody shed some light on the issue?
>>>>
>>>> Best Regards,
>>>>
>>>> Zhenhua
>>>>
>>>>
>>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


