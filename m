Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B631E00BDF; Thu, 12 Jun 2014 08:51:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07A4FE00BB1
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 08:51:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s5CFpXtV006936
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 12 Jun 2014 08:51:33 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Thu, 12 Jun 2014 08:51:32 -0700
Message-ID: <5399CC70.5060803@windriver.com>
Date: Thu, 12 Jun 2014 11:51:12 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Daniel Hilst Selli <danielhilst@gmail.com>, <yocto@yoctoproject.org>
References: <53999502.1050802@gmail.com>
In-Reply-To: <53999502.1050802@gmail.com>
Subject: Re: Conditional patches on kernel depending on board, how to maintain?
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
X-List-Received-Date: Thu, 12 Jun 2014 15:51:41 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-06-12 07:54 AM, Daniel Hilst Selli wrote:
> I have a SoM which will be used on several boards, this SoM has a base
> kernel for it, with its board-*.c file. In each board I may have
> different peripherals, so I have to patch the same board-*.c file
> depending on my target board, and that patches may be conflicting one
> each other. For example, I could have a RF on first SPI bus on one
> board, and on another board a SD card on same first SPI bus.
>
> So basically I will have a different kernel(uImage) and rootfs (with
> kernel modules) for each board.
>
> I think to create a layer for each target board, with the
> linux-SoM.bbappend including the patches for that board..., so I enable
> the layer depending on target board I'm creating, but is too much file
> editions, or have a build directory for each target board, enabling the
> right layer on each local.conf, but this means mantaining build
> directories, or at last local.conf, which doesn't seem a good idea for
> me...
>
> Would be possible to do this relying only new layers and its
> configurations?

As was mentioned in the other replies, you can always have a single
bbappend with board specific SRC_URI updates to add the patches you
need onto the base board support.

It's unfortunate that the patches conflict, since stacking hem in
board specific SRC_URIs can lead to patch failures in some configs
and not others .. if you change the baseline.

Typically in this situation, I either #ifdef the patches and use
a different configuration to conditionally build the consistent set
of changes, or maintain the changes in a git repository with board
specific patches on each branch. Again, that git approach avoids
patch failures during build.

Cheers,

Bruce

>
> Thanks in advance
> Cheers!


