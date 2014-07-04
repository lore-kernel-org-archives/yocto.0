Return-Path: <mareczek6415@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68068E006F6; Fri,  4 Jul 2014 00:35:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mareczek6415[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09A80E0045F
	for <yocto@yoctoproject.org>; Fri,  4 Jul 2014 00:35:40 -0700 (PDT)
Received: by mail-wi0-f173.google.com with SMTP id cc10so12473448wib.12
	for <yocto@yoctoproject.org>; Fri, 04 Jul 2014 00:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=rgW3nsX9ZBDuoEBIyyeKrLQoQsL3Atgf51n/cyQo71k=;
	b=wkMD6EB3VlEYUHi9/1rgVSR3b2F8vrcwJatZMrRYnDorPtjIyaN+GPY1ZD5s1rTtGP
	A37mFwxWZ8TEvhOjUBRf3AkWn83x3yCFbAl00+zbVbEHaLqQAIvxBav3ulBdIGp9NH5d
	/6f3+NoFUFyo9S18ktYbJe2ekIRA05xdYwpd9+ykn7zVmgCkkTAzDBdOWi/+akwKXpXA
	UriHJ8ZrXZK0Q5juFddxH/FumB+axAnrJX92M6vKNapIsd1XAuPzmGVGx7t+dBDwqKzi
	WOlCRRS6RUdFaIxmM6NZ0ZZ4giYBEyLxtydEhjHkWkGTchgzBQ6OpxmeSQ3xNCxmXYQF
	KteA==
X-Received: by 10.180.89.233 with SMTP id br9mr15816827wib.14.1404459338300;
	Fri, 04 Jul 2014 00:35:38 -0700 (PDT)
Received: from [127.0.0.1] (ip52-2.tvtrinec.cz. [81.200.52.2])
	by mx.google.com with ESMTPSA id w9sm51523668wif.12.2014.07.04.00.35.36
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 04 Jul 2014 00:35:37 -0700 (PDT)
Message-ID: <53B65946.1010909@gmail.com>
Date: Fri, 04 Jul 2014 09:35:34 +0200
From: mareczek <mareczek6415@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Robert Yang <liezhi.yang@windriver.com>, yocto@yoctoproject.org
References: <53B554AC.3060301@gmail.com> <53B5F2EE.5000707@windriver.com>
In-Reply-To: <53B5F2EE.5000707@windriver.com>
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
X-List-Received-Date: Fri, 04 Jul 2014 07:35:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Thank you very much, it solves that error.

Marek

Dne 7/4/2014 2:18 AM, Robert Yang napsal(a):
>
> Seems that something is wrong with PACKAGE_CLASSES = package_deb,
> maybe you can use PACKAGE_CLASSES = package_rpm ?
>
> // Robert
>
> On 07/03/2014 09:03 PM, mareczek wrote:
>> Hello,
>>
>> I ran into an error during do_populate_sdk
>>
>> ERROR: Unable to install packages. Command
>> '/yocto-daisy/build/tmp/sysroots/i686-linux/usr/bin/apt-get install 
>> --force-yes
>> --allow-unauthenticated nativesdk-packagegroup-sdk-host
>> packagegroup-cross-canadian-imx6riotboard' returned 100:
>> Reading package lists...
>> Building dependency tree...
>> Reading state information...
>> W: Unable to read
>> /yocto-daisy/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/meta-toolchain/1.0-r7/apt-sdk/preferences.d/ 
>>
>> - DirectoryExists (2: No such file or directory)
>> E: Unable to locate package nativesdk-packagegroup-sdk-host
>>
>> ERROR: Function failed: do_populate_sdk
>> ERROR: Logfile of failure stored in:
>> /yocto-daisy/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/meta-toolchain/1.0-r7/temp/log.do_populate_sdk.32319 
>>
>>
>> ERROR: Task 7 (/yocto-daisy/meta/recipes-core/meta/meta-toolchain.bb,
>> do_populate_sdk) failed with exit code '1'
>>
>> I tried to find an answer, but without success. I tried to compile
>> nativesdk-packagegroup-sdk-host and it was already compiled.
>>
>> I was able to compile u-boot, kernel, kernel modules, dtb, rootfs and 
>> everythink
>> works quite well, but now I'm stuck with this and have no clue how to 
>> solve
>> this. If anyone knows how to make it working I would be very glad.
>>
>> Thank you very much
>>
>> Marek


