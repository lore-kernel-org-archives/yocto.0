Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9E3FE00953; Thu, 12 Jan 2017 07:38:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53739E0088B
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 07:38:46 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v0CFcZaT024671
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 12 Jan 2017 07:38:35 -0800 (PST)
Received: from soho-mhatle-m.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 12 Jan 2017 07:38:34 -0800
To: Roger Smith <roger@sentientblue.com>, <yocto@yoctoproject.org>
References: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <56c0100f-a4c3-482a-93f9-55168d8b71d1@windriver.com>
Date: Thu, 12 Jan 2017 09:38:33 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
Subject: Re: Building on MacOS X
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
X-List-Received-Date: Thu, 12 Jan 2017 15:38:49 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

On 1/12/17 9:14 AM, Roger Smith wrote:
> Is there any documentation for running the Yocto build system on Mac OS X or
> macOS as Apple now calls it? I am working with the Intel Aero board. Before I go
> down the rabbit hole of fixing issues like this one (and I am using the bash
> shell), I’d like to know if anyone has build it on os x before.

As far as I am aware, nobody has ever finished this work.

There are numerous places (scripts primarily) that will expect GNU
util-linux/coreutils (and similar) extensions.

In addition, the pseudo program, used to emulate filesystem permissions and
related items only partially works on MacOS.  (I know it was working at one
point, but Apple changed some of the system properties [preloaded library] for
security reasons, and ended up making pseudo no longer work.  You may want to
look into this before getting too far in.  Without pseudo, there is no way to
perform a build/package.)

Some -very- old work:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib-archive/refs/heads

search for macosx

(I'd love to see a native bitbake/oe-core work on MacOS X... but as far as I
know the work stalled a while back due to lack of interest by people.)

Most of the people I know using MacOS X for development are using virtual box
(or similar) and a Linux based VM.

--Mark

> thanks
> 
> 
> source oe-init-build-env
> readlink: illegal option -- f
> usage: readlink [-n] [file ...]
> -bash: /scripts/oe-buildenv-internal: No such file or directory
> 
> 


