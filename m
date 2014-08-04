Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3AF3E004DD; Mon,  4 Aug 2014 12:47:00 -0700 (PDT)
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
	*      [209.85.213.176 listed in list.dnswl.org]
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BEA2E0030B
	for <yocto@yoctoproject.org>; Mon,  4 Aug 2014 12:46:50 -0700 (PDT)
Received: by mail-ig0-f176.google.com with SMTP id hn18so5920309igb.15
	for <yocto@yoctoproject.org>; Mon, 04 Aug 2014 12:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=5q/XftI6FN6zIaFly/+c7cNnC/Z+W7r8Sl++Rd55No4=;
	b=pBlHGoxkwxXBPkHz35rhV/7N5RNblkU0+En74G1Q0rgUap1PFqQ2uSPzzv46cpfxW8
	X4XTtCz4X4F7DbDR0ieP4iUC3wvvNAInSMDiClhK5f4STqVyzlQoufXjVto0nAl6Uqfg
	4UB9BxNBDU0xgvJv21zcAr9kOxHa3pnAOabBxw3xHAoirgnwFc73XqjBgaX9rYtmKw4b
	CLtnay48IQJMQ2FfxD5E73NrilBVftLmmFx+iaUOOdAdDux9rZkmEWHnUhoQZ1Vkyjan
	2aOl5LRL9MOo+pKaZRrkFpdpG674jRoiLfv0pStd0Bp7RDwfo9Xxm2oQ4ZOXyG5p7JYH
	ZMzQ==
X-Received: by 10.42.65.200 with SMTP id m8mr11415058ici.29.1407181609993;
	Mon, 04 Aug 2014 12:46:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.126.103 with HTTP; Mon, 4 Aug 2014 12:46:19 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1408041324180.13276@localhost>
References: <alpine.LFD.2.11.1408041324180.13276@localhost>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 4 Aug 2014 12:46:19 -0700
Message-ID: <CAMKF1srWFh=K4faRy5yf6exdgArjn-LOatGZ=Dzfv640BKju0Q@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: better example than "clutter" for multiple versions of same lib?
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
X-List-Received-Date: Mon, 04 Aug 2014 19:47:01 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 4, 2014 at 10:26 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>   in current dev manual, "5.5.3. Installing Multiple Versions of the
> Same Library", one reads:
>
> "As an example, the following two recipes would allow the two
> separate versions of the clutter library to co-exist on the same
> system:
>
>      clutter-1.6_1.6.20.bb
>      clutter-1.8_1.8.4.bb
>
>   given that those recipes don't even exist (and i have no idea what
> that numbering scheme is supposed to represent), can anyone point out
> a better example to use for that section?

when you need to have two versions of same library which are ABI
incompatible then you rename the recipes to solve the namespace
violations.
may be use libusb as example if clutter is gone.

