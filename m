Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52F20E009B8; Tue, 11 Sep 2018 10:19:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.117.213.98 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (idealsim[at]laposte.net)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp.laposte.net (smtpoutz23.laposte.net [194.117.213.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F28FE00566
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 10:19:26 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout011 (Postfix) with ESMTP id 1880C52FD63
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 19:19:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1536686366; bh=Hb6Ai+4HT8K+Jss0JzlbFgRszeRWVme2130oclUeUdM=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=bCx6s4kMA7guRiKvX5iV/gFr7fUpk4jv4F3IUnNzsenQJYRkC8PVOvuDNrSbfBxWf
	u8myk0pcFdVmvGggb7g66eGjdWQGDncTGacBgHEbKZ1NOiSSomsdMKzTce7+bQWb/K
	fwatSPx/zuWz4tAsS26y8r66ms8HCQLx0zxPDAm0C5GFYQ9xEG15bpHyDmeuxG0zY+
	3hSoK5A3VPQG6ivDwdTquTTjfOVBs9BDVAPhoik0hfxYE3bY6M2mmNXbANYNueiuwm
	6R5PJg09ZOqDmaLy5hEYWG8AGX4DttWpFYB7g0+KIAehvsv0qQ1XAgkj8+hbLxc6i3
	sR8Mcc8E3r3yw==
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout011 (Postfix) with ESMTP id 06CE65304BA
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 19:19:26 +0200 (CEST)
Received: from lpn-prd-vrin002 (lpn-prd-vrin002.prosodie [10.128.63.3])
	by lpn-prd-vrout011 (Postfix) with ESMTP id 05DD253048E
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 19:19:26 +0200 (CEST)
Received: from lpn-prd-vrin002 (localhost [127.0.0.1])
	by lpn-prd-vrin002 (Postfix) with ESMTP id EB40F5E837D
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 19:19:25 +0200 (CEST)
Received: from [192.168.1.6] (ARennes-654-1-265-204.w2-14.abo.wanadoo.fr
	[2.14.55.204])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by lpn-prd-vrin002 (Postfix) with ESMTPSA id A55F65E82C9;
	Tue, 11 Sep 2018 19:19:25 +0200 (CEST)
To: Khem Raj <raj.khem@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <op.zo6ne1yymnlnty@pc-mls.ecafaros.local>
	<2b6eed65-c5f3-55ec-b42c-0465385f1d83@gmail.com>
From: Modjo <idealsim@laposte.net>
Message-ID: <7076b715-8da3-25d5-d445-4b6f7468e60f@laposte.net>
Date: Tue, 11 Sep 2018 19:19:28 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <2b6eed65-c5f3-55ec-b42c-0465385f1d83@gmail.com>
X-VR-FullState: 0
X-VR-Score: -100
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrgedtjedrjedvgdduudefucetufdoteggodetrfdotffvucfrrhho
X-VR-Cause-2: fhhilhgvmecunfetrffquffvgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhht
X-VR-Cause-3: shculddquddttddmnecujfgurhepuffvfhfhkffffgggjggtgfesthekredttdefleenucfhrhhomhep
X-VR-Cause-4: ofhoughjohcuoehiuggvrghlshhimheslhgrphhoshhtvgdrnhgvtheqnecuffhomhgrihhnpehgihht
X-VR-Cause-5: hhhusgdrtghomhenucfkphepvddrudegrdehhedrvddtgeenucfrrghrrghmpehmohguvgepshhmthhp
X-VR-Cause-6: ohhuthdpihhnvghtpedvrddugedrheehrddvtdegpdhhvghloheplgduledvrdduieekrddurdeingdp
X-VR-Cause-7: mhgrihhlfhhrohhmpehiuggvrghlshhimheslhgrphhoshhtvgdrnhgvthdprhgtphhtthhopeihohgt
X-VR-Cause-8: thhoseihohgtthhophhrohhjvggtthdrohhrghdprhgtphhtthhopehrrghjrdhkhhgvmhesghhmrghi
X-VR-Cause-9: lhdrtghomhenucevlhhushhtvghrufhiiigvpedt
X-VR-AvState: No
X-VR-State: 0
X-VR-State: 0
Subject: Re: [meta-raspberry]rpi-config
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
X-List-Received-Date: Tue, 11 Sep 2018 17:19:28 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-GB

Thanks for your answer. I will try tomorrow and let you known the result.

Regards,


Le 11/09/2018 à 18:43, Khem Raj a écrit :
>
> On 9/11/18 8:17 AM, idealsim wrote:
>> Hi i'm trying to build an image for a raspberry-pi 3 on branch sumo but
>> i have an error when i try to include rpi-config. See the issue under :
>>
>> ERROR: Task do_populate_sdk in
>> /media/xxx/data/raspberry/yocto/yocto_official/poky-sumo/meta-xxx/recipes-xxxx/images/console-image-xxxx.bb
>> rdepends upon non-existent task do_package_write_rpm in
>> /media/xxx/data/raspberry/yocto/yocto_official/poky-sumo/meta-raspberrypi/recipes-bsp/bootfiles/rpi-config_git.bb
>>
>> ERROR: Command execution failed: 1
>>
>> Do you have an idea how i can resolve this please ?
>>
> can you try this patch and report back if it helps or not
>
> https://github.com/kraj/meta-raspberrypi/commit/095f642e7c064b44d12854966468cc5a2699d8fd
>
>> Regards,
>>
>> Mickaël


