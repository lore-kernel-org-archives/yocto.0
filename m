Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 206D0E00A92; Tue,  4 Aug 2015 05:53:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E58C0E00A7E
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 05:53:29 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 757F9F811DC; Tue,  4 Aug 2015 06:53:27 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id F3A77F811D7;
	Tue,  4 Aug 2015 06:53:26 -0600 (MDT)
Message-ID: <55C0B5D1.9080009@mlbassoc.com>
Date: Tue, 04 Aug 2015 06:53:37 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: Sarayu Krishna Sivanandam <sarayu@zaikenn.com>
References: <CAF5S8SM0xn7SGrdTa6iRyN1SPxZDXy15ctPYrDuu0AFzxw0zcw@mail.gmail.com>	<55C0A75F.1000701@mlbassoc.com>
	<CAF5S8SMdfH8rNHznXCLJ_yt7PDGnKDujiu9=dpZce8eMzH4DrA@mail.gmail.com>
In-Reply-To: <CAF5S8SMdfH8rNHznXCLJ_yt7PDGnKDujiu9=dpZce8eMzH4DrA@mail.gmail.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 04 Aug 2015 12:53:35 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-08-04 06:42, Sarayu Krishna Sivanandam wrote:
> hi Gary ,
>
> Thanks for the quick response. I still see the below error .
>
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'gdb-cross-arm'
> NOTE: Runtime target 'gdb-cross-arm' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['gdb-cross-arm']
> ERROR: Required build target 'fsl-toolchain' has no buildable providers.
> Missing or unbuildable dependency chain was: ['fsl-toolchain', 'gdb-cross-arm']
> -----
>
> Below is how the change ,
> TOOLCHAIN_TARGET_TASK += " \
>      glib-2.0 \
>      glib-2.0-dev \
>      dtc-staticdev \
>      libgomp \
>      libgomp-dev \
>      libgomp-staticdev \
>      libstdc++-staticdev \
>      ${TCLIBC}-staticdev \
>      util-linux-dev \
>      gdb-cross-arm \
> "

It works fine for me using the latest master git.

What branch/release are you using?  I'm using:
meta              = "master:a8b723498c9a7106210db140452886894494b4d6"
meta-fsl-arm      = "master:48d7e70398f0f9f337b9edaeb29901c9bd895282"
meta-fsl-arm-extra = "master:ffa8db2f33ff08fc618c7e8eb47924095f4a06c0"

What is your target machine?

>
> On Tue, Aug 4, 2015 at 5:21 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     On 2015-08-04 03:31, Sarayu Krishna Sivanandam wrote:
>
>         Hi all ,
>
>         I am using the QorIQ-SDK-V1.8 SDK for the toolchain generation for my ARM board .  I wanted to build gdb along with the toolchain . I got some ideas from google to add the
>         gdb-cross in the fsl-toolchain.bb <http://fsl-toolchain.bb> <http://fsl-toolchain.bb> but on doing the same it gave me some errors when trying to build .
>
>         Can you please let me know the right method to add gdb in the toolchain ?
>
>         Below is the error i got ,
>         *ERROR: gdb-cross not found in the base feeds (ls1021atwr cortexa7hf-vfp-neon cortexa7hf-vfp armv7ahf-vfp-neon armv7ahf-vfp armv6hf-vfp armv5ehf-vfp armv5hf-vfp noarch any
>         all).*
>
>
>     Use gdb-cross-arm
>
>     --
>     ------------------------------------------------------------
>     Gary Thomas                 |  Consulting for the
>     MLB Associates              |    Embedded world
>     ------------------------------------------------------------
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

