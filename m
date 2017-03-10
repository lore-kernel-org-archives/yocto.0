Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49F90E009B9; Thu,  9 Mar 2017 21:42:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A66A1E009A0
	for <yocto@yoctoproject.org>; Thu,  9 Mar 2017 21:42:28 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id B8D9E68A019; Fri, 10 Mar 2017 05:42:26 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 210C368A019;
	Fri, 10 Mar 2017 05:42:26 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id C03F5674023C;
	Fri, 10 Mar 2017 06:42:25 +0100 (CET)
To: yocto@yoctoproject.org
References: <SG2PR0301MB20161B53B6ADAC7B8328ABC6D12E0@SG2PR0301MB2016.apcprd03.prod.outlook.com>
	<20170308171742.GC2586@haswell>
	<SG2PR0301MB201643023083BF1A84D10302D1200@SG2PR0301MB2016.apcprd03.prod.outlook.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <c8169cf0-c594-42d6-b286-7080e9693c95@mlbassoc.com>
Date: Fri, 10 Mar 2017 06:42:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <SG2PR0301MB201643023083BF1A84D10302D1200@SG2PR0301MB2016.apcprd03.prod.outlook.com>
Subject: Re: Raspberry Pi2 Fails to boot into LXDE.
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
X-List-Received-Date: Fri, 10 Mar 2017 05:42:31 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-03-10 01:55, Steve Plant wrote:
> OK, I have spent the last day googling my heart out trying to find the Xorg.log file without any luck.
>
>
> The problem is that due to the rpi hanging on boot, the only way I can access the SD card to look for the file is place
> it in a USB SD card reader and use my VirtualBox based Debian to "ls" directores etc.
>
> Having established that there is no file located at /var/log/Xorg.log (there isn't a log directory) but there is a
> symbolic link in the var directory - goes nowhere.
>
>
> After goggling I discovered that the file could also be in the ~/.local/share/xorg/Xorg.0.log, however if I try to look
> there I get "permission denied" and cannot seem to get to the root directory of the card and I can't find a way around
> this as I'm trying to access this directory through the USB card reader.
>
>
> Looked everywhere with no answers, Is there anyone who could help me here??

/var/log is on a volatile file system (i.e. it does not live on the SD card)

If you can get into your board via SSH, you can copy the file and send it

> ------------------------------------------------------------------------------------------------------------------------
> *From:* Khem Raj <raj.khem@gmail.com>
> *Sent:* Wednesday, 8 March 2017 5:17 p.m.
> *To:* Steve Plant
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Raspberry Pi2 Fails to boot into LXDE.
>
> On 17-03-08 12:40:51, Steve Plant wrote:
>> Hi All,
>>
>>
>> Very new to all this linux world, and especially Yocto.
>>
>>
>> I'm working on a embedded project at the moment using a raspberry pi2 board.
>>
>>
>> I have used toaster with Morty 2.2 to compile an image using"rpi-basic-image", to this I have added the following bitbake variables:
>>
>> Bitbake variables
>>
>> DISTRO
>> poky
>> DL_DIR
>> /home/steve/poky/downloads
>> IMAGE_FSTYPES
>> ext3 jffs2 tar.bz2 rpi-sdimg
>> IMAGE_INSTALL_append
>> packagegroup-core-x11-base packagegroup-lxde-base connman
>> PACKAGE_CLASSES
>> package_rpm
>> SSTATE_DIR
>> /home/steve/poky/sstate-cache
>>
>> DISABLE_OVERSCAN
>> 1
>> GPU_MEM_1024
>> 512
>>
>> I have dd'ed the image to an SD card increased the sdb2 partition to the max size and powered up the rpi. Everything looks fine to start with, as it displays the four raspberrys in the top left, then the white "Yocto Project" splash screen complete with small blue dot to the side appears, the progress bar moves across to 100 percent, then the screen turns black with a white
> cursor in the middle and it appears to freeze with only a very dim one second flash of the "act" led.
>>
>>
>> I have then connected the 7" touchscreen and apart from the added multicolored square at the very beginning I get the exact same boot up problem, hangs on the black screen with white cursor (good to see its all resized correctly for the TfT through!!)
>>
>>
>> Before adding the packagegroup-core-x11-base and packagegroup-lxde-base I successfully copied over and ran the rpi-basic-image with no problem, ending up with a usable console.
>>
>>
>> Looking for any help here, I'm thinking I've missed adding a package, or some type of local.conf instruction. any suggestions would be appreciated.............
>
> Can you send the content of /var/log/Xorg.log file ?


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

