Return-Path: <tim.bird@am.sony.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe005.messaging.microsoft.com [216.32.180.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 463A4E002AB
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2013 11:38:10 -0800 (PST)
Received: from mail88-va3-R.bigfish.com (10.7.14.237) by
	VA3EHSOBE009.bigfish.com (10.7.40.29) with Microsoft SMTP Server id
	14.1.225.23; Wed, 23 Jan 2013 19:38:08 +0000
Received: from mail88-va3 (localhost [127.0.0.1])	by mail88-va3-R.bigfish.com
	(Postfix) with ESMTP id 629D3120101	for <yocto@yoctoproject.org>;
	Wed, 23 Jan 2013 19:38:08 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.228; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail01v.am.sony.com; RD:mail01.sonyusa.com;
	EFVD:NLI
X-SpamScore: -2
X-BigFish: VPS-2(zz4015I14ffIzz1ee6h1de0h1202h1e76h1d1ah1d2ahzzz2fh2a8h668h839h947hd25hf0ah1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh162dh1631h1758h1765h18e1h190ch1155h)
Received-SPF: pass (mail88-va3: domain of am.sony.com designates
	160.33.194.228 as permitted sender) client-ip=160.33.194.228;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail01v.am.sony.com ; .am.sony.com ; 
Received: from mail88-va3 (localhost.localdomain [127.0.0.1]) by mail88-va3
	(MessageSwitch) id 1358969886494830_23187;
	Wed, 23 Jan 2013 19:38:06 +0000 (UTC)
Received: from VA3EHSMHS003.bigfish.com (unknown [10.7.14.250])	by
	mail88-va3.bigfish.com (Postfix) with ESMTP id 66A9D22006A	for
	<yocto@yoctoproject.org>; Wed, 23 Jan 2013 19:38:06 +0000 (UTC)
Received: from usculsndmail01v.am.sony.com (160.33.194.228) by
	VA3EHSMHS003.bigfish.com (10.7.99.13) with Microsoft SMTP Server (TLS)
	id 14.1.225.23; Wed, 23 Jan 2013 19:38:05 +0000
Received: from usculsndmail12v.am.sony.com (usculsndmail12v.am.sony.com
	[146.215.230.103])	by usculsndmail01v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id
	r0NJc3Uj022849	for
	<yocto@yoctoproject.org>; Wed, 23 Jan 2013 19:38:03 GMT
Received: from mail1x.sjc.in.sel.sony.com (mail3.sjc.in.sel.sony.com
	[43.134.1.112])	by usculsndmail12v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id r0NJc1Ru022158
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256
	verify=FAIL)	for
	<yocto@yoctoproject.org>; Wed, 23 Jan 2013 19:38:03 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sjc.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	r0NJc1xE006811	for <yocto@yoctoproject.org>;
	Wed, 23 Jan 2013 19:38:01 GMT
Message-ID: <51003D50.3080600@am.sony.com>
Date: Wed, 23 Jan 2013 11:43:12 -0800
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-OriginatorOrg: am.sony.com
Subject: RFC - integrating target runtime information into a yocto build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 23 Jan 2013 19:38:10 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

Hi everyone,

I'm doing research on whole-system optimization, and I'd like to ask opinions
on the next stage of my work.

== background ==
After a fair amount of blood, sweat and tears, I have (finally) produced a working
ARM kernel that is optimized with gcc's link-time-optimization (LTO) feature.
Previously, I had completed a system that did syscall detection in object files,
and unused syscall elimination in the Linux kernel.

In the next stage of my research, I'm planning on combining those two
to do kernel optimization and rebuilding, AFTER the distribution image build.

There are a number of other techniques I'll be looking at as well, including
1) profiling applications and re-linking with modified linker scripts to increase
the locality of init-time functions (and reduce flash access during boot)
2) profiling block-layer accesses to convert portions of applications to XIP
using the AXFS filesystem
3) additional automated kernel feature elimination from whole-image static
and runtime analysis.

Finally (by way of background), I already have tools to automate the process
of installing software on the target, rebooting, running programs and
collecting results.

== questions ==
First, has anyone already done anything with OE or YP that takes data
from a running system, and feeds it back into the build system?

Does it make sense to add recipes to YP that wrap my tools, collect
the data and re-start the build process?  Is this even possible?
That is, can bitbake wait for results from a late build stage,
invalidate previous results, and cause rebuilds of key components?
Or is this stretching things too far?

Has anyone built recipes in OE or YP for image deployment,
target control, or test execution?

The alternative is to put this iteration outside of the build process.
That is, to do an initial build, collect results, modify the build inputs,
and do a subsequent build (directed from "above" bitbake, rather than
from recipes inside the build system).

Does anyone have any experience with this?  Any ideas on the best
approach?

I'm not expert enough in YP to know the dangers here.
I would, however, very much like to make this work reproducible
and automated, which is why I have a high interest in doing
this in YP.

Thanks,
 -- Tim


=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


