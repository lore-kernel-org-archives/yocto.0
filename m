Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B5F5E006C5; Fri, 12 Sep 2014 09:57:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3D20E006C5
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 09:57:36 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s8CGvTQb017011
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 12 Sep 2014 09:57:29 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Fri, 12 Sep 2014 09:57:28 -0700
Message-ID: <541325E0.8070001@windriver.com>
Date: Fri, 12 Sep 2014 12:57:04 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: Vicente Olivert Riera <Vincent.Riera@imgtec.com>, <yocto@yoctoproject.org>
References: <1410539753-24011-1-git-send-email-Vincent.Riera@imgtec.com>
	<1410539753-24011-3-git-send-email-Vincent.Riera@imgtec.com>
In-Reply-To: <1410539753-24011-3-git-send-email-Vincent.Riera@imgtec.com>
Subject: Re: [PATCH 2/2] Add MIPS Creator CI20 machine
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
X-List-Received-Date: Fri, 12 Sep 2014 16:57:39 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-09-12 12:35 PM, Vicente Olivert Riera wrote:
> Add support for the MIPS Creator CI20 machine. You will need to build a
> working kernel for this board using this kernel repository on GitHub:
>
>    https://github.com/MIPS/CI20_linux
>
> More information about this board can be found at:
>
>    http://elinux.org/MIPS_Creator_CI20

All of the meta-yocto-bsp reference machines are using the kernel, and
kernel version of linux-yocto* so we can ensure a consistent update
cadence and set of features.

Something that I'd like to see continue.

I can see how the ability to re-use the tune files makes sense, but
the BSP should follow the format and structure of the existing ones,
otherwise, the value in pulling it into the common layers isn't there.

Bruce

>
> Signed-off-by: Vicente Olivert Riera <Vincent.Riera@imgtec.com>
> ---
>   meta-yocto-bsp/conf/machine/ci20.conf |   10 ++++++++++
>   1 files changed, 10 insertions(+), 0 deletions(-)
>   create mode 100644 meta-yocto-bsp/conf/machine/ci20.conf
>
> diff --git a/meta-yocto-bsp/conf/machine/ci20.conf b/meta-yocto-bsp/conf/machine/ci20.conf
> new file mode 100644
> index 0000000..bd26815
> --- /dev/null
> +++ b/meta-yocto-bsp/conf/machine/ci20.conf
> @@ -0,0 +1,10 @@
> +#@TYPE: Machine
> +#@NAME: CI20
> +#@DESCRIPTION: MIPS Creator CI20
> +
> +require conf/machine/include/tune-mips32r2.inc
> +
> +DEFAULTTUNE = "mips32r2el"
> +MACHINE_FEATURES = "serial"
> +SERIAL_CONSOLE = "115200 ttyS4"
> +IMAGE_FSTYPES ?= "tar.bz2"
>


