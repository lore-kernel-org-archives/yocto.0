Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8205AE006DB; Wed, 23 Jul 2014 07:37:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39A0DE006B7
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 07:37:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s6NEbi07022334
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 23 Jul 2014 07:37:44 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.233) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.169.1; Wed, 23 Jul 2014 07:37:43 -0700
Message-ID: <53CFC8B8.9090900@windriver.com>
Date: Wed, 23 Jul 2014 09:37:44 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "zhenhua.luo@freescale.com" <zhenhua.luo@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <dfd0afc8932f41e19daf0a1fe13578b3@CY1PR0301MB0715.namprd03.prod.outlook.com>
	<53CE9FC2.3090507@windriver.com>
	<6f5922a626734b809df5f899dc3ae3e3@CY1PR0301MB0715.namprd03.prod.outlook.com>
In-Reply-To: <6f5922a626734b809df5f899dc3ae3e3@CY1PR0301MB0715.namprd03.prod.outlook.com>
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
X-List-Received-Date: Wed, 23 Jul 2014 14:37:53 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 7/22/14, 9:28 PM, zhenhua.luo@freescale.com wrote:
> Hi Mark,
>
> Thanks for your comments.
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Mark Hatle
>>
>> On 7/22/14, 10:11 AM, zhenhua.luo@freescale.com wrote:
>>> Hi all,
>>
>> Which release are you using.
> [Luo Zhenhua-B19537] I tried poky daisy + meta-fsl-ppc master + meta-selinux master

This makes me suspect a kernel issues.  The last time I looked at meta-fsl-ppc, 
it had a custom kernel (didn't use the linux-yocto kernel).  It appears (based 
on your original message) that all of the needed values were enabled:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/tree/recipes-kernel/linux/linux-yocto/selinux.cfg

So I'm at a loss to explain the issue.  The only other suggestion would be to 
pass 'selinux=1' or is it 'enforce=1' on the command line and see if that starts 
the system up in enforcing mode.

>> The last version I used w/ meta-selinux was the 1.5 release.
>>
>> We're planning on updating it to master in the 'near' future [patches
>> welcome!], and I've been told by a few others of success w/ 1.7.

(I meant 1.6 above BTW, since there is no 1.7 yet.)

> [Luo Zhenhua-B19537] I will try master and dora.

Try dora, it's possible there is something minor that isn't right.

>> Did you enable the 'selinux' distribution flag?
>> If so, it should have enabled all of the components necessary for this stuff to be enabled.
> [Luo Zhenhua-B19537] Yes, selinux is in DISTRO_FEATURES.

That should be was was needed.  The first boot should provision the system and 
reboot.  After that things should be enabled and functional.

--Mark

>
> Best Regards,
>
> Zhenhua
>
>> --Mark
>>
>>> I use the meta-selinux layer to build a core-image-selinux rootfs
>>> image, and build kernel with following options enabled.
>>>
>>> CONFIG_AUDIT=y
>>>
>>> CONFIG_NETWORK_SECMARK=y
>>>
>>> CONFIG_EXT2_FS_SECURITY=y
>>>
>>> CONFIG_EXT3_FS_SECURITY=y
>>>
>>> CONFIG_EXT4_FS_SECURITY=y
>>>
>>> CONFIG_JFS_SECURITY=y
>>>
>>> CONFIG_REISERFS_FS_SECURITY=y
>>>
>>> CONFIG_JFFS2_FS_SECURITY=y
>>>
>>> CONFIG_SECURITY_NETWORK=y
>>>
>>> CONFIG_SECURITY_SELINUX=y
>>>
>>> CONFIG_SECURITY_SELINUX_BOOTPARAM=y
>>>
>>> CONFIG_SECURITY_SELINUX_BOOTPARAM_VALUE=1
>>>
>>> CONFIG_SECURITY_SELINUX_DISABLE=y
>>>
>>> CONFIG_SECURITY_SELINUX_DEVELOP=y
>>>
>>> CONFIG_SECURITY_SELINUX_AVC_STATS=y
>>>
>>> CONFIG_SECURITY_SELINUX_CHECKREQPROT_VALUE=1
>>>
>>> I use the generated images to boot up FSL PPC t4240qds board(tried
>>> both NFS boot and RAM boot with ext2.gz.u-boot rootfs), the SELinux is
>>> not turned on after kernel boot up.
>>>
>>> following is some information in rootfs.
>>>
>>> root@t4240qds:~# sestatus
>>>
>>> SELinux status:                 disabled
>>>
>>> root@t4240qds:~#
>>>
>>> root@t4240qds:~# cat /etc/selinux/config
>>>
>>> # This file controls the state of SELinux on the system.
>>>
>>> # SELINUX= can take one of these three values:
>>>
>>> #     enforcing - SELinux security policy is enforced.
>>>
>>> #     permissive - SELinux prints warnings instead of enforcing.
>>>
>>> #     disabled - No SELinux policy is loaded.
>>>
>>> SELINUX=enforcing
>>>
>>> # SELINUXTYPE= can take one of these two values:
>>>
>>> #     standard - Standard Security protection.
>>>
>>> #     mls - Multi Level Security protection.
>>>
>>> SELINUXTYPE=mls
>>>
>>> root@t4240qds:~# cat /proc/cmdline
>>>
>>> root=/dev/ram rw console=ttyS0,115200 selinux=1
>>>
>>> root@t4240qds:~# setenforce 1
>>>
>>> setenforce: SELinux is disabled
>>>
>>> root@t4240qds:~# getenforce
>>>
>>> Disabled
>>>
>>> root@t4240qds:~#
>>>
>>> Can somebody shed some light on the issue?
>>>
>>> Best Regards,
>>>
>>> Zhenhua
>>>
>>>
>>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


