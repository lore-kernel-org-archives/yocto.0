Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 425D3E00CE1; Thu, 17 Nov 2016 07:39:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC7D9E00CE5
	for <yocto@yoctoproject.org>; Thu, 17 Nov 2016 07:39:33 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id uAHFdH5K003373
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 17 Nov 2016 07:39:20 -0800
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 17 Nov 2016 07:39:15 -0800
To: Gary Thomas <gary@mlbassoc.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <8f36100c-f3a2-ef0d-ccd5-a6d7b1fc3acb@mlbassoc.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <b6dab8d3-ef91-0720-305c-592c4c930383@windriver.com>
Date: Thu, 17 Nov 2016 10:39:14 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <8f36100c-f3a2-ef0d-ccd5-a6d7b1fc3acb@mlbassoc.com>
Subject: Re: Warning on mips64
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
X-List-Received-Date: Thu, 17 Nov 2016 15:39:36 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-11-17 01:06 AM, Gary Thomas wrote:
> I'm trying to build qemumips64 and get this warning:
> =====================================================================================
>
> WARNING: linux-yocto-4.8.6+gitAUTOINC+87e5fc8b7c_edcb167f91-r0
> do_kernel_configcheck: [kernel config]: specified values did not make it
> into the kernel's final configuration:
>
> ---------- CONFIG_CPU_MIPSR2 -----------------
> Config: CONFIG_CPU_MIPSR2
> From:
> /build/bbb_2016-10-11/tmp/work-shared/qemumips64/kernel-source/.kernel-meta/configs/standard/mti-malta64/bsp/mti-malta64/mti-malta64-common.cfg
>
> Requested value:  # CONFIG_CPU_MIPSR2 is not set
> Actual value:
>
> Config 'CPU_MIPSR2' has the following conditionals:
>
> Dependency values are:
> =====================================================================================
>
> Build Configuration:
> BB_VERSION        = "1.32.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "mips64-poky-linux"
> MACHINE           = "qemumips64"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.2"
> TUNE_FEATURES     = "n64 bigendian fpu-hard"
> TARGET_FPU        = ""
> meta              = "master:9b1bd29ea99aa0dec51e603e4ac28e211af19765"
> meta-poky         = "master:9b1bd29ea99aa0dec51e603e4ac28e211af19765"
> =====================================================================================
>
>
> What does it mean and is it important?

You can ignore it. That option is no longer directly selectable, and
I need to remove it from the meta-data, which will get rid of the
warning.

I'm doing that now!

Cheers,

Bruce

>


