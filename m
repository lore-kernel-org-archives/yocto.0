Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5327E00D1C; Thu, 10 May 2018 14:57:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.158.217 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtpcmd01217.aruba.it (smtpcmd01217.aruba.it [62.149.158.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F206DE00831
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 14:57:44 -0700 (PDT)
Received: from [192.168.24.148] ([87.26.78.158])
	by smtpcmd01.ad.aruba.it with bizsmtp
	id klxi1x0083QvvBK01lxieu; Thu, 10 May 2018 23:57:43 +0200
To: Joshua Watt <jpewhacker@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <0de2a57e-c10e-ed0d-d893-c73700f4ba56@faresoftware.it>
	<be419519c5c0c6d18d9b0925d36e61270e44093a.camel@gmail.com>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <7d4c0432-2322-e628-29d2-c63ddec01403@faresoftware.it>
Date: Thu, 10 May 2018 23:57:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <be419519c5c0c6d18d9b0925d36e61270e44093a.camel@gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1525989463; bh=FyizOaiDv2129uE25uygnCRwF+al3kca36cbvryz40Y=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=bTbFUeRDhhkNiznKZWJvtHDPN57CZG9Qwn7rvcNUDnsawknUYhX8XODBPEG2InRS8
	0GgLvwTnAjFF32g9QxfAZjjOvmMoyJaCrIBlGfl6QHeXdfT+mB86r6V97zuOQtMXk4
	QSor6X8N2tktyB4LgIENG96Go6dbV5PGJmFPRPBQmg7JLrFsonvOVwm/Q4McAlQGw1
	xndplJkrV1O5QZw4a2BYsP7n4j/x2PRg0JSqO3P4BWn/TJUp3UfqjgBJkuNurWMaRb
	R+cv6CN1nE1+sbZ4JbmRVKIjCEO1V8b+floTQOAwZOue7Xlx5ERz0ybhTSGI1KMwJD
	Pbk8++jEKtXeA==
Subject: Re: FILES autofilling
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
X-List-Received-Date: Thu, 10 May 2018 21:57:46 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

It works.

Thanks you


Il 10/05/2018 22:44, Joshua Watt ha scritto:
> On Thu, 2018-05-10 at 22:34 +0200, Mauro Ziliani wrote:
>> Hi all.
>>
>> My name's Mauro.
>>
>> I developed an application with CMake outside Yocto Krogoth.
>>
>> In CMakeLists.txt I have a lot of install(...) commands.
>>
>> I produce the final deb package with cpack -G DEB command and al
>> works fine.
>>
>> Now I'd like to import my app into Krogoth.
>>
>> I edited correctly the recipe, but the do_package task fails because
>> I
>> have not filled the FILES variable correctly.
>>
>> I have 656 files to ship with the application.
>>
>> The application must be installed in its own folder /home/app
>>
>>
>> Any idea how can I list all files to ship inside FILES variable?
> It works recursively on folders:
>
> FILES_${PN} += "/home/app/"
>
>>
>> Best regards,
>>
>>      MZ
>>


