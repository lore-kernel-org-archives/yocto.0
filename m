Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC5B6E007B5; Wed, 29 Mar 2017 11:23:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EE92E004E5
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 11:23:35 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v2TINXYm020682
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 29 Mar 2017 11:23:33 -0700 (PDT)
Received: from server.local (128.224.23.221) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 29 Mar 2017 11:23:33 -0700
To: Alvaro Garcia <maxpowel@gmail.com>, <yocto@yoctoproject.org>
References: <CAOsmwBQhqjnnek3enUrXRzVnRRJANcibQ43hPX9jViN+ZhZyyw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <eb569801-2090-491e-3beb-006cf6f9d1f4@windriver.com>
Date: Wed, 29 Mar 2017 14:23:32 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAOsmwBQhqjnnek3enUrXRzVnRRJANcibQ43hPX9jViN+ZhZyyw@mail.gmail.com>
Subject: Re: Compiling custom kernel
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
X-List-Received-Date: Wed, 29 Mar 2017 18:23:38 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-03-29 1:11 PM, Alvaro Garcia wrote:
> Hi, I'm trying to compile a custom kernel (just custom config).
> I created a recipe called linux-yocto in my layer:
> meta-test
> -recipes-test
> --linux-yocto
> ---linux-yocto.bbapend
> ---files
> ----enable_various_options.cfg
>
> The content of the linux-yocto.bbapend is:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> SRC_URI += "file://enable_various_options.cfg"
>
> And the content of enable_various_options.cfg is:
> CONFIG_DRM_NOUVEAU=y

Assuming that you do have your bbappend created properly
(i.e. with the version number suggestion that was sent) a
configuration option cannot always be blanket enabled. If there
are missing dependencies for that option, it won't make it into
the final .config.

So it is worth checking that all dependencies are also included
in that same .cfg.

Bruce

>
> The way I generated enable_various_options.cfg was
> bitbake -c menuconfig virtual/kernel
> Select my configuration
> bitbake -c devshell virtual/kernel
> diff of the original .config and the new one.
> I just followed the instructions here
> https://lists.yoctoproject.org/pipermail/yocto/2014-June/020174.html
> and here
> https://software.intel.com/sites/default/files/m/4/d/8/5/8/42868-11__Developing_Kernel_Module_on_Yocto.pdf
>
> Then I run bitbake core-image-x11
> I got this warning:
> WARNING:
> /home/amacho/poky/meta/recipes-kernel/linux/linux-yocto_4.4.bb.do_kernel_configme
> is tainted from a forced run
> but the kernel is not compiled with the new config (I do md5 to vmlinuz
> and was exactly the same).
>
> Can you help me to find the way I can compile this kernel?
>
> Thank you
>
>
>
>


