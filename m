Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4041AE01426
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 09:18:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q4BGGi7K006610
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 11 May 2012 09:16:44 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 11 May 2012 09:16:44 -0700
Message-ID: <4FAD3B6A.9070801@windriver.com>
Date: Fri, 11 May 2012 12:16:42 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: <tom.zanussi@intel.com>
References: <cover.1336697506.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336697506.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH 00/10][KERNEL][RFC] policy cleanup patches
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
X-List-Received-Date: Fri, 11 May 2012 16:20:05 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-10 09:00 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This set of patches factors out the policy vs hardware-related config
> of the common-pc and common-pc-64 along with some meta-intel BSPs.
>
> There are also a couple usb cleanups as well.
>
> This is an RFC patchset because it's completely untested at this
> point so shouldn't be pulled in - I wanted to get this pre-NAKed
> at least once before actually going through the trouble of testing.  ;-)

I see Darren's around and adding some comments. I'll have a look at this
later today, and provide some feedback.

Just wanted to let you know that I've seen it, and plan to have a detailed
look at it shortly.

Bruce

>
> Tom
>
> The following changes since commit 1dfd60fa1250259eed38ae5b2840eb37e3758a1b:
>    Tom Zanussi (1):
>          meta/fishriver: move smp options from recipe-space
>
> are available in the git repository at:
>
>    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/policy-cleanup
>    http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/policy-cleanup
>
> Tom Zanussi (10):
>    meta: add ROOT_HUB_TT config option to the usb/ehci-hcd feature
>    meta/common-pc: use usb features
>    meta/common-pc-64: use usb features
>    meta/common-pc: factor out policy-related options
>    meta/common-pc: factor out policy-related options
>    meta/crownbay: factor out policy-related options
>    meta/emenlow: factor out policy-related options
>    meta/emenlow: factor out policy-related options
>    meta/jasperforest: factor out policy-related options
>    meta/sugarbay: factor out policy-related options
>
>   .../bsp/common-pc-64/common-pc-64-preempt-rt.scc   |    6 ++++++
>   .../bsp/common-pc-64/common-pc-64-standard.scc     |    6 ++++++
>   .../kernel-cache/bsp/common-pc-64/common-pc-64.cfg |    3 ---
>   .../kernel-cache/bsp/common-pc-64/common-pc-64.scc |    8 ++------
>   .../bsp/common-pc/common-pc-preempt-rt.scc         |    7 +++++++
>   .../bsp/common-pc/common-pc-standard.scc           |    6 ++++++
>   .../kernel-cache/bsp/common-pc/common-pc-tiny.scc  |    5 +----
>   meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg  |    5 -----
>   meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc  |    6 ++----
>   .../bsp/crownbay/crownbay-preempt-rt.scc           |    8 ++++++++
>   .../bsp/crownbay/crownbay-standard.scc             |    7 +++++++
>   meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |    7 -------
>   .../bsp/emenlow/emenlow-preempt-rt.scc             |    8 ++++++++
>   .../kernel-cache/bsp/emenlow/emenlow-standard.scc  |    8 ++++++++
>   meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc      |    7 -------
>   .../bsp/fishriver/fishriver-preempt-rt.scc         |    8 ++++++++
>   .../bsp/fishriver/fishriver-standard.scc           |    8 ++++++++
>   meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc  |    7 -------
>   .../bsp/jasperforest/jasperforest-preempt-rt.scc   |    7 +++++++
>   .../bsp/jasperforest/jasperforest-standard.scc     |    6 ++++++
>   .../kernel-cache/bsp/jasperforest/jasperforest.scc |    6 ------
>   .../bsp/sugarbay/sugarbay-preempt-rt.scc           |    7 +++++++
>   .../bsp/sugarbay/sugarbay-standard.scc             |    6 ++++++
>   meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc    |    6 ------
>   meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg    |    1 +
>   25 files changed, 104 insertions(+), 55 deletions(-)
>


