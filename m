Return-Path: <eas@sw-optimization.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63B2FE00D26; Fri,  1 Dec 2017 06:34:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.19.149.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx10lb.world4you.com (mx10lb.world4you.com [81.19.149.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0F86E00D04
	for <yocto@yoctoproject.org>; Fri,  1 Dec 2017 06:34:47 -0800 (PST)
Received: from [81.19.149.42] (helo=webmail.world4you.com)
	by mx10lb.world4you.com with esmtpa (Exim 4.84_2)
	(envelope-from <eas@sw-optimization.com>)
	id 1eKmOs-00060O-9l; Fri, 01 Dec 2017 15:34:46 +0100
MIME-Version: 1.0
Date: Fri, 01 Dec 2017 15:34:46 +0100
From: Eric Schwarz <eas@sw-optimization.com>
To: Jerry Lian <jerry.lian@gmail.com>
In-Reply-To: <4c8c114e6c9cc6e224e49e1f237016f6@sw-optimization.com>
References: <CAE0QtjP3GYLNDQHZaE1-M9pDvLuP6AtnAMD_xduv5ZwFJfZ9BQ@mail.gmail.com>
	<4c8c114e6c9cc6e224e49e1f237016f6@sw-optimization.com>
Message-ID: <f025a6f43d84a016ffe06e78f4967daf@sw-optimization.com>
X-Sender: eas@sw-optimization.com
User-Agent: World4You Webmail
X-SA-Do-Not-Run: Yes
X-AV-Do-Run: Yes
X-SA-Exim-Connect-IP: 81.19.149.42
X-SA-Exim-Mail-From: eas@sw-optimization.com
X-SA-Exim-Scanned: No (on mx10lb.world4you.com);
	SAEximRunCond expanded to false
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Yocto SDK: how to deploy application with step "make install" to target?
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
X-List-Received-Date: Fri, 01 Dec 2017 14:34:48 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Am 01.12.2017 15:16, schrieb Eric Schwarz:

> Hi Jerry,
> 
> Am 01.12.2017 15:07, schrieb Jerry Lian:
> 
>> I am new to embedded linux, and some concepts confuse me:
>> * I have downloaded an Autotools-based application to run on my board.
>> * If I boot the board with original image/original SDK, I normally 
>> build/install it with steps:
>> ----- ./bootstrap
>> ----- ./configure
>> ----- make
>> ----- make install
> 
> You may build your app within yocto build process so your application 
> is contained in your rootFS directly.
> 
>> * Now if I boot the board with yocto image without SDK, how can I 
>> deploy the application?
>> ---- (surely I do "bitbake -c populate_sdk some-image", and source the 
>> environment!)
>> 
>> ----- ./bootstrap (Yocto SDK on host)
>> ----- ./configure (Yocto SDK on host)
>> ----- make         (Yocto SDK on host)
>> ----- make install (???)
> 
> If you build it w/ the SDK outside of the yocto build process just 
> install it to a local directory and copy all the stuff w/ e.g. scp onto 
> your boards rootFS.

... you may supply a custom install prefix directory to configure.

> 
>> * How to do "make install"? (I want to install it on target, but how?)
>> 
>> Thanks!
> 
> Cheers
> Eric

