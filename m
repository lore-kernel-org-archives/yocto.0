Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5112E00BB0; Thu,  3 Nov 2016 04:00:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6159FE00A64
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 04:00:05 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 3554A68A01C; Thu,  3 Nov 2016 11:00:04 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id DA72468A019;
	Thu,  3 Nov 2016 11:00:03 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id EDD23674021B;
	Thu,  3 Nov 2016 12:00:02 +0100 (CET)
To: yocto@yoctoproject.org
References: <150d439e-c90f-9252-ab12-6ba0ac99668c@Net2Edge.com>
	<7EEDF13B-E1D4-46F1-99B9-1419B69F3DD1@gmail.com>
	<DB6PR0701MB1879F74E3194F73877BCB7E0D3A30@DB6PR0701MB1879.eurprd07.prod.outlook.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <391b493a-2f09-163b-a411-c56715997d0f@mlbassoc.com>
Date: Thu, 3 Nov 2016 12:00:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <DB6PR0701MB1879F74E3194F73877BCB7E0D3A30@DB6PR0701MB1879.eurprd07.prod.outlook.com>
Subject: Re: How do I used Yocto to build an sdcard image for my Raspberry Pi 3 Model B?
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
X-List-Received-Date: Thu, 03 Nov 2016 11:00:11 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-11-03 10:21, Thomas Thorne wrote:
>> Do you see an image with .rpi-sdimg in deploy/images/raspberrypi3
>
>
>
> No, files such as that not turning up is exactly what I am asking about.
>
>
>
> thomasthorne@thorne-ul-dt:~/work/rpi-layer/build$ ls tmp/deploy/images/raspberrypi3/*.rpi-sdimg
>
> ls: cannot access 'tmp/deploy/images/raspberrypi3/*.rpi-sdimg': No such file or directory
>
> thomasthorne@thorne-ul-dt:~/work/rpi-layer/build$ ls tmp/deploy/images/raspberrypi2/*.rpi-sdimg
>
> ls: cannot access 'tmp/deploy/images/raspberrypi2/*.rpi-sdimg': No such file or directory
>
>
>
> I have tried building for Pi 2 and Pi 3.  rpi-test-image, rpi-basic-image, console-image, core-image-minimal,
> core-image-full but none of them seem to have generated an SD image.  Plenty of other files I could put together but no
> ready formed image to dd across.

What do you get from this?
   % bitbake rpi-test-image -e | grep ^IMAGE_FSTYPES

If it doesn't say (at least)
   IMAGE_FSTYPES="tar.bz2 ext3 rpi-sdimg"
then try making those settings in your local.conf

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

