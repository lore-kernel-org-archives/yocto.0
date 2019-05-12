Return-Path: <jean-christian.derivaz@innodelec.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AA15E00B8F; Sun, 12 May 2019 08:04:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.147.79.142 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from europa.tizoo.com (europa.tizoo.com [212.147.79.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C431E009A0
	for <yocto@yoctoproject.org>; Sun, 12 May 2019 08:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=innodelec.ch; s=default; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=NcizMy17yKQ368gO7RQ6yp7BNBixCKxP7Qv+W+72Aec=;
	b=H7v7HaKS7Q0BLIEJiKlLywDjET
	nbHkjP1Es08QRRIaHHyX7k+ERoXtBAk4MxRgpj3+BiScFtvgIPzWrk1asMmqd6EJcHFCYRAxfqz3Q
	uOtM0TY2BnAJ6tfI2YjLHtfC/miU7ZfGQH23nQwdC0AKw7/tg0P7v0bLHeYc66a2ePwUzjTjK2JUp
	uJYfz3d3cK9mPkAo3l7wze8XOocT/YVEKareaglRyD5fWVYpClJz3BHpCuD+4ewEWeWVyRQuD0s1M
	x57vtoKoLvGgUuT7aMobCRZK0RbKKMlHh/UGhYovHn49zMn1F3TWAz+9M41MksIbh2cC3So+TiDLw
	p60UBiMQ==;
Received: from [213.221.150.139] (port=35746 helo=[10.0.33.10])
	by europa.tizoo.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.91)
	(envelope-from <jean-christian.derivaz@innodelec.ch>)
	id 1hPq1b-005DQW-Ph; Sun, 12 May 2019 17:04:28 +0200
To: Paul Barker <paul@betafive.co.uk>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <17b6446a-7ca5-5bb0-2c3d-0d482ac226d5@innodelec.ch>
	<1b045887-43ce-44c6-a5c1-0fd85944cd93@www.fastmail.com>
From: Jean-Christian de Rivaz <jean-christian.derivaz@innodelec.ch>
Message-ID: <7448c585-90cc-35bb-c20f-ce5bf1879de4@innodelec.ch>
Date: Sun, 12 May 2019 17:04:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1b045887-43ce-44c6-a5c1-0fd85944cd93@www.fastmail.com>
X-OutGoing-Spam-Status: No, score=-2.9
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - europa.tizoo.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - innodelec.ch
X-Get-Message-Sender-Via: europa.tizoo.com: authenticated_id:
	jean-christian.derivaz@innodelec.ch
X-Authenticated-Sender: europa.tizoo.com: jean-christian.derivaz@innodelec.ch
Subject: Re: linux-raspberrypi_4.19.bb unknown commit
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
X-List-Received-Date: Sun, 12 May 2019 15:04:31 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Le 11.05.19 à 21:46, Paul Barker a écrit :
> On Sat, 11 May 2019, at 20:44, Jean-Christian de Rivaz wrote:
>> Hi,
>>
>> I try to use the Linux 4.19 for the RaspberryPi from the
>> meta-raspberrypi recipe linux-raspberrypi_4.19.bb but the commit
>> ab8652c03fa081b27de7e28a74c2536cb2aa3e5b from his SRCREV don't exists
>> into the repository github.com/raspberrypi/linux branch rpi-4.19.y . I
>> searched that commit on a few others branches but failed to find it.
>> Have anyone tested that recipe ?
> The upstream rpi-4.19.y branch is still unstable and they enjoy rebasing commits. The breaks the commit references used in our recipes.
>
> For now I recommend sticking to the 4.14.y kernels for Raspberry Pi.
>
Too bad, I need Linux >= 4.19 to enable cgroup2 memory.oom_group to
properly kill and restart xserver-nodm with chromium in kiosk mode
displaying videos all the days long. There a bug somewhere in
chromium/ffmpeg/gpu that eat all the available memory, and I don't have
time and money  to dig in that complexity and patch acceptance marathon.

Jean-Christian de Rivaz
innodelec sàrl


