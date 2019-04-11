Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5ABCE00D14; Thu, 11 Apr 2019 02:29:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [62.149.156.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd15176.aruba.it (smtpcmd15176.aruba.it [62.149.156.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 512ACE0053F
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 02:29:34 -0700 (PDT)
Received: from [10.0.3.121] ([78.6.3.122])
	by smtpcmd15.ad.aruba.it with bizsmtp
	id yxVZ1z00a2dwwGE01xVZ33; Thu, 11 Apr 2019 11:29:33 +0200
To: Mikko.Rapeli@bmw.de
References: <015AB11D45F2C442929CB2765DAE738634DD053D@PGSMSX110.gar.corp.intel.com>
	<72b7a5a1-3297-9011-67e8-f2a5a943f086@faresoftware.it>
	<20190410095919.GQ20077@hiutale>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <73bd83bf-9fc0-f30a-501f-c3858dab5841@faresoftware.it>
Date: Thu, 11 Apr 2019 11:29:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190410095919.GQ20077@hiutale>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1554974973; bh=PRe51lnYhQRbCAXSCP0kg9lW0a5k3MlQ0BUaaldV3Lw=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=OqZ57GMMqmBplxK8NeRNYVCbgeh/BOyD0cla9S97WW0jupFPg3U98EfYGR02KmYAn
	XkgJ2oTZl5bnA6BclWONuRDsx8j1J7/HqqE+7lbvpU9wEYwtcx2uICOC7isQHhfv46
	uVRXdOt/k8ZLv8RrxMNrWMQF02QgNk48oE2FHdRvDmXSiDATWzDvJl3jG7bzdNwxn9
	P0+YE/6xZVLaRUsXQ+eCTkXAwRNDQBv3wElNGD/nUxzR5gUTpMpNs+HxcdIvl/DCUZ
	HZZFF92mBfO45OMwwID3POvln0Z2RP/doL+y0xLLiKKPo7ObaEHwjOIui08fbN3tb8
	rGCYmuSU5xNAA==
Cc: yocto@yoctoproject.org
Subject: Re: Changing IMAGE_NAME [yocto krogoth]
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
X-List-Received-Date: Thu, 11 Apr 2019 09:29:37 -0000
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 7bit
Content-Language: it

Thanks

It was a typing error.

In my recipe I set the value as you told me.

But the ERROR keep on show


Il 10/04/19 11:59, Mikko.Rapeli@bmw.de ha scritto:
> On Wed, Apr 10, 2019 at 11:47:42AM +0200, Mauro Ziliani wrote:
>> Hi all.
>>
>> I need to change the default IMAGE_NAME of my image recipe.
>>
>> I make my image recipe as mysystem-image_1.0.bb and I'd like to produce
>> and image (tar) with the name
>>
>> mysystem-image-1.0-<datetime>.tar
>>
>>
>> So I setup
>>
>> IMAGE_NAME := "{IMAGE_BASENAME}-${PV}-${DATETIME}"
> Should be:
>
> IMAGE_NAME := "${IMAGE_BASENAME}-${PV}-${DATETIME}"
>
> note the added $. I guess that's the bit which confuses bitbake. Been there, done that
> too :)
>
> Hope this helps,
>
> -Mikko

