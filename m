Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01474E00750; Mon,  9 Mar 2015 13:05:48 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FB19E003FA
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 13:05:45 -0700 (PDT)
Received: from [192.168.0.40] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx2.mail.bg (Postfix) with ESMTPSA id 90A6B600029C;
	Mon,  9 Mar 2015 22:05:44 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1425931544; bh=NeWZIdVjSf4x2PmjdZN68zd5+EtoDXkV+Geu/hhCm9c=;
	h=Message-ID:Date:From:MIME-Version:To:CC:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=mbB1MxCKsKGFfMJ1VV6hMktsdt+Qr0T2/5lsQmyKonD1BYkoUZi/f0W45bLAFoe71
	uFKsgwdNhzhzy7aV7Pj8GDfZLvFlS5U3twqR5kQEEQmH/mHnkkLV5n04mrro7YiFIk
	9BdteRso4RGjIahGRFwZ5dGYzsWOsUIjwg2HTarE=
Message-ID: <54FDFD18.9090507@mail.bg>
Date: Mon, 09 Mar 2015 22:05:44 +0200
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.5.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <54FDF2EE.6070509@mail.bg>
	<BD661189-005C-48AE-804D-31A33CB14583@gmail.com>
	<54FDFAFE.7020707@mail.bg>
	<CAJTo0LY3N=QsDhweBuSU9UEPV0j9YU=O1gaX=Dw0rAtrf0cQJw@mail.gmail.com>
In-Reply-To: <CAJTo0LY3N=QsDhweBuSU9UEPV0j9YU=O1gaX=Dw0rAtrf0cQJw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 2 images with single Bitbake recipe
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
X-List-Received-Date: Mon, 09 Mar 2015 20:05:49 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Ross,

On 03/09/2015 09:58 PM, Burton, Ross wrote:
>
> On 9 March 2015 at 19:56, Nikolay Dimitrov <picmaster@mail.bg
> <mailto:picmaster@mail.bg>> wrote:
>
>     bitbake myproduct-combined-image
>
>     ...which should create 2 separate images.
>
>
> If typing both is too much bother, have a recipe that just has
> DEPENDS=myproduct-image myproduct-initramfs-image and stub out all the
> other tasks so it doesn't do anything.

Thanks for the idea, I'll try the add the image as a dependency.

Regards,
Nikolay

PS: It's not just a matter of typing. Other people need to use the
results of my work, and there are already lots of other manual steps
when a software needs to be built and deployed on the target, so adding
one more step doesn't improve our lives.

