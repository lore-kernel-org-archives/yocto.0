Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61CB2E00C17; Sun,  2 Oct 2016 23:25:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E58BCE00BE1
	for <yocto@yoctoproject.org>; Sun,  2 Oct 2016 23:25:38 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id E9D4568A01A; Mon,  3 Oct 2016 07:25:37 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 11AF668A019;
	Mon,  3 Oct 2016 07:25:32 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id A1A226740255;
	Mon,  3 Oct 2016 08:25:32 +0200 (CEST)
To: Karim ATIKI <karim_atiki@hotmail.com>
References: <HE1PR01MB1883689936BC3BB3FEECED4092C00@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<fa5f251a-532a-dfac-dbea-06aec4f3f364@mlbassoc.com>
	<3076f80c-22c1-ea6e-2775-eebb28aef664@mlbassoc.com>
	<HE1PR01MB1883F7E4F5F478499795106692C30@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<8dd4bf6b-6fb1-f307-0231-57025d243ef7@mlbassoc.com>
	<HE1PR01MB1883EF967F44283E1A6D3A8A92C20@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <74d40338-2652-d793-056d-0ad71a2bf426@mlbassoc.com>
Date: Mon, 3 Oct 2016 08:25:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <HE1PR01MB1883EF967F44283E1A6D3A8A92C20@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] failed to copy the final ***rootfs.rpi-sdimg image file
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
X-List-Received-Date: Mon, 03 Oct 2016 06:25:42 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2016-10-03 08:07, Karim ATIKI wrote:
> Hi Gary
>
>
>>The key is that you must use the latest OE-core (or Poky/Yocto) layer.
>
>
> Sorry, but isn't it what I did by cloning the very latest branches ?
> Or do you also mean that I need to clone also the very latest poky as well ?

Yes, you also need the latest [master branch] version of Poky for this to work.

n.b. it's polite to CC the mailing list so that everyone benefits from the answers.

> ------------------------------------------------------------------------------------------------------------------------
> *De :* yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> de la part de Gary Thomas <gary@mlbassoc.com>
> *Envoyé :* lundi 3 octobre 2016 06:58
> *À :* yocto@yoctoproject.org
> *Objet :* Re: [yocto] [meta-raspberrypi] failed to copy the final ***rootfs.rpi-sdimg image file
>
> On 2016-10-02 17:58, Karim ATIKI wrote:
>> Hi Gary,
>>
>>
>>>That said, you also need a recent checkout of OE-core as the meta-raspberrypi
>>>and OE-core layers need to be in sync. These particular variables were changed
>>>starting with OE core rev 6d969bacc718e21a5246d4da9bf9639dcae29b02
>>>
>>>Just use the latest master of both meta-raspberrypi and OE-core
>>>and you should be fine.
>>
>>
>> I've cloned meta-raspberrypi and meta-openembedded with the latest branches.
>>
>> It still fails at the same step ☹ (see below).
>
> The key is that you must use the latest OE-core (or Poky/Yocto) layer.
>
>>>>
>>>>
>>>> I'm building a custom core-image-x11 for my raspberrypi3 board, with poky krogoth.
>>>>
>>>> In the very last steps:
>>>>
>>>>
>>>> ERROR: core-image-x11-1.0-r0 do_image_rpi_sdimg: Function failed: do_image_rpi_sdimg (log file is located at
>>>> /home/kai/yocto/build-rpi3/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-x11/1.0-r0/temp/log.do_image_rpi_sdimg.16110)
>>>>
>>>>
>>>>     ERROR: Logfile of failure stored in:
>>>>
>>>> /home/kai/yocto/build-rpi3/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-x11/1.0-r0/temp/log.do_image_rpi_sdimg.16110
>>>>
>>>>
>>>> Log data follows:
>>>> | DEBUG: Executing python function set_image_size
>>>> | DEBUG: Python function set_image_size finished
>>>> | DEBUG: Executing shell function do_image_rpi_sdimg
>>>> | Creating filesystem with Boot partition 40960 KiB and RootFS 430080 KiB
>>>>
>>>> | dd: failed to open '/core-image-x11-raspberrypi3-20161001194728.rootfs.rpi-sdimg': Permission denied
>>>>
>>>> | WARNING: exit code 1 from a shell command.
>>>> | ERROR: Function failed: do_image_rpi_sdimg (log file is located at
>>>> /home/kai/yocto/build-rpi3/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-x11/1.0-r0/temp/log.do_image_rpi_sdimg.16110)
>>>>
>>>> ERROR: Task 16 (/home/kai/yocto/poky-krogoth/meta/recipes-graphics/images/core-image-x11.bb, do_image_rpi_sdimg) failed
>>>> with exit code '1'
>>>> NOTE: Tasks Summary: Attempted 4771 tasks of which 4770 didn't need to be rerun and 1 failed.
>>>> No currently running tasks (4367 of 4773)
>>>>
>>>>
>>>> It looks like it tries to create the image in the path:
>>>>   /core-image-x11-raspberrypi3-20161001194728.rootfs.rpi-sdimg': Permission denied
>>>>
>>>>
>>>> I looked into the bbclass, and at first glance I'd say that the respective path
>>>> is "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>>>>
>>>>
>>>> So ${IMGDEPLOYDIR} seems to be empty.
>>>>
>>>>
>>>> I haven't found any reference to IMGDEPLOYDIR elsewhere.
>>>>
>>>
>>> Make sure you have the latest [master] revisions.  This should have been fixed by:
>>>
>>> commit 4817e2c087097c02755d6309304878e42cf61d3c
>>> Author: Andreas Müller <schnitzeltony@googlemail.com>
>>> Date:   Tue Sep 13 02:19:06 2016 +0200
>>>
>>>     sdcard_image-rpi.bbclass: avoid corrupted images with latest oe-core
>>>
>>
>> That said, you also need a recent checkout of OE-core as the meta-raspberrypi
>> and OE-core layers need to be in sync. These particular variables were changed
>> starting with OE core rev 6d969bacc718e21a5246d4da9bf9639dcae29b02
>>
>> Just use the latest master of both meta-raspberrypi and OE-core
>> and you should be fine.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

