Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9A69E00A54; Thu, 15 Nov 2018 12:08:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C093E00A1A
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 12:08:24 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id wAFK8NWK009875
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 15 Nov 2018 12:08:23 -0800 (PST)
Received: from server.local (128.224.23.61) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.408.0;
	Thu, 15 Nov 2018 12:08:23 -0800
To: Jon Mason <jdmason@kudzu.us>, Yocto discussion list
	<yocto@yoctoproject.org>
References: <CAPoiz9z_LvL=ZwH6meNSAR1GbXgtjsdj2f3C4F3c2dTu7Q3W-w@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <07bf3e7d-7086-8ba2-111b-0d8f8db5fc8c@windriver.com>
Date: Thu, 15 Nov 2018 15:08:22 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.3.0
MIME-Version: 1.0
In-Reply-To: <CAPoiz9z_LvL=ZwH6meNSAR1GbXgtjsdj2f3C4F3c2dTu7Q3W-w@mail.gmail.com>
Subject: Re: QEMU kernel defconfigs
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
X-List-Received-Date: Thu, 15 Nov 2018 20:08:24 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2018-11-15 12:29 p.m., Jon Mason wrote:
> I'm having difficulty determining where the kernel defconfigs are
> defined and located.  I'm specifically looking for the qemuarm and
> qemuarm64 kernel defconfigs.  I've looked at the relevant
> documentation, https://www.yoctoproject.org/docs/2.5.1/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file
> and
> no SRC_URI with defconfig or KBUILD_DEFCONFIG_KMACHINE defined in
> meta/recipes-kernel/linux/linux-yocto_4.18.bb
> 
> What am I missing?

The reference machines with linux-yocto don't use defconfigs at all.
They are fully assembled from the configuration fragments in the
kernel-cache repo.

You'll see the location of the kernel-cache, and the routines that
gather up the fragments in the linux-yocto* recipes.

The kernel development manual has that detail as well:

https://www.yoctoproject.org/docs/2.5.1/kernel-dev/kernel-dev.html#kernel-dev-advanced

Bruce

> 
> Also, "A defconfig file is simply a .config renamed to "defconfig"."
> is not correct.  A properly created defconfig is created by `make
> savedefconfig` and is a minimal file which only has the delta between
> the desired config and defaults from the Kconfig files.
> https://www.yoctoproject.org/docs/2.5.1/kernel-dev/kernel-dev.html#creating-a-defconfig-file
> 
> Thanks,
> Jon
> 


