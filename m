Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD801E00753; Mon,  9 Mar 2015 06:04:12 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 824E3E005B6
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 06:02:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t29D2tvK027952
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 9 Mar 2015 06:02:55 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 9 Mar 2015 06:02:54 -0700
Message-ID: <54FD99D7.4090708@windriver.com>
Date: Mon, 9 Mar 2015 09:02:15 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Chung-Yeh Wang <chungyehwang@gmail.com>, <yocto@yoctoproject.org>
References: <CANBg2hKqzN6kR4=7rpA3O+Ar=Y0rEOMWYgEYXsu78hfq1ZwbdQ@mail.gmail.com>
In-Reply-To: <CANBg2hKqzN6kR4=7rpA3O+Ar=Y0rEOMWYgEYXsu78hfq1ZwbdQ@mail.gmail.com>
Subject: Re: Question: Yocto 1.7.1 kernel config defconfig will not be used?
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
X-List-Received-Date: Mon, 09 Mar 2015 13:04:12 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 15-03-09 04:36 AM, Chung-Yeh Wang wrote:
> Hi List,
>
> I am using Yocto 1.7.1 to build linux-mainline. I found defconfig will
> not be used when using linux-yocto-custom.bb
> <http://linux-yocto-custom.bb/> (maybe also happens on linux-yocto).
>
> I think below is the reason,
>
> 1. kernel_do_configure is run after do_kernel_configme.The last line of
> do_kernel_configme is echo
> "CONFIG_LOCALVERSION="\"${LINUX_VERSION_EXTENSION}\" >> ${B}/.config
>
> 2. Following are the code to use defconfig,

The linux-yocto kernel_configme task takes the defconfig into account,
and uses it along with kernel configuration fragment processing.

The skipping of the blind defconfig copy is completely intentional.

Cheers,

Bruce

>
> # Copy defconfig to .config if .config does not exist. This allows
> # recipes to manage the .config themselves in do_configure_prepend().
> if [ -f "${WORKDIR}/defconfig" ] && [ ! -f "${B}/.config" ]; then
> cp "${WORKDIR}/defconfig" "${B}/.config"
>
> The condition '[ ! -f "${B}/.config"]' will not be true, so
> recepe-kernel/linux/linux-yocto-custom/defconfig will nerver be used.
>
>
> To use defconfig is one of the method suggested in Kernel developer manual.
>
> Thanks and Regards,
> Chungyeh
>
>


