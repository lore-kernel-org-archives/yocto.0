Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6804BE00D4A; Mon, 29 Feb 2016 08:24:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2D15E008E1
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 08:24:25 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u1TGOOGp015717
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 08:24:24 -0800
Received: from soho-mhatle-m.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 29 Feb 2016 08:24:24 -0800
To: <yocto@yoctoproject.org>
References: <CAJ0mxBz=jW89WeUtNQ1tFdTq6Qbh6313BoqDMcFsN3saXr7BXA@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <56D470B7.2090700@windriver.com>
Date: Mon, 29 Feb 2016 10:24:23 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <CAJ0mxBz=jW89WeUtNQ1tFdTq6Qbh6313BoqDMcFsN3saXr7BXA@mail.gmail.com>
Subject: Re: hello world fails in eclipse
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
X-List-Received-Date: Mon, 29 Feb 2016 16:24:29 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 2/29/16 8:35 AM, Markus Haege wrote:
> Hello there,
> 
> I searched the web for a while, figured out that I'm not the first person with
> this problem
> but I don't find the solution.
> 
> I use Debian 8 with Eclipse luna Release 2.
> I installed the yocto plugins in eclipse as described in the manual.
> 
> Now I want to compile a hello world for the meta-raspberrypi but it fails:
> 
> The C compiler
>  
> "/home/markus/poky/meta-raspberrypi/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc"
>   is not able to compile a simple test program.
> 
> /home/markus/poky/meta-raspberrypi/tmp/sysroots/x86_64-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/ld:
>   error: cmTryCompileExec1319352149 uses VFP register arguments,
>   CMakeFiles/cmTryCompileExec1319352149.dir/testCCompiler.c.o does not

I'm not sure about the eclipse aspect of this, but the failure is indicating
that one item is trying to use one ABI, and other items are using a different
ABI.  Resulting in incompatibilities.  (This for ARM is EABI and HF EABI --
error says "cmTryCompileExec1319352149" is the HF EABI.)

About the best I can suggest it to check that eclipse imported not only the name
of the compile, but also the required compiler (and linker) arguments from the
environment file.

Also verify that any produced make (cmake) files are not overriding the compile
and link cflags with something else.

> I sourced the environment setup so eclipse finds under
> properties/C++Build/Environment the settings. That's all I achieved.
> I read about flags to set but don't know where. Something about floating point.
> What I read was very old.

The flags in question that are incompatible are:

-mfloat-abi=hard
-mfloat-abi=softfp

--Mark

> Thanks to any help
> 
> Markus
> 
> 


