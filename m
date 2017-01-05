Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD3CDE007D1; Thu,  5 Jan 2017 11:33:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.178.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from slow1-d.mail.gandi.net (slow1-d.mail.gandi.net [217.70.178.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51FB0E0071C
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 11:33:45 -0800 (PST)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id E38AC496017
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 20:33:44 +0100 (CET)
Received: from mfilter39-d.gandi.net (mfilter39-d.gandi.net [217.70.178.170])
	by relay5-d.mail.gandi.net (Postfix) with ESMTP id C62DF41C099;
	Thu,  5 Jan 2017 20:33:41 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter39-d.gandi.net
Received: from relay5-d.mail.gandi.net ([IPv6:::ffff:217.70.183.197])
	by mfilter39-d.gandi.net (mfilter39-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id 81dE-AGKXA3o; Thu,  5 Jan 2017 20:33:40 +0100 (CET)
X-Originating-IP: 86.24.150.36
Received: from nuc.betafive.co.uk
	(cpc15-shep11-2-0-cust35.8-3.cable.virginm.net [86.24.150.36])
	(Authenticated sender: paul@paulbarker.me.uk)
	by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id CD0B741C089;
	Thu,  5 Jan 2017 20:33:39 +0100 (CET)
Date: Thu, 5 Jan 2017 19:33:38 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20170105193338.5b1360ec@nuc.betafive.co.uk>
In-Reply-To: <20170105174229.1648-1-twoerner@gmail.com>
References: <20170105174229.1648-1-twoerner@gmail.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2] linux-raspberrypi-rt: add
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
X-List-Received-Date: Thu, 05 Jan 2017 19:33:48 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu,  5 Jan 2017 12:42:29 -0500
Trevor Woerner <twoerner@gmail.com> wrote:

> Add an -rt kernel recipe for Raspberry Pi that includes the FIQ patch which
> adds stability to the -rt kernel (with full preemption enabled) and is an
> improvement to simply disabling FIQ on the kernel cmdline.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
> 
> changes since v1:
> 	- use "make savedefconfig" to generate the defconfig instead of just
> 	  using the full .config
> 
>  .../0001-fix-dtbo-rules.patch                      |    44 +
>  .../FIQ_PREEMPT_RT_on_raspi.patch                  |   310 +
>  .../linux/linux-raspberrypi-rt-4.4/defconfig       |  1249 +
>  .../patch-4.4.32-rt43.patch                        | 31403 +++++++++++++++++++
>  recipes-kernel/linux/linux-raspberrypi-rt_4.4.bb   |    55 +
>  5 files changed, 33061 insertions(+)
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/0001-fix-dtbo-rules.patch
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/FIQ_PREEMPT_RT_on_raspi.patch
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/defconfig
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/patch-4.4.32-rt43.patch
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt_4.4.bb
> 

Would it be possible to point SRC_URI at kernel.org [1] instead of
including the whole patch in meta-raspberrypi? It feels a bit much to
me to include a >1MB patch file.

[1]: https://www.kernel.org/pub/linux/kernel/projects/rt/4.4/older/patch-4.4.32-rt43.patch.gz

Thanks,
Paul

