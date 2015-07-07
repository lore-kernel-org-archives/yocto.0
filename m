Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DDF1E00957; Tue,  7 Jul 2015 12:19:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [193.201.172.118 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (picmaster[at]mail.bg)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx2.mail.bg (mx2.mail.bg [193.201.172.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D490E006C6
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 12:19:34 -0700 (PDT)
Received: from [192.168.0.62] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx2.mail.bg (Postfix) with ESMTPSA id C05D46004439;
	Tue,  7 Jul 2015 22:19:28 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1436296768; bh=kN6mCYPVIBMUUndsfWXCf6vyfDXiqMDMmgcwgFWIOkQ=;
	h=Message-ID:Date:From:MIME-Version:To:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=N3NIO4Vhg+1dLWcbskALntxHgxdPvj20Jryg1c6v41o0ZMW5KgPzI2NgBrjFWR6iU
	eyiVzR0HqhPQpICoWZ3G2gMdCxDlxSgB2w9F2BR0087JM61JODyThtA82uZnK7n/ab
	BdO6IEzOJExolp1RlZBoVHO4SMkqpYQmz425U34c=
Message-ID: <559C2640.8080600@mail.bg>
Date: Tue, 07 Jul 2015 22:19:28 +0300
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: "Luke (Lucas) Starrett" <lstarret@broadcom.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <DB59870584238C45879465F0A2E5C3F17B44E5@IRVEXCHMB14.corp.ad.broadcom.com>
In-Reply-To: <DB59870584238C45879465F0A2E5C3F17B44E5@IRVEXCHMB14.corp.ad.broadcom.com>
Subject: Re: External toolchains
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
X-List-Received-Date: Tue, 07 Jul 2015 19:19:40 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi Luke,

On 07/07/2015 08:35 PM, Luke (Lucas) Starrett wrote:
> Hi,
>
> For various reasons, we have a need to work with pre-compiled external
> toolchains, in this case, the 2014-09 Linaro aarch64 release.  A key
> difference between this specific toolchain vs. the Fido/1.8 out of the
> box toolchain (4.9.2 + patches?), is that the Linaro version is built
> with --enable-multiarch.  We end up with applications built with search
> paths such as /lib/aarch64, /usr/lib/aarch64, etc,  but libraries
> installed in the normal /lib, /usr/lib paths.  Obviously if we use the
> built-in toolchain recipes in 1.8, life is good, search paths match
> install paths.
>
> I wanted to understand a couple points.
>
> 1)What are the long term goals/roadmap are in this area specific to
> Yocto/OE?
>
> 2)Where is the “right” place to deal with this?
>
> a.Configure (based on detected toolchain capability)
>
> b.Install (override library destination?)
>
> c.Other?

Is it possible for you to use ld.so.conf to point to the proper library
paths?

> 3)Any other examples that can be used as a reference?
>
>
> I’ve seen a few emails in the archives that seem to touch on this, but
> none that really seemed to come to any conclusion.
>
> Thanks,
>
> Luke Starrett

Regards,
Nikolay

