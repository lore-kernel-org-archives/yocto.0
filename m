Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACA7BE00849; Sun,  9 Nov 2014 17:25:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36548E007C0
	for <yocto@yoctoproject.org>; Sun,  9 Nov 2014 17:25:19 -0800 (PST)
Received: by mail-ie0-f172.google.com with SMTP id at20so8418871iec.3
	for <yocto@yoctoproject.org>; Sun, 09 Nov 2014 17:25:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=RB3vFZj+82sSYWjVuqSB7/5m2PDjrmPMkgKYH4+EXRc=;
	b=V5HbxcxEKMtZkvybf5PXZh8aoTK72DiMsl6/Kq/LMUXLuVovZO1TA8TyBKVcvljAym
	vVTN7WIp6EGKQCI9S89tkbPOu7t85WuNbOgSfuVM8eDHStbZAebqTn/98TRJaxCefDHN
	uUFSh2TBS3OgtJkLXgYawjsj/Pl9tif94k5ERL3GijqKNDLlCeJSOhLrpPEt28JgMkZ5
	hw1WF9/+/zM0KO3JBMYxzqlgPjriXx/fwddPu8KILRGuEOiRubXCMwHXhTW+t7XpcEiy
	VmHO5fZ/9V/vYt0Pbyx8fvcdVZla/ttwHwliZSJ+RXq/JsacGpNrq86A6xrDcf+ptgUv
	682A==
X-Received: by 10.107.170.161 with SMTP id g33mr30800255ioj.2.1415582719009;
	Sun, 09 Nov 2014 17:25:19 -0800 (PST)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7])
	by mx.google.com with ESMTPSA id uu4sm2126288igb.19.2014.11.09.17.25.18
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 09 Nov 2014 17:25:18 -0800 (PST)
Message-ID: <546013FD.5080802@gmail.com>
Date: Sun, 09 Nov 2014 20:25:17 -0500
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Nick D'Ademo <nickdademo@gmail.com>
References: <CANR6C54aazdi1bArSq-DdqMMJGcbQMuR2HsygV_8LDdTy3oUHg@mail.gmail.com>
	<54601032.8020203@gmail.com>
	<CANR6C57RL+fuZdXU7wUoQgN5XkFu9mcz=Ef-VQfEH-2coViLWA@mail.gmail.com>
In-Reply-To: <CANR6C57RL+fuZdXU7wUoQgN5XkFu9mcz=Ef-VQfEH-2coViLWA@mail.gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Unable to find the ncurses libraries when running menuconfig
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
X-List-Received-Date: Mon, 10 Nov 2014 01:25:22 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Do you run source oe-init-build-env before building and why is your machine
set to nuc seems this may be an issue?
Nick 

On 14-11-09 08:15 PM, Nick D'Ademo wrote:
> Thanks for the quick reply Nick.
> 
> Host system is Ubuntu 14.04. ncurses is already installed:
> 
> sudo apt-get install libncurses5-dev
> Reading package lists... Done
> Building dependency tree
> Reading state information... Done
> libncurses5-dev is already the newest version.
> 
> 
> On Mon, Nov 10, 2014 at 12:09 PM, nick <xerofoify@gmail.com> wrote:
> 
>> Check to see if you actuality have it installed on your host system for
>> your package manager.
>> The library for ncurses for compiling the kernel is different based on
>> your distro, check
>> your distro's installer and install the correct ncurses package first. If
>> this is still an
>> issue please reply with a newer error message.
>> Cheers Nick
>>
>> On 14-11-09 08:05 PM, Nick D'Ademo wrote:
>>> Getting a strange error when attempting to configure the Yocto Linux
>> kernel
>>> via: bitbake linux-yocto -c menuconfig.
>>>
>>> Does anyone have any ideas? (error message below)
>>> Much appreciated.
>>>
>>> Build Configuration:
>>> BB_VERSION        = "1.24.0"
>>> BUILD_SYS         = "x86_64-linux"
>>> NATIVELSBSTRING   = "Ubuntu-14.04"
>>> TARGET_SYS        = "x86_64-poky-linux"
>>> MACHINE           = "nuc"
>>> DISTRO            = "poky"
>>> DISTRO_VERSION    = "1.7"
>>> TUNE_FEATURES     = "m64 corei7"
>>> TARGET_FPU        = ""
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> *make[1]: Entering directory
>>>
>> `/home/nick/poky/build/tmp/work/corei7-64-intel-common-poky-linux/linux-yocto/3.17.1+gitAUTOINC+b86dd5c6f4_0caf16d385-r0/linux-corei7-64-intel-common-standard-build'
>>> GEN     ./Makefile *** Unable to find the ncurses libraries or the ***
>>> required header files. *** 'make menuconfig' requires the ncurses
>>> libraries. ***  *** Install ncurses (ncurses-devel) and try again. ***
>>> make[3]: *** [scripts/kconfig/dochecklxdialog] Error 1make[2]: ***
>>> [menuconfig] Error 2make[1]: *** [sub-make] Error 2make: *** [__sub-make]
>>> Error 2Command failed.Press any key to continue... *
>>>
>>>
>>>
>>
> 

