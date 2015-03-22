Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B98CDE0084F; Sun, 22 Mar 2015 13:41:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CABCE005B6
	for <yocto@yoctoproject.org>; Sun, 22 Mar 2015 13:41:46 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 0314127E1EF;
	Sun, 22 Mar 2015 20:41:44 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 6rNAUk4uAzmo; Sun, 22 Mar 2015 20:41:39 +0000 (UTC)
Received: from [192.168.1.16] (AMarseille-651-1-94-2.w109-208.abo.wanadoo.fr
	[109.208.61.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id DE71C27E1E1;
	Sun, 22 Mar 2015 20:41:38 +0000 (UTC)
Message-ID: <550F289B.3030304@dynamicdevices.co.uk>
Date: Sun, 22 Mar 2015 21:39:55 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org, gary@mlbassoc.com, 
	Andrei Gherzan <andrei@gherzan.ro>
References: <550EB367.9070508@mlbassoc.com>	<CAK18fxEStLTUzh7O-YVHyGiqnBK4oVwGRKiO==nMmKiYngH0gQ@mail.gmail.com>
	<CALbNGRT3PGeeMpKMPCacpakQXeD81PwWK3=HF4EqCt2EyKH1_A@mail.gmail.com>
In-Reply-To: <CALbNGRT3PGeeMpKMPCacpakQXeD81PwWK3=HF4EqCt2EyKH1_A@mail.gmail.com>
Subject: Re: [meta-raspberrypi] RaspberryPi2 - no audio?
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
X-List-Received-Date: Sun, 22 Mar 2015 20:41:50 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit



On 22/03/2015 21:17, Andreas Müller wrote:
> On Sun, Mar 22, 2015 at 1:25 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> Hello,
>>
>> On Sun, Mar 22, 2015 at 1:19 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>> I just built Poky/Yocto for the RaspberryPi2, straight out
>>> of the box using this configuration:
>>>
>>> Build Configuration:
>>> BB_VERSION        = "1.25.0"
>>> BUILD_SYS         = "i686-linux"
>>> NATIVELSBSTRING   = "Fedora-13"
>>> TARGET_SYS        = "arm-amltd-linux-gnueabi"
>>> MACHINE           = "raspberrypi2"
>>> DISTRO            = "amltd"
>>> DISTRO_VERSION    = "1.7+snapshot-20150321"
>>> TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard vfpv4
>>> cortexa7"
>>> TARGET_FPU        = "vfp-vfpv4-neon"
>>> meta              = "master:12b6cf0f2212519b14333519746174a5b941f7bf"
>>> meta-amltd        =
>>> "cutting-edge:d9350ea229c04d64111f38e638f372a1bac87be0"
>>> meta-raspberrypi  = "master:b896a7da70dd7a16ba7ffd664f7747cb37e1d142"
>>>
>>> All seemed to go OK, but when I try to play audio, there are
>>> no sound cards found.  Is there some configuration I need?
>>> Once I get it going, how can I select between the internal
>>> (phono) audio and HDMI?
>>>
>>> Note: I had this working just fine on my RaspberryPi (model B)
>>>
>> We didn't test audio on Raspberrypi 2. So, probably the best thing to do it
>> to shoot a redmine bug and maybe help with some patches? Otherwise we will
>> try to pick it as soon as possible.
>>
>> Thanks a lot.
>>
>> --
>> Andrei Gherzan
>>
> Had same - had no time to send yet [1]...
>
> Andreas
>
> [1] https://github.com/schnitzeltony/meta-raspberrypi/commit/d353859131ead0d45cab322d5e93b3f8391dd2ba

CONFIG_SND=y would be a nice little config fragment

Alex


