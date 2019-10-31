Return-Path: <pwr@iae.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16D83E00D77; Thu, 31 Oct 2019 03:36:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [213.75.39.13 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from cpsmtpb-ews08.kpnxchange.com (cpsmtpb-ews08.kpnxchange.com
	[213.75.39.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADA1BE00ADD
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2019 03:36:39 -0700 (PDT)
Received: from cpsps-ews30.kpnxchange.com ([10.94.84.196]) by
	cpsmtpb-ews08.kpnxchange.com with Microsoft SMTPSVC(7.5.7601.17514); 
	Thu, 31 Oct 2019 11:36:37 +0100
X-Brand: /q/rzKX13g==
X-KPN-SpamVerdict: e1=0;e2=0;e3=0;e4=(e1=10;e3=10;e2=11;e4=10);EVW:Whi
	te;BM:NotScanned;FinalVerdict:Clean
X-CMAE-Analysis: v=2.3 cv=OKhZIhSB c=1 sm=1 tr=0 cx=a_idp_e
	a=WB5lYbMG1jvHJ1f8o08CVQ==:117 a=WB5lYbMG1jvHJ1f8o08CVQ==:17
	a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=8SZ6bD3cDFYA:10 a=IkcTkHD0fZMA:10
	a=XobE76Q3jBoA:10 a=iGHA9ds3AAAA:8 a=JMnnF-g5AAAA:8
	a=4fIyOY1WsNlD_WVDqLgA:9 a=QEXdDO2ut3YA:10 a=opEhNme9xScA:10
	a=Ztq6F2bf3zEA:10 a=nM-MV4yxpKKO9kiQg6Ot:22 a=MIlUOSWcqtxlsnWNI7We:22
X-CM-AcctID: kpn@feedback.cloudmark.com
Received: from smtp.kpnmail.nl ([195.121.84.14]) by cpsps-ews30.kpnxchange.com
	over TLS secured channel with Microsoft SMTPSVC(8.5.9600.16384);
	Thu, 31 Oct 2019 11:36:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kpnmail.nl; s=kpnmail01;
	h=content-type:mime-version:date:message-id:from:to:subject;
	bh=C+tWzG41qwOf2jS0TwR2Fn6Jajgt5WFIQhIKy1Ktvlc=;
	b=Uzo1ZExVNbXn2Pc++CYG6bI5SXu01oj0aDW3EeaSmbB4vCdb4LpfR9Wve98Gz80N11GQL0Q1Etvvd
	ok+C2xMqLsoTZQhXHm/Bq0HEygVJTJoCvpUIRYQd+u4X9QQ3PmrAJkAJhrldNflMzh6RfgQn67W2vC
	dlBjpTtqb3dUZ6yk=
X-Originating-IP: 86.89.1.39
Received: from [192.168.2.198] (unknown [86.89.1.39])
	by smtp.kpnmail.nl (Halon) with ESMTP
	id 5135fee2-fbca-11e9-876f-00505699d6e5;
	Thu, 31 Oct 2019 11:36:37 +0100 (CET)
To: yocto@yoctoproject.org
References: <111d936e-8879-6190-9287-32fcc5b192b5@iae.nl>
	<1b104a0b-55e8-4b9e-91bc-cadbefebe442@windriver.com>
From: R <pwr@iae.nl>
Message-ID: <0f14685e-8b77-8fe2-06a5-ed165a57b88c@iae.nl>
Date: Thu, 31 Oct 2019 11:36:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <1b104a0b-55e8-4b9e-91bc-cadbefebe442@windriver.com>
X-OriginalArrivalTime: 31 Oct 2019 10:36:37.0702 (UTC)
	FILETIME=[13034660:01D58FD7]
X-RcptDomain: yoctoproject.org
Subject: Re: NooB: applying new patches to older files, where do I find the older files?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: pwr@iae.nl
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 31 Oct 2019 10:36:41 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-GB

On 31-10-2019 01:52, Randy MacLeod wrote:
> On 10/30/19 8:16 AM, R wrote:
>> Hello List,
>>
>> First I'm working on a unsupported distro (Manjaro) and try to get an =

>> older version (2.7.1) of poky working. I have ask a question before=20
>> and Ross Burton pointed me in the direction of a patch.
>> Now I'm trying to apply that patch, however the patch is for a newer=20
>> version of the original files, so I need to make my own patch for the =

>> older version of these files.
>> (reason: WARNING: Some of the context lines in patches were ignored.=20
>> This can lead to incorrectly applied patches.)
>>
>> The patch says: the file to be patch is e.g. /linux-user/syscall.c
>> My question is where can I find the original syscall.c before any=20
>> patches are applied to it?
>
> Hi Robert,
>
> This file and the patch are for the qemu package.
>
> You can run:
> $ bitbake -c patch qemu-native <--- host build
> or
> $ bitbake -c patch qemu <--- target build
> to get all the patches that are listed in the qemu recipe in poky:
> =C2=A0=C2=A0 meta/recipes-devtools/qemu/qemu_3.1.1.1.bb
> and
> =C2=A0=C2=A0 meta/recipes-devtools/qemu/qemu.inc
> applied to unpacked source.
>
> The patched source will be in (this is on master branch):
>
> <build_area>/tmp-glibc/work/x86_64-linux/qemu-native/4.1.0-r0/qemu-4.1.=
0/linux-user/syscall.c=20
>
>
> poky might just be /tmp/ instead of /tmp-glibc/
>
> In my case the log of the patching is in:
> tmp-glibc/work/x86_64-linux/qemu-native/4.1.0-r0/temp/log.do_patch
>
>>
>> Just to be complete: I have tried the latest warrior branch and that=20
>> worked fine. My objective is not just to get it working be also to=20
>> get a grip on how the system works :-)
>
> Super.
>
> Have you looked at:
> https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html
>
> and perhaps:
>
> https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#fi=
nding-the-temporary-source-code=20
>
>
> will be useful now.
>
> Manipulating patches by hand can be tedious. There's a tool
> called wiggle:
> =C2=A0=C2=A0 https://linux.die.net/man/1/wiggle
> which can help but may be too much for you to deal with initially.
>
> Actually, I suggest that you build on a supported distro initially
> to understand the basic workflow and then decide if you want to figure
> out how to make Arch/Manjaro work.
>
> ../Randy
>
>> Thanks,
>> Robert.

Thanks Randy,
Very helpful, especially the trigger to look into the development manual.=

I know starting with a supported distro would be the smarter choice. But =

then it would just work and I would probably make tiny steps in changes, =

this way I'm pulled right into the belly of the "beast" and I will learn =

much faster how it works :-) Disadvantage is that I maybe overwhelmed,=20
so I will ask a question like this one, occasionally.
Robert




