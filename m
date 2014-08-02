Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E822E006E7; Sat,  2 Aug 2014 12:52:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF234E004F1
	for <yocto@yoctoproject.org>; Sat,  2 Aug 2014 12:52:43 -0700 (PDT)
Received: by mail-ie0-f169.google.com with SMTP id rd18so7960758iec.28
	for <yocto@yoctoproject.org>; Sat, 02 Aug 2014 12:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=R6GZKuxkAC/VFMHJpIkDtr0AhE1BxUNiA2rOwalVKu8=;
	b=OO3VscPq4ATmqhWn5E31mHrmkgs1IQcNBgY6uNBaXaBUX6vG57k7tIdNDBAPzWrNRm
	6UZxqjk/VQBrZMpkbJaAD2gIDBWvMi9qqgKGcRS9rlc1Qx83Zr1Vkwbl94ac4iTUd9uo
	VHXuG+jcvPxAnISKNujG6YaZOUIgxQoz/Yq+ZQkCk0WcnjdEbkFUCDiQ0/Qzu7ZEw5/J
	Sd/UfdzNGii1HcBE9SsqzlCtA9yCoyGesh/Q9a4LX/0yf3hmydnsGofLP6anXgQ0Vtk+
	LugKz5hIyMNna55MIWRe932clNa3/ibYGuxECkaRCUkzT3wyOCjDdiosPJwv0l2+oJRz
	o7ZA==
X-Received: by 10.50.43.225 with SMTP id z1mr20172667igl.17.1407009162408;
	Sat, 02 Aug 2014 12:52:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Sat, 2 Aug 2014 12:52:12 -0700 (PDT)
In-Reply-To: <53DD053A.9060902@dynamicdevices.co.uk>
References: <53DA58C9.50705@open.eurogiciel.org>
	<53DB6430.8090608@dynamicdevices.co.uk>
	<53DB660B.6040700@open.eurogiciel.org>
	<53DB66D8.3060500@dynamicdevices.co.uk>
	<53DBA085.7010705@dynamicdevices.co.uk>
	<53DBA665.7080002@open.eurogiciel.org>
	<53DBB20B.8020307@dynamicdevices.co.uk>
	<53DBB576.2000905@open.eurogiciel.org>
	<53DBB48B.2050907@dynamicdevices.co.uk>
	<53DBC21B.7080209@dynamicdevices.co.uk>
	<53DD053A.9060902@dynamicdevices.co.uk>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 2 Aug 2014 12:52:12 -0700
Message-ID: <CAMKF1srknDf_VTV=Xd7sQnohmuXN1S1Zh_21-R6w2HH1VAn6-A@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: general@lists.tizen.org, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [Tizen General] Build Tizen with yocto work-flow
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
X-List-Received-Date: Sat, 02 Aug 2014 19:52:50 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Aug 2, 2014 at 8:35 AM, Alex J Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
> I made some progress with a USB installation of Yocto Tizen and a VirtualBox disk.
>
> Both a Samsung laptop running from USB and a VirtualBox machine boot, but after mounting the root filesystem they go extremely slowly.

its a 'sony' laptop per picture :)

>
> They get to "failed to get machine ID" and then it's taking a minute or two before new output appears. Then screen goes black and I don't appear to get any further.


do you have /etc/machine-id file in rootfs ?

