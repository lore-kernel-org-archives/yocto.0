Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB19BE00C08; Wed, 21 Sep 2016 00:58:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EF84E008D3
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 00:58:19 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 4C0CB68A01B; Wed, 21 Sep 2016 08:58:19 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id C2D4968A019;
	Wed, 21 Sep 2016 08:58:18 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 7560167400F2;
	Wed, 21 Sep 2016 09:58:18 +0200 (CEST)
To: =?UTF-8?Q?Andreas_M=c3=bcller?= <schnitzeltony@googlemail.com>
References: <1474442792-27579-1-git-send-email-gary@mlbassoc.com>
	<CALbNGRTDF3YdM5P+kt2xDo+9RwiiE4GzfKMRbwC_VKN7tYk=OA@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <31a906ff-24af-7ec6-26a6-a10519317428@mlbassoc.com>
Date: Wed, 21 Sep 2016 09:58:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CALbNGRTDF3YdM5P+kt2xDo+9RwiiE4GzfKMRbwC_VKN7tYk=OA@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: Fix sdimg generation
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
X-List-Received-Date: Wed, 21 Sep 2016 07:58:21 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2016-09-21 09:54, Andreas Müller wrote:
> On Wed, Sep 21, 2016 at 9:26 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>> Track changes in OE-core variable names - needed to be able to
>> build an rpi-sdimg image file.
>>
>> Signed-off-by: Gary Thomas <gary@mlbassoc.com>
>> ---
>>  classes/sdcard_image-rpi.bbclass | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
>> index 388398b..ad245f3 100644
>> --- a/classes/sdcard_image-rpi.bbclass
>> +++ b/classes/sdcard_image-rpi.bbclass
>> @@ -47,7 +47,7 @@ IMAGE_ROOTFS_ALIGNMENT = "4096"
>>
>>  # Use an uncompressed ext3 by default as rootfs
>>  SDIMG_ROOTFS_TYPE ?= "ext3"
>> -SDIMG_ROOTFS = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.${SDIMG_ROOTFS_TYPE}"
>> +SDIMG_ROOTFS = "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.${SDIMG_ROOTFS_TYPE}"
>>
>>  IMAGE_DEPENDS_rpi-sdimg = " \
>>                         parted-native \
>> @@ -59,7 +59,7 @@ IMAGE_DEPENDS_rpi-sdimg = " \
>>                         "
>>
>>  # SD card image name
>> -SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>> +SDIMG = "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>>
>>  # Compression method to apply to SDIMG after it has been created. Supported
>>  # compression formats are "gzip", "bzip2" or "xz". The original .rpi-sdimg file
>> --
>> 2.7.4
>>
> Isn't that the same as [1]?
>
> [1] https://lists.yoctoproject.org/pipermail/yocto/2016-September/031961.html

Yes, it looks like it is, but that one is still not in master :-(
so I thought I'd give it a nudge!

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

