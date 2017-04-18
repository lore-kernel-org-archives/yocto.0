Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC525E0094C; Mon, 17 Apr 2017 19:42:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19847E00839
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 19:42:18 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 5CFB368A01A; Tue, 18 Apr 2017 03:42:17 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id D21DB68A019;
	Tue, 18 Apr 2017 03:42:14 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 6F7E66740398;
	Tue, 18 Apr 2017 04:42:14 +0200 (CEST)
From: Gary Thomas <gary@mlbassoc.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <AM4PR1001MB13476AAC4A2CE5DA1A056C1FD7070@AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM>
	<7e3d29c7-b0af-3f5f-09e2-900c140360ab@mlbassoc.com>
	<AM4PR1001MB134724084AC231376955BBE6D7060@AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM>
Message-ID: <2aad79c6-3e75-539d-6136-a4da4849e888@mlbassoc.com>
Date: Tue, 18 Apr 2017 04:42:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <AM4PR1001MB134724084AC231376955BBE6D7060@AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM>
Subject: Re: Noobie questions
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
X-List-Received-Date: Tue, 18 Apr 2017 02:42:22 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-04-17 16:27, bahjat khan wrote:
> Hi Gary,

n.b. it's polite to keep responses on the mailing list so that everyone benefits!

>
>
> Thanks for the response!
>
>
> How will i know what to change in the local.conf file?
> Is there a Yocto article that tells me what the different variables in .bb and .conf files mean?

The Yocto (OpenEmbedded) documentation is quite thorough.
   https://www.yoctoproject.org/documentation

> ------------------------------------------------------------------------------------------------------------------------
> *From:* yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on behalf of Gary Thomas <gary@mlbassoc.com>
> *Sent:* 17 April 2017 12:59
> *To:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Noobie questions
>
> On 2017-04-16 20:23, bahjat khan wrote:
>> Hi Guys,
>>
>>
>> I'm extremely new to the yocto project, i've done quite a bit of reading on it but i'm still very confused.
>>
>> I've set my self a simple task of changing the kernel for a Yocto image that i build, the commands i use to build this
>> yocto image are:
>
> <text would have been a better choice than an image>
>   $ git clone http://git.yoctoproject.org/git/poky
>   $ cd poky
>   $ git checkout -b fido origin/fido
>   $ source oe-init-build-env
>   $bitbake core-image-minimal
>   $runqemu qemux86
>
> Check out a newer revision - fido is VERY OLD.  Probably best to use morty which is the upcoming 2.3 release
>
>>
>> |$ git clone http://git.yoctoproject.org/git/poky $ cd poky $ git checkout -b fido origin/fido $ source oe-init-build-env
>> $bitbake core-image-minimal $runqemu qemux86|
>>
>> I understand that i need to make changes to the poky.conf file to specify what kernel i want to use (i have a standard
>> choice between 3.14 and 3.19).
>
> No, make such changes in your local.conf
>
>>
>> However if i want to use a different kernel such as 4.4, i do this by making the changes in the poky.conf file, copying
>> linux-yocto_3.19.bb file and renaming it to linux-yocto_4.4.bb. I also change the SRC_URI to
>> "git://git.yoctoproject.org/linux-yocto-4.4.git;barcelone=1;branch=${KRBRANCH},${KMETA};name=machine,meta"
>>
>> It doesn't seem to find the place where it needs to download 4.4 from even though it's on the yocto website. I can
>> download it by simply typing "git clone xxxx"
>>
>> Also i haven't changed the SRCREV_machine_qemuarm ?= "xxxxxxxxxxxx" numbers, because i don't know what they are or what
>> the variable SRCREV_machine_qemuarm is.
>
> You should never need to mess with these settings.
>
>>
>> With these warnings, it reverts back to 3.19 kernel.
>>
>> I hope i've explained my problem well, but if you are still confused please let me know.
>>


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

