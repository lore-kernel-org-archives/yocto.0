Return-Path: <wmills@ti.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84487E00559; Wed, 16 Jul 2014 09:14:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.47.26.153 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from devils.ext.ti.com (devils.ext.ti.com [198.47.26.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADE27E00543
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 09:14:36 -0700 (PDT)
Received: from dlelxv90.itg.ti.com ([172.17.2.17])
	by devils.ext.ti.com (8.13.7/8.13.7) with ESMTP id s6GGESpl008271;
	Wed, 16 Jul 2014 11:14:28 -0500
Received: from DLEE70.ent.ti.com (dlemailx.itg.ti.com [157.170.170.113])
	by dlelxv90.itg.ti.com (8.14.3/8.13.8) with ESMTP id s6GGESVc024614;
	Wed, 16 Jul 2014 11:14:28 -0500
Received: from dflp32.itg.ti.com (10.64.6.15) by DLEE70.ent.ti.com
	(157.170.170.113) with Microsoft SMTP Server id 14.3.174.1;
	Wed, 16 Jul 2014 11:14:28 -0500
Received: from gtwmills.gt.design.ti.com (ileax41-snat.itg.ti.com
	[10.172.224.153])	by dflp32.itg.ti.com (8.14.3/8.13.8) with ESMTP id
	s6GGERCq021136;	Wed, 16 Jul 2014 11:14:27 -0500
Message-ID: <53C6A4E3.2050701@ti.com>
Date: Wed, 16 Jul 2014 12:14:27 -0400
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
References: <91B4C1B91AAEFD42AC985EA0F3D4E66886164946@kihagwinex01.int.kistler.com>
	<20140716095330.GC23194@axis.com>
	<91B4C1B91AAEFD42AC985EA0F3D4E66886164990@kihagwinex01.int.kistler.com>
In-Reply-To: <91B4C1B91AAEFD42AC985EA0F3D4E66886164990@kihagwinex01.int.kistler.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bash parser
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
X-List-Received-Date: Wed, 16 Jul 2014 16:14:38 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit



On 07/16/2014 06:32 AM, Isak Lichtenstein wrote:
> Hi Olof,
>
> Thank you very much for your prompt answer
>>
>> On 14-07-16 11:36 +0200, Isak Lichtenstein wrote:
>>> In this method I'm using the bash syntax. But a lot of time the parser
>>> doesn't manage to parse my file properly. Examples:
>>>
>>> 	TMP="file1 file2"
>>> 	read -a scripts <<< $tmp
>>> generates
>>> 	ShellSyntaxError: expecting here-document name, got '<'
>>>
>>> Or
>>>
>>> 	TMP="file1 file2"
>>> 	scripts=(${TMP})
>>> generate
>>> 	ShellSyntaxError: LexToken(TOKEN,'${TMP}',0,0)
>>>
>>>
>>> Other bash commands are parsed properly, but generate an error while
>>> executing them. Example:
>>> 	TMP="file1, file2"
>>> 	tmp=${TMP//,/ }
>>> generates
>>> 	Bad substitution
>>> 	| WARNING: exit code 2 from a shell command.
>>
>> Note that these features you describe here are all bash extensions. For Debian
>> users (and I think Ubuntu users as well?), the default /bin/sh is dash and does not
>> support either of these extensions. There are cases where the bitbake parser will
>> refuse valid portable shell script features as well though, like shell arithmetics, e.g.:
>
> Ubuntu default is actually bash.

Ubuntu default login shell is bash.
Default for /bin/sh is to link to dash.
So shell scripts that use
	#!/bin/sh
will execute with dash.

You may have changed this on your machine and don't remember.
Many developers do.
I just checked a fresh 14.04 to make sure my knowledge is up to date.
	ls -l /bin/sh

>>
>>   n=$((n+1))
>>
>>> Does a page exist somewhere describing the bash features supported by
>>> the parser and also the execution environment?
>>> Are arrays supported at all?
>>
>> I don't know of any such documentation, but if you stick to portable shell script
>> features, you should be mostly fine.
>>
> Thanks for the advice. Will try to stick to it.
>
> Isak
>

