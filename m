Return-Path: <Yang.Shi@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F216E00596
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 11:33:05 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q39IX4u1023947
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 9 Apr 2012 11:33:04 -0700 (PDT)
Received: from [147.11.152.89] (147.11.152.89) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 9 Apr 2012 11:33:05 -0700
Message-ID: <4F832B60.9060008@windriver.com>
Date: Mon, 9 Apr 2012 11:33:04 -0700
From: Yang Shi <yang.shi@windriver.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <1332796758-9702-1-git-send-email-yang.shi@windriver.com>
	<1332796758-9702-2-git-send-email-yang.shi@windriver.com>
	<4F830FEF.7020001@linux.intel.com>
In-Reply-To: <4F830FEF.7020001@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/2] initrdscripts: fix init-live.sh and use unionfs
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
X-List-Received-Date: Mon, 09 Apr 2012 18:33:05 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 4/9/2012 9:35 AM, Darren Hart wrote:
>
> On 03/26/2012 02:19 PM, Yang Shi wrote:
>> [YOCTO #1487]
>>
>> Use unionfs to mount rootfs and make root file system can be writen when using liveCD to boot up.
>> Set UNION_FS variable depending on kenrel config, so that it can work with kernel which doesn't
> s/kenrel/kernel/
>
>> have unionfs feature.
> This doesn't explain what the problem was. Someone reading this commit
> message would not know WHY this change was needed.
>
> The approach looks good though. Minor spelling issues below...

OK, thanks Darren. I will refine the log and fix the spelling errors soon.

Yang

>
>> Signed-off-by: Yang Shi<yang.shi@windriver.com>
>> ---
>>   meta/recipes-core/initrdscripts/files/init-live.sh |   21 +++++++++++++++++--
>>   .../initrdscripts/initramfs-live-boot_1.0.bb       |    9 +++++++-
>>   2 files changed, 26 insertions(+), 4 deletions(-)
>>
>> diff --git a/meta/recipes-core/initrdscripts/files/init-live.sh b/meta/recipes-core/initrdscripts/files/init-live.sh
>> index eb5ab5b..abaf16c 100644
>> --- a/meta/recipes-core/initrdscripts/files/init-live.sh
>> +++ b/meta/recipes-core/initrdscripts/files/init-live.sh
>> @@ -7,6 +7,7 @@ ROOT_IMAGE="rootfs.img"
>>   MOUNT="/bin/mount"
>>   UMOUNT="/bin/umount"
>>   ISOLINUX=""
>> +UNIONFS="no"
>>
>>   early_setup() {
>>       mkdir /proc
>> @@ -89,10 +90,24 @@ case $label in
>>   	mkdir $ROOT_MOUNT
>>   	mknod /dev/loop0 b 7 0 2>/dev/null
>>
>> -	if ! $MOUNT -o rw,loop,noatime,nodiratime /media/$i/$ISOLINUX/$ROOT_IMAGE $ROOT_MOUNT ; then
>> -	    fatal "Couldnt mount rootfs image"
> s/Couldnt/Could not/
>
>> +	
>> +	if [ "$UNIONFS" = "yes" ]; then
>> +	    mkdir /rootfs-tmp
>> +
>> +	    if ! $MOUNT -o rw,loop,noatime,nodiratime /media/$i/$ISOLINUX/$ROOT_IMAGE /rootfs-tmp ; then
>> +		fatal "Couldnt mount rootfs image"
> s/Couldnt/Could not/
>
>> +	    else
>> +		mkdir /cow
>> +		mount -t tmpfs -o rw,noatime,mode=755 tmpfs /cow
>> +		mount -t unionfs -o dirs=/cow:/rootfs-tmp=ro unionfs $ROOT_MOUNT
>> +		boot_live_root
>> +	    fi
>>   	else
>> -	    boot_live_root
>> +	    if ! $MOUNT -o rw,loop,noatime,nodiratime /media/$i/$ISOLINUX/$ROOT_IMAGE $ROOT_MOUNT ; then
>> +		fatal "Couldnt mount rootfs image"
> s/Couldnt/Could not/
>
>> +	    else
>> +		boot_live_root
>> +	    fi
>>   	fi
>>   	;;
>>       install)
>> diff --git a/meta/recipes-core/initrdscripts/initramfs-live-boot_1.0.bb b/meta/recipes-core/initrdscripts/initramfs-live-boot_1.0.bb
>> index e85a0e1..f7f0c9d 100644
>> --- a/meta/recipes-core/initrdscripts/initramfs-live-boot_1.0.bb
>> +++ b/meta/recipes-core/initrdscripts/initramfs-live-boot_1.0.bb
>> @@ -2,10 +2,17 @@ DESCRIPTION = "A live image init script"
>>   LICENSE = "MIT"
>>   LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>>   RDEPENDS = "udev"
>> +DEPENDS = "virtual/kernel"
>>   SRC_URI = "file://init-live.sh"
>>
>> -PR = "r7"
>> +PR = "r8"
>>
>> +do_compile() {
>> +	if grep -q "CONFIG_UNION_FS=y" ${STAGING_KERNEL_DIR}/.config; then
>> +		sed -i 's/UNIONFS="no"/UNIONFS="yes"/g' ${WORKDIR}/init-live.sh
>> +	fi
>> +}
>> +
>>   do_install() {
>>           install -m 0755 ${WORKDIR}/init-live.sh ${D}/init
>>   }


