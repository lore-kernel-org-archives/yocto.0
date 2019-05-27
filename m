Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF15CE00D38; Mon, 27 May 2019 09:36:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.116 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd11116.aruba.it (smtpcmd11116.aruba.it [62.149.156.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8774E00D31
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 09:36:43 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd11.ad.aruba.it with bizsmtp
	id HUci2000D2wfazh01UciV0; Mon, 27 May 2019 18:36:42 +0200
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <8bf92e7d-5943-a3b6-48da-e935a870bdc7@faresoftware.it>
Date: Mon, 27 May 2019 18:36:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1558975002; bh=iu1giQq/QHoZFwo1u0GABBsj20J/uq65/PQ9NSbbzSE=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=YIJSy1J8ar3FECcsZvyWZHBQPPVfkNLQ4/2y2XixKpXek+7fDhbqcMLt628fnCZar
	0u/pA8982QcDOmEmqQhQdpLTuYHdZM8r1E6h91U7JQoKg5LKXbqL8KDk+WmQk0JCfL
	SOH76P1JyL4Of1JoJIboFleN6vPd8V57R0en2vIXo3+PJo09jxR9SvKzosal9LSoyT
	TBKWhTv16i/zDcC+sO4jKZuQ008FyPzA3a/Z+nxeRSFzMxvScyjywa6PQ7FIDpzyDn
	tYa4qGBSYBT9mS4Oo4mD2FcQPD7Aroej2Rv2GusapCqHJ/S6iYnOTtymo8fsJGvD7F
	KSGvzRURNfFbw==
Subject: Customize syslinux root=???
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
X-List-Received-Date: Mon, 27 May 2019 16:36:45 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I'm working with Thud and Ibase ib550f board (AMD Geode arch).

I make the BSP for ib550f an I build the  core-image-minimal image.

Than with wic I try to write the final directdisk file. The ib550f run 
from a CompactFlash.

The CF is mapped into the device /dev/hdb (the boot partition is 
/dev/hb1, the root partition /dev/hdb2).

I read many docs of Yocto but I don't find what I need.


The syslinux is always the bootloader choosen by wic: I'd like to use 
other booloader like grub.

And syslonux get /dev/sda2 has root parameter appended to syslinux.

I try to set SYSLINUX_ROOT := "root=/dev/hdb2" (in local.conf and in 
core-image-minimal.bbappend), but my setup is ignored


How can I customize syslinux to change SYSLINUX_ROOT=/dev/hdb2


Thanks all.

Mauro


