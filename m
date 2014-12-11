Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3AA4E0083A; Thu, 11 Dec 2014 11:42:38 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DF42E00521
	for <yocto@yoctoproject.org>; Thu, 11 Dec 2014 11:42:34 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id sBBJgWE2028797
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 11 Dec 2014 11:42:33 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.230) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.174.1; Thu, 11 Dec 2014 11:42:32 -0800
Message-ID: <5489F3A7.7030505@windriver.com>
Date: Thu, 11 Dec 2014 13:42:31 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <95CF81BBD42FB348A182716C4D4310A805485ADE@G2W2533.americas.hpqcorp.net>	<FABD1EBC-088D-41C9-8CD0-F7D2D4493896@gmail.com>
	<54893FCF.6010303@topic.nl>
In-Reply-To: <54893FCF.6010303@topic.nl>
Subject: Re: parallel build of multiple machine/os?
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
X-List-Received-Date: Thu, 11 Dec 2014 19:42:38 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/11/14, 12:55 AM, Mike Looijmans wrote:
> On 12/10/2014 08:00 PM, Khem Raj wrote:
>>
>>> On Dec 10, 2014, at 10:52 AM, Koehler, Yannick (HP Networking) <yannick.koehler@hp.com> wrote:
>>>
>>> Can Yocto build for example in a single bitbake call an image for x86, ppc, arm, others?  Or is the call to bitbake limited to a single architecture?  And if so, how?
>>>
>>> I see that lots of *-native package are built, and I guess is that for each machine/os those would be reused, as such, it appears it would be a benefit to be able to build multiple package version for different architecture/distro/machine in a single invocation of bitbake.
>>
>> parallel multi-machine builds have been discussed but not thought of worth doing. you could however share
>> lot of common packages among machines sequentially.
>>
>> [...]
>
> A more convincing use-case for multi-machine building is the emerging of
> "hybrids". The little/big architecture that puts different versions of ARM
> CPUs into a single machine is one example, the OMAPs with the DSP and PRUs are
> another. Boards with FPGAs can have several CPU architectures running on a
> single board. One could imagine that one would want to build the software for
> all these subsystems in a single call, and that one bitbake process would be
> managing that the build system gets properly used.
>
> Currently, these hybrids have to invoke bitbake for each subsystem, probably
> needlessly regenerating binaries, and once more for the one image to find them
> all and in darkness bind them...
>

 From a userspace perspective, this is more or less solved with the multilib 
configurations.  Perhaps it would be possible to implement some kind of hybrid 
kernel configuration using the same type of multilib setup.  (Note, this would 
be new work, it's not something we have today.)

--Mark

> Met vriendelijke groet / kind regards,
>
> Mike Looijmans
> System Expert
>
>
> TOPIC Embedded Systems
> Eindhovenseweg 32-C, NL-5683 KH Best
> Postbus 440, NL-5680 AK Best
> Telefoon: (+31) (0) 499 33 69 79
> Telefax:  (+31) (0) 499 33 69 70
> E-mail: mike.looijmans@topic.nl
> Website: www.topic.nl
>
> Please consider the environment before printing this e-mail
>
> Topic zoekt gedreven (embedded) software specialisten!
> http://topic.nl/vacatures/topic-zoekt-software-engineers/
>


