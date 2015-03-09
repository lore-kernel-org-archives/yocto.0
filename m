Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1871E00750; Mon,  9 Mar 2015 12:56:52 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A6EEE003FA
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 12:56:48 -0700 (PDT)
Received: from [192.168.0.40] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx2.mail.bg (Postfix) with ESMTPSA id B389B60004BA;
	Mon,  9 Mar 2015 21:56:46 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1425931006; bh=bvmbKAQOmLh/Tmi98CE7UmS4CrjpRdK13u6RD8Jc0Ik=;
	h=Message-ID:Date:From:MIME-Version:To:CC:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=ltfUVNg/1WabyS7Tk40cgw8Vss90KIgyqw+4aj99A7Iy3MeajyIzZtV5QAH8KwrUP
	/El3/LvW/PalgiuGB7xe0ArbBFB+OFyMHoSQ/NkPrnyZpzqa9UWCjrpuDSJkjpzDeo
	bc+Nf8m+s651oW09jCIz+OzojXOEwZU1Idj5DbCU=
Message-ID: <54FDFAFE.7020707@mail.bg>
Date: Mon, 09 Mar 2015 21:56:46 +0200
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.5.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <54FDF2EE.6070509@mail.bg>
	<BD661189-005C-48AE-804D-31A33CB14583@gmail.com>
In-Reply-To: <BD661189-005C-48AE-804D-31A33CB14583@gmail.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Mon, 09 Mar 2015 19:56:53 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Khem,

On 03/09/2015 09:31 PM, Khem Raj wrote:
>
>> On Mar 9, 2015, at 12:22 PM, Nikolay Dimitrov <picmaster@mail.bg> wrote:
>>
>> Hi guys,
>>
>> I need an advice for the following Yocto use case.
>>
>> My system has to boot via minimal initramfs and then must use the full
>> rootfs. I can use 2 separate recipes to generate the 2 images (minimal
>> initramfs, complete rootfs), but I prefer to create all my build-
>> products via single bitbake command.
>>
>> So, is it possible to build these 2 images with 1 recipe, and if "yes"
>> then how?
>>
>
>
> Look at how initramfs http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-tasks-bundle_initramfs
> and also meta/conf/local.conf.sample.extended

Thanks for answering. INITRAMFS_IMAGE_BUNDLE doesn't achieve what I
need, instead it merges the kernel image and initramfs in a single
file. What I need is, instead of invoking:

bitbake myproduct-image
bitbake myproduct-initrams-image

to invoke:

bitbake myproduct-combined-image

...which should create 2 separate images.

Regards,
Nikolay

