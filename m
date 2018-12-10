Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6390E00C10; Mon, 10 Dec 2018 07:41:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [62.149.156.86 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd0986.aruba.it (smtpcmd0986.aruba.it [62.149.156.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AA7DE00B92
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2018 07:41:15 -0800 (PST)
Received: from [192.168.24.172] ([87.26.78.158])
	by smtpcmd09.ad.aruba.it with bizsmtp
	id AFh91z00z3QvvBK01FhENb; Mon, 10 Dec 2018 16:41:14 +0100
To: yocto@yoctoproject.org
References: <22654ed2-aaac-3ced-ec7f-45275f558b66@faresoftware.it>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <998b216a-b5c6-c4f5-9184-d1300cd9c8c6@faresoftware.it>
Date: Mon, 10 Dec 2018 16:41:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.3.3
MIME-Version: 1.0
In-Reply-To: <22654ed2-aaac-3ced-ec7f-45275f558b66@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1544456474; bh=zpsrM01bLO8FoP07oWBP4AvloJyxb95FuR2XTUlVuAE=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=bE4rdG1OF40yb/Yy93u5xd6GqpRgZdxZp43r+p3gM5jCBo5yQoIqkiZ9KSY+jAwqu
	iXILq1UI8pgsOMo1g2SHDqnKTqdlFUNQDLds0sMNTWlBEqqGDrANpeb8yt4XsYuygb
	d13lmYIsn4tBFsy77mqSWC18Mx/zMHCjtOsPsYLn16ivWJzalnp5CDPzQP5XpRxVK1
	XvmNQgfnmB/3VS2Hn6AHPo+ZDuP3wFt2sP0HwCoTYRC4+zel2qTihltBiDDEdmjmpy
	dhd1tZHgE03cKfuTsqtDDs266VuliKGAIPa9mF6p120pUsB1X0Sj+d0tipsWTD/mGD
	80qlvKMJxAT2w==
Subject: Re: nativesdk-packagegroup-sdk-host not found. Why?
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
X-List-Received-Date: Mon, 10 Dec 2018 15:41:17 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Solved.

Th nativesdk-package-sdk-host was not found because in conf/local.conf I 
set DPKG_ARCH="armhf".

Erasing this setup all works.


Mauro


Il 10/12/18 08:13, Mauro Ziliani ha scritto:
> Hi all.
>
> I try to rebuild meta-toolchain-qt5 and meta-toolchain, but bitbake 
> tells me the it can found nativesdk-packagegroup-sdk-host and on 
> populate_sdk task.
>
> Why?
>
>
> Which configuration variables drive the production of the recipe 
> nativesdk-packagegroup-sdk-host.bb?
>
>
> Thanks all
>
>
> Mauro
>

