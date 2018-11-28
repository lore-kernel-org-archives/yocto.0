Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D67EE00C7D; Wed, 28 Nov 2018 03:43:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF94FE00C75
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 03:43:05 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 434f0m5K2Xz1rYjY;
	Wed, 28 Nov 2018 12:43:04 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 434f0m4yq9z1qrn8;
	Wed, 28 Nov 2018 12:43:04 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id aiWEfeSjmKA9; Wed, 28 Nov 2018 12:43:03 +0100 (CET)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Wed, 28 Nov 2018 12:43:03 +0100 (CET)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 8D40B454041B;
	Wed, 28 Nov 2018 12:43:02 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([IPv6:::1])
	by localhost (mail.babic.homelinux.org [IPv6:::1]) (amavisd-new,
	port 10024)
	with ESMTP id Z6fz6DlGGuYw; Wed, 28 Nov 2018 12:43:00 +0100 (CET)
Received: from [192.168.178.132] (papero.fritz.box [192.168.178.132])
	by babic.homelinux.org (Postfix) with ESMTP id CB23045401EE;
	Wed, 28 Nov 2018 12:42:59 +0100 (CET)
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>,
	Stefano Babic <sbabic@denx.de>, Jan Kiszka <jan.kiszka@siemens.com>
References: <CAGAf8LzfRHc6m-ixKdU8s0icQ-XFiGvfgr-+Kw9UAEqrsdCK3A@mail.gmail.com>
	<86583590-a56f-5fa7-18d3-86f0555cdadb@denx.de>
	<CAGAf8LyBmxi4fGQer_80GH2EfcvG_zmsztpWKgP8Dxf+1wKLPw@mail.gmail.com>
From: Stefano Babic <sbabic@denx.de>
Openpgp: preference=signencrypt
Autocrypt: addr=sbabic@denx.de; prefer-encrypt=mutual; keydata=
	xsDiBEfdB5IRBADkpYcnh2BoAkGD5p186ysEkWlcp5DU07m7BKzvkEMRhFjeFUOU0klKNmh0
	ZM6rKpYpAYPYBm9YahMyqvj9DmLrZ4yfJ5MssvW9SRETmHpva+h1rN+DzmEcwrqZmLG1JWGy
	LA5ruJaFSzxJHBoROoog1NDMbNDB8A9F7VKrePfkVwCgmODpW/uh2IuMYLVidzDeuvo7alED
	/iV8rwU7C+eBcKy2htuDsEmsqlkBxIDM7IO6h5XxdyqbZOYizuBP3Ksb6xK54weEaB5aQs7S
	8N9Soi0p1Xh0LMWj6PBCzTC4LF+OCGEMBPc6bBHNzivChgztJlUMioCDSVpOXB/QpBaK302G
	yP5WdmcB1Jn6neq/YRlxHN38MV2yA/46jnzeUotL9LliVZKA/ql4GmyWg2Ae1BUiCqEJQNwl
	knGJOmIS4uABLArB5HjsfDU5hA9FORaNGCIiZlezBkZ3JXA2uQMQhfgqBXrZt4j1fcw9I7E+
	7IZ2kSCeTPZFLd5FiGQPDOm3Z9eHrpK6pmBGMeBG0pDgUEbN9awyLNBLj80eU3RlZmFubyBC
	YWJpYyA8c2JhYmljQGRlbnguZGU+wmMEExECACMCGwMGCwkIBwMCBBUCCAMEFgIDAQIeAQIX
	gAUCT9deSgIZAQAKCRD09WXkmmjvppF1AKCRl8d49K4yxWzdBVRTTWG55cyo/gCfRD1RAttl
	R1ofs2wGLHNtXousyL3OwU0ER90HmBAIAIFfX4bKnOmCyB3nPh+jbXZuBSMZTuyDEnguRxl5
	N8Q0ayofQwucCBjXYv65sQ9Rq6FNhEnWqUZBu8A5CwvSakOFOGNC5ta/8VxVRLh0Z0ZTgEep
	SKiPonJyacCbmgWDECdVrKowV7QB9be3Wu67uAZ74rPw2Kd7f0FKnL3djvVRMaBWFIpyQ6SE
	bGOCJjhRQ5L1pIM1Soko+reU7eO+1g6IBw6YkFJisdQE6fzTwaSqUKPPsQLz/W03invQltOb
	Eg7ZwtFs0DFonr1DMm57ksiEhW6SN1wylRO/JzRYG1Qe7u1EVln6iV3ilBvbbfkyRssk4/0e
	kicpSnQknA72YOMAAwYH+QGpAiQ4hAMHrp1bUrtyGXYdeQpYufIZAM4etOnBy/G+e1nfu6y+
	jH4SN9sVK7bwBBAbhEJqkqR5LVsFIRapThJQOWB11rQxLpwkBU9wao/pRM+o95ujGo32WUzf
	wWrzWrkTDy7vMCZuUOLVi4n1GZlUAwpG4rzb6UxPC6GWymkVWGgXp1NC58og5i3Y+rKT7+Xi
	XT2BtvC6PDepoH4JhD+9OkHQO6UfTxPSmtgNbTgtl6L6tj+bm5dOHgkPJFMkEiG8qhUZYQzb
	bYz37orRbA72M2bxK76e9QKn0mVu+d/YCd8wRcvvJbGsozpzcxPvD5Wy5RNJCES8McPtAseU
	tMfCSQQYEQIACQUCR90HmAIbDAAKCRD09WXkmmjvpv+3AJ9RakBsH1j0X/Kxp6t2lf0VUfS2
	qACfZ+J6ktk8PKNuyHf0J/I0mbCrhV4=
Message-ID: <c2fdd05f-0fee-d046-df9f-775e19a59045@denx.de>
Date: Wed, 28 Nov 2018 12:42:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CAGAf8LyBmxi4fGQer_80GH2EfcvG_zmsztpWKgP8Dxf+1wKLPw@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Git tool/command problems with YOCTO Open Source repos
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
X-List-Received-Date: Wed, 28 Nov 2018 11:43:07 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Zoran,

On 28/11/18 12:00, Zoran Stojsavljevic wrote:
> Hello Stefano,
> 
> I am (almost) perfectly aligned with kernel.org, and I (personally)
> decided to use git. Since I start understanding importance of Linus.
> Linux officers and their Linux philosophy.

Each tool is thought to solve a specific issue. git is a configuration
management tool, and yes, it is a great tool.

> 
> Now... Answers to your email. KAS (Siemens developed tool by Jan
> Kiszka and his crew) is the supplement for the fast/quick building the
> YOCTO, to use ONLY rootfs.

It is a support to synchronize layers and to support bitbake.

> NOT kernel. NOT aligned with the git tool.
> Not applicable for purposes as git.

Each project has its own configuration management, nowadays mostly git.
But OE can use git / mercury / subversion. Your initial question is
quite a complain why tags are not used in OE, and git describe does not
work. Nevertheless, because layers are not part as a single big repo,
you need some way to sync the layers. kas is one of these tools.

> 
> On the other note, repo is GOOGLE tool. Promoted by them. Most of the
> ARM followers (such as Toradex) use repo tool.

There are people happy working with repo. Everybody chooses the tool
more suitable for own needs.

> 
> You say: I talk to the wrong crew. I think opposite. I am giving the
> generic message via YOCTO email list, to avoid hundreds of particular
> emails, so we can unify the effort. Which is not minor. Rather
> opposite: major.
> 
> Since, I guess, this is of the major importance. For YOCTO survival.
> The direction is one: git tool. For all YOCTO developers. IMHO.
> 
> Stefano,
> 
> You, as major official representative of U-Boot philosophy (and
> Wolfgang's Denk right hand),

You're now completely off topic.

> do not take sides, rather ad-hoc
> approach. For you, this topic is not important. Appreciated your help.
> 
> I am asking here for much higher awareness. YOCTO better survival in The Future.
> 

Best regards,
Stefano

> Thank you,
> Zoran
> _______
> On Wed, Nov 28, 2018 at 10:52 AM Stefano Babic <sbabic@denx.de> wrote:
>>
>> Hi Zoran,
>>
>> On 28/11/18 10:17, Zoran Stojsavljevic wrote:
>>> Hello YOCTO people,
>>>
>>> I would like to use standard git tool while using all the Yocto
>>> layers. NOT only Poky repository (which, I believe, works all the way
>>> with git tools), but as much as possible with other github proprietary
>>> repos and layers. Since I am not able to execute git commands using
>>> some number of proprietary repos over github.
>>>
>>> As example, I'll use meta-bbb repository.
>>> https://github.com/jumpnow/meta-bbb.git, after cloning the following
>>> happens (chosen, since it has at least dozen of branches):
>>>
>>> After cloning, I did not get anything from the following commands,
>>> being in the root of the meta-bbb repo, namely:
>>>
>>> [user@fedora28-ssd meta-bbb]$ pwd
>>> /home/user/projects2/beaglebone-black/yocto-master/meta-bbb
>>> [user@fedora28-ssd meta-bbb]$ git describe
>>> fatal: No names found, cannot describe anything.
>>
>> I understand, but why is this an issue in Yocto project ? The maintainer
>> does not use tags and git describe is fast useless.
>>
>> You should contact layer's maintainer and ask for that. Anyway, outside
>> poky, tags are quite unused in layers.
>>
>>> [user@fedora28-ssd meta-bbb]$ git tag
>>> [user@fedora28-ssd meta-bbb]$ git checkout thud
>>> Branch 'thud' set up to track remote branch 'thud' from 'origin'.
>>> Switched to a new branch 'thud'
>>> [user@fedora28-ssd meta-bbb]$ git checkout sumo
>>> Switched to branch 'sumo'
>>> Your branch is up to date with 'origin/sumo'.
>>> [user@fedora28-ssd meta-bbb]$ git describe
>>> fatal: No names found, cannot describe anything.
>>> [user@fedora28-ssd meta-bbb]$
>>>
>>> The rationale behind this request: git is the powerful tool which
>>> should work and be solely used for YOCTO layers' synchronization. In
>>> other words, YOCTO should give some tools' (namely git) unification
>>> guidelines in some way. :-)
>>
>> It is clear that a tool to maintain the layers in sync is required, but
>> it is quite independent how the layers (and many are proprietary layers)
>> are built. So you can use "repo" or "kas" (my preferred one) for that.
>>
>> Best regards,
>> Stefano Babic
>>
>> --
>> =====================================================================
>> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
>> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
>> Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
>> =====================================================================


-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

