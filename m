Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7464DE00BED; Sun,  3 Dec 2017 06:24:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.166 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 400 seconds by postgrey-1.32 at yocto-www;
	Sun, 03 Dec 2017 06:24:32 PST
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC947E00B33
	for <yocto@yoctoproject.org>; Sun,  3 Dec 2017 06:24:32 -0800 (PST)
Received: (qmail 21569 invoked by uid 1003); 3 Dec 2017 14:17:51 -0000
Received: from unknown (HELO ?192.168.11.142?)
	(philip@opensdr.com@108.44.117.187)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	3 Dec 2017 14:17:51 -0000
To: Jerry Lian <jerry.lian@gmail.com>, Eric Schwarz <eas@sw-optimization.com>
References: <CAE0QtjP3GYLNDQHZaE1-M9pDvLuP6AtnAMD_xduv5ZwFJfZ9BQ@mail.gmail.com>
	<4c8c114e6c9cc6e224e49e1f237016f6@sw-optimization.com>
	<f025a6f43d84a016ffe06e78f4967daf@sw-optimization.com>
	<CAE0QtjNKpPWUq---XQY4i2Z7ovsE1HH9xMND=kuY6YCPm0rMnw@mail.gmail.com>
From: Philip Balister <philip@balister.org>
Message-ID: <7faff5e8-c38b-965d-aead-ae9b5e2073ec@balister.org>
Date: Sun, 3 Dec 2017 09:17:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAE0QtjNKpPWUq---XQY4i2Z7ovsE1HH9xMND=kuY6YCPm0rMnw@mail.gmail.com>
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
X-List-Received-Date: Sun, 03 Dec 2017 14:24:34 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 7bit

On 12/01/2017 10:15 AM, Jerry Lian wrote:
> Thanks Eric for your explanation!
> * (I know I can build the app within yocto build, but sometimes I prefer
> the SDK method outside yocto build.)
> * So just copy manually? I thought there are some tricks  that I don't know.
> 
> Now I have follow-up question:
> * It seems that "make install" will copy different files to different
> folders
> * Can I do like these:?
> --- make
> --- copy (via scp)
> --- make install
> * Or it needs to be:
> --- make
> --- make install
> --- copy (via scp) -----then how do I know: what files to go which folder?
> --- can you explain:
>     "... you may supply a custom install prefix directory to configure."
> --- how?

I've used sshfs to mount the target on the machine with the sdk and then
something like:

make install DESTDIR=~/mydevice

From:

https://wiki.gnuradio.org/index.php/Cross_compile_an_OOT_and_install_on_target

Philip

> 
> Thanks!
> 
> 
> 
> 
> 
> On Fri, Dec 1, 2017 at 9:34 AM, Eric Schwarz <eas@sw-optimization.com>
> wrote:
> 
>> Am 01.12.2017 15:16, schrieb Eric Schwarz:
>>
>> Hi Jerry,
>>>
>>> Am 01.12.2017 15:07, schrieb Jerry Lian:
>>>
>>> I am new to embedded linux, and some concepts confuse me:
>>>> * I have downloaded an Autotools-based application to run on my board.
>>>> * If I boot the board with original image/original SDK, I normally
>>>> build/install it with steps:
>>>> ----- ./bootstrap
>>>> ----- ./configure
>>>> ----- make
>>>> ----- make install
>>>>
>>>
>>> You may build your app within yocto build process so your application is
>>> contained in your rootFS directly.
>>>
>>> * Now if I boot the board with yocto image without SDK, how can I deploy
>>>> the application?
>>>> ---- (surely I do "bitbake -c populate_sdk some-image", and source the
>>>> environment!)
>>>>
>>>> ----- ./bootstrap (Yocto SDK on host)
>>>> ----- ./configure (Yocto SDK on host)
>>>> ----- make         (Yocto SDK on host)
>>>> ----- make install (???)
>>>>
>>>
>>> If you build it w/ the SDK outside of the yocto build process just
>>> install it to a local directory and copy all the stuff w/ e.g. scp onto
>>> your boards rootFS.
>>>
>>
>> ... you may supply a custom install prefix directory to configure.
>>
>>
>>
>>> * How to do "make install"? (I want to install it on target, but how?)
>>>>
>>>> Thanks!
>>>>
>>>
>>> Cheers
>>> Eric
>>>
>>
> 
> 
> 

