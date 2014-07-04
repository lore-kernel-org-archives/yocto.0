Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A55DE006F7; Fri,  4 Jul 2014 01:28:40 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22BF2E006F3
	for <yocto@yoctoproject.org>; Fri,  4 Jul 2014 01:28:36 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s648SXC5014943
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 4 Jul 2014 01:28:33 -0700 (PDT)
Received: from [128.224.162.181] (128.224.162.181) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 4 Jul 2014 01:28:32 -0700
Message-ID: <53B665AF.5080908@windriver.com>
Date: Fri, 4 Jul 2014 16:28:31 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: mareczek <mareczek6415@gmail.com>, <yocto@yoctoproject.org>
References: <53B554AC.3060301@gmail.com> <53B5F2EE.5000707@windriver.com>
	<53B65946.1010909@gmail.com>
In-Reply-To: <53B65946.1010909@gmail.com>
Subject: Re: do_populate_sdk error
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
X-List-Received-Date: Fri, 04 Jul 2014 08:28:40 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit


Sounds good, would you please provide the reproduce steps so that I can
file a bug for daisy ?

// Robert

On 07/04/2014 03:35 PM, mareczek wrote:
> Thank you very much, it solves that error.
>
> Marek
>
> Dne 7/4/2014 2:18 AM, Robert Yang napsal(a):
>>
>> Seems that something is wrong with PACKAGE_CLASSES = package_deb,
>> maybe you can use PACKAGE_CLASSES = package_rpm ?
>>
>> // Robert
>>
>> On 07/03/2014 09:03 PM, mareczek wrote:
>>> Hello,
>>>
>>> I ran into an error during do_populate_sdk
>>>
>>> ERROR: Unable to install packages. Command
>>> '/yocto-daisy/build/tmp/sysroots/i686-linux/usr/bin/apt-get install --force-yes
>>> --allow-unauthenticated nativesdk-packagegroup-sdk-host
>>> packagegroup-cross-canadian-imx6riotboard' returned 100:
>>> Reading package lists...
>>> Building dependency tree...
>>> Reading state information...
>>> W: Unable to read
>>> /yocto-daisy/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/meta-toolchain/1.0-r7/apt-sdk/preferences.d/
>>>
>>> - DirectoryExists (2: No such file or directory)
>>> E: Unable to locate package nativesdk-packagegroup-sdk-host
>>>
>>> ERROR: Function failed: do_populate_sdk
>>> ERROR: Logfile of failure stored in:
>>> /yocto-daisy/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/meta-toolchain/1.0-r7/temp/log.do_populate_sdk.32319
>>>
>>>
>>> ERROR: Task 7 (/yocto-daisy/meta/recipes-core/meta/meta-toolchain.bb,
>>> do_populate_sdk) failed with exit code '1'
>>>
>>> I tried to find an answer, but without success. I tried to compile
>>> nativesdk-packagegroup-sdk-host and it was already compiled.
>>>
>>> I was able to compile u-boot, kernel, kernel modules, dtb, rootfs and everythink
>>> works quite well, but now I'm stuck with this and have no clue how to solve
>>> this. If anyone knows how to make it working I would be very glad.
>>>
>>> Thank you very much
>>>
>>> Marek
>
>
>

