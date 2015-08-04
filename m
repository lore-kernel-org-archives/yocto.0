Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50D44E00AB4; Tue,  4 Aug 2015 13:14:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4E4CE00AA2
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 13:14:29 -0700 (PDT)
Received: by iodd187 with SMTP id d187so28722172iod.2
	for <yocto@yoctoproject.org>; Tue, 04 Aug 2015 13:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=cf4yXrJxExys014y6rgVF8MsYnTgifu6X2YDWLrFXyE=;
	b=pvaIRMbdWS5a3+TRoJNlxY6INMIFYKkz/M1Kze8RZ+SmwQMGUt0QA9dZOhBeR9sqy+
	oLv4Kg4Ft6Zxg3yE1qeVeUgakMqLsEvR1VrO6eQwbq/7oJKyIyY8QtSw5/igRjfYEV8G
	hTUvfFf1q6u1wSY/EKt4qdtQaJ1hzLW5xNInzoTImYPtJnvDBeulXIo8j2riRzK3ZAkg
	fMCbf4FM/jN/PXULsQgzoIkCjYVB9lrD5gCcFO1iK+wdY7wkjOB8RMOIpA7Skdl1AJ9X
	a9LlfjUosec/2imsgijFKM97n/2F6AMiJRfvouD5P9X0YRMHdiBsnmtj8JCOwQe6cXrW
	gV9g==
X-Received: by 10.107.168.145 with SMTP id e17mr5923203ioj.112.1438719269377; 
	Tue, 04 Aug 2015 13:14:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.79 with HTTP; Tue, 4 Aug 2015 13:13:59 -0700 (PDT)
In-Reply-To: <CAF5S8SMdfH8rNHznXCLJ_yt7PDGnKDujiu9=dpZce8eMzH4DrA@mail.gmail.com>
References: <CAF5S8SM0xn7SGrdTa6iRyN1SPxZDXy15ctPYrDuu0AFzxw0zcw@mail.gmail.com>
	<55C0A75F.1000701@mlbassoc.com>
	<CAF5S8SMdfH8rNHznXCLJ_yt7PDGnKDujiu9=dpZce8eMzH4DrA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 4 Aug 2015 13:13:59 -0700
Message-ID: <CAMKF1sq8GDP9fbZyyN7cJzM4ByMvd6p4xuKY-tyOd-VFe8=CLg@mail.gmail.com>
To: Sarayu Krishna Sivanandam <sarayu@zaikenn.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: ADD GDB in FSL toolchain
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
X-List-Received-Date: Tue, 04 Aug 2015 20:14:33 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 4, 2015 at 5:42 AM, Sarayu Krishna Sivanandam
<sarayu@zaikenn.com> wrote:
> hi Gary ,
>
> Thanks for the quick response. I still see the below error .
>
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'gdb-cross-arm'
> NOTE: Runtime target 'gdb-cross-arm' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['gdb-cross-arm']
> ERROR: Required build target 'fsl-toolchain' has no buildable providers.
> Missing or unbuildable dependency chain was: ['fsl-toolchain',
> 'gdb-cross-arm']

this is not a target task. Its a host-x-target tool
you should add db-cross-canadian-${TRANSLATED_TARGET_ARCH}  to
TOOLCHAIN_HOST_TASK

if you want gdb on target then you would add 'gdb' to TOOLCHAIN_TARGET_TASK

> -----
>
> Below is how the change ,
> TOOLCHAIN_TARGET_TASK += " \
>     glib-2.0 \
>     glib-2.0-dev \
>     dtc-staticdev \
>     libgomp \
>     libgomp-dev \
>     libgomp-staticdev \
>     libstdc++-staticdev \
>     ${TCLIBC}-staticdev \
>     util-linux-dev \
>     gdb-cross-arm \
> "
>
>
> Thanks and Regards,
> Sarayu K S
> Tech Lead
> Zaikenn Technologies
>
> On Tue, Aug 4, 2015 at 5:21 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>
>> On 2015-08-04 03:31, Sarayu Krishna Sivanandam wrote:
>>>
>>> Hi all ,
>>>
>>> I am using the QorIQ-SDK-V1.8 SDK for the toolchain generation for my ARM
>>> board .  I wanted to build gdb along with the toolchain . I got some ideas
>>> from google to add the
>>> gdb-cross in the fsl-toolchain.bb <http://fsl-toolchain.bb> but on doing
>>> the same it gave me some errors when trying to build .
>>>
>>> Can you please let me know the right method to add gdb in the toolchain ?
>>>
>>> Below is the error i got ,
>>> *ERROR: gdb-cross not found in the base feeds (ls1021atwr
>>> cortexa7hf-vfp-neon cortexa7hf-vfp armv7ahf-vfp-neon armv7ahf-vfp
>>> armv6hf-vfp armv5ehf-vfp armv5hf-vfp noarch any all).*
>>
>>
>> Use gdb-cross-arm
>>
>> --
>> ------------------------------------------------------------
>> Gary Thomas                 |  Consulting for the
>> MLB Associates              |    Embedded world
>> ------------------------------------------------------------
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

